import { Hono } from 'hono';
import type { Env } from '../lib';
import { now } from '../lib';
import { requireUser, type AppContext } from '../middleware';
import { publicUser } from './auth';
import { applyWallet } from '../wallet';

const account = new Hono<{ Bindings: Env }>();

// useraccount aggregate: profile, balance, quick counts
account.get('/account', requireUser, async (c: AppContext) => {
  const uid = c.get('userId');
  const user = await c.env.DB.prepare('SELECT * FROM users WHERE id = ?').bind(uid).first<any>();
  if (!user) return c.json({ ok: false, error: 'not_found' }, 404);
  const counts = await c.env.DB.prepare(
    `SELECT
       (SELECT COUNT(*) FROM orders WHERE user_id=?) as orders,
       (SELECT COUNT(*) FROM orders WHERE user_id=? AND status='won') as wins,
       (SELECT COUNT(*) FROM users WHERE invited_by=?) as team`,
  )
    .bind(uid, uid, uid)
    .first<any>();
  return c.json({ ok: true, user: publicUser(user), counts });
});

account.put('/account/username', requireUser, async (c: AppContext) => {
  const { username } = await c.req.json<{ username?: string }>().catch(() => ({ username: undefined } as any));
  if (!username || username.length < 2 || username.length > 24)
    return c.json({ ok: false, error: 'invalid_username' }, 400);
  await c.env.DB.prepare('UPDATE users SET username = ?, updated_at = ? WHERE id = ?')
    .bind(username, now(), c.get('userId'))
    .run();
  return c.json({ ok: true });
});

account.put('/account/avatar', requireUser, async (c: AppContext) => {
  const { avatar } = await c.req.json<{ avatar?: string }>().catch(() => ({ avatar: undefined } as any));
  await c.env.DB.prepare('UPDATE users SET avatar = ?, updated_at = ? WHERE id = ?')
    .bind(avatar ?? null, now(), c.get('userId'))
    .run();
  return c.json({ ok: true });
});

account.put('/account/language', requireUser, async (c: AppContext) => {
  const { language } = await c.req.json<{ language?: string }>().catch(() => ({ language: 'en' } as any));
  await c.env.DB.prepare('UPDATE users SET language = ? WHERE id = ?').bind(language ?? 'en', c.get('userId')).run();
  return c.json({ ok: true });
});

// ---------- Referral / invitation ----------
account.get('/referrals', requireUser, async (c: AppContext) => {
  const uid = c.get('userId');
  const u = await c.env.DB.prepare('SELECT invite_code FROM users WHERE id = ?').bind(uid).first<{
    invite_code: string;
  }>();
  const stats = await c.env.DB.prepare(
    `SELECT COUNT(*) as total,
            SUM(CASE WHEN created_at > ? THEN 1 ELSE 0 END) as recent
     FROM users WHERE invited_by = ?`,
  )
    .bind(now() - 30 * 86400, uid)
    .first<any>();
  const earnings = await c.env.DB.prepare(
    "SELECT COALESCE(SUM(amount_minor),0) as total FROM wallet_txns WHERE user_id=? AND type='referral'",
  )
    .bind(uid)
    .first<{ total: number }>();
  return c.json({ ok: true, invite_code: u?.invite_code, stats, referral_earnings_minor: earnings?.total ?? 0 });
});

// ---------- Team ----------
account.get('/team', requireUser, async (c: AppContext) => {
  const { results } = await c.env.DB.prepare(
    'SELECT id, username, avatar, created_at FROM users WHERE invited_by = ? ORDER BY id DESC',
  )
    .bind(c.get('userId'))
    .all();
  return c.json({ ok: true, members: results });
});

account.get('/team/:id', requireUser, async (c: AppContext) => {
  const member = await c.env.DB.prepare(
    'SELECT id, username, avatar, created_at FROM users WHERE id = ? AND invited_by = ?',
  )
    .bind(c.req.param('id'), c.get('userId'))
    .first();
  if (!member) return c.json({ ok: false, error: 'not_found' }, 404);
  const orders = await c.env.DB.prepare('SELECT COUNT(*) as cnt FROM orders WHERE user_id = ?')
    .bind(c.req.param('id'))
    .first<{ cnt: number }>();
  return c.json({ ok: true, member, order_count: orders?.cnt ?? 0 });
});

// ---------- Tasks ----------
account.get('/tasks', requireUser, async (c: AppContext) => {
  const uid = c.get('userId');
  const { results } = await c.env.DB.prepare(
    `SELECT t.*, COALESCE(ut.progress,0) as progress, COALESCE(ut.claimed,0) as claimed
     FROM tasks t LEFT JOIN user_tasks ut ON ut.task_id = t.id AND ut.user_id = ?
     WHERE t.active = 1 ORDER BY t.id`,
  )
    .bind(uid)
    .all();
  return c.json({ ok: true, tasks: results });
});

account.post('/tasks/:id/claim', requireUser, async (c: AppContext) => {
  const uid = c.get('userId');
  const taskId = Number(c.req.param('id'));
  const task = await c.env.DB.prepare('SELECT * FROM tasks WHERE id = ? AND active = 1').bind(taskId).first<any>();
  if (!task) return c.json({ ok: false, error: 'not_found' }, 404);
  const ut = await c.env.DB.prepare('SELECT * FROM user_tasks WHERE user_id = ? AND task_id = ?')
    .bind(uid, taskId)
    .first<any>();
  const progress = ut?.progress ?? 0;
  if (ut?.claimed) return c.json({ ok: false, error: 'already_claimed' }, 400);
  if (progress < task.target) return c.json({ ok: false, error: 'incomplete' }, 400);
  const ts = now();
  if (ut) {
    await c.env.DB.prepare('UPDATE user_tasks SET claimed = 1, updated_at = ? WHERE id = ?').bind(ts, ut.id).run();
  } else {
    await c.env.DB.prepare(
      'INSERT INTO user_tasks (user_id, task_id, progress, claimed, updated_at) VALUES (?, ?, ?, 1, ?)',
    )
      .bind(uid, taskId, task.target, ts)
      .run();
  }
  if (task.reward_minor > 0) await applyWallet(c.env, uid, task.reward_minor, 'task', { refType: 'task', refId: taskId });
  return c.json({ ok: true, reward_minor: task.reward_minor });
});

export default account;
