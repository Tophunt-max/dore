import { notificationStatements } from './lib/notifications';
import { nowSeconds } from './lib/time';
import type { Bindings } from './types';

export async function runScheduledMaintenance(
  controller: ScheduledController,
  env: Bindings,
) {
  const now = nowSeconds();
  if (controller.cron === '*/10 * * * *') {
    const transitions = await env.DB.prepare(
      `SELECT id,'active' target FROM campaigns WHERE status='scheduled' AND starts_at<=?
       UNION ALL
       SELECT c.id,'drawing' target FROM campaigns c
       WHERE c.status IN ('active','sold_out') AND c.reserved_entries=0
       AND (c.ends_at<=? OR c.sold_entries=c.total_entries)
       AND NOT EXISTS (
         SELECT 1 FROM orders o JOIN payment_transactions p ON p.order_id=o.id
         WHERE o.campaign_id=c.id AND o.status='pending'
         AND p.status IN ('under_review','approved')
       ) LIMIT 200`,
    )
      .bind(now, now)
      .all<{ id: string; target: 'active' | 'drawing' }>();
    for (const campaign of transitions.results) {
      const coordinator = env.CAMPAIGN_COORDINATOR.get(
        env.CAMPAIGN_COORDINATOR.idFromName(campaign.id),
      );
      await coordinator.fetch('https://campaign/transition', {
        method: 'POST',
        body: JSON.stringify({
          operation: 'campaign.transition',
          campaignId: campaign.id,
          target: campaign.target,
        }),
      });
    }

    const pendingPayments = await env.DB.prepare(
      `SELECT payment_id FROM payment_settlement_outbox
       WHERE status!='complete' AND attempts<20 ORDER BY created_at LIMIT 100`,
    ).all<{ payment_id: string }>();
    for (const item of pendingPayments.results) {
      await env.PAYMENT_EVENTS.send({
        type: 'payment.approved',
        paymentId: item.payment_id,
      });
      await env.DB.prepare(
        `UPDATE payment_settlement_outbox SET status='processing'
         WHERE payment_id=? AND status='pending'`,
      )
        .bind(item.payment_id)
        .run();
    }

    await processBroadcasts(env, now);

    await env.DB.prepare(
      `UPDATE outbox_events SET status='pending',lease_expires_at=NULL
       WHERE status='processing' AND lease_expires_at<?`,
    )
      .bind(now)
      .run();
    const outbox = await env.DB.prepare(
      `SELECT id,payload_json FROM outbox_events WHERE event_type='notification.dispatch'
       AND status='pending' AND available_at<=? AND attempts<20 ORDER BY created_at LIMIT 100`,
    )
      .bind(now)
      .all<{ id: string; payload_json: string }>();
    for (const event of outbox.results) {
      const payload = JSON.parse(event.payload_json) as {
        notificationId: string;
      };
      await env.NOTIFICATION_EVENTS.send(payload);
    }

    const expired = await env.DB.prepare(
      `SELECT o.id,o.campaign_id FROM orders o WHERE o.status='pending'
       AND o.reservation_expires_at<=? AND NOT EXISTS (
         SELECT 1 FROM payment_transactions p WHERE p.order_id=o.id
         AND p.status IN ('under_review','approved')
       ) LIMIT 100`,
    )
      .bind(now)
      .all<{ id: string; campaign_id: string }>();
    for (const order of expired.results) {
      const coordinator = env.CAMPAIGN_COORDINATOR.get(
        env.CAMPAIGN_COORDINATOR.idFromName(order.campaign_id),
      );
      await coordinator.fetch('https://campaign/release', {
        method: 'POST',
        body: JSON.stringify({ operation: 'release', orderId: order.id }),
      });
    }
  } else {
    await env.DB.batch([
      env.DB.prepare('DELETE FROM otp_requests WHERE expires_at<?').bind(
        now - 86400,
      ),
      env.DB.prepare(
        `DELETE FROM refresh_tokens WHERE expires_at<?
         OR (revoked_at IS NOT NULL AND revoked_at<?)`,
      ).bind(now - 86400, now - 30 * 86400),
      env.DB.prepare(
        `UPDATE uploads SET status='rejected' WHERE status='pending' AND expires_at<?`,
      ).bind(now),
      env.DB.prepare(
        `UPDATE memberships SET status='expired',updated_at=? WHERE status='active' AND ends_at<=?`,
      ).bind(now, now),
      env.DB.prepare(
        `UPDATE outbox_events SET status='dead_letter',last_error=COALESCE(last_error,'Retry limit reached')
         WHERE status='pending' AND attempts>=20`,
      ),
    ]);
  }
}

