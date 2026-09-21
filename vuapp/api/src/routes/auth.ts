import { Hono } from 'hono';
import type { Env } from '../lib';
import {
  ACCESS_TTL,
  REFRESH_TTL,
  inviteCode,
  now,
  otpCode,
  randomToken,
  sha256hex,
  signJwt,
} from '../lib';

const auth = new Hono<{ Bindings: Env }>();

// Send an OTP to a phone number. In production wire this to an SMS provider.
// The code is stored in KV with a short TTL. For dev, it is returned in the response.
auth.post('/sendverify', async (c) => {
  const { phone } = await c.req.json<{ phone?: string }>().catch(() => ({ phone: undefined } as any));
  if (!phone || !/^\d{6,15}$/.test(phone)) return c.json({ ok: false, error: 'invalid_phone' }, 400);
  const code = otpCode();
  await c.env.KV.put(`otp:${phone}`, code, { expirationTtl: 300 });
  const devEcho = c.env.APP_NAME ? { devCode: code } : {};
  return c.json({ ok: true, message: 'otp_sent', ...devEcho });
});

async function issueTokens(env: Env, userId: number) {
  const access = await signJwt({ sub: userId, kind: 'user', exp: now() + ACCESS_TTL }, env.JWT_SECRET);
  const refresh = randomToken(32);
  const tokenHash = await sha256hex(refresh);
  await env.DB.prepare(
    'INSERT INTO refresh_tokens (user_id, token_hash, expires_at, created_at) VALUES (?, ?, ?, ?)',
  )
    .bind(userId, tokenHash, now() + REFRESH_TTL, now())
    .run();
  return { access, refresh };
}

// Verify OTP -> create user if new -> return tokens.
auth.post('/login', async (c) => {
  const body = await c.req.json<{ phone?: string; code?: string; invite?: string }>().catch(() => ({} as any));
  const { phone, code, invite } = body;
  if (!phone || !code) return c.json({ ok: false, error: 'missing_fields' }, 400);
  const stored = await c.env.KV.get(`otp:${phone}`);
  if (!stored || stored !== code) return c.json({ ok: false, error: 'invalid_otp' }, 401);
  await c.env.KV.delete(`otp:${phone}`);

  let user = await c.env.DB.prepare('SELECT * FROM users WHERE phone = ?').bind(phone).first<any>();
  if (!user) {
    let invitedBy: number | null = null;
    if (invite) {
      const inviter = await c.env.DB.prepare('SELECT id FROM users WHERE invite_code = ?').bind(invite).first<{
        id: number;
      }>();
      invitedBy = inviter?.id ?? null;
    }
    const ts = now();
    const res = await c.env.DB.prepare(
      `INSERT INTO users (phone, username, language, invite_code, invited_by, created_at, updated_at)
       VALUES (?, ?, 'en', ?, ?, ?, ?)`,
    )
      .bind(phone, `user${phone.slice(-4)}`, inviteCode(), invitedBy, ts, ts)
      .run();
    user = await c.env.DB.prepare('SELECT * FROM users WHERE id = ?').bind(res.meta.last_row_id).first<any>();
  }
  if (user.status === 'blocked') return c.json({ ok: false, error: 'blocked' }, 403);

  const tokens = await issueTokens(c.env, user.id);
  return c.json({ ok: true, ...tokens, user: publicUser(user) });
});

auth.post('/refresh', async (c) => {
  const { refresh } = await c.req.json<{ refresh?: string }>().catch(() => ({ refresh: undefined } as any));
  if (!refresh) return c.json({ ok: false, error: 'missing_token' }, 400);
  const hash = await sha256hex(refresh);
  const row = await c.env.DB.prepare(
    'SELECT * FROM refresh_tokens WHERE token_hash = ? AND revoked = 0 AND expires_at > ?',
  )
    .bind(hash, now())
    .first<any>();
  if (!row) return c.json({ ok: false, error: 'invalid_token' }, 401);
  // rotate
  await c.env.DB.prepare('UPDATE refresh_tokens SET revoked = 1 WHERE id = ?').bind(row.id).run();
  const tokens = await issueTokens(c.env, row.user_id);
  return c.json({ ok: true, ...tokens });
});

auth.post('/logout', async (c) => {
  const { refresh } = await c.req.json<{ refresh?: string }>().catch(() => ({ refresh: undefined } as any));
  if (refresh) {
    const hash = await sha256hex(refresh);
    await c.env.DB.prepare('UPDATE refresh_tokens SET revoked = 1 WHERE token_hash = ?').bind(hash).run();
  }
  return c.json({ ok: true });
});

export function publicUser(u: any) {
  return {
    id: u.id,
    phone: u.phone,
    username: u.username,
    avatar: u.avatar,
    language: u.language,
    balance_minor: u.balance_minor,
    invite_code: u.invite_code,
  };
}

export default auth;
