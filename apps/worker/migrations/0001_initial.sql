PRAGMA foreign_keys = ON;

CREATE TABLE users (
  id TEXT PRIMARY KEY,
  phone_e164 TEXT NOT NULL UNIQUE,
  phone_hash TEXT NOT NULL UNIQUE,
  display_name TEXT,
  email TEXT,
  avatar_key TEXT,
  referral_code TEXT NOT NULL UNIQUE,
  referred_by_user_id TEXT REFERENCES users(id),
  role TEXT NOT NULL DEFAULT 'user' CHECK (role IN ('user', 'support', 'finance', 'admin')),
  status TEXT NOT NULL DEFAULT 'active' CHECK (status IN ('active', 'suspended', 'closed')),
  created_at INTEGER NOT NULL,
  updated_at INTEGER NOT NULL
);

CREATE TABLE otp_requests (
  id TEXT PRIMARY KEY,
  phone_hash TEXT NOT NULL,
  otp_hash TEXT NOT NULL,
  attempts INTEGER NOT NULL DEFAULT 0,
  expires_at INTEGER NOT NULL,
  consumed_at INTEGER,
  created_at INTEGER NOT NULL
);
CREATE INDEX otp_phone_created_idx ON otp_requests(phone_hash, created_at DESC);

CREATE TABLE refresh_tokens (
  id TEXT PRIMARY KEY,
  user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  token_hash TEXT NOT NULL UNIQUE,
  device_id TEXT NOT NULL,
  expires_at INTEGER NOT NULL,
  revoked_at INTEGER,
  replaced_by_token_id TEXT,
  created_at INTEGER NOT NULL
);
CREATE INDEX refresh_user_idx ON refresh_tokens(user_id, device_id);

CREATE TABLE addresses (
  id TEXT PRIMARY KEY,
  user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  recipient_name TEXT NOT NULL,
  phone_e164 TEXT NOT NULL,
  line1 TEXT NOT NULL,
  line2 TEXT,
  city TEXT NOT NULL,
  region TEXT NOT NULL,
  postal_code TEXT NOT NULL,
  country_code TEXT NOT NULL DEFAULT 'IN',
  is_default INTEGER NOT NULL DEFAULT 0,
  created_at INTEGER NOT NULL,
  updated_at INTEGER NOT NULL
);

CREATE TABLE products (
  id TEXT PRIMARY KEY,
  title TEXT NOT NULL,
  description TEXT NOT NULL DEFAULT '',
  image_key TEXT,
  retail_price_minor INTEGER NOT NULL CHECK (retail_price_minor >= 0),
  currency TEXT NOT NULL DEFAULT 'INR',
  status TEXT NOT NULL CHECK (status IN ('draft', 'active', 'archived')),
  created_at INTEGER NOT NULL,
  updated_at INTEGER NOT NULL
);

CREATE TABLE campaigns (
  id TEXT PRIMARY KEY,
  product_id TEXT NOT NULL REFERENCES products(id),
  entry_price_minor INTEGER NOT NULL CHECK (entry_price_minor > 0),
  total_entries INTEGER NOT NULL CHECK (total_entries > 0),
  sold_entries INTEGER NOT NULL DEFAULT 0 CHECK (sold_entries >= 0),
  starts_at INTEGER NOT NULL,
  ends_at INTEGER NOT NULL,
  status TEXT NOT NULL CHECK (status IN ('scheduled', 'active', 'sold_out', 'drawing', 'completed', 'cancelled')),
  winner_user_id TEXT REFERENCES users(id),
  created_at INTEGER NOT NULL,
  updated_at INTEGER NOT NULL,
  CHECK (sold_entries <= total_entries)
);
CREATE INDEX campaigns_status_idx ON campaigns(status, starts_at, ends_at);

CREATE TABLE orders (
  id TEXT PRIMARY KEY,
  user_id TEXT NOT NULL REFERENCES users(id),
  campaign_id TEXT REFERENCES campaigns(id),
  title TEXT NOT NULL,
  quantity INTEGER NOT NULL CHECK (quantity > 0),
  amount_minor INTEGER NOT NULL CHECK (amount_minor >= 0),
  currency TEXT NOT NULL DEFAULT 'INR',
  status TEXT NOT NULL CHECK (status IN ('pending', 'paid', 'failed', 'cancelled', 'fulfilled')),
  idempotency_key TEXT NOT NULL,
  created_at INTEGER NOT NULL,
  updated_at INTEGER NOT NULL,
  UNIQUE(user_id, idempotency_key)
);
CREATE INDEX orders_user_created_idx ON orders(user_id, created_at DESC);
CREATE INDEX orders_campaign_idx ON orders(campaign_id, status);

