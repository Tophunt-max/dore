import { Hono } from 'hono';
import { addressInputSchema } from '@oriva/shared';
import { fail, ok } from '../lib/http';
import {
  mapAddress,
  mapPrize,
  mapTask,
  mapTeamMember,
  mapWithdrawal,
} from '../lib/mappers';
import type { AppEnv } from '../types';

export const featureRoutes = new Hono<AppEnv>();
const now = () => Math.floor(Date.now() / 1000);

featureRoutes.get('/addresses', async (c) => {
  const result = await c.env.DB.prepare(
    `SELECT id,recipient_name,phone_e164,line1,line2,city,region,postal_code,country_code,is_default
     FROM addresses WHERE user_id=? ORDER BY is_default DESC,created_at DESC`,
  )
    .bind(c.get('userId'))
    .all<Record<string, unknown>>();
  return ok(c, { items: result.results.map(mapAddress) });
});
featureRoutes.post('/addresses', async (c) => {
  const p = addressInputSchema.safeParse(await c.req.json().catch(() => null));
  if (!p.success)
    return fail(
      c,
      400,
      'VALIDATION_ERROR',
      'Invalid address',
      p.error.flatten().fieldErrors,
    );
  const id = crypto.randomUUID(),
    n = now(),
    d = p.data;
  const existingAddress = await c.env.DB.prepare(
    'SELECT id FROM addresses WHERE user_id=? LIMIT 1',
  )
    .bind(c.get('userId'))
    .first();
  const shouldDefault = d.isDefault || !existingAddress;
  const statements: D1PreparedStatement[] = [];
  if (shouldDefault)
    statements.push(
      c.env.DB.prepare(
        'UPDATE addresses SET is_default=0 WHERE user_id=?',
      ).bind(c.get('userId')),
    );
  statements.push(
    c.env.DB.prepare(
      `INSERT INTO addresses(id,user_id,recipient_name,phone_e164,line1,line2,city,region,postal_code,country_code,is_default,created_at,updated_at)VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)`,
    ).bind(
      id,
      c.get('userId'),
      d.recipientName,
      d.phone,
      d.line1,
      d.line2 ?? null,
      d.city,
      d.region,
      d.postalCode,
      d.countryCode,
      shouldDefault ? 1 : 0,
      n,
      n,
    ),
  );
  await c.env.DB.batch(statements);
  return ok(c, { id }, 201);
});
featureRoutes.patch('/addresses/:id', async (c) => {
  const p = addressInputSchema
    .partial()
    .safeParse(await c.req.json().catch(() => null));
  if (!p.success)
    return fail(
      c,
      400,
      'VALIDATION_ERROR',
      'Invalid address update',
      p.error.flatten().fieldErrors,
    );
  const cur = await c.env.DB.prepare(
    'SELECT * FROM addresses WHERE id=? AND user_id=?',
  )
    .bind(c.req.param('id'), c.get('userId'))
    .first<Record<string, unknown>>();
  if (!cur) return fail(c, 404, 'ADDRESS_NOT_FOUND', 'Address not found');
  const d = p.data;
  const statements: D1PreparedStatement[] = [];
  if (d.isDefault)
    statements.push(
      c.env.DB.prepare(
        'UPDATE addresses SET is_default=0 WHERE user_id=?',
      ).bind(c.get('userId')),
    );
  statements.push(
    c.env.DB.prepare(
      `UPDATE addresses SET recipient_name=?,phone_e164=?,line1=?,line2=?,city=?,region=?,postal_code=?,country_code=?,is_default=?,updated_at=? WHERE id=? AND user_id=?`,
    ).bind(
      d.recipientName ?? cur.recipient_name,
      d.phone ?? cur.phone_e164,
      d.line1 ?? cur.line1,
      d.line2 === undefined ? cur.line2 : d.line2,
      d.city ?? cur.city,
      d.region ?? cur.region,
      d.postalCode ?? cur.postal_code,
      d.countryCode ?? cur.country_code,
      d.isDefault === undefined ? cur.is_default : d.isDefault ? 1 : 0,
      now(),
      c.req.param('id'),
      c.get('userId'),
    ),
  );
  await c.env.DB.batch(statements);
  return ok(c, { updated: true });
});
featureRoutes.delete('/addresses/:id', async (c) => {
  const address = await c.env.DB.prepare(
    'SELECT id,is_default FROM addresses WHERE id=? AND user_id=?',
  )
    .bind(c.req.param('id'), c.get('userId'))
    .first<{ id: string; is_default: number }>();
  if (!address) return fail(c, 404, 'ADDRESS_NOT_FOUND', 'Address not found');
  const used = await c.env.DB.prepare(
    'SELECT id FROM prizes WHERE address_id=? LIMIT 1',
  )
    .bind(address.id)
    .first();
  if (used)
    return fail(
      c,
      409,
      'ADDRESS_IN_USE',
      'This address is linked to a prize claim',
    );
  await c.env.DB.prepare('DELETE FROM addresses WHERE id=? AND user_id=?')
    .bind(address.id, c.get('userId'))
    .run();
  if (address.is_default) {
    const replacement = await c.env.DB.prepare(
      'SELECT id FROM addresses WHERE user_id=? ORDER BY created_at DESC LIMIT 1',
    )
      .bind(c.get('userId'))
      .first<{ id: string }>();
    if (replacement)
      await c.env.DB.prepare('UPDATE addresses SET is_default=1 WHERE id=?')
        .bind(replacement.id)
        .run();
  }
  return ok(c, { deleted: true });
});

