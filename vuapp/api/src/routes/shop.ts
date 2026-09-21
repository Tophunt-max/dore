import { Hono } from 'hono';
import type { Env } from '../lib';
import { now } from '../lib';
import { requireUser, type AppContext } from '../middleware';
import { applyWallet } from '../wallet';

const shop = new Hono<{ Bindings: Env }>();

// ---------- Home aggregate (banners, notices, category buckets, invite/finance) ----------
shop.get('/home', async (c) => {
  const [banners, notices, newbie, high, latest, finance] = await Promise.all([
    c.env.DB.prepare('SELECT id, image, link FROM banners WHERE active = 1 ORDER BY sort').all(),
    c.env.DB.prepare('SELECT id, text FROM notices WHERE active = 1 ORDER BY id DESC LIMIT 20').all(),
    c.env.DB.prepare("SELECT * FROM goods WHERE category='newbie' AND status='active' ORDER BY id DESC LIMIT 10").all(),
    c.env.DB.prepare("SELECT * FROM goods WHERE category='high' AND status='active' ORDER BY id DESC LIMIT 10").all(),
    c.env.DB.prepare("SELECT * FROM goods WHERE status='active' ORDER BY id DESC LIMIT 20").all(),
    c.env.DB.prepare("SELECT * FROM finance_products WHERE status='active' ORDER BY id DESC LIMIT 6").all(),
  ]);
  return c.json({
    ok: true,
    banners: banners.results,
    notices: notices.results,
    newbie: newbie.results,
    high: high.results,
    latest: latest.results,
    finance: finance.results,
  });
});

// ---------- Goods ----------
shop.get('/goods', async (c) => {
  const category = c.req.query('category');
  const stmt = category
    ? c.env.DB.prepare("SELECT * FROM goods WHERE status='active' AND category=? ORDER BY id DESC").bind(category)
    : c.env.DB.prepare("SELECT * FROM goods WHERE status='active' ORDER BY id DESC");
  const { results } = await stmt.all();
  return c.json({ ok: true, goods: results });
});

shop.get('/goods/:id', async (c) => {
  const id = c.req.param('id');
  const goods = await c.env.DB.prepare('SELECT * FROM goods WHERE id = ?').bind(id).first();
  if (!goods) return c.json({ ok: false, error: 'not_found' }, 404);
  const participants = await c.env.DB.prepare(
    `SELECT u.username, u.avatar, o.slots, o.created_at
     FROM orders o JOIN users u ON u.id = o.user_id
     WHERE o.goods_id = ? ORDER BY o.created_at DESC LIMIT 30`,
  )
    .bind(id)
    .all();
  return c.json({ ok: true, goods, participants: participants.results });
});

// ---------- Addresses ----------
shop.get('/addresses', requireUser, async (c: AppContext) => {
  const { results } = await c.env.DB.prepare(
    'SELECT * FROM addresses WHERE user_id = ? ORDER BY is_default DESC, id DESC',
  )
    .bind(c.get('userId'))
    .all();
  return c.json({ ok: true, addresses: results });
});

shop.post('/addresses', requireUser, async (c: AppContext) => {
  const b = await c.req.json<any>().catch(() => ({} as any));
  if (!b.name || !b.phone || !b.pincode || !b.line) return c.json({ ok: false, error: 'missing_fields' }, 400);
  const uid = c.get('userId');
  if (b.is_default) await c.env.DB.prepare('UPDATE addresses SET is_default = 0 WHERE user_id = ?').bind(uid).run();
  const res = await c.env.DB.prepare(
    `INSERT INTO addresses (user_id, name, phone, pincode, line, city, state, is_default, created_at)
     VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)`,
  )
    .bind(uid, b.name, b.phone, b.pincode, b.line, b.city ?? null, b.state ?? null, b.is_default ? 1 : 0, now())
    .run();
  return c.json({ ok: true, id: res.meta.last_row_id });
});

shop.put('/addresses/:id', requireUser, async (c: AppContext) => {
  const b = await c.req.json<any>().catch(() => ({} as any));
  const uid = c.get('userId');
  const id = c.req.param('id');
  if (b.is_default) await c.env.DB.prepare('UPDATE addresses SET is_default = 0 WHERE user_id = ?').bind(uid).run();
  await c.env.DB.prepare(
    `UPDATE addresses SET name=?, phone=?, pincode=?, line=?, city=?, state=?, is_default=? WHERE id=? AND user_id=?`,
  )
    .bind(b.name, b.phone, b.pincode, b.line, b.city ?? null, b.state ?? null, b.is_default ? 1 : 0, id, uid)
    .run();
  return c.json({ ok: true });
});

