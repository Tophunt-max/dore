import { Hono } from 'hono';
import type { Env } from '../lib';
import { ACCESS_TTL, hashPassword, now, signJwt, verifyPassword } from '../lib';
import { requireAdmin, type AppContext } from '../middleware';
import { applyWallet } from '../wallet';

const admin = new Hono<{ Bindings: Env }>();

// ---------- Admin auth ----------
// First-ever login: if no admins exist, an admin is bootstrapped when the
// submitted password equals the ADMIN_BOOTSTRAP secret.
admin.post('/login', async (c) => {
  const { email, password } = await c.req.json<{ email?: string; password?: string }>().catch(() => ({} as any));
  if (!email || !password) return c.json({ ok: false, error: 'missing_fields' }, 400);

  const count = await c.env.DB.prepare('SELECT COUNT(*) as n FROM admins').first<{ n: number }>();
  if ((count?.n ?? 0) === 0) {
    if (!c.env.ADMIN_BOOTSTRAP || password !== c.env.ADMIN_BOOTSTRAP)
      return c.json({ ok: false, error: 'bootstrap_denied' }, 401);
    const hash = await hashPassword(password);
    await c.env.DB.prepare("INSERT INTO admins (email, password_hash, role, created_at) VALUES (?, ?, 'admin', ?)")
      .bind(email, hash, now())
      .run();
  }

  const adminRow = await c.env.DB.prepare('SELECT * FROM admins WHERE email = ?').bind(email).first<any>();
  if (!adminRow || !(await verifyPassword(password, adminRow.password_hash)))
    return c.json({ ok: false, error: 'invalid_credentials' }, 401);
  const token = await signJwt(
    { sub: adminRow.id, kind: 'admin', role: adminRow.role, exp: now() + ACCESS_TTL * 8 },
    c.env.JWT_SECRET,
  );
  return c.json({ ok: true, token, admin: { id: adminRow.id, email: adminRow.email, role: adminRow.role } });
});

admin.use('/*', requireAdmin);

// ---------- Dashboard ----------
admin.get('/stats', async (c: AppContext) => {
  const s = await c.env.DB.prepare(
    `SELECT
       (SELECT COUNT(*) FROM users) as users,
       (SELECT COUNT(*) FROM orders) as orders,
       (SELECT COALESCE(SUM(amount_minor),0) FROM orders) as gmv_minor,
       (SELECT COUNT(*) FROM recharges WHERE status='pending') as pending_recharges,
       (SELECT COUNT(*) FROM withdrawals WHERE status='pending') as pending_withdrawals,
       (SELECT COALESCE(SUM(balance_minor),0) FROM users) as wallet_liability_minor`,
  ).first();
  return c.json({ ok: true, stats: s });
});

// ---------- Users ----------
admin.get('/users', async (c: AppContext) => {
  const q = c.req.query('q');
  const stmt = q
    ? c.env.DB.prepare(
        'SELECT id, phone, username, balance_minor, status, invite_code, created_at FROM users WHERE phone LIKE ? OR username LIKE ? ORDER BY id DESC LIMIT 100',
      ).bind(`%${q}%`, `%${q}%`)
    : c.env.DB.prepare(
        'SELECT id, phone, username, balance_minor, status, invite_code, created_at FROM users ORDER BY id DESC LIMIT 100',
      );
  const { results } = await stmt.all();
  return c.json({ ok: true, users: results });
});

admin.post('/users/:id/status', async (c: AppContext) => {
  const { status } = await c.req.json<{ status?: string }>().catch(() => ({} as any));
  if (status !== 'active' && status !== 'blocked') return c.json({ ok: false, error: 'invalid_status' }, 400);
  await c.env.DB.prepare('UPDATE users SET status = ?, updated_at = ? WHERE id = ?')
    .bind(status, now(), c.req.param('id'))
    .run();
  return c.json({ ok: true });
});

admin.post('/users/:id/adjust', async (c: AppContext) => {
  const { amount_minor, note } = await c.req.json<{ amount_minor?: number; note?: string }>().catch(() => ({} as any));
  const amount = Number(amount_minor);
  if (!amount) return c.json({ ok: false, error: 'invalid_amount' }, 400);
  try {
    const { balanceAfter } = await applyWallet(c.env, Number(c.req.param('id')), amount, 'reward', {
      note: note || 'admin adjustment',
    });
    return c.json({ ok: true, balance_after: balanceAfter });
  } catch (e: any) {
    if (e.message === 'insufficient') return c.json({ ok: false, error: 'would_go_negative' }, 400);
    throw e;
  }
});

// ---------- Goods / campaigns ----------
admin.get('/goods', async (c: AppContext) => {
  const { results } = await c.env.DB.prepare('SELECT * FROM goods ORDER BY id DESC LIMIT 200').all();
  return c.json({ ok: true, goods: results });
});

