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

// Pay a pending order straight from the wallet balance (instant purchase — no
// manual bank/UPI checkout). Flow: debit the wallet (serialized per user by the
// wallet DO), then settle the reservation in the campaign DO (reserved -> sold,
// order -> paid, paid_order task event). If settling fails we refund the wallet
// and mark the order failed so it can never be charged without confirming.
orderRoutes.post('/:id/pay-wallet', async (c) => {
  const userId = c.get('userId');
  const orderId = c.req.param('id');
  const order = await c.env.DB.prepare(
    `SELECT id, campaign_id, title, quantity, amount_minor, currency, status, created_at
     FROM orders WHERE id = ? AND user_id = ?`,
  )
    .bind(orderId, userId)
    .first<OrderRow>();
  if (!order) return fail(c, 404, 'ORDER_NOT_FOUND', 'Order not found');
  if (order.status === 'paid' || order.status === 'fulfilled')
    return ok(c, mapOrder(order)); // idempotent success
  if (order.status !== 'pending')
    return fail(c, 409, 'ORDER_NOT_PAYABLE', 'This order can no longer be paid');
  if (!order.campaign_id)
    return fail(c, 409, 'ORDER_NOT_PAYABLE', 'Order is not linked to a campaign');

  const walletDo = c.env.WALLET_COORDINATOR.get(
    c.env.WALLET_COORDINATOR.idFromName(userId),
  );

  // 1) Debit the wallet.
  const debitRes = await walletDo.fetch('https://wallet/order-purchase', {
    method: 'POST',
    body: JSON.stringify({
      operation: 'order.purchase',
      userId,
      orderId,
      amountMinor: order.amount_minor,
    }),
  });
  const debitBody = (await debitRes.json()) as { message?: string };
  if (!debitRes.ok)
    return fail(
      c,
      debitRes.status === 409 ? 409 : 400,
      'INSUFFICIENT_BALANCE',
      debitBody.message ?? 'Wallet payment could not be completed',
    );

  // 2) Settle the reservation in the campaign coordinator.
  const campaignDo = c.env.CAMPAIGN_COORDINATOR.get(
    c.env.CAMPAIGN_COORDINATOR.idFromName(order.campaign_id),
  );
  const settleRes = await campaignDo.fetch('https://campaign/settle', {
    method: 'POST',
    body: JSON.stringify({ operation: 'settle', orderId }),
  });

  if (!settleRes.ok) {
    // 3) Roll back: refund the wallet and fail the order so it can't settle later.
    await walletDo.fetch('https://wallet/credit', {
      method: 'POST',
      body: JSON.stringify({
        operation: 'credit',
        userId,
        amountMinor: order.amount_minor,
        referenceType: 'order_refund',
        referenceId: orderId,
        entryType: 'order_refund',
        description: 'Refund: entry purchase could not be completed',
      }),
    });
    await c.env.DB.prepare(
      `UPDATE orders SET status='failed', updated_at=? WHERE id=? AND status='pending'`,
    )
      .bind(Math.floor(Date.now() / 1000), orderId)
      .run();
    const settleBody = (await settleRes.json()) as { message?: string };
    return fail(
      c,
      409,
      'ORDER_PAYMENT_FAILED',
      settleBody.message ?? 'Entries are no longer available; you were refunded',
    );
  }

  const updated = await c.env.DB.prepare(
    `SELECT id, campaign_id, title, quantity, amount_minor, currency, status, created_at
     FROM orders WHERE id = ? AND user_id = ?`,
  )
    .bind(orderId, userId)
    .first<OrderRow>();
  return ok(c, mapOrder(updated ?? order));
});