shop.delete('/addresses/:id', requireUser, async (c: AppContext) => {
  await c.env.DB.prepare('DELETE FROM addresses WHERE id = ? AND user_id = ?')
    .bind(c.req.param('id'), c.get('userId'))
    .run();
  return c.json({ ok: true });
});

// ---------- Orders (join a group-buy / lottery slot; pays from wallet) ----------
shop.post('/orders', requireUser, async (c: AppContext) => {
  const b = await c.req.json<{ goods_id?: number; slots?: number; address_id?: number }>().catch(() => ({} as any));
  const uid = c.get('userId');
  if (!b.goods_id) return c.json({ ok: false, error: 'missing_goods' }, 400);
  const slots = Math.max(1, Math.min(999, b.slots ?? 1));
  const goods = await c.env.DB.prepare("SELECT * FROM goods WHERE id = ? AND status='active'").bind(b.goods_id).first<any>();
  if (!goods) return c.json({ ok: false, error: 'goods_unavailable' }, 400);
  if (goods.filled_slots + slots > goods.total_slots) return c.json({ ok: false, error: 'sold_out' }, 400);
  const amount = goods.price_minor * slots;

  try {
    const res = await c.env.DB.prepare(
      `INSERT INTO orders (user_id, goods_id, address_id, slots, amount_minor, status, created_at)
       VALUES (?, ?, ?, ?, ?, 'paid', ?)`,
    )
      .bind(uid, b.goods_id, b.address_id ?? null, slots, amount, now())
      .run();
    await applyWallet(c.env, uid, -amount, 'order', { refType: 'order', refId: Number(res.meta.last_row_id) });
    await c.env.DB.prepare('UPDATE goods SET filled_slots = filled_slots + ? WHERE id = ?').bind(slots, b.goods_id).run();
    return c.json({ ok: true, order_id: res.meta.last_row_id, amount_minor: amount });
  } catch (e: any) {
    if (e.message === 'insufficient') return c.json({ ok: false, error: 'insufficient_balance' }, 400);
    throw e;
  }
});

shop.get('/orders', requireUser, async (c: AppContext) => {
  const status = c.req.query('status');
  const uid = c.get('userId');
  const stmt = status
    ? c.env.DB.prepare(
        `SELECT o.*, g.title, g.image FROM orders o JOIN goods g ON g.id=o.goods_id
         WHERE o.user_id=? AND o.status=? ORDER BY o.id DESC`,
      ).bind(uid, status)
    : c.env.DB.prepare(
        `SELECT o.*, g.title, g.image FROM orders o JOIN goods g ON g.id=o.goods_id
         WHERE o.user_id=? ORDER BY o.id DESC`,
      ).bind(uid);
  const { results } = await stmt.all();
  return c.json({ ok: true, orders: results });
});

shop.get('/orders/:id', requireUser, async (c: AppContext) => {
  const order = await c.env.DB.prepare(
    `SELECT o.*, g.title, g.image, g.issue FROM orders o JOIN goods g ON g.id=o.goods_id
     WHERE o.id=? AND o.user_id=?`,
  )
    .bind(c.req.param('id'), c.get('userId'))
    .first();
  if (!order) return c.json({ ok: false, error: 'not_found' }, 404);
  return c.json({ ok: true, order });
});

// discount / ranking for an order's goods (participants ranked by slots)
shop.get('/orders/:id/ranking', requireUser, async (c: AppContext) => {
  const order = await c.env.DB.prepare('SELECT goods_id FROM orders WHERE id=? AND user_id=?')
    .bind(c.req.param('id'), c.get('userId'))
    .first<{ goods_id: number }>();
  if (!order) return c.json({ ok: false, error: 'not_found' }, 404);
  const { results } = await c.env.DB.prepare(
    `SELECT u.username, u.avatar, SUM(o.slots) as slots
     FROM orders o JOIN users u ON u.id=o.user_id
     WHERE o.goods_id=? GROUP BY o.user_id ORDER BY slots DESC LIMIT 50`,
  )
    .bind(order.goods_id)
    .all();
  return c.json({ ok: true, ranking: results });
});

export default shop;
