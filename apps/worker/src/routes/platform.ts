import { Hono } from 'hono';
import {
  createSharePostSchema,
  createSupportTicketSchema,
  supportMessageSchema,
} from '@oriva/shared';
import { fail, ok } from '../lib/http';
import { nowSeconds } from '../lib/time';
import type { AppEnv } from '../types';

export const platformRoutes = new Hono<AppEnv>();

platformRoutes.get('/shares', async (c) => {
  const result = await c.env.DB.prepare(
    `SELECT id,prize_id,body,status,created_at,updated_at FROM share_posts
     WHERE user_id=? AND status='published' ORDER BY created_at DESC`,
  )
    .bind(c.get('userId'))
    .all<{
      id: string;
      prize_id: string | null;
      body: string;
      status: 'published';
      created_at: number;
      updated_at: number;
    }>();
  return ok(c, {
    items: result.results.map((row) => ({
      id: row.id,
      prizeId: row.prize_id,
      body: row.body,
      status: row.status,
      createdAt: new Date(row.created_at * 1000).toISOString(),
      updatedAt: new Date(row.updated_at * 1000).toISOString(),
    })),
  });
});
platformRoutes.post('/shares', async (c) => {
  const parsed = createSharePostSchema.safeParse(
    await c.req.json().catch(() => null),
  );
  if (!parsed.success)
    return fail(
      c,
      400,
      'VALIDATION_ERROR',
      'Invalid share story',
      parsed.error.flatten().fieldErrors,
    );
  if (parsed.data.prizeId) {
    const prize = await c.env.DB.prepare(
      `SELECT id FROM prizes WHERE id=? AND user_id=? AND status IN ('claimed','processing','shipped','delivered')`,
    )
      .bind(parsed.data.prizeId, c.get('userId'))
      .first();
    if (!prize)
      return fail(
        c,
        409,
        'PRIZE_NOT_SHAREABLE',
        'Prize must be owned and claimed before publishing',
      );
  }
  const id = crypto.randomUUID();
  const created = nowSeconds();
  await c.env.DB.prepare(
    `INSERT INTO share_posts(id,user_id,prize_id,body,status,created_at,updated_at)
     VALUES(?,?,?,?,'published',?,?)`,
  )
    .bind(
      id,
      c.get('userId'),
      parsed.data.prizeId ?? null,
      parsed.data.body,
      created,
      created,
    )
    .run();
  return ok(c, { id }, 201);
});
platformRoutes.delete('/shares/:id', async (c) => {
  const result = await c.env.DB.prepare(
    `UPDATE share_posts SET status='removed',updated_at=? WHERE id=? AND user_id=? AND status='published'`,
  )
    .bind(nowSeconds(), c.req.param('id'), c.get('userId'))
    .run();
  if (!result.meta.changes)
    return fail(c, 404, 'SHARE_NOT_FOUND', 'Share story not found');
  return ok(c, { removed: true });
});

platformRoutes.get('/notifications', async (c) => {
  const result = await c.env.DB.prepare(
    `SELECT id,type,title,body,entity_id,read_at,created_at FROM notification_inbox
     WHERE user_id=? ORDER BY created_at DESC LIMIT 100`,
  )
    .bind(c.get('userId'))
    .all<NotificationRow>();
  return ok(c, { items: result.results.map(mapNotification) });
});
platformRoutes.post('/notifications/read-all', async (c) => {
  await c.env.DB.prepare(
    'UPDATE notification_inbox SET read_at=? WHERE user_id=? AND read_at IS NULL',
  )
    .bind(nowSeconds(), c.get('userId'))
    .run();
  return ok(c, { updated: true });
});
platformRoutes.post('/notifications/:id/read', async (c) => {
  const result = await c.env.DB.prepare(
    `UPDATE notification_inbox SET read_at=COALESCE(read_at,?) WHERE id=? AND user_id=?`,
  )
    .bind(nowSeconds(), c.req.param('id'), c.get('userId'))
    .run();
  if (!result.meta.changes)
    return fail(c, 404, 'NOTIFICATION_NOT_FOUND', 'Notification not found');
  return ok(c, { read: true });
});

