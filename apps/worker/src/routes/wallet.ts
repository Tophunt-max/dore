import { Hono } from 'hono';
import { ok } from '../lib/http';
import type { AppEnv } from '../types';

export const walletRoutes = new Hono<AppEnv>();
walletRoutes.get('/', async (c) => {
  const row = await c.env.DB.prepare(
    'SELECT available_minor, locked_minor, currency FROM wallet_accounts WHERE user_id = ?',
  )
    .bind(c.get('userId'))
    .first<{
      available_minor: number;
      locked_minor: number;
      currency: 'INR';
    }>();
  return ok(c, {
    availableMinor: row?.available_minor ?? 0,
    lockedMinor: row?.locked_minor ?? 0,
    currency: row?.currency ?? 'INR',
  });
});
walletRoutes.get('/ledger', async (c) => {
  const result = await c.env.DB.prepare(
    `SELECT id, direction, amount_minor, currency, entry_type, description, created_at FROM ledger_entries WHERE user_id = ? ORDER BY created_at DESC LIMIT 100`,
  )
    .bind(c.get('userId'))
    .all<{
      id: string;
      direction: string;
      amount_minor: number;
      currency: 'INR';
      entry_type: string;
      description: string;
      created_at: number;
    }>();
  return ok(c, {
    items: result.results.map((row) => ({
      id: row.id,
      direction: row.direction,
      amountMinor: row.amount_minor,
      currency: row.currency,
      entryType: row.entry_type,
      description: row.description,
      createdAt: new Date(row.created_at * 1000).toISOString(),
    })),
  });
});
