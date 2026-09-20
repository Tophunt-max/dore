import { notificationStatements } from './lib/notifications';
import { nowSeconds } from './lib/time';
import type { Bindings, NotificationEvent, PaymentEvent } from './types';

export async function consumePaymentEvents(
  batch: MessageBatch<PaymentEvent>,
  env: Bindings,
) {
  for (const message of batch.messages) {
    try {
      const payment = await env.DB.prepare(
        `SELECT p.id,p.user_id,p.order_id,p.purpose,p.amount_minor,p.currency,p.status,
          p.settlement_processed_at,o.status order_status,o.campaign_id
         FROM payment_transactions p LEFT JOIN orders o ON o.id=p.order_id WHERE p.id=?`,
      )
        .bind(message.body.paymentId)
        .first<PaymentRow>();
      if (!payment || payment.status !== 'approved') {
        message.ack();
        continue;
      }
      if (payment.settlement_processed_at) {
        message.ack();
        continue;
      }
      if (payment.purpose === 'recharge') {
        const response = await wallet(env, payment.user_id).fetch(
          'https://wallet/credit',
          {
            method: 'POST',
            body: JSON.stringify({
              operation: 'credit',
              userId: payment.user_id,
              amountMinor: payment.amount_minor,
              referenceType: 'payment',
              referenceId: payment.id,
              entryType: 'recharge',
              description: 'Manual wallet recharge approved',
            }),
          },
        );
        if (!response.ok) throw new Error('Wallet credit failed');
      } else {
        if (!payment.order_id || !payment.campaign_id)
          throw new Error('Order payment is missing its campaign reservation');
        const campaign = env.CAMPAIGN_COORDINATOR.get(
          env.CAMPAIGN_COORDINATOR.idFromName(payment.campaign_id),
        );
        const response = await campaign.fetch('https://campaign/settle', {
          method: 'POST',
          body: JSON.stringify({
            operation: 'settle',
            orderId: payment.order_id,
          }),
        });
        if (!response.ok)
          throw new Error(
            ((await response.json()) as { message?: string }).message ??
              'Campaign reservation settlement failed',
          );
        await settleReferral(env, payment.user_id, payment.order_id);
      }
      const now = nowSeconds();
      const notification = notificationStatements(
        env.DB,
        {
          userId: payment.user_id,
          type: 'payment.completed',
          title: 'Payment approved',
          body:
            payment.purpose === 'recharge'
              ? 'Your manual recharge was verified and credited.'
              : 'Your manual payment was verified and the order is paid.',
          entityId: payment.order_id ?? payment.id,
        },
        now,
      );
      const results = await env.DB.batch([
        env.DB.prepare(
          `UPDATE payment_transactions SET settlement_processed_at=?,updated_at=?
           WHERE id=? AND status='approved' AND settlement_processed_at IS NULL`,
        ).bind(now, now, payment.id),
        env.DB.prepare(
          `UPDATE payment_settlement_outbox SET status='complete',processed_at=?
           WHERE payment_id=? AND status!='complete'`,
        ).bind(now, payment.id),
        ...notification.statements,
      ]);
      if (!results[0]?.meta.changes)
        throw new Error('Payment settlement completion race detected');
      message.ack();
    } catch (error) {
      await env.DB.prepare(
        `UPDATE payment_settlement_outbox SET status='pending',attempts=attempts+1,last_error=?
         WHERE payment_id=? AND status!='complete'`,
      )
        .bind(errorMessage(error), message.body.paymentId)
        .run()
        .catch(() => undefined);
      message.retry();
    }
  }
}

