import { Hono } from 'hono';
import { z } from 'zod';
import {
  bannerInputSchema,
  broadcastSchema,
  discountOfferInputSchema,
  financeOfferInputSchema,
  gameDefinitionInputSchema,
  membershipGrantSchema,
  membershipPlanInputSchema,
  notificationTemplateSchema,
  referralProgramInputSchema,
  supportMessageSchema,
  supportTicketUpdateSchema,
} from '@oriva/shared';
import { fail, ok } from '../lib/http';
import { notificationStatements } from '../lib/notifications';
import { nowSeconds } from '../lib/time';
import type { AppEnv } from '../types';

export const adminCatalogRoutes = new Hono<AppEnv>();

adminCatalogRoutes.get('/support/tickets', async (c) => {
  const status = c.req.query('status');
  const query = `SELECT t.*,u.phone_e164,u.display_name FROM support_tickets t
    JOIN users u ON u.id=t.user_id ${status ? 'WHERE t.status=?' : ''}
    ORDER BY CASE t.priority WHEN 'urgent' THEN 0 WHEN 'high' THEN 1 ELSE 2 END,
    t.updated_at DESC LIMIT 200`;
  const result = status
    ? await c.env.DB.prepare(query).bind(status).all<Record<string, unknown>>()
    : await c.env.DB.prepare(query).all<Record<string, unknown>>();
  return ok(c, { items: result.results.map(camelize) });
});
adminCatalogRoutes.get('/support/tickets/:id', async (c) => {
  const ticket = await c.env.DB.prepare(
    'SELECT * FROM support_tickets WHERE id=?',
  )
    .bind(c.req.param('id'))
    .first<Record<string, unknown>>();
  if (!ticket) return fail(c, 404, 'TICKET_NOT_FOUND', 'Ticket not found');
  const messages = await c.env.DB.prepare(
    `SELECT * FROM support_messages WHERE ticket_id=? ORDER BY created_at`,
  )
    .bind(c.req.param('id'))
    .all<Record<string, unknown>>();
  return ok(c, {
    ...camelize(ticket),
    messages: messages.results.map(camelize),
  });
});
adminCatalogRoutes.patch('/support/tickets/:id', async (c) => {
  const parsed = supportTicketUpdateSchema.safeParse(
    await c.req.json().catch(() => null),
  );
  if (!parsed.success)
    return fail(c, 400, 'VALIDATION_ERROR', 'Invalid ticket update');
  const current = await c.env.DB.prepare(
    'SELECT * FROM support_tickets WHERE id=?',
  )
    .bind(c.req.param('id'))
    .first<Record<string, unknown>>();
  if (!current) return fail(c, 404, 'TICKET_NOT_FOUND', 'Ticket not found');
  if (parsed.data.assignedToUserId) {
    const assignee = await c.env.DB.prepare(
      `SELECT id FROM users WHERE id=? AND status='active'
       AND role IN ('support','finance','admin')`,
    )
      .bind(parsed.data.assignedToUserId)
      .first();
    if (!assignee)
      return fail(
        c,
        400,
        'INVALID_ASSIGNEE',
        'Ticket assignee must be an active staff member',
      );
  }
  const now = nowSeconds();
  await c.env.DB.batch([
    c.env.DB.prepare(
      `UPDATE support_tickets SET status=?,priority=?,assigned_to_user_id=?,updated_at=?,
       closed_at=CASE WHEN ?='closed' THEN ? ELSE NULL END WHERE id=?`,
    ).bind(
      parsed.data.status ?? current.status,
      parsed.data.priority ?? current.priority,
      parsed.data.assignedToUserId === undefined
        ? current.assigned_to_user_id
        : parsed.data.assignedToUserId,
      now,
      parsed.data.status ?? current.status,
      now,
      c.req.param('id'),
    ),
    audit(
      c,
      'support_ticket.updated',
      'support_ticket',
      c.req.param('id'),
      parsed.data,
    ),
  ]);
  return ok(c, { updated: true });
});
adminCatalogRoutes.post('/support/tickets/:id/messages', async (c) => {
  const parsed = supportMessageSchema.safeParse(
    await c.req.json().catch(() => null),
  );
  if (!parsed.success)
    return fail(c, 400, 'VALIDATION_ERROR', 'Invalid support message');
  const ticket = await c.env.DB.prepare(
    `SELECT id,user_id,status FROM support_tickets WHERE id=?`,
  )
    .bind(c.req.param('id'))
    .first<{ id: string; user_id: string; status: string }>();
  if (!ticket) return fail(c, 404, 'TICKET_NOT_FOUND', 'Ticket not found');
  if (ticket.status === 'closed')
    return fail(c, 409, 'TICKET_CLOSED', 'Ticket is closed');
  if (parsed.data.attachmentUploadId) {
    const upload = await c.env.DB.prepare(
      `SELECT id FROM uploads WHERE id=? AND user_id=? AND purpose='support'
       AND status='complete' AND consumed_at IS NULL`,
    )
      .bind(parsed.data.attachmentUploadId, c.get('userId'))
      .first();
    if (!upload)
      return fail(c, 400, 'INVALID_ATTACHMENT', 'Attachment is unavailable');
  }
  const now = nowSeconds();
  const notification = notificationStatements(
    c.env.DB,
    {
      userId: ticket.user_id,
      type: 'support.updated',
      title: 'Support replied',
      body: 'A support agent replied to your ticket.',
      entityId: ticket.id,
    },
    now,
  );
  const statements = [
    c.env.DB.prepare(
      `INSERT INTO support_messages
       (id,ticket_id,sender_user_id,sender_role,body,attachment_upload_id,created_at)
       VALUES(?,?,?,?,?,?,?)`,
    ).bind(
      crypto.randomUUID(),
      ticket.id,
      c.get('userId'),
      c.get('userRole'),
      parsed.data.body,
      parsed.data.attachmentUploadId ?? null,
      now,
    ),
    c.env.DB.prepare(
      `UPDATE support_tickets SET status='waiting_on_user',updated_at=? WHERE id=?`,
    ).bind(now, ticket.id),
    ...notification.statements,
  ];
  if (parsed.data.attachmentUploadId)
    statements.push(
      c.env.DB.prepare('UPDATE uploads SET consumed_at=? WHERE id=?').bind(
        now,
        parsed.data.attachmentUploadId,
      ),
    );
  await c.env.DB.batch(statements);
  return ok(c, { created: true }, 201);
});