async function processBroadcasts(env: Bindings, now: number) {
  const broadcasts = await env.DB.prepare(
    `SELECT id,title,body,audience,cursor_created_at,cursor_user_id
     FROM notification_broadcasts WHERE status='processing'
     ORDER BY created_at LIMIT 5`,
  ).all<{
    id: string;
    title: string;
    body: string;
    audience: 'all' | 'active_users';
    cursor_created_at: number;
    cursor_user_id: string;
  }>();
  for (const broadcast of broadcasts.results) {
    try {
      const users = await env.DB.prepare(
        `SELECT id,created_at FROM users WHERE role='user'
         ${broadcast.audience === 'active_users' ? "AND status='active'" : ''}
         AND (created_at>? OR (created_at=? AND id>?))
         ORDER BY created_at,id LIMIT 200`,
      )
        .bind(
          broadcast.cursor_created_at,
          broadcast.cursor_created_at,
          broadcast.cursor_user_id,
        )
        .all<{ id: string; created_at: number }>();
      for (let offset = 0; offset < users.results.length; offset += 30) {
        const statements: D1PreparedStatement[] = [];
        for (const user of users.results.slice(offset, offset + 30)) {
          const notificationId = `${broadcast.id}:${user.id}`;
          statements.push(
            ...notificationStatements(
              env.DB,
              {
                userId: user.id,
                type: 'broadcast',
                title: broadcast.title,
                body: broadcast.body,
                entityId: broadcast.id,
              },
              now,
              notificationId,
            ).statements,
            env.DB.prepare(
              `INSERT OR IGNORE INTO notification_broadcast_recipients
               (broadcast_id,user_id,notification_id,created_at) VALUES(?,?,?,?)`,
            ).bind(broadcast.id, user.id, notificationId, now),
          );
        }
        if (statements.length) await env.DB.batch(statements);
      }
      const last = users.results.at(-1);
      const recipientCount = Number(
        (
          await env.DB.prepare(
            'SELECT COUNT(*) value FROM notification_broadcast_recipients WHERE broadcast_id=?',
          )
            .bind(broadcast.id)
            .first<{ value: number }>()
        )?.value ?? 0,
      );
      if (!last || users.results.length < 200) {
        await env.DB.prepare(
          `UPDATE notification_broadcasts SET status='sent',recipient_count=?,sent_at=?,last_error=NULL
           WHERE id=? AND status='processing'`,
        )
          .bind(recipientCount, now, broadcast.id)
          .run();
      } else {
        await env.DB.prepare(
          `UPDATE notification_broadcasts SET cursor_created_at=?,cursor_user_id=?,recipient_count=?,last_error=NULL
           WHERE id=? AND status='processing'`,
        )
          .bind(last.created_at, last.id, recipientCount, broadcast.id)
          .run();
      }
    } catch (error) {
      await env.DB.prepare(
        `UPDATE notification_broadcasts SET status='failed',last_error=? WHERE id=? AND status='processing'`,
      )
        .bind(
          error instanceof Error
            ? error.message.slice(0, 500)
            : 'Unknown broadcast error',
          broadcast.id,
        )
        .run();
    }
  }
}
