import type { Env } from './lib';
import { now } from './lib';

/**
 * Apply a wallet delta and append an immutable ledger row.
 * amountMinor: positive = credit, negative = debit.
 * Throws 'insufficient' if a debit would drop the balance below zero.
 * Uses D1 batch so the balance update and ledger insert commit together.
 */
export async function applyWallet(
  env: Env,
  userId: number,
  amountMinor: number,
  type: string,
  opts: { refType?: string; refId?: number; note?: string } = {},
): Promise<{ balanceAfter: number }> {
  const row = await env.DB.prepare('SELECT balance_minor FROM users WHERE id = ?').bind(userId).first<{
    balance_minor: number;
  }>();
  if (!row) throw new Error('user_not_found');
  const balanceAfter = row.balance_minor + amountMinor;
  if (balanceAfter < 0) throw new Error('insufficient');
  const ts = now();
  await env.DB.batch([
    env.DB.prepare('UPDATE users SET balance_minor = ?, updated_at = ? WHERE id = ?').bind(balanceAfter, ts, userId),
    env.DB
      .prepare(
        `INSERT INTO wallet_txns (user_id, type, amount_minor, balance_after, ref_type, ref_id, note, created_at)
         VALUES (?, ?, ?, ?, ?, ?, ?, ?)`,
      )
      .bind(userId, type, amountMinor, balanceAfter, opts.refType ?? null, opts.refId ?? null, opts.note ?? null, ts),
  ]);
  return { balanceAfter };
}
