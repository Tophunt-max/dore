import { Hono } from 'hono';
import type { Env } from '../lib';
import { now, randomToken } from '../lib';
import { requireUser, type AppContext } from '../middleware';
import { applyWallet } from '../wallet';

const misc = new Hono<{ Bindings: Env }>();

// ---------- Winners (public) ----------
misc.get('/winners', async (c) => {
  const { results } = await c.env.DB.prepare(
    `SELECT d.id, d.goods_id, d.issue, d.winning_no, d.drawn_at, g.title, g.image, u.username, u.avatar
     FROM draws d JOIN goods g ON g.id = d.goods_id LEFT JOIN users u ON u.id = d.winner_user
     ORDER BY d.drawn_at DESC LIMIT 50`,
  ).all();
  return c.json({ ok: true, winners: results });
});

// my shares / my wins
misc.get('/my-shares', requireUser, async (c: AppContext) => {
  const { results } = await c.env.DB.prepare(
    `SELECT d.id, d.issue, d.winning_no, d.drawn_at, g.title, g.image
     FROM draws d JOIN goods g ON g.id = d.goods_id
     WHERE d.winner_user = ? ORDER BY d.drawn_at DESC`,
  )
    .bind(c.get('userId'))
    .all();
  return c.json({ ok: true, shares: results });
});

// ---------- Prize pool (promo) ----------
misc.get('/prizes', async (c) => {
  const { results } = await c.env.DB.prepare(
    `SELECT d.id, d.issue, d.winning_no, d.drawn_at, g.title, g.image, g.market_price_minor, u.username
     FROM draws d JOIN goods g ON g.id = d.goods_id LEFT JOIN users u ON u.id = d.winner_user
     ORDER BY g.market_price_minor DESC LIMIT 30`,
  ).all();
  return c.json({ ok: true, prizes: results });
});

// ---------- Finance ----------
misc.get('/finance', async (c) => {
  const { results } = await c.env.DB.prepare("SELECT * FROM finance_products WHERE status='active' ORDER BY id DESC").all();
  return c.json({ ok: true, products: results });
});

misc.get('/finance/:id', async (c) => {
  const p = await c.env.DB.prepare('SELECT * FROM finance_products WHERE id = ?').bind(c.req.param('id')).first();
  if (!p) return c.json({ ok: false, error: 'not_found' }, 404);
  return c.json({ ok: true, product: p });
});

misc.post('/finance/order', requireUser, async (c: AppContext) => {
  const b = await c.req.json<{ product_id?: number; amount_minor?: number }>().catch(() => ({} as any));
  const uid = c.get('userId');
  const p = await c.env.DB.prepare("SELECT * FROM finance_products WHERE id=? AND status='active'")
    .bind(b.product_id)
    .first<any>();
  if (!p) return c.json({ ok: false, error: 'not_found' }, 404);
  const amount = Number(b.amount_minor);
  if (!amount || (p.min_minor && amount < p.min_minor) || (p.max_minor && amount > p.max_minor))
    return c.json({ ok: false, error: 'invalid_amount' }, 400);
  try {
    const ts = now();
    const end = ts + p.term_days * 86400;
    const res = await c.env.DB.prepare(
      `INSERT INTO finance_orders (user_id, product_id, amount_minor, status, start_at, end_at, created_at)
       VALUES (?, ?, ?, 'active', ?, ?, ?)`,
    )
      .bind(uid, p.id, amount, ts, end, ts)
      .run();
    await applyWallet(c.env, uid, -amount, 'finance', { refType: 'finance_order', refId: Number(res.meta.last_row_id) });
    return c.json({ ok: true, order_id: res.meta.last_row_id });
  } catch (e: any) {
    if (e.message === 'insufficient') return c.json({ ok: false, error: 'insufficient_balance' }, 400);
    throw e;
  }
});