export async function consumeNotificationEvents(
  batch: MessageBatch<NotificationEvent>,
  env: Bindings,
) {
  for (const message of batch.messages) {
    const notificationId = message.body.notificationId;
    try {
      const now = nowSeconds();
      const claim = await env.DB.prepare(
        `UPDATE outbox_events SET status='processing',lease_expires_at=?
         WHERE event_type='notification.dispatch' AND aggregate_id=? AND status='pending'`,
      )
        .bind(now + 300, notificationId)
        .run();
      if (!claim.meta.changes) {
        const current = await env.DB.prepare(
          `SELECT status FROM outbox_events WHERE event_type='notification.dispatch'
           AND aggregate_id=?`,
        )
          .bind(notificationId)
          .first<{ status: string }>();
        if (!current || ['complete', 'dead_letter'].includes(current.status))
          message.ack();
        else message.retry();
        continue;
      }
      const notification = await env.DB.prepare(
        `SELECT id,user_id,type,title,body,entity_id FROM notification_inbox WHERE id=?`,
      )
        .bind(notificationId)
        .first<NotificationRow>();
      if (!notification) throw new Error('Persisted notification not found');
      const devices = await env.DB.prepare(
        `SELECT id,expo_push_token FROM push_devices WHERE user_id=? AND enabled=1`,
      )
        .bind(notification.user_id)
        .all<{ id: string; expo_push_token: string }>();
      if (devices.results.length)
        await env.DB.batch(
          devices.results.map((device) =>
            env.DB.prepare(
              `INSERT OR IGNORE INTO notification_deliveries
               (id,notification_id,push_device_id,status,attempts,updated_at)
               VALUES(?,?,?,'pending',0,?)`,
            ).bind(crypto.randomUUID(), notification.id, device.id, now),
          ),
        );
      const pending = await env.DB.prepare(
        `SELECT d.push_device_id id,p.expo_push_token FROM notification_deliveries d
         JOIN push_devices p ON p.id=d.push_device_id
         WHERE d.notification_id=? AND d.status IN ('pending','failed') AND p.enabled=1`,
      )
        .bind(notification.id)
        .all<{ id: string; expo_push_token: string }>();
      let hasFailure = false;
      if (pending.results.length) {
        const response = await fetch('https://exp.host/--/api/v2/push/send', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
            Accept: 'application/json',
            'Accept-Encoding': 'gzip, deflate',
            ...(env.EXPO_ACCESS_TOKEN
              ? { Authorization: `Bearer ${env.EXPO_ACCESS_TOKEN}` }
              : {}),
          },
          body: JSON.stringify(
            pending.results.map((device) => ({
              to: device.expo_push_token,
              sound: 'default',
              title: notification.title,
              body: notification.body,
              data: {
                type: notification.type,
                entityId: notification.entity_id,
              },
            })),
          ),
        });
        if (!response.ok)
          throw new Error(`Expo push request failed (${response.status})`);
        const provider = (await response.json().catch(() => ({}))) as {
          data?: Array<{
            status?: string;
            id?: string;
            details?: { error?: string };
            message?: string;
          }>;
        };
        const statements: D1PreparedStatement[] = [];
        pending.results.forEach((device, index) => {
          const ticket = provider.data?.[index];
          const invalid = ticket?.details?.error === 'DeviceNotRegistered';
          const sent = ticket?.status === 'ok' && typeof ticket.id === 'string';
          const failed = !sent && !invalid;
          hasFailure ||= failed;
          statements.push(
            env.DB.prepare(
              `UPDATE notification_deliveries SET status=?,provider_reference=?,attempts=attempts+1,
               last_error=?,updated_at=? WHERE notification_id=? AND push_device_id=?`,
            ).bind(
              invalid ? 'invalid_token' : sent ? 'sent' : 'failed',
              ticket?.id ?? null,
              failed
                ? (ticket?.message ??
                    ticket?.details?.error ??
                    'Missing or malformed Expo ticket')
                : null,
              now,
              notification.id,
              device.id,
            ),
          );
          if (invalid)
            statements.push(
              env.DB.prepare(
                'UPDATE push_devices SET enabled=0 WHERE id=?',
              ).bind(device.id),
            );
        });
        if (statements.length) await env.DB.batch(statements);
      }
      if (hasFailure) throw new Error('One or more push deliveries failed');
      await env.DB.prepare(
        `UPDATE outbox_events SET status='complete',processed_at=?,lease_expires_at=NULL
         WHERE event_type='notification.dispatch' AND aggregate_id=? AND status='processing'`,
      )
        .bind(now, notification.id)
        .run();
      message.ack();
    } catch (error) {
      const row = await env.DB.prepare(
        `SELECT id,attempts FROM outbox_events WHERE event_type='notification.dispatch'
         AND aggregate_id=?`,
      )
        .bind(notificationId)
        .first<{ id: string; attempts: number }>();
      const attempts = (row?.attempts ?? 0) + 1;
      if (row)
        await env.DB.prepare(
          `UPDATE outbox_events SET status=?,attempts=?,last_error=?,available_at=?,lease_expires_at=NULL
           WHERE id=? AND status='processing'`,
        )
          .bind(
            attempts >= 20 ? 'dead_letter' : 'pending',
            attempts,
            errorMessage(error),
            nowSeconds() + Math.min(3600, 2 ** Math.min(attempts, 10)),
            row.id,
          )
          .run();
      if (attempts >= 20) message.ack();
      else message.retry();
    }
  }
}