CREATE TABLE campaign_entries (
  id TEXT PRIMARY KEY,
  campaign_id TEXT NOT NULL REFERENCES campaigns(id),
  order_id TEXT NOT NULL REFERENCES orders(id),
  user_id TEXT NOT NULL REFERENCES users(id),
  entry_number INTEGER NOT NULL,
  created_at INTEGER NOT NULL,
  UNIQUE(campaign_id, entry_number)
);
CREATE INDEX campaign_entries_user_idx ON campaign_entries(user_id, campaign_id);

CREATE TABLE wallet_accounts (
  user_id TEXT PRIMARY KEY REFERENCES users(id) ON DELETE CASCADE,
  currency TEXT NOT NULL DEFAULT 'INR',
  available_minor INTEGER NOT NULL DEFAULT 0 CHECK (available_minor >= 0),
  locked_minor INTEGER NOT NULL DEFAULT 0 CHECK (locked_minor >= 0),
  version INTEGER NOT NULL DEFAULT 0,
  updated_at INTEGER NOT NULL
);

CREATE TABLE ledger_entries (
  id TEXT PRIMARY KEY,
  transaction_id TEXT NOT NULL,
  user_id TEXT NOT NULL REFERENCES users(id),
  direction TEXT NOT NULL CHECK (direction IN ('credit', 'debit')),
  amount_minor INTEGER NOT NULL CHECK (amount_minor > 0),
  currency TEXT NOT NULL DEFAULT 'INR',
  entry_type TEXT NOT NULL,
  description TEXT NOT NULL,
  reference_type TEXT,
  reference_id TEXT,
  created_at INTEGER NOT NULL,
  UNIQUE(reference_type, reference_id, entry_type, direction)
);
CREATE INDEX ledger_user_created_idx ON ledger_entries(user_id, created_at DESC);
CREATE INDEX ledger_transaction_idx ON ledger_entries(transaction_id);

CREATE TABLE payment_transactions (
  id TEXT PRIMARY KEY,
  user_id TEXT NOT NULL REFERENCES users(id),
  order_id TEXT REFERENCES orders(id),
  purpose TEXT NOT NULL CHECK (purpose IN ('order', 'recharge')),
  amount_minor INTEGER NOT NULL CHECK (amount_minor > 0),
  currency TEXT NOT NULL DEFAULT 'INR',
  provider TEXT NOT NULL,
  provider_reference TEXT,
  idempotency_key TEXT NOT NULL,
  status TEXT NOT NULL CHECK (status IN ('created', 'pending', 'succeeded', 'failed', 'refunded')),
  return_url TEXT NOT NULL,
  settled_at INTEGER,
  created_at INTEGER NOT NULL,
  updated_at INTEGER NOT NULL,
  UNIQUE(user_id, idempotency_key),
  UNIQUE(provider, provider_reference)
);
CREATE INDEX payments_status_idx ON payment_transactions(status, created_at);

CREATE TABLE payment_webhook_events (
  id TEXT PRIMARY KEY,
  provider TEXT NOT NULL,
  provider_event_id TEXT NOT NULL,
  payload_hash TEXT NOT NULL,
  processed_at INTEGER NOT NULL,
  UNIQUE(provider, provider_event_id)
);

CREATE TABLE withdrawals (
  id TEXT PRIMARY KEY,
  user_id TEXT NOT NULL REFERENCES users(id),
  amount_minor INTEGER NOT NULL CHECK (amount_minor > 0),
  currency TEXT NOT NULL DEFAULT 'INR',
  idempotency_key TEXT NOT NULL,
  status TEXT NOT NULL CHECK (status IN ('requested', 'reviewing', 'approved', 'paid', 'rejected', 'cancelled')),
  reviewed_by_user_id TEXT REFERENCES users(id),
  created_at INTEGER NOT NULL,
  updated_at INTEGER NOT NULL,
  UNIQUE(user_id, idempotency_key)
);
CREATE INDEX withdrawals_status_idx ON withdrawals(status, created_at);

CREATE TABLE winners (
  id TEXT PRIMARY KEY,
  campaign_id TEXT NOT NULL UNIQUE REFERENCES campaigns(id),
  user_id TEXT NOT NULL REFERENCES users(id),
  order_id TEXT NOT NULL REFERENCES orders(id),
  entry_number INTEGER NOT NULL,
  algorithm_version TEXT NOT NULL,
  draw_commitment TEXT NOT NULL,
  announced_at INTEGER NOT NULL
);