adminCatalogRoutes.get('/notification-broadcasts', async (c) => {
  const result = await c.env.DB.prepare(
    'SELECT * FROM notification_broadcasts ORDER BY created_at DESC LIMIT 100',
  ).all<Record<string, unknown>>();
  return ok(c, { items: result.results.map(camelize) });
});
adminCatalogRoutes.post('/notification-broadcasts', async (c) => {
  const parsed = broadcastSchema.safeParse(
    await c.req.json().catch(() => null),
  );
  if (!parsed.success)
    return fail(c, 400, 'VALIDATION_ERROR', 'Invalid broadcast');
  const id = crypto.randomUUID();
  const now = nowSeconds();
  await c.env.DB.batch([
    c.env.DB.prepare(
      `INSERT INTO notification_broadcasts
       (id,title,body,audience,status,created_by_user_id,cursor_created_at,cursor_user_id,recipient_count,created_at)
       VALUES(?,?,?,?,'processing',?,-1,'',0,?)`,
    ).bind(
      id,
      parsed.data.title,
      parsed.data.body,
      parsed.data.audience,
      c.get('userId'),
      now,
    ),
    audit(c, 'notification.broadcast_queued', 'notification_broadcast', id),
  ]);
  return ok(c, { id, status: 'processing', recipients: 0 }, 202);
});

