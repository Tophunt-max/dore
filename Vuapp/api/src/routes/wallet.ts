import { Hono } from 'hono';
import type { Env } from '../lib';
import { now, randomToken } from '../lib';
import { requireUser, type AppContext } from '../middleware';

const wallet = new Hono<{ Bindings: Env }>();

wallet.get('/wallet', requireUser, async (c: AppContext) => {
  const u = await c.env.DB.prepare('SELECT balance_minor FROM users WHERE id = ?').bind(c.get('userId')).first<{
    balance_minor: number;
  }>();
  return c.json({ ok: true, balance_minor: u?.balance_minor ?? 0 });
});

// funding records / wallet ledger
wallet.get('/wallet/transactions', requireUser, async (c: AppContext) => {
  const { results } = await c.env.DB.prepare(
    'SELECT * FROM wallet_txns WHERE user_id = ? ORDER BY id DESC LIMIT 200',
  )
    .bind(c.get('userId'))
    .all();
  return c.json({ ok: true, transactions: results });
});

// ---------- Beneficiaries (bank / UPI) ----------
wallet.get('/beneficiaries', requireUser, async (c: AppContext) => {
  const { results } = await c.env.DB.prepare(
    'SELECT * FROM beneficiaries WHERE user_id = ? ORDER BY is_default DESC, id DESC',
  )
    .bind(c.get('userId'))
    .all();
  return c.json({ ok: true, beneficiaries: results });
});

wallet.post('/beneficiaries', requireUser, async (c: AppContext) => {
  const b = await c.req.json<any>().catch(() => ({} as any));
  const uid = c.get('userId');
  if (!b.type || !b.holder_name) return c.json({ ok: false, error: 'missing_fields' }, 400);
  if (b.type === 'bank' && (!b.account_no || !b.ifsc)) return c.json({ ok: false, error: 'missing_bank' }, 400);
  if (b.type === 'upi' && !b.upi_id) return c.json({ ok: false, error: 'missing_upi' }, 400);
  if (b.is_default) await c.env.DB.prepare('UPDATE beneficiaries SET is_default = 0 WHERE user_id = ?').bind(uid).run();
  const res = await c.env.DB.prepare(
    `INSERT INTO beneficiaries (user_id, type, holder_name, account_no, ifsc, upi_id, is_default, created_at)
     VALUES (?, ?, ?, ?, ?, ?, ?, ?)`,
  )
    .bind(uid, b.type, b.holder_name, b.account_no ?? null, b.ifsc ?? null, b.upi_id ?? null, b.is_default ? 1 : 0, now())
    .run();
  return c.json({ ok: true, id: res.meta.last_row_id });
});

wallet.delete('/beneficiaries/:id', requireUser, async (c: AppContext) => {
  await c.env.DB.prepare('DELETE FROM beneficiaries WHERE id = ? AND user_id = ?')
    .bind(c.req.param('id'), c.get('userId'))
    .run();
  return c.json({ ok: true });
});

// ---------- Recharge (manual verification workflow) ----------
// Creates a pending recharge; user submits UTR + optional proof upload key.
wallet.post('/recharge', requireUser, async (c: AppContext) => {
  const b = await c.req.json<{ amount_minor?: number; method?: string; utr?: string; proof_key?: string }>().catch(
    () => ({}) as any,
  );
  const amount = Number(b.amount_minor);
  if (!amount || amount < 100) return c.json({ ok: false, error: 'invalid_amount' }, 400);
  const res = await c.env.DB.prepare(
    `INSERT INTO recharges (user_id, amount_minor, method, utr, proof_key, status, created_at)
     VALUES (?, ?, ?, ?, ?, 'pending', ?)`,
  )
    .bind(c.get('userId'), amount, b.method ?? 'upi', b.utr ?? null, b.proof_key ?? null, now())
    .run();
  return c.json({ ok: true, recharge_id: res.meta.last_row_id, status: 'pending' });
});

wallet.get('/recharge/records', requireUser, async (c: AppContext) => {
  const { results } = await c.env.DB.prepare(
    'SELECT id, amount_minor, method, utr, status, created_at, reviewed_at FROM recharges WHERE user_id = ? ORDER BY id DESC',
  )
    .bind(c.get('userId'))
    .all();
  return c.json({ ok: true, records: results });
});

// ---------- Withdrawal / cash out ----------
wallet.post('/withdraw', requireUser, async (c: AppContext) => {
  const b = await c.req.json<{ amount_minor?: number; beneficiary_id?: number }>().catch(() => ({} as any));
  const uid = c.get('userId');
  const amount = Number(b.amount_minor);
  if (!amount || amount < 100) return c.json({ ok: false, error: 'invalid_amount' }, 400);
  const u = await c.env.DB.prepare('SELECT balance_minor FROM users WHERE id = ?').bind(uid).first<{
    balance_minor: number;
  }>();
  if (!u || u.balance_minor < amount) return c.json({ ok: false, error: 'insufficient_balance' }, 400);
  // Hold funds immediately by debiting; ledger entry recorded. Admin approves payout.
  const balanceAfter = u.balance_minor - amount;
  const ts = now();
  const res = await c.env.DB.prepare(
    `INSERT INTO withdrawals (user_id, beneficiary_id, amount_minor, status, created_at) VALUES (?, ?, ?, 'pending', ?)`,
  )
    .bind(uid, b.beneficiary_id ?? null, amount, ts)
    .run();
  await c.env.DB.batch([
    c.env.DB.prepare('UPDATE users SET balance_minor = ?, updated_at = ? WHERE id = ?').bind(balanceAfter, ts, uid),
    c.env.DB
      .prepare(
        `INSERT INTO wallet_txns (user_id, type, amount_minor, balance_after, ref_type, ref_id, note, created_at)
         VALUES (?, 'withdraw', ?, ?, 'withdrawal', ?, 'withdrawal requested', ?)`,
      )
      .bind(uid, -amount, balanceAfter, Number(res.meta.last_row_id), ts),
  ]);
  return c.json({ ok: true, withdrawal_id: res.meta.last_row_id, status: 'pending' });
});

wallet.get('/withdraw/records', requireUser, async (c: AppContext) => {
  const { results } = await c.env.DB.prepare(
    `SELECT w.id, w.amount_minor, w.status, w.created_at, w.reviewed_at, b.type, b.holder_name
     FROM withdrawals w LEFT JOIN beneficiaries b ON b.id = w.beneficiary_id
     WHERE w.user_id = ? ORDER BY w.id DESC`,
  )
    .bind(c.get('userId'))
    .all();
  return c.json({ ok: true, records: results });
});

// combined payment records (recharges + withdrawals) for payrecord/cashrecord screens
wallet.get('/payments', requireUser, async (c: AppContext) => {
  const { results } = await c.env.DB.prepare(
    `SELECT id, 'recharge' as kind, amount_minor, status, created_at FROM recharges WHERE user_id = ?
     UNION ALL
     SELECT id, 'withdraw' as kind, amount_minor, status, created_at FROM withdrawals WHERE user_id = ?
     ORDER BY created_at DESC LIMIT 200`,
  )
    .bind(c.get('userId'), c.get('userId'))
    .all();
  return c.json({ ok: true, payments: results });
});

export default wallet;
