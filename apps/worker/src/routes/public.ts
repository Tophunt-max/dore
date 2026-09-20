import { Hono } from 'hono';
import { ok } from '../lib/http';
import { nowSeconds } from '../lib/time';
import type { AppEnv } from '../types';

// Public, unauthenticated content endpoints (shown on the home screen to all
// visitors). Mounted before the auth gate in index.ts.
export const publicRoutes = new Hono<AppEnv>();

const toIso = (value: unknown) =>
  value == null ? null : new Date(Number(value) * 1000).toISOString();

// Global app config (ORich `getsystem`): key/value settings surfaced to all
// clients (min withdrawal, fees, support contacts, notices, etc.).
publicRoutes.get('/system', async (c) => {
  const result = await c.env.DB.prepare(
    'SELECT key,value FROM system_settings',
  ).all<{ key: string; value: string }>();
  const settings: Record<string, string> = {};
  for (const row of result.results) settings[String(row.key)] = String(row.value);
  return ok(c, { settings });
});

// Prize-pool activities (ORich `getactivity`): list active/ongoing events.
publicRoutes.get('/prize-activities', async (c) => {
  const result = await c.env.DB.prepare(
    `SELECT a.id,a.title,a.description,a.rules,a.prize_pool_minor,a.currency,a.winners_count,
       a.required_invites,a.image_key,a.status,a.starts_at,a.ends_at,a.drawn_at,
       (SELECT COUNT(*) FROM prize_activity_participants p WHERE p.activity_id=a.id) participant_count
     FROM prize_activities a
     WHERE a.status IN ('active','drawing','completed')
     ORDER BY a.created_at DESC LIMIT 50`,
  ).all<Record<string, unknown>>();
  return ok(c, {
    items: result.results.map((row) => ({
      id: String(row.id),
      title: String(row.title),
      description: String(row.description),
      rules: String(row.rules),
      prizePoolMinor: Number(row.prize_pool_minor),
      currency: String(row.currency),
      winnersCount: Number(row.winners_count),
      requiredInvites: Number(row.required_invites),
      imageUrl: row.image_key
        ? `${c.env.PUBLIC_ASSET_BASE}/${String(row.image_key)}`
        : null,
      status: String(row.status),
      startsAt: toIso(row.starts_at),
      endsAt: toIso(row.ends_at),
      drawnAt: toIso(row.drawn_at),
      participantCount: Number(row.participant_count),
    })),
  });
});

publicRoutes.get('/categories', async (c) => {
  const result = await c.env.DB.prepare(
    `SELECT id,name,slug,image_key,sort_order FROM categories
     WHERE status='active' ORDER BY sort_order,created_at DESC`,
  ).all<Record<string, unknown>>();
  return ok(c, {
    items: result.results.map((row) => ({
      id: String(row.id),
      name: String(row.name),
      slug: String(row.slug),
      imageUrl: row.image_key
        ? `${c.env.PUBLIC_ASSET_BASE}/${String(row.image_key)}`
        : null,
      sortOrder: Number(row.sort_order),
    })),
  });
});

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