const catalogConfigs: CatalogConfig[] = [
  {
    path: 'notification-templates',
    table: 'notification_templates',
    createSchema: notificationTemplateSchema,
    updateSchema: notificationTemplateSchema.partial(),
    fields: [
      ['key', 'key'],
      ['titleTemplate', 'title_template'],
      ['bodyTemplate', 'body_template'],
      ['status', 'status'],
    ],
  },
  {
    path: 'banners',
    table: 'banners',
    createSchema: bannerInputSchema,
    updateSchema: bannerInputSchema.partial(),
    fields: [
      ['title', 'title'],
      ['body', 'body'],
      ['imageKey', 'image_key'],
      ['actionUrl', 'action_url'],
      ['status', 'status'],
      ['startsAt', 'starts_at'],
      ['endsAt', 'ends_at'],
      ['sortOrder', 'sort_order'],
    ],
  },
  {
    path: 'finance-offers',
    table: 'finance_offers',
    createSchema: financeOfferInputSchema,
    updateSchema: financeOfferInputSchema.partial(),
    fields: [
      ['providerName', 'provider_name'],
      ['title', 'title'],
      ['description', 'description'],
      ['category', 'category'],
      ['disclaimer', 'disclaimer'],
      ['externalUrl', 'external_url'],
      ['status', 'status'],
      ['sortOrder', 'sort_order'],
    ],
  },
  {
    path: 'games',
    table: 'game_definitions',
    createSchema: gameDefinitionInputSchema,
    updateSchema: gameDefinitionInputSchema.partial(),
    fields: [
      ['title', 'title'],
      ['description', 'description'],
      ['rules', 'rules'],
      ['dailyPlayLimit', 'daily_play_limit'],
      ['pointsPerPlay', 'points_per_play'],
      ['status', 'status'],
    ],
  },
  {
    path: 'membership-plans',
    table: 'membership_plans',
    createSchema: membershipPlanInputSchema,
    updateSchema: membershipPlanInputSchema.partial(),
    fields: [
      ['name', 'name'],
      ['description', 'description'],
      ['benefits', 'benefits_json', (value) => JSON.stringify(value)],
      ['priceMinor', 'price_minor'],
      ['currency', 'currency'],
      ['durationDays', 'duration_days'],
      ['status', 'status'],
    ],
  },
  {
    path: 'discounts',
    table: 'discount_offers',
    createSchema: discountOfferInputSchema,
    updateSchema: discountOfferInputSchema.partial(),
    fields: [
      ['code', 'code'],
      ['title', 'title'],
      ['description', 'description'],
      ['discountType', 'discount_type'],
      ['value', 'value'],
      ['maxDiscountMinor', 'max_discount_minor'],
      ['minimumOrderMinor', 'minimum_order_minor'],
      ['redemptionLimit', 'redemption_limit'],
      ['perUserLimit', 'per_user_limit'],
      ['status', 'status'],
      ['startsAt', 'starts_at'],
      ['endsAt', 'ends_at'],
    ],
  },
  {
    path: 'referral-programs',
    table: 'referral_programs',
    createSchema: referralProgramInputSchema,
    updateSchema: referralProgramInputSchema.partial(),
    fields: [
      ['name', 'name'],
      ['referrerRewardMinor', 'referrer_reward_minor'],
      ['referredRewardMinor', 'referred_reward_minor'],
      ['referrerRewardCoins', 'referrer_reward_coins'],
      ['referredRewardCoins', 'referred_reward_coins'],
      ['currency', 'currency'],
      ['status', 'status'],
      ['startsAt', 'starts_at'],
      ['endsAt', 'ends_at'],
    ],
  },
];
for (const config of catalogConfigs) registerCatalog(config);

