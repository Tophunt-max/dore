import { Hono } from 'hono';
import { fail, ok } from '../lib/http';
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
    entryPriceMinor: row.entry_price_minor,
    totalEntries: row.total_entries,
    soldEntries: row.sold_entries,
    startsAt: new Date(row.starts_at * 1000).toISOString(),
    endsAt: new Date(row.ends_at * 1000).toISOString(),
    status: row.status,
  };
}

const query = `SELECT c.id, c.entry_price_minor, c.total_entries, c.sold_entries, c.starts_at, c.ends_at, c.status,
 p.id product_id, p.title, p.description, p.image_key, p.retail_price_minor, p.currency, p.status product_status
 FROM campaigns c JOIN products p ON p.id = c.product_id`;

export const campaignRoutes = new Hono<AppEnv>();
campaignRoutes.get('/', async (c) => {
  const result = await c.env.DB.prepare(
    `${query} WHERE c.status IN ('active','scheduled') ORDER BY c.created_at DESC LIMIT 50`,
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