admin.post('/goods', async (c: AppContext) => {
  const b = await c.req.json<any>().catch(() => ({} as any));
  if (!b.title || !b.price_minor) return c.json({ ok: false, error: 'missing_fields' }, 400);
  const res = await c.env.DB.prepare(
    `INSERT INTO goods (title, image, description, category, price_minor, market_price_minor, total_slots, issue, status, end_at, created_at)
     VALUES (?, ?, ?, ?, ?, ?, ?, ?, 'active', ?, ?)`,
  )
    .bind(
      b.title,
      b.image ?? null,
      b.description ?? null,
      b.category ?? 'normal',
      b.price_minor,
      b.market_price_minor ?? 0,
      b.total_slots ?? 100,
      b.issue ?? null,
      b.end_at ?? null,
      now(),
    )
    .run();
  return c.json({ ok: true, id: res.meta.last_row_id });
});

admin.put('/goods/:id', async (c: AppContext) => {
  const b = await c.req.json<any>().catch(() => ({} as any));
  await c.env.DB.prepare(
    `UPDATE goods SET title=?, image=?, description=?, category=?, price_minor=?, market_price_minor=?, total_slots=?, status=?, end_at=? WHERE id=?`,
  )
    .bind(
      b.title,
      b.image ?? null,
      b.description ?? null,
      b.category ?? 'normal',
      b.price_minor,
      b.market_price_minor ?? 0,
      b.total_slots ?? 100,
      b.status ?? 'active',
      b.end_at ?? null,
      c.req.param('id'),
    )
    .run();
  return c.json({ ok: true });
});

// Perform a draw: pick a winner among participants, mark orders, credit reward optionally.
admin.post('/goods/:id/draw', async (c: AppContext) => {
  const goodsId = Number(c.req.param('id'));
  const goods = await c.env.DB.prepare('SELECT * FROM goods WHERE id = ?').bind(goodsId).first<any>();
  if (!goods) return c.json({ ok: false, error: 'not_found' }, 404);
  const participants = await c.env.DB.prepare('SELECT DISTINCT user_id FROM orders WHERE goods_id = ?')
    .bind(goodsId)
    .all<{ user_id: number }>();
  if (participants.results.length === 0) return c.json({ ok: false, error: 'no_participants' }, 400);
  const winner = participants.results[crypto.getRandomValues(new Uint32Array(1))[0] % participants.results.length];
  const ts = now();
  await c.env.DB.batch([
    c.env.DB
      .prepare('INSERT INTO draws (goods_id, issue, winner_user, winning_no, drawn_at) VALUES (?, ?, ?, ?, ?)')
      .bind(goodsId, goods.issue ?? null, winner.user_id, String(crypto.getRandomValues(new Uint32Array(1))[0] % 100000).padStart(5, '0'), ts),
    c.env.DB.prepare("UPDATE goods SET status='closed' WHERE id=?").bind(goodsId),
    c.env.DB.prepare("UPDATE orders SET status='won' WHERE goods_id=? AND user_id=?").bind(goodsId, winner.user_id),
    c.env.DB.prepare("UPDATE orders SET status='lost' WHERE goods_id=? AND user_id<>?").bind(goodsId, winner.user_id),
  ]);
  return c.json({ ok: true, winner_user: winner.user_id });
});

// ---------- Recharges (manual verification) ----------
admin.get('/recharges', async (c: AppContext) => {
  const status = c.req.query('status') || 'pending';
  const { results } = await c.env.DB.prepare(
    `SELECT r.*, u.phone, u.username FROM recharges r JOIN users u ON u.id = r.user_id
     WHERE r.status = ? ORDER BY r.id DESC LIMIT 200`,
  )
    .bind(status)
    .all();
  return c.json({ ok: true, recharges: results });
});

admin.post('/recharges/:id/review', async (c: AppContext) => {
  const { action } = await c.req.json<{ action?: 'approve' | 'reject' }>().catch(() => ({} as any));
  const id = Number(c.req.param('id'));
  const r = await c.env.DB.prepare("SELECT * FROM recharges WHERE id = ? AND status='pending'").bind(id).first<any>();
  if (!r) return c.json({ ok: false, error: 'not_found_or_reviewed' }, 404);
  const ts = now();
  if (action === 'approve') {
    await c.env.DB.prepare("UPDATE recharges SET status='approved', reviewed_by=?, reviewed_at=? WHERE id=?")
      .bind(c.get('adminId'), ts, id)
      .run();
    await applyWallet(c.env, r.user_id, r.amount_minor, 'recharge', { refType: 'recharge', refId: id });
    return c.json({ ok: true, status: 'approved' });
  }
  await c.env.DB.prepare("UPDATE recharges SET status='rejected', reviewed_by=?, reviewed_at=? WHERE id=?")
    .bind(c.get('adminId'), ts, id)
    .run();
  return c.json({ ok: true, status: 'rejected' });
});

