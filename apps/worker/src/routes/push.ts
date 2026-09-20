import { Hono } from 'hono';
import { registerPushTokenSchema } from '@oriva/shared';
import { fail, ok } from '../lib/http';
import type { AppEnv } from '../types';
export const pushRoutes = new Hono<AppEnv>();
pushRoutes.post('/devices', async (c) => {
  const parsed = registerPushTokenSchema.safeParse(
    await c.req.json().catch(() => null),
  );
  if (!parsed.success)
    return fail(
      c,
      400,
      'VALIDATION_ERROR',
      'Invalid push token',
      parsed.error.flatten().fieldErrors,
    );
  const now = Math.floor(Date.now() / 1000);
  await c.env.DB.prepare(
    `INSERT INTO push_devices (id, user_id, expo_push_token, platform, device_id, enabled, last_seen_at, created_at) VALUES (?, ?, ?, ?, ?, 1, ?, ?) ON CONFLICT(expo_push_token) DO UPDATE SET user_id = excluded.user_id, platform = excluded.platform, device_id = excluded.device_id, enabled = 1, last_seen_at = excluded.last_seen_at`,
  )
    .bind(
      crypto.randomUUID(),
      c.get('userId'),
      parsed.data.token,
      parsed.data.platform,
      parsed.data.deviceId,
      now,
      now,
    )
    .run();
  return ok(c, null, 201);
});
