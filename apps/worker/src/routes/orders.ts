import { Hono } from 'hono';
import { createOrderSchema } from '@oriva/shared';
import { fail, ok } from '../lib/http';
import type { AppEnv } from '../types';

interface OrderRow {
  id: string;
  campaign_id: string | null;
  title: string;
  quantity: number;
  amount_minor: number;
  currency: 'INR';
  status: string;
  created_at: number;
}
const mapOrder = (row: OrderRow) => ({
  id: row.id,
  campaignId: row.campaign_id,
  title: row.title,
  quantity: row.quantity,
  amountMinor: row.amount_minor,
  currency: row.currency,
  status: row.status,
  createdAt: new Date(row.created_at * 1000).toISOString(),
});

export const orderRoutes = new Hono<AppEnv>();
orderRoutes.post('/', async (c) => {
  const parsed = createOrderSchema.safeParse(
    await c.req.json().catch(() => null),
  );
  if (!parsed.success)
    return fail(
      c,
      400,
      'VALIDATION_ERROR',
      'Invalid order request',
      parsed.error.flatten().fieldErrors,
    );
  const id = c.env.CAMPAIGN_COORDINATOR.idFromName(parsed.data.campaignId);
  const response = await c.env.CAMPAIGN_COORDINATOR.get(id).fetch(
    'https://campaign/reserve',
    {
      method: 'POST',
      body: JSON.stringify({ userId: c.get('userId'), ...parsed.data }),
    },
  );
  const body = await response.json();
  if (!response.ok)
    return fail(
      c,
      response.status === 404 ? 404 : response.status === 409 ? 409 : 400,
      'ORDER_REJECTED',
      (body as { message?: string }).message ?? 'Order rejected',
    );
  return ok(c, body, 201);
});
orderRoutes.get('/', async (c) => {
  const result = await c.env.DB.prepare(
    `SELECT id, campaign_id, title, quantity, amount_minor, currency, status, created_at FROM orders WHERE user_id = ? ORDER BY created_at DESC LIMIT 100`,
  )
    .bind(c.get('userId'))
    .all<OrderRow>();
  return ok(c, { items: result.results.map(mapOrder) });
});
orderRoutes.get('/:id', async (c) => {
  const row = await c.env.DB.prepare(
    `SELECT id, campaign_id, title, quantity, amount_minor, currency, status, created_at FROM orders WHERE id = ? AND user_id = ?`,
  )
    .bind(c.req.param('id'), c.get('userId'))
    .first<OrderRow>();
  if (!row) return fail(c, 404, 'ORDER_NOT_FOUND', 'Order not found');
  return ok(c, mapOrder(row));
});
