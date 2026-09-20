import { Hono } from 'hono';
import { fail, ok } from '../lib/http';
import { maskPhone } from '../lib/user';
import type { AppEnv } from '../types';

interface CampaignRow {
  id: string;
  entry_price_minor: number;
  total_entries: number;
  sold_entries: number;
  starts_at: number;
  ends_at: number;
  status: string;
  product_id: string;
  title: string;
  description: string;
  image_key: string | null;
  retail_price_minor: number;
  currency: 'INR';
  product_status: string;
  category_id: string | null;
  category_slug: string | null;
  category_name: string | null;
}

function mapCampaign(assetBase: string, row: CampaignRow) {
  return {
    id: row.id,
    product: {
      id: row.product_id,
      title: row.title,
      description: row.description,
      imageUrl: row.image_key ? `${assetBase}/${row.image_key}` : null,
      retailPriceMinor: row.retail_price_minor,
      currency: row.currency,
      status: row.product_status,
    },
    category: row.category_id
      ? {
          id: row.category_id,
          slug: row.category_slug,
          name: row.category_name,
        }
      : null,
    entryPriceMinor: row.entry_price_minor,
    totalEntries: row.total_entries,
    soldEntries: row.sold_entries,
    startsAt: new Date(row.starts_at * 1000).toISOString(),
    endsAt: new Date(row.ends_at * 1000).toISOString(),
    status: row.status,
  };
}

const query = `SELECT c.id, c.entry_price_minor, c.total_entries, c.sold_entries, c.starts_at, c.ends_at, c.status,
 p.id product_id, p.title, p.description, p.image_key, p.retail_price_minor, p.currency, p.status product_status,
 p.category_id, cat.slug category_slug, cat.name category_name
 FROM campaigns c JOIN products p ON p.id = c.product_id
 LEFT JOIN categories cat ON cat.id = p.category_id`;

export const campaignRoutes = new Hono<AppEnv>();
campaignRoutes.get('/', async (c) => {
  const category = c.req.query('category');
  const base = `${query} WHERE c.status IN ('active','scheduled')`;
  const result = category
    ? await c.env.DB.prepare(
        `${base} AND cat.slug = ? ORDER BY c.created_at DESC LIMIT 50`,
      )
        .bind(category)
        .all<CampaignRow>()
    : await c.env.DB.prepare(
        `${base} ORDER BY c.created_at DESC LIMIT 50`,
      ).all<CampaignRow>();
  return ok(c, {
    items: result.results.map((row) =>
      mapCampaign(c.env.PUBLIC_ASSET_BASE, row),
    ),
  });
});
campaignRoutes.get('/:id', async (c) => {
  const row = await c.env.DB.prepare(`${query} WHERE c.id = ?`)
    .bind(c.req.param('id'))
    .first<CampaignRow>();
  if (!row) return fail(c, 404, 'CAMPAIGN_NOT_FOUND', 'Campaign not found');
  return ok(c, mapCampaign(c.env.PUBLIC_ASSET_BASE, row));
});

// Participant list (ORich `duobaoitemjoinlist`): who joined this campaign, with
// per-user entry counts. Phone numbers are masked.
campaignRoutes.get('/:id/participants', async (c) => {
  const limit = Math.min(Number(c.req.query('limit')) || 50, 100);
  const result = await c.env.DB.prepare(
    `SELECT e.user_id, u.display_name, u.phone_e164,
      COUNT(*) entry_count, MAX(e.created_at) latest_entry_at
     FROM campaign_entries e JOIN users u ON u.id = e.user_id
     WHERE e.campaign_id = ?
     GROUP BY e.user_id, u.display_name, u.phone_e164
     ORDER BY latest_entry_at DESC LIMIT ?`,
  )
    .bind(c.req.param('id'), limit)
    .all<Record<string, unknown>>();
  return ok(c, {
    items: result.results.map((row) => ({
      userId: String(row.user_id),
      displayName: row.display_name == null ? null : String(row.display_name),
      phoneMasked: maskPhone(String(row.phone_e164)),
      entryCount: Number(row.entry_count),
      latestEntryAt: new Date(Number(row.latest_entry_at) * 1000).toISOString(),
    })),
  });
});

// Issue history (ORich `duobaoitemhistory`): past rounds of the same product,
// with the announced winner for each completed round.
campaignRoutes.get('/:id/history', async (c) => {
  const current = await c.env.DB.prepare(
    'SELECT product_id FROM campaigns WHERE id = ?',
  )
    .bind(c.req.param('id'))
    .first<{ product_id: string }>();
  if (!current)
    return fail(c, 404, 'CAMPAIGN_NOT_FOUND', 'Campaign not found');
  const result = await c.env.DB.prepare(
    `SELECT c.id, c.status, c.total_entries, c.sold_entries, c.ends_at,
      w.user_id winner_user_id, w.entry_number, w.announced_at,
      u.display_name winner_name, u.phone_e164 winner_phone
     FROM campaigns c
     LEFT JOIN winners w ON w.campaign_id = c.id
     LEFT JOIN users u ON u.id = w.user_id
     WHERE c.product_id = ? AND c.id != ?
     ORDER BY c.created_at DESC LIMIT 30`,
  )
    .bind(current.product_id, c.req.param('id'))
    .all<Record<string, unknown>>();
  return ok(c, {
    items: result.results.map((row) => ({
      campaignId: String(row.id),
      status: String(row.status),
      totalEntries: Number(row.total_entries),
      soldEntries: Number(row.sold_entries),
      endsAt: new Date(Number(row.ends_at) * 1000).toISOString(),
      winner: row.winner_user_id
        ? {
            userId: String(row.winner_user_id),
            displayName:
              row.winner_name == null ? null : String(row.winner_name),
            phoneMasked: maskPhone(String(row.winner_phone)),
            entryNumber: Number(row.entry_number),
            announcedAt: new Date(
              Number(row.announced_at) * 1000,
            ).toISOString(),
          }
        : null,
    })),
  });
});