CREATE TABLE prizes (
  id TEXT PRIMARY KEY,
  winner_id TEXT NOT NULL UNIQUE REFERENCES winners(id),
  user_id TEXT NOT NULL REFERENCES users(id),
  product_id TEXT NOT NULL REFERENCES products(id),
  address_id TEXT REFERENCES addresses(id),
  status TEXT NOT NULL CHECK (status IN ('unclaimed', 'claimed', 'processing', 'shipped', 'delivered')),
  claimed_at INTEGER,
  created_at INTEGER NOT NULL,
  updated_at INTEGER NOT NULL
);

CREATE TABLE referrals (
  id TEXT PRIMARY KEY,
  referrer_user_id TEXT NOT NULL REFERENCES users(id),
  referred_user_id TEXT NOT NULL UNIQUE REFERENCES users(id),
  status TEXT NOT NULL CHECK (status IN ('registered', 'qualified', 'rewarded')),
  created_at INTEGER NOT NULL,
  qualified_at INTEGER
);

CREATE TABLE reward_claims (
  id TEXT PRIMARY KEY,
  user_id TEXT NOT NULL REFERENCES users(id),
  reward_type TEXT NOT NULL,
  period_key TEXT NOT NULL,
  amount_minor INTEGER NOT NULL DEFAULT 0,
  coin_amount INTEGER NOT NULL DEFAULT 0,
  created_at INTEGER NOT NULL,
  UNIQUE(user_id, reward_type, period_key)
);

CREATE TABLE push_devices (
  id TEXT PRIMARY KEY,
  user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  expo_push_token TEXT NOT NULL UNIQUE,
  platform TEXT NOT NULL CHECK (platform IN ('android', 'ios')),
  device_id TEXT NOT NULL,
  enabled INTEGER NOT NULL DEFAULT 1,
  last_seen_at INTEGER NOT NULL,
  created_at INTEGER NOT NULL
);
CREATE INDEX push_user_idx ON push_devices(user_id, enabled);

CREATE TABLE uploads (
  id TEXT PRIMARY KEY,
  user_id TEXT NOT NULL REFERENCES users(id),
  purpose TEXT NOT NULL,
  object_key TEXT NOT NULL UNIQUE,
  content_type TEXT NOT NULL,
  expected_bytes INTEGER NOT NULL,
  actual_bytes INTEGER,
  status TEXT NOT NULL CHECK (status IN ('pending', 'uploaded', 'complete', 'rejected')),
  expires_at INTEGER NOT NULL,
  created_at INTEGER NOT NULL,
  completed_at INTEGER
);
CREATE INDEX uploads_user_idx ON uploads(user_id, created_at DESC);

CREATE TABLE audit_logs (
  id TEXT PRIMARY KEY,
  actor_user_id TEXT,
  action TEXT NOT NULL,
  entity_type TEXT NOT NULL,
  entity_id TEXT,
  request_id TEXT,
  metadata_json TEXT NOT NULL DEFAULT '{}',
  created_at INTEGER NOT NULL
);
CREATE INDEX audit_entity_idx ON audit_logs(entity_type, entity_id, created_at DESC);

INSERT INTO products (id, title, description, image_key, retail_price_minor, currency, status, created_at, updated_at)
VALUES
  ('aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 'Popular smartphone lucky draw', 'Join from one rupee for a chance to win a popular smartphone.', NULL, 6999900, 'INR', 'active', 1700000000, 1700000000),
  ('bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 'Premium reward campaign', 'Limited-entry campaign for premium electronics.', NULL, 4999900, 'INR', 'active', 1700000000, 1700000000);

INSERT INTO campaigns (id, product_id, entry_price_minor, total_entries, sold_entries, starts_at, ends_at, status, created_at, updated_at)
VALUES
  ('11111111-1111-4111-8111-111111111111', 'aaaaaaaa-aaaa-4aaa-8aaa-aaaaaaaaaaaa', 100, 1000, 628, 1700000000, 4102444800, 'active', 1700000000, 1700000000),
  ('22222222-2222-4222-8222-222222222222', 'bbbbbbbb-bbbb-4bbb-8bbb-bbbbbbbbbbbb', 100, 800, 391, 1700000000, 4102444800, 'active', 1700000000, 1700000000);
