import { Hono } from 'hono';
import { ok } from '../lib/http';
import { nowSeconds } from '../lib/time';
import type { AppEnv } from '../types';

// Public, unauthenticated content endpoints (shown on the home screen to all
// visitors). Mounted before the auth gate in index.ts.
export const publicRoutes = new Hono<AppEnv>();

const toIso = (value: unknown) =>
  value == null ? null : new Date(Number(value) * 1000).toISOString();

publicRoutes.get('/banners', async (c) => {
  const now = nowSeconds();
  const result = await c.env.DB.prepare(
    `SELECT id,title,body,image_key,action_url,starts_at,ends_at,sort_order FROM banners
     WHERE status='active' AND (starts_at IS NULL OR starts_at<=?)
     AND (ends_at IS NULL OR ends_at>?) ORDER BY sort_order,created_at DESC`,
  )
    .bind(now, now)
    .all<Record<string, unknown>>();
  return ok(c, {
    items: result.results.map((row) => ({
      id: String(row.id),
      title: String(row.title),
      body: String(row.body),
      imageUrl: row.image_key
        ? `${c.env.PUBLIC_ASSET_BASE}/${String(row.image_key)}`
        : null,
      actionUrl: row.action_url == null ? null : String(row.action_url),
      startsAt: toIso(row.starts_at),
      endsAt: toIso(row.ends_at),
      sortOrder: Number(row.sort_order),
    })),
  });
});