adminCatalogRoutes.get('/memberships', async (c) => {
  const result = await c.env.DB.prepare(
    `SELECT m.*,p.name plan_name,u.phone_e164 FROM memberships m
     JOIN membership_plans p ON p.id=m.plan_id JOIN users u ON u.id=m.user_id
     ORDER BY m.created_at DESC LIMIT 200`,
  ).all<Record<string, unknown>>();
  return ok(c, { items: result.results.map(camelize) });
});
adminCatalogRoutes.post('/memberships', async (c) => {
  const parsed = membershipGrantSchema.safeParse(
    await c.req.json().catch(() => null),
  );
  if (!parsed.success)
    return fail(c, 400, 'VALIDATION_ERROR', 'Invalid membership grant');
  const plan = await c.env.DB.prepare(
    `SELECT id,duration_days FROM membership_plans WHERE id=? AND status='active'`,
  )
    .bind(parsed.data.planId)
    .first<{ id: string; duration_days: number }>();
  if (!plan)
    return fail(c, 404, 'PLAN_NOT_FOUND', 'Active membership plan not found');
  const startsAt = parsed.data.startsAt ?? nowSeconds();
  const id = crypto.randomUUID();
  const now = nowSeconds();
  await c.env.DB.batch([
    c.env.DB.prepare(
      `INSERT INTO memberships
       (id,user_id,plan_id,status,source,starts_at,ends_at,created_at,updated_at)
       VALUES(?,?,?,'active','admin_grant',?,?,?,?,?)`,
    ).bind(
      id,
      parsed.data.userId,
      parsed.data.planId,
      startsAt,
      startsAt + plan.duration_days * 86400,
      now,
      now,
    ),
    audit(c, 'membership.granted', 'membership', id, parsed.data),
  ]);
  return ok(c, { id }, 201);
});
adminCatalogRoutes.delete('/memberships/:id', async (c) => {
  const result = await c.env.DB.prepare(
    `UPDATE memberships SET status='cancelled',updated_at=? WHERE id=? AND status='active'`,
  )
    .bind(nowSeconds(), c.req.param('id'))
    .run();
  if (!result.meta.changes)
    return fail(c, 409, 'MEMBERSHIP_NOT_ACTIVE', 'Membership is not active');
  await audit(c, 'membership.cancelled', 'membership', c.req.param('id')).run();
  return ok(c, { cancelled: true });
});

