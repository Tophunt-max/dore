import { Hono } from 'hono';
import { ok, fail } from '../lib/http';
import { mapDraw } from '../lib/mappers';
import type { AppEnv } from '../types';
export const winnerRoutes = new Hono<AppEnv>();
winnerRoutes.get('/', async (c) => {
  const result = await c.env.DB.prepare(
    `SELECT w.id, w.campaign_id, u.display_name, u.avatar_key, p.title product_title, w.announced_at FROM winners w JOIN users u ON u.id = w.user_id JOIN campaigns c ON c.id = w.campaign_id JOIN products p ON p.id = c.product_id ORDER BY w.announced_at DESC LIMIT 100`,
  ).all<{
    id: string;
    campaign_id: string;
    display_name: string | null;
    avatar_key: string | null;
    product_title: string;
    announced_at: number;
  }>();
  return ok(c, {
    items: result.results.map((row) => ({
      id: row.id,
      campaignId: row.campaign_id,
      displayName: row.display_name ?? 'Oriva user',
      avatarUrl: row.avatar_key
        ? `${c.env.PUBLIC_ASSET_BASE}/${row.avatar_key}`
        : null,
      productTitle: row.product_title,
      announcedAt: new Date(row.announced_at * 1000).toISOString(),
    })),
  });
});

winnerRoutes.get('/draws/:campaignId', async (c) => {
  const row = await c.env.DB.prepare(
    `SELECT id,campaign_id,status,algorithm_version,seed_commitment,entry_snapshot_hash,
      eligible_entry_count,winning_index,winning_entry_id,committed_at,executed_at,revealed_seed
     FROM campaign_draws WHERE campaign_id=?`,
  )
    .bind(c.req.param('campaignId'))
    .first<Record<string, unknown>>();
  if (!row) return fail(c, 404, 'DRAW_NOT_FOUND', 'Draw record not found');
  return ok(c, mapDraw(row));
});