featureRoutes.get('/tasks', async (c) => {
  const result = await c.env.DB.prepare(
    `SELECT id,title,description,period,eligibility_event,reward_coins,reward_minor,status,sort_order
     FROM task_definitions WHERE status='active' ORDER BY sort_order`,
  ).all<Record<string, unknown>>();
  return ok(c, { items: result.results.map(mapTask) });
});
featureRoutes.post('/tasks/:id/claim', async (c) => {
  const userId = c.get('userId');
  const coordinator = c.env.WALLET_COORDINATOR.get(
    c.env.WALLET_COORDINATOR.idFromName(userId),
  );
  const response = await coordinator.fetch('https://wallet/task-reward', {
    method: 'POST',
    body: JSON.stringify({
      operation: 'task.reward',
      userId,
      taskId: c.req.param('id'),
    }),
  });
  const body = await response.json();
  if (!response.ok)
    return fail(
      c,
      response.status === 404 ? 404 : response.status === 409 ? 409 : 400,
      response.status === 409 ? 'TASK_NOT_ELIGIBLE' : 'TASK_CLAIM_FAILED',
      (body as { message?: string }).message ??
        'Task reward could not be claimed',
    );
  return ok(c, body, 201);
});

featureRoutes.get('/content/:slug', async (c) => {
  const locale = c.req.query('locale') ?? 'en';
  const row = await c.env.DB.prepare(
    `SELECT id,slug,title,body,locale,status,version,updated_at FROM content_pages WHERE slug=? AND locale=? AND status='published' ORDER BY version DESC LIMIT 1`,
  )
    .bind(c.req.param('slug'), locale)
    .first<Record<string, unknown>>();
  if (!row) return fail(c, 404, 'CONTENT_NOT_FOUND', 'Content not found');
  return ok(c, {
    ...row,
    updatedAt: new Date(Number(row.updated_at) * 1000).toISOString(),
  });
});

featureRoutes.get('/prizes', async (c) => {
  const result = await c.env.DB.prepare(
    `SELECT pr.id,p.title product_title,pr.status,pr.tracking_reference,pr.created_at
     FROM prizes pr JOIN products p ON p.id=pr.product_id
     WHERE pr.user_id=? ORDER BY pr.created_at DESC`,
  )
    .bind(c.get('userId'))
    .all<Record<string, unknown>>();
  return ok(c, { items: result.results.map(mapPrize) });
});
featureRoutes.post('/prizes/:id/claim', async (c) => {
  const body = (await c.req
    .json<{ addressId?: string }>()
    .catch(() => ({}))) as { addressId?: string };
  if (!body.addressId)
    return fail(c, 400, 'ADDRESS_REQUIRED', 'Select a delivery address');
  const address = await c.env.DB.prepare(
    'SELECT id FROM addresses WHERE id=? AND user_id=?',
  )
    .bind(body.addressId, c.get('userId'))
    .first();
  if (!address) return fail(c, 400, 'INVALID_ADDRESS', 'Address not found');
  const result = await c.env.DB.prepare(
    `UPDATE prizes SET status='claimed',address_id=?,claimed_at=?,updated_at=? WHERE id=? AND user_id=? AND status='unclaimed'`,
  )
    .bind(body.addressId, now(), now(), c.req.param('id'), c.get('userId'))
    .run();
  if (!result.meta.changes)
    return fail(c, 409, 'PRIZE_NOT_CLAIMABLE', 'Prize cannot be claimed');
  return ok(c, { claimed: true });
});

featureRoutes.get('/team', async (c) => {
  const result = await c.env.DB.prepare(
    `SELECT r.id,r.status,r.created_at,r.qualified_at,r.rewarded_at,
      u.id user_id,u.display_name,u.phone_e164 FROM referrals r
     JOIN users u ON u.id=r.referred_user_id WHERE r.referrer_user_id=?
     ORDER BY r.created_at DESC`,
  )
    .bind(c.get('userId'))
    .all<Record<string, unknown>>();
  return ok(c, { items: result.results.map(mapTeamMember) });
});
featureRoutes.get('/withdrawals', async (c) => {
  const result = await c.env.DB.prepare(
    `SELECT id,amount_minor,currency,status,beneficiary_id,destination_snapshot_json,
      rejection_reason,payout_reference,created_at,updated_at,settled_at
     FROM withdrawals WHERE user_id=? ORDER BY created_at DESC`,
  )
    .bind(c.get('userId'))
    .all<Record<string, unknown>>();
  return ok(c, { items: result.results.map(mapWithdrawal) });
});

featureRoutes.get('/coins', async (c) => {
  const row = await c.env.DB.prepare(
    'SELECT balance FROM coin_accounts WHERE user_id=?',
  )
    .bind(c.get('userId'))
    .first<{ balance: number }>();
  return ok(c, { balance: row?.balance ?? 0 });
});
featureRoutes.get('/coins/ledger', async (c) => {
  const result = await c.env.DB.prepare(
    `SELECT id,direction,amount,entry_type,description,created_at
     FROM coin_ledger_entries WHERE user_id=? ORDER BY created_at DESC LIMIT 100`,
  )
    .bind(c.get('userId'))
    .all<{
      id: string;
      direction: string;
      amount: number;
      entry_type: string;
      description: string;
      created_at: number;
    }>();
  return ok(c, {
    items: result.results.map((row) => ({
      id: row.id,
      direction: row.direction,
      amount: row.amount,
      entryType: row.entry_type,
      description: row.description,
      createdAt: new Date(row.created_at * 1000).toISOString(),
    })),
  });
});
