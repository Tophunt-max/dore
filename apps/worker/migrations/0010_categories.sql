-- Product categories (ORich `kind`): admin-managed taxonomy used to group and
-- filter draw campaigns on the home screen.
CREATE TABLE categories (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  slug TEXT NOT NULL UNIQUE,
  image_key TEXT,
  sort_order INTEGER NOT NULL DEFAULT 0,
  status TEXT NOT NULL CHECK (status IN ('draft', 'active', 'archived')),
  created_at INTEGER NOT NULL,
  updated_at INTEGER NOT NULL
);
CREATE INDEX categories_active_idx ON categories(status, sort_order);

-- Products optionally belong to a category.
ALTER TABLE products ADD COLUMN category_id TEXT REFERENCES categories(id);
CREATE INDEX products_category_idx ON products(category_id);

-- Seed the recovered ORich home categories (Gifts / Cash award / High Winning).
INSERT INTO categories (id, name, slug, image_key, sort_order, status, created_at, updated_at) VALUES
  ('11111111-2222-4333-8444-555555550001', 'Gifts', 'gifts', NULL, 1, 'active', strftime('%s','now'), strftime('%s','now')),
  ('11111111-2222-4333-8444-555555550002', 'Cash award', 'cash-award', NULL, 2, 'active', strftime('%s','now'), strftime('%s','now')),
  ('11111111-2222-4333-8444-555555550003', 'High Winning', 'high-winning', NULL, 3, 'active', strftime('%s','now'), strftime('%s','now'));