platformRoutes.get('/support/tickets', async (c) => {
  const result = await c.env.DB.prepare(
    `SELECT id,subject,category,status,priority,assigned_to_user_id,created_at,updated_at
     FROM support_tickets WHERE user_id=? ORDER BY updated_at DESC LIMIT 100`,
  )
    .bind(c.get('userId'))
    .all<TicketRow>();
  return ok(c, { items: result.results.map(mapTicket) });
});
platformRoutes.post('/support/tickets', async (c) => {
  const parsed = createSupportTicketSchema.safeParse(
    await c.req.json().catch(() => null),
  );
  if (!parsed.success)
    return fail(
      c,
      400,
      'VALIDATION_ERROR',
      'Invalid support ticket',
      parsed.error.flatten().fieldErrors,
    );
  if (
    parsed.data.attachmentUploadId &&
    !(await validSupportUpload(c, parsed.data.attachmentUploadId))
  )
    return fail(
      c,
      400,
      'INVALID_ATTACHMENT',
      'Support attachment is unavailable',
    );
  const ticketId = crypto.randomUUID();
  const messageId = crypto.randomUUID();
  const now = nowSeconds();
  const statements: D1PreparedStatement[] = [
    c.env.DB.prepare(
      `INSERT INTO support_tickets
       (id,user_id,subject,category,status,priority,created_at,updated_at)
       VALUES(?,?,?,?,'open','normal',?,?)`,
    ).bind(
      ticketId,
      c.get('userId'),
      parsed.data.subject,
      parsed.data.category,
      now,
      now,
    ),
    c.env.DB.prepare(
      `INSERT INTO support_messages
       (id,ticket_id,sender_user_id,sender_role,body,attachment_upload_id,created_at)
       VALUES(?,?,?,'user',?,?,?)`,
    ).bind(
      messageId,
      ticketId,
      c.get('userId'),
      parsed.data.message,
      parsed.data.attachmentUploadId ?? null,
      now,
    ),
  ];
  if (parsed.data.attachmentUploadId)
    statements.push(
      c.env.DB.prepare(
        'UPDATE uploads SET consumed_at=? WHERE id=? AND consumed_at IS NULL',
      ).bind(now, parsed.data.attachmentUploadId),
    );
  await c.env.DB.batch(statements);
  return ok(c, { id: ticketId }, 201);
});
platformRoutes.get('/support/tickets/:id', async (c) => {
  const ticket = await c.env.DB.prepare(
    `SELECT id,subject,category,status,priority,assigned_to_user_id,created_at,updated_at
     FROM support_tickets WHERE id=? AND user_id=?`,
  )
    .bind(c.req.param('id'), c.get('userId'))
    .first<TicketRow>();
  if (!ticket) return fail(c, 404, 'TICKET_NOT_FOUND', 'Ticket not found');
  const messages = await c.env.DB.prepare(
    `SELECT id,ticket_id,sender_user_id,sender_role,body,attachment_upload_id,created_at
     FROM support_messages WHERE ticket_id=? ORDER BY created_at`,
  )
    .bind(c.req.param('id'))
    .all<MessageRow>();
  return ok(c, {
    ...mapTicket(ticket),
    messages: messages.results.map(mapMessage),
  });
});
platformRoutes.post('/support/tickets/:id/messages', async (c) => {
  const parsed = supportMessageSchema.safeParse(
    await c.req.json().catch(() => null),
  );
  if (!parsed.success)
    return fail(c, 400, 'VALIDATION_ERROR', 'Invalid support message');
  const ticket = await c.env.DB.prepare(
    `SELECT id,status FROM support_tickets WHERE id=? AND user_id=?`,
  )
    .bind(c.req.param('id'), c.get('userId'))
    .first<{ id: string; status: string }>();
  if (!ticket) return fail(c, 404, 'TICKET_NOT_FOUND', 'Ticket not found');
  if (ticket.status === 'closed')
    return fail(
      c,
      409,
      'TICKET_CLOSED',
      'Closed tickets cannot receive messages',
    );
  if (
    parsed.data.attachmentUploadId &&
    !(await validSupportUpload(c, parsed.data.attachmentUploadId))
  )
    return fail(
      c,
      400,
      'INVALID_ATTACHMENT',
      'Support attachment is unavailable',
    );
  const now = nowSeconds();
  const statements = [
    c.env.DB.prepare(
      `INSERT INTO support_messages
       (id,ticket_id,sender_user_id,sender_role,body,attachment_upload_id,created_at)
       VALUES(?,?,?,'user',?,?,?)`,
    ).bind(
      crypto.randomUUID(),
      ticket.id,
      c.get('userId'),
      parsed.data.body,
      parsed.data.attachmentUploadId ?? null,
      now,
    ),
    c.env.DB.prepare(
      `UPDATE support_tickets SET status=CASE WHEN status='waiting_on_user' THEN 'in_progress'
       ELSE status END,updated_at=? WHERE id=?`,
    ).bind(now, ticket.id),
  ];
  if (parsed.data.attachmentUploadId)
    statements.push(
      c.env.DB.prepare(
        'UPDATE uploads SET consumed_at=? WHERE id=? AND consumed_at IS NULL',
      ).bind(now, parsed.data.attachmentUploadId),
    );
  await c.env.DB.batch(statements);
  return ok(c, { created: true }, 201);
});