interface CatalogConfig {
  path: string;
  table: string;
  createSchema: z.ZodType<Record<string, unknown>>;
  updateSchema: z.ZodType<Record<string, unknown>>;
  fields: Array<[string, string, ((value: unknown) => unknown)?]>;
}
function registerCatalog(config: CatalogConfig) {
  adminCatalogRoutes.get(`/${config.path}`, async (c) => {
    const result = await c.env.DB.prepare(
      `SELECT * FROM ${config.table} ORDER BY created_at DESC LIMIT 200`,
    ).all<Record<string, unknown>>();
    return ok(c, { items: result.results.map(camelize) });
  });
  adminCatalogRoutes.post(`/${config.path}`, async (c) => {
    const parsed = config.createSchema.safeParse(
      await c.req.json().catch(() => null),
    );
    if (!parsed.success)
      return fail(c, 400, 'VALIDATION_ERROR', `Invalid ${config.path}`);
    const id = crypto.randomUUID();
    const now = nowSeconds();
    const columns = config.fields.map(([, column]) => column);
    const values = config.fields.map(([key, , transform]) =>
      transform ? transform(parsed.data[key]) : (parsed.data[key] ?? null),
    );
    const statements: D1PreparedStatement[] = [];
    if (config.table === 'referral_programs' && parsed.data.status === 'active')
      statements.push(
        c.env.DB.prepare(
          `UPDATE referral_programs SET status='archived',updated_at=? WHERE status='active'`,
        ).bind(now),
      );
    statements.push(
      c.env.DB.prepare(
        `INSERT INTO ${config.table}(id,${columns.join(',')},created_at,updated_at)
         VALUES(?,${columns.map(() => '?').join(',')},?,?)`,
      ).bind(id, ...values, now, now),
      audit(c, `${config.table}.created`, config.table, id),
    );
    await c.env.DB.batch(statements);
    return ok(c, { id }, 201);
  });
  adminCatalogRoutes.patch(`/${config.path}/:id`, async (c) => {
    const parsed = config.updateSchema.safeParse(
      await c.req.json().catch(() => null),
    );
    if (!parsed.success)
      return fail(c, 400, 'VALIDATION_ERROR', `Invalid ${config.path} update`);
    const target = await c.env.DB.prepare(
      `SELECT id FROM ${config.table} WHERE id=?`,
    )
      .bind(c.req.param('id'))
      .first();
    if (!target)
      return fail(c, 404, 'RESOURCE_NOT_FOUND', 'Resource not found');
    const entries = config.fields.filter(
      ([key]) => parsed.data[key] !== undefined,
    );
    if (!entries.length)
      return fail(c, 400, 'EMPTY_UPDATE', 'No fields supplied');
    const values = entries.map(([key, , transform]) =>
      transform ? transform(parsed.data[key]) : (parsed.data[key] ?? null),
    );
    const now = nowSeconds();
    const statements: D1PreparedStatement[] = [];
    if (config.table === 'referral_programs' && parsed.data.status === 'active')
      statements.push(
        c.env.DB.prepare(
          `UPDATE referral_programs SET status='archived',updated_at=? WHERE status='active' AND id!=?`,
        ).bind(now, c.req.param('id')),
      );
    const updateIndex = statements.length;
    statements.push(
      c.env.DB.prepare(
        `UPDATE ${config.table} SET ${entries.map(([, column]) => `${column}=?`).join(',')},updated_at=? WHERE id=?`,
      ).bind(...values, now, c.req.param('id')),
      audit(
        c,
        `${config.table}.updated`,
        config.table,
        c.req.param('id'),
        parsed.data,
      ),
    );
    const results = await c.env.DB.batch(statements);
    if (!results[updateIndex]?.meta.changes)
      return fail(c, 404, 'RESOURCE_NOT_FOUND', 'Resource not found');
    return ok(c, { updated: true });
  });
  adminCatalogRoutes.delete(`/${config.path}/:id`, async (c) => {
    const result = await c.env.DB.prepare(
      `UPDATE ${config.table} SET status='archived',updated_at=? WHERE id=?`,
    )
      .bind(nowSeconds(), c.req.param('id'))
      .run();
    if (!result.meta.changes)
      return fail(c, 404, 'RESOURCE_NOT_FOUND', 'Resource not found');
    await audit(
      c,
      `${config.table}.archived`,
      config.table,
      c.req.param('id'),
    ).run();
    return ok(c, { archived: true });
  });
}
function camelize(row: Record<string, unknown>) {
  const output: Record<string, unknown> = {};
  for (const [key, value] of Object.entries(row)) {
    const camel = key.replace(/_([a-z])/g, (_, letter: string) =>
      letter.toUpperCase(),
    );
    if (key === 'benefits_json') {
      try {
        output.benefits = JSON.parse(String(value));
      } catch {
        output.benefits = [];
      }
    } else if (key.endsWith('_at') && value != null) {
      output[camel] = new Date(Number(value) * 1000).toISOString();
    } else output[camel] = value;
  }
  return output;
}
function audit(
  c: Parameters<typeof ok>[0],
  action: string,
  entityType: string,
  entityId: string,
  metadata: unknown = {},
) {
  return c.env.DB.prepare(
    `INSERT INTO audit_logs
     (id,actor_user_id,action,entity_type,entity_id,request_id,metadata_json,created_at)
     VALUES(?,?,?,?,?,?,?,?)`,
  ).bind(
    crypto.randomUUID(),
    c.get('userId'),
    action,
    entityType,
    entityId,
    c.get('requestId'),
    JSON.stringify(metadata),
    nowSeconds(),
  );
}

adminCatalogRoutes.post('/notification-broadcasts/:id/retry', async (c) => {
  const result = await c.env.DB.prepare(
    `UPDATE notification_broadcasts SET status='processing',last_error=NULL
     WHERE id=? AND status='failed'`,
  )
    .bind(c.req.param('id'))
    .run();
  if (!result.meta.changes)
    return fail(
      c,
      409,
      'BROADCAST_NOT_RETRYABLE',
      'Broadcast is not failed or does not exist',
    );
  await audit(
    c,
    'notification.broadcast_retried',
    'notification_broadcast',
    c.req.param('id'),
  ).run();
  return ok(c, { retried: true });
});