misc.get('/finance/orders/mine', requireUser, async (c: AppContext) => {
  const { results } = await c.env.DB.prepare(
    `SELECT fo.*, fp.title, fp.rate_bps, fp.term_days FROM finance_orders fo
     JOIN finance_products fp ON fp.id = fo.product_id WHERE fo.user_id = ? ORDER BY fo.id DESC`,
  )
    .bind(c.get('userId'))
    .all();
  return c.json({ ok: true, orders: results });
});

// ---------- Game (non-monetary demo: guess high/low) ----------
misc.post('/game/play', requireUser, async (c: AppContext) => {
  const b = await c.req.json<{ bet_minor?: number; guess?: 'high' | 'low' }>().catch(() => ({} as any));
  const uid = c.get('userId');
  const bet = Math.max(0, Math.min(Number(b.bet_minor) || 0, 100000));
  const roll = crypto.getRandomValues(new Uint8Array(1))[0] % 100; // 0-99
  const win = (b.guess === 'high' && roll >= 50) || (b.guess === 'low' && roll < 50);
  let payout = 0;
  if (bet > 0) {
    try {
      await applyWallet(c.env, uid, -bet, 'game', { note: 'game bet' });
    } catch {
      return c.json({ ok: false, error: 'insufficient_balance' }, 400);
    }
    if (win) {
      payout = bet * 2;
      await applyWallet(c.env, uid, payout, 'game', { note: 'game payout' });
    }
  }
  await c.env.DB.prepare(
    'INSERT INTO game_plays (user_id, bet_minor, result, payout_minor, created_at) VALUES (?, ?, ?, ?, ?)',
  )
    .bind(uid, bet, win ? 'win' : 'lose', payout, now())
    .run();
  return c.json({ ok: true, roll, result: win ? 'win' : 'lose', payout_minor: payout });
});

// ---------- Content ----------
misc.get('/banners', async (c) => {
  const { results } = await c.env.DB.prepare('SELECT id, image, link FROM banners WHERE active = 1 ORDER BY sort').all();
  return c.json({ ok: true, banners: results });
});

misc.get('/notices', async (c) => {
  const { results } = await c.env.DB.prepare('SELECT id, text FROM notices WHERE active = 1 ORDER BY id DESC').all();
  return c.json({ ok: true, notices: results });
});

misc.get('/help', async (c) => {
  const { results } = await c.env.DB.prepare('SELECT id, topic, title FROM help_articles ORDER BY sort, id').all();
  return c.json({ ok: true, articles: results });
});

misc.get('/help/:topic', async (c) => {
  const { results } = await c.env.DB.prepare('SELECT * FROM help_articles WHERE topic = ? ORDER BY sort, id')
    .bind(c.req.param('topic'))
    .all();
  return c.json({ ok: true, articles: results });
});

misc.get('/pages/:slug', async (c) => {
  const p = await c.env.DB.prepare('SELECT * FROM pages_content WHERE slug = ?').bind(c.req.param('slug')).first();
  if (!p) return c.json({ ok: false, error: 'not_found' }, 404);
  return c.json({ ok: true, page: p });
});

// ---------- Uploads (private R2) ----------
// Returns an object key after storing the file; used for recharge proof / avatar.
misc.post('/upload', requireUser, async (c: AppContext) => {
  const ct = c.req.header('Content-Type') || '';
  if (!ct.startsWith('image/')) return c.json({ ok: false, error: 'invalid_type' }, 400);
  const body = await c.req.arrayBuffer();
  if (body.byteLength === 0 || body.byteLength > 5 * 1024 * 1024)
    return c.json({ ok: false, error: 'invalid_size' }, 400);
  const ext = ct.split('/')[1]?.replace(/[^a-z0-9]/gi, '') || 'bin';
  const key = `u/${c.get('userId')}/${now()}-${randomToken(8)}.${ext}`;
  await c.env.UPLOADS.put(key, body, { httpMetadata: { contentType: ct } });
  return c.json({ ok: true, key });
});

export default misc;
