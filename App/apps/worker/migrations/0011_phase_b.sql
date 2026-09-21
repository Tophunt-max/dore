-- Phase B: VIP purchase, finance order tracking, after-sales, system settings.

-- Widen memberships.source to allow wallet purchases (table rebuild).
CREATE TABLE memberships_new (
  id TEXT PRIMARY KEY,
  user_id TEXT NOT NULL REFERENCES users(id),
  plan_id TEXT NOT NULL REFERENCES membership_plans(id),
  status TEXT NOT NULL CHECK (status IN ('active', 'expired', 'cancelled')),
  source TEXT NOT NULL DEFAULT 'admin_grant' CHECK (source IN ('admin_grant', 'promotion', 'purchase')),
  starts_at INTEGER NOT NULL,
  ends_at INTEGER NOT NULL,
  created_at INTEGER NOT NULL,
  updated_at INTEGER NOT NULL
);
INSERT INTO memberships_new (id, user_id, plan_id, status, source, starts_at, ends_at, created_at, updated_at)
  SELECT id, user_id, plan_id, status, source, starts_at, ends_at, created_at, updated_at FROM memberships;
DROP TABLE memberships;
ALTER TABLE memberships_new RENAME TO memberships;
CREATE INDEX memberships_user_idx ON memberships(user_id, status, ends_at DESC);

-- Membership purchase receipts (ORich vipBuy).
CREATE TABLE membership_orders (
  id TEXT PRIMARY KEY,
  user_id TEXT NOT NULL REFERENCES users(id),
  plan_id TEXT NOT NULL REFERENCES membership_plans(id),
  membership_id TEXT REFERENCES memberships(id),
  amount_minor INTEGER NOT NULL CHECK (amount_minor >= 0),
  currency TEXT NOT NULL DEFAULT 'INR',
  idempotency_key TEXT NOT NULL,
  status TEXT NOT NULL DEFAULT 'paid' CHECK (status IN ('paid', 'refunded')),
  created_at INTEGER NOT NULL,
  UNIQUE(user_id, idempotency_key)
);
CREATE INDEX membership_orders_user_idx ON membership_orders(user_id, created_at DESC);

-- Finance orders (ORich financeBuy / myFinanceList).
-- Return/interest settlement is intentionally NOT automated here; it is an
-- administrator/regulated process (see docs/SETUP.md release gates).
CREATE TABLE finance_orders (
  id TEXT PRIMARY KEY,
  user_id TEXT NOT NULL REFERENCES users(id),
  offer_id TEXT NOT NULL REFERENCES finance_offers(id),
  principal_minor INTEGER NOT NULL CHECK (principal_minor > 0),
  currency TEXT NOT NULL DEFAULT 'INR',
  idempotency_key TEXT NOT NULL,
  status TEXT NOT NULL DEFAULT 'active' CHECK (status IN ('active', 'matured', 'settled', 'cancelled')),
  note TEXT NOT NULL DEFAULT '',
  created_at INTEGER NOT NULL,
  updated_at INTEGER NOT NULL,
  UNIQUE(user_id, idempotency_key)
);
CREATE INDEX finance_orders_user_idx ON finance_orders(user_id, created_at DESC);

-- After-sales requests for delivered orders (ORich getUserAfs / editAfStatus).
CREATE TABLE after_sales (
  id TEXT PRIMARY KEY,
  user_id TEXT NOT NULL REFERENCES users(id),
  order_id TEXT NOT NULL REFERENCES orders(id),
  type TEXT NOT NULL CHECK (type IN ('return', 'exchange', 'complaint', 'other')),
  reason TEXT NOT NULL,
  status TEXT NOT NULL DEFAULT 'open' CHECK (status IN ('open', 'in_review', 'resolved', 'rejected')),
  admin_note TEXT NOT NULL DEFAULT '',
  created_at INTEGER NOT NULL,
  updated_at INTEGER NOT NULL
);
CREATE INDEX after_sales_user_idx ON after_sales(user_id, created_at DESC);
CREATE INDEX after_sales_status_idx ON after_sales(status, created_at DESC);

-- Global app configuration surfaced to clients (ORich getsystem).
CREATE TABLE system_settings (
  key TEXT PRIMARY KEY,
  value TEXT NOT NULL,
  updated_at INTEGER NOT NULL
);
INSERT INTO system_settings (key, value, updated_at) VALUES
  ('currency', 'INR', strftime('%s','now')),
  ('min_withdrawal_minor', '10000', strftime('%s','now')),
  ('withdrawal_fee_percent', '2', strftime('%s','now')),
  ('withdrawal_window', 'Everyday 10:00am - 6:00pm', strftime('%s','now')),
  ('support_whatsapp', '', strftime('%s','now')),
  ('support_email', '', strftime('%s','now')),
  ('home_notice', '', strftime('%s','now'));
