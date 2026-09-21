import { Hono } from 'hono';
import { z } from 'zod';
import { fail, ok } from '../lib/http';
import { publicUser, type UserRow } from '../lib/user';
import type { AppEnv } from '../types';

export const userRoutes = new Hono<AppEnv>();

userRoutes.get('/me', async (c) => {
  const user = await c.env.DB.prepare(
    `SELECT id, phone_e164, display_name, email, avatar_key, referral_code, role, status
     FROM users WHERE id = ?`,
  )
    .bind(c.get('userId'))
    .first<UserRow>();
  if (!user) return fail(c, 404, 'USER_NOT_FOUND', 'User not found');
  return ok(c, publicUser(c.env, user));
});

userRoutes.patch('/me', async (c) => {
  const parsed = z
    .object({
      displayName: z.string().trim().min(2).max(80).optional(),
      email: z.string().email().nullable().optional(),
    })
    .safeParse(await c.req.json().catch(() => null));
  if (!parsed.success)
    return fail(
      c,
      400,
      'VALIDATION_ERROR',
      'Invalid profile update',
      parsed.error.flatten().fieldErrors,
    );
  const current = await c.env.DB.prepare(
    'SELECT display_name, email FROM users WHERE id=?',
  )
    .bind(c.get('userId'))
    .first<{ display_name: string | null; email: string | null }>();
  if (!current) return fail(c, 404, 'USER_NOT_FOUND', 'User not found');
  await c.env.DB.prepare(
    'UPDATE users SET display_name=?, email=?, updated_at=? WHERE id=?',
  )
    .bind(
      parsed.data.displayName ?? current.display_name,
      parsed.data.email === undefined ? current.email : parsed.data.email,
      Math.floor(Date.now() / 1000),
      c.get('userId'),
    )
    .run();
  const user = await c.env.DB.prepare(
    `SELECT id, phone_e164, display_name, email, avatar_key, referral_code, role, status
     FROM users WHERE id = ?`,
  )
    .bind(c.get('userId'))
    .first<UserRow>();
  return ok(c, user ? publicUser(c.env, user) : null);
});