platformRoutes.get('/banners', async (c) => {
  const now = nowSeconds();
  const result = await c.env.DB.prepare(
    `SELECT id,title,body,image_key,action_url,starts_at,ends_at,sort_order FROM banners
     WHERE status='active' AND (starts_at IS NULL OR starts_at<=?)
     AND (ends_at IS NULL OR ends_at>?) ORDER BY sort_order,created_at DESC`,
  )
    .bind(now, now)
    .all<Record<string, unknown>>();
  return ok(c, {
    items: result.results.map((row) => ({
      id: String(row.id),
      title: String(row.title),
      body: String(row.body),
      imageUrl: row.image_key
        ? `${c.env.PUBLIC_ASSET_BASE}/${String(row.image_key)}`
        : null,
      actionUrl: row.action_url == null ? null : String(row.action_url),
      startsAt: toIso(row.starts_at),
      endsAt: toIso(row.ends_at),
      sortOrder: Number(row.sort_order),
    })),
  });
});
platformRoutes.get('/finance/offers', async (c) => {
  const result = await c.env.DB.prepare(
    `SELECT id,provider_name,title,description,category,disclaimer,external_url
     FROM finance_offers WHERE status='active' ORDER BY sort_order,created_at DESC`,
  ).all<Record<string, unknown>>();
  return ok(c, {
    informationalOnly: true,
    items: result.results.map((row) => ({
      id: String(row.id),
      providerName: String(row.provider_name),
      title: String(row.title),
      description: String(row.description),
      category: row.category,
      disclaimer: String(row.disclaimer),
      externalUrl: row.external_url == null ? null : String(row.external_url),
    })),
  });
});
platformRoutes.get('/games', async (c) => {
  const result = await c.env.DB.prepare(
    `SELECT id,title,description,rules,daily_play_limit,points_per_play
     FROM game_definitions WHERE status='active' ORDER BY created_at DESC`,
  ).all<Record<string, unknown>>();
  return ok(c, {
    nonMonetary: true,
    items: result.results.map((row) => ({
      id: String(row.id),
      title: String(row.title),
      description: String(row.description),
      rules: String(row.rules),
      dailyPlayLimit: Number(row.daily_play_limit),
      pointsPerPlay: Number(row.points_per_play),
    })),
  });
});
platformRoutes.post('/games/:id/play', async (c) => {
  const game = await c.env.DB.prepare(
    `SELECT id,daily_play_limit,points_per_play FROM game_definitions
     WHERE id=? AND status='active'`,
  )
    .bind(c.req.param('id'))
    .first<{ id: string; daily_play_limit: number; points_per_play: number }>();
  if (!game) return fail(c, 404, 'GAME_NOT_FOUND', 'Game not found');
  const playDate = new Date().toISOString().slice(0, 10);
  const count = await c.env.DB.prepare(
    'SELECT COUNT(*) value FROM game_plays WHERE game_id=? AND user_id=? AND play_date=?',
  )
    .bind(game.id, c.get('userId'), playDate)
    .first<{ value: number }>();
  const sequence = Number(count?.value ?? 0) + 1;
  if (sequence > game.daily_play_limit)
    return fail(c, 409, 'PLAY_LIMIT_REACHED', 'Daily play limit reached');
  await c.env.DB.prepare(
    `INSERT INTO game_plays(id,game_id,user_id,play_date,sequence,points_awarded,created_at)
     VALUES(?,?,?,?,?,?,?)`,
  )
    .bind(
      crypto.randomUUID(),
      game.id,
      c.get('userId'),
      playDate,
      sequence,
      game.points_per_play,
      nowSeconds(),
    )
    .run();
  return ok(
    c,
    { sequence, pointsAwarded: game.points_per_play, monetaryValue: 0 },
    201,
  );
});
platformRoutes.get('/memberships/plans', async (c) => {
  const result = await c.env.DB.prepare(
    `SELECT id,name,description,benefits_json,price_minor,currency,duration_days
     FROM membership_plans WHERE status='active' ORDER BY created_at DESC`,
  ).all<Record<string, unknown>>();
  return ok(c, {
    items: result.results.map((row) => ({
      id: String(row.id),
      name: String(row.name),
      description: String(row.description),
      benefits: safeStringArray(row.benefits_json),
      priceMinor: Number(row.price_minor),
      currency: row.currency,
      durationDays: Number(row.duration_days),
    })),
  });
});
platformRoutes.get('/memberships', async (c) => {
  const result = await c.env.DB.prepare(
    `SELECT m.id,m.plan_id,p.name plan_name,m.status,m.source,m.starts_at,m.ends_at
     FROM memberships m JOIN membership_plans p ON p.id=m.plan_id
     WHERE m.user_id=? ORDER BY m.created_at DESC`,
  )
    .bind(c.get('userId'))
    .all<Record<string, unknown>>();
  return ok(c, {
    items: result.results.map((row) => ({
      id: String(row.id),
      planId: String(row.plan_id),
      planName: String(row.plan_name),
      status: row.status,
      source: row.source,
      startsAt: toIso(row.starts_at),
      endsAt: toIso(row.ends_at),
    })),
  });
});
platformRoutes.get('/discounts', async (c) => {
  const now = nowSeconds();
  const result = await c.env.DB.prepare(
    `SELECT id,code,title,description,discount_type,value,max_discount_minor,
      minimum_order_minor,starts_at,ends_at FROM discount_offers WHERE status='active'
     AND (starts_at IS NULL OR starts_at<=?) AND (ends_at IS NULL OR ends_at>?)
     ORDER BY created_at DESC`,
  )
    .bind(now, now)
    .all<Record<string, unknown>>();
  return ok(c, {
    items: result.results.map((row) => ({
      id: String(row.id),
      code: String(row.code),
      title: String(row.title),
      description: String(row.description),
      discountType: row.discount_type,
      value: Number(row.value),
      maxDiscountMinor:
        row.max_discount_minor == null ? null : Number(row.max_discount_minor),
      minimumOrderMinor: Number(row.minimum_order_minor),
      startsAt: toIso(row.starts_at),
      endsAt: toIso(row.ends_at),
    })),
  });
});