// ---------- Withdrawals ----------
admin.get('/withdrawals', async (c: AppContext) => {
  const status = c.req.query('status') || 'pending';
  const { results } = await c.env.DB.prepare(
    `SELECT w.*, u.phone, u.username, b.type as ben_type, b.holder_name, b.account_no, b.ifsc, b.upi_id
     FROM withdrawals w JOIN users u ON u.id = w.user_id LEFT JOIN beneficiaries b ON b.id = w.beneficiary_id
     WHERE w.status = ? ORDER BY w.id DESC LIMIT 200`,
  )
    .bind(status)
    .all();
  return c.json({ ok: true, withdrawals: results });
});

admin.post('/withdrawals/:id/review', async (c: AppContext) => {
  const { action } = await c.req.json<{ action?: 'approve' | 'reject' }>().catch(() => ({} as any));
  const id = Number(c.req.param('id'));
  const w = await c.env.DB.prepare("SELECT * FROM withdrawals WHERE id = ? AND status='pending'").bind(id).first<any>();
  if (!w) return c.json({ ok: false, error: 'not_found_or_reviewed' }, 404);
  const ts = now();
  if (action === 'approve') {
    await c.env.DB.prepare("UPDATE withdrawals SET status='paid', reviewed_by=?, reviewed_at=? WHERE id=?")
      .bind(c.get('adminId'), ts, id)
      .run();
    return c.json({ ok: true, status: 'paid' });
  }
  // reject -> refund the held amount
  await c.env.DB.prepare("UPDATE withdrawals SET status='rejected', reviewed_by=?, reviewed_at=? WHERE id=?")
    .bind(c.get('adminId'), ts, id)
    .run();
  await applyWallet(c.env, w.user_id, w.amount_minor, 'refund', { refType: 'withdrawal', refId: id, note: 'withdrawal rejected' });
  return c.json({ ok: true, status: 'rejected' });
});

// ---------- Proof image (private) ----------
admin.get('/proof/:id', async (c: AppContext) => {
  const r = await c.env.DB.prepare('SELECT proof_key FROM recharges WHERE id = ?').bind(c.req.param('id')).first<{
    proof_key: string;
  }>();
  if (!r?.proof_key) return c.json({ ok: false, error: 'no_proof' }, 404);
  const obj = await c.env.UPLOADS.get(r.proof_key);
  if (!obj) return c.json({ ok: false, error: 'missing' }, 404);
  return new Response(obj.body, {
    headers: { 'Content-Type': obj.httpMetadata?.contentType || 'application/octet-stream' },
  });
});

// ---------- Content management ----------
admin.post('/banners', async (c: AppContext) => {
  const b = await c.req.json<any>().catch(() => ({} as any));
  const res = await c.env.DB.prepare('INSERT INTO banners (image, link, sort, active) VALUES (?, ?, ?, 1)')
    .bind(b.image, b.link ?? null, b.sort ?? 0)
    .run();
  return c.json({ ok: true, id: res.meta.last_row_id });
});

admin.post('/notices', async (c: AppContext) => {
  const b = await c.req.json<{ text?: string }>().catch(() => ({} as any));
  if (!b.text) return c.json({ ok: false, error: 'missing_text' }, 400);
  const res = await c.env.DB.prepare('INSERT INTO notices (text, active, created_at) VALUES (?, 1, ?)')
    .bind(b.text, now())
    .run();
  return c.json({ ok: true, id: res.meta.last_row_id });
});

admin.put('/pages/:slug', async (c: AppContext) => {
  const b = await c.req.json<{ title?: string; body?: string }>().catch(() => ({} as any));
  await c.env.DB.prepare(
    'INSERT INTO pages_content (slug, title, body) VALUES (?, ?, ?) ON CONFLICT(slug) DO UPDATE SET title=excluded.title, body=excluded.body',
  )
    .bind(c.req.param('slug'), b.title ?? '', b.body ?? '')
    .run();
  return c.json({ ok: true });
});

// ---------- Tasks / finance products management ----------
admin.post('/tasks', async (c: AppContext) => {
  const b = await c.req.json<any>().catch(() => ({} as any));
  const res = await c.env.DB.prepare(
    'INSERT INTO tasks (title, description, reward_minor, period, target, active, created_at) VALUES (?, ?, ?, ?, ?, 1, ?)',
  )
    .bind(b.title, b.description ?? null, b.reward_minor ?? 0, b.period ?? 'daily', b.target ?? 1, now())
    .run();
  return c.json({ ok: true, id: res.meta.last_row_id });
});

admin.post('/finance-products', async (c: AppContext) => {
  const b = await c.req.json<any>().catch(() => ({} as any));
  const res = await c.env.DB.prepare(
    `INSERT INTO finance_products (title, image, rate_bps, term_days, min_minor, max_minor, status, created_at)
     VALUES (?, ?, ?, ?, ?, ?, 'active', ?)`,
  )
    .bind(b.title, b.image ?? null, b.rate_bps ?? 0, b.term_days ?? 30, b.min_minor ?? 0, b.max_minor ?? 0, now())
    .run();
  return c.json({ ok: true, id: res.meta.last_row_id });
});

export default admin;
