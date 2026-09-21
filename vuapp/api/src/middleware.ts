import type { Context, Next } from 'hono';
import type { Env } from './lib';
import { verifyJwt } from './lib';

export type AppContext = Context<{ Bindings: Env; Variables: { userId: number; adminId: number; role: string } }>;

function bearer(c: AppContext): string | null {
  const h = c.req.header('Authorization') || '';
  if (h.startsWith('Bearer ')) return h.slice(7);
  return null;
}

export async function requireUser(c: AppContext, next: Next) {
  const token = bearer(c);
  if (!token) return c.json({ ok: false, error: 'unauthorized' }, 401);
  const payload = await verifyJwt(token, c.env.JWT_SECRET);
  if (!payload || payload.kind !== 'user') return c.json({ ok: false, error: 'unauthorized' }, 401);
  c.set('userId', payload.sub);
  await next();
}

export async function requireAdmin(c: AppContext, next: Next) {
  const token = bearer(c);
  if (!token) return c.json({ ok: false, error: 'unauthorized' }, 401);
  const payload = await verifyJwt(token, c.env.JWT_SECRET);
  if (!payload || payload.kind !== 'admin') return c.json({ ok: false, error: 'unauthorized' }, 401);
  c.set('adminId', payload.sub);
  c.set('role', payload.role || 'admin');
  await next();
}