interface NotificationRow {
  id: string;
  type: string;
  title: string;
  body: string;
  entity_id: string | null;
  read_at: number | null;
  created_at: number;
}
interface TicketRow {
  id: string;
  subject: string;
  category: string;
  status: string;
  priority: string;
  assigned_to_user_id: string | null;
  created_at: number;
  updated_at: number;
}
interface MessageRow {
  id: string;
  ticket_id: string;
  sender_user_id: string;
  sender_role: string;
  body: string;
  attachment_upload_id: string | null;
  created_at: number;
}
const mapNotification = (row: NotificationRow) => ({
  id: row.id,
  type: row.type,
  title: row.title,
  body: row.body,
  entityId: row.entity_id,
  readAt: row.read_at ? new Date(row.read_at * 1000).toISOString() : null,
  createdAt: new Date(row.created_at * 1000).toISOString(),
});
const mapTicket = (row: TicketRow) => ({
  id: row.id,
  subject: row.subject,
  category: row.category,
  status: row.status,
  priority: row.priority,
  assignedToUserId: row.assigned_to_user_id,
  createdAt: new Date(row.created_at * 1000).toISOString(),
  updatedAt: new Date(row.updated_at * 1000).toISOString(),
});
const mapMessage = (row: MessageRow) => ({
  id: row.id,
  ticketId: row.ticket_id,
  senderUserId: row.sender_user_id,
  senderRole: row.sender_role,
  body: row.body,
  attachmentUploadId: row.attachment_upload_id,
  createdAt: new Date(row.created_at * 1000).toISOString(),
});
const toIso = (value: unknown) =>
  value == null ? null : new Date(Number(value) * 1000).toISOString();
function safeStringArray(value: unknown): string[] {
  try {
    const parsed: unknown = JSON.parse(String(value));
    return Array.isArray(parsed) &&
      parsed.every((item) => typeof item === 'string')
      ? parsed
      : [];
  } catch {
    return [];
  }
}
async function validSupportUpload(
  c: Parameters<typeof ok>[0],
  uploadId: string,
) {
  return c.env.DB.prepare(
    `SELECT id FROM uploads WHERE id=? AND user_id=? AND purpose='support'
     AND status='complete' AND consumed_at IS NULL`,
  )
    .bind(uploadId, c.get('userId'))
    .first();
}