async function settleReferral(
  env: Bindings,
  referredUserId: string,
  orderId: string,
) {
  const referral = await env.DB.prepare(
    `SELECT id,referrer_user_id,referred_user_id,status,first_paid_order_id,program_id
     FROM referrals WHERE referred_user_id=?`,
  )
    .bind(referredUserId)
    .first<{
      id: string;
      referrer_user_id: string;
      referred_user_id: string;
      status: string;
      first_paid_order_id: string | null;
      program_id: string | null;
    }>();
  if (
    !referral ||
    referral.status === 'rewarded' ||
    (referral.first_paid_order_id && referral.first_paid_order_id !== orderId)
  )
    return;
  const now = nowSeconds();
  if (!referral.first_paid_order_id)
    await env.DB.prepare(
      `UPDATE referrals SET status='qualified',first_paid_order_id=?,qualified_at=?
       WHERE id=? AND first_paid_order_id IS NULL`,
    )
      .bind(orderId, now, referral.id)
      .run();
  let program = referral.program_id
    ? await env.DB.prepare('SELECT * FROM referral_programs WHERE id=?')
        .bind(referral.program_id)
        .first<Record<string, unknown>>()
    : null;
  if (!program) {
    program = await env.DB.prepare(
      `SELECT * FROM referral_programs WHERE status='active'
       AND (starts_at IS NULL OR starts_at<=?) AND (ends_at IS NULL OR ends_at>?)
       ORDER BY created_at DESC LIMIT 1`,
    )
      .bind(now, now)
      .first<Record<string, unknown>>();
    if (!program) return;
    await env.DB.prepare(
      `UPDATE referrals SET program_id=? WHERE id=? AND program_id IS NULL`,
    )
      .bind(program.id, referral.id)
      .run();
  }
  const intended = [
    {
      role: 'referrer',
      userId: referral.referrer_user_id,
      money: Number(program.referrer_reward_minor),
      coins: Number(program.referrer_reward_coins),
    },
    {
      role: 'referred',
      userId: referral.referred_user_id,
      money: Number(program.referred_reward_minor),
      coins: Number(program.referred_reward_coins),
    },
  ] as const;
  const issues: Array<{
    id: string;
    beneficiary_user_id: string;
    amount_minor: number;
    coin_amount: number;
  }> = [];
  for (const reward of intended) {
    let issue = await env.DB.prepare(
      `SELECT id,beneficiary_user_id,amount_minor,coin_amount
       FROM referral_reward_issues WHERE referral_id=? AND role=?`,
    )
      .bind(referral.id, reward.role)
      .first<{
        id: string;
        beneficiary_user_id: string;
        amount_minor: number;
        coin_amount: number;
      }>();
    if (!issue) {
      await env.DB.prepare(
        `INSERT OR IGNORE INTO referral_reward_issues
         (id,referral_id,program_id,beneficiary_user_id,role,amount_minor,coin_amount,created_at)
         VALUES(?,?,?,?,?,?,?,?)`,
      )
        .bind(
          crypto.randomUUID(),
          referral.id,
          program.id,
          reward.userId,
          reward.role,
          reward.money,
          reward.coins,
          now,
        )
        .run();
      issue = await env.DB.prepare(
        `SELECT id,beneficiary_user_id,amount_minor,coin_amount
         FROM referral_reward_issues WHERE referral_id=? AND role=?`,
      )
        .bind(referral.id, reward.role)
        .first<{
          id: string;
          beneficiary_user_id: string;
          amount_minor: number;
          coin_amount: number;
        }>();
    }
    if (!issue) throw new Error('Referral reward issue could not be created');
    issues.push(issue);
    const response = await wallet(env, issue.beneficiary_user_id).fetch(
      'https://wallet/referral-reward',
      {
        method: 'POST',
        body: JSON.stringify({
          operation: 'referral.reward',
          userId: issue.beneficiary_user_id,
          issueId: issue.id,
          amountMinor: issue.amount_minor,
          coinAmount: issue.coin_amount,
          description: 'Referral qualification reward',
        }),
      },
    );
    if (!response.ok) throw new Error('Referral wallet reward failed');
  }
  const notifications = issues.flatMap(
    (issue) =>
      notificationStatements(
        env.DB,
        {
          userId: issue.beneficiary_user_id,
          type: 'referral.rewarded',
          title: 'Referral reward earned',
          body: 'A first paid order qualified your referral reward.',
          entityId: referral.id,
        },
        now,
      ).statements,
  );
  await env.DB.batch([
    env.DB.prepare(
      `UPDATE referrals SET status='rewarded',rewarded_at=?
       WHERE id=? AND status!='rewarded'`,
    ).bind(now, referral.id),
    ...notifications,
  ]);
}

const wallet = (env: Bindings, userId: string) =>
  env.WALLET_COORDINATOR.get(env.WALLET_COORDINATOR.idFromName(userId));
const errorMessage = (error: unknown) =>
  error instanceof Error ? error.message.slice(0, 500) : 'Unknown error';
interface PaymentRow {
  id: string;
  user_id: string;
  order_id: string | null;
  purpose: string;
  amount_minor: number;
  currency: string;
  status: string;
  settlement_processed_at: number | null;
  order_status: string | null;
  campaign_id: string | null;
}
interface NotificationRow {
  id: string;
  user_id: string;
  type: string;
  title: string;
  body: string;
  entity_id: string | null;
}
