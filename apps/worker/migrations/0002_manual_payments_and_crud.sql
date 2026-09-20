PRAGMA foreign_keys = OFF;

CREATE TABLE payment_methods (
  id TEXT PRIMARY KEY,
  type TEXT NOT NULL CHECK (type IN ('bank', 'upi')),
  display_name TEXT NOT NULL,
  instructions TEXT NOT NULL,
  account_name TEXT,
  account_number TEXT,
  bank_name TEXT,
  ifsc TEXT,
  upi_id TEXT,
  qr_image_key TEXT,
  currency TEXT NOT NULL DEFAULT 'INR',
  enabled INTEGER NOT NULL DEFAULT 1,
  sort_order INTEGER NOT NULL DEFAULT 0,
  created_at INTEGER NOT NULL,
  updated_at INTEGER NOT NULL
);
CREATE INDEX payment_methods_enabled_idx ON payment_methods(enabled, sort_order);

CREATE TABLE payment_transactions_v2 (
  id TEXT PRIMARY KEY,
  user_id TEXT NOT NULL REFERENCES users(id),
  order_id TEXT REFERENCES orders(id),
  payment_method_id TEXT NOT NULL REFERENCES payment_methods(id),
  purpose TEXT NOT NULL CHECK (purpose IN ('order', 'recharge')),
  amount_minor INTEGER NOT NULL CHECK (amount_minor > 0),
  currency TEXT NOT NULL DEFAULT 'INR',
  idempotency_key TEXT NOT NULL,
  status TEXT NOT NULL CHECK (status IN ('awaiting_submission', 'under_review', 'approved', 'rejected', 'cancelled', 'refunded')),
  settlement_processed_at INTEGER,
  created_at INTEGER NOT NULL,
  updated_at INTEGER NOT NULL,
  UNIQUE(user_id, idempotency_key)
);

INSERT INTO payment_methods (
  id, type, display_name, instructions, account_name, account_number, bank_name, ifsc,
  upi_id, currency, enabled, sort_order, created_at, updated_at
) VALUES
  ('33333333-3333-4333-8333-333333333333', 'upi', 'Oriva UPI', 'Send the exact amount and enter the UTR shown by your UPI application.', NULL, NULL, NULL, NULL, 'payments@upi', 'INR', 0, 10, 1700000000, 1700000000),
  ('44444444-4444-4444-8444-444444444444', 'bank', 'Oriva Bank Transfer', 'Transfer the exact amount using IMPS, NEFT, or RTGS and submit the bank reference.', 'Oriva Payments', '000000000000', 'Example Bank', 'EXAM0000000', NULL, 'INR', 0, 20, 1700000000, 1700000000);

INSERT INTO payment_transactions_v2 (
  id, user_id, order_id, payment_method_id, purpose, amount_minor, currency,
  idempotency_key, status, settlement_processed_at, created_at, updated_at
)
SELECT
  id, user_id, order_id, '33333333-3333-4333-8333-333333333333', purpose,
  amount_minor, currency, idempotency_key,
  CASE
    WHEN status = 'succeeded' THEN 'approved'
    WHEN status = 'refunded' THEN 'refunded'
    WHEN status = 'failed' THEN 'rejected'
    ELSE 'awaiting_submission'
  END,
  settled_at, created_at, updated_at
FROM payment_transactions;

DROP TABLE payment_transactions;
ALTER TABLE payment_transactions_v2 RENAME TO payment_transactions;
CREATE INDEX payments_status_idx ON payment_transactions(status, created_at);
CREATE INDEX payments_user_created_idx ON payment_transactions(user_id, created_at DESC);
CREATE UNIQUE INDEX payments_approved_order_unique ON payment_transactions(order_id) WHERE order_id IS NOT NULL AND status = 'approved';

DROP TABLE payment_webhook_events;

CREATE TABLE payment_submissions (
  id TEXT PRIMARY KEY,
  payment_id TEXT NOT NULL REFERENCES payment_transactions(id) ON DELETE CASCADE,
  user_id TEXT NOT NULL REFERENCES users(id),
  transaction_reference TEXT NOT NULL,
  normalized_reference TEXT NOT NULL UNIQUE,
  proof_upload_id TEXT REFERENCES uploads(id),
  idempotency_key TEXT NOT NULL,
  status TEXT NOT NULL CHECK (status IN ('submitted', 'approved', 'rejected')),
  rejection_reason TEXT,
  submitted_at INTEGER NOT NULL,
  reviewed_at INTEGER,
  reviewed_by_user_id TEXT REFERENCES users(id),
  UNIQUE(user_id, idempotency_key)
);
CREATE INDEX payment_submissions_payment_idx ON payment_submissions(payment_id, submitted_at DESC);
CREATE UNIQUE INDEX payment_submission_active_unique ON payment_submissions(payment_id) WHERE status = 'submitted';

CREATE TABLE payment_settlement_outbox (
  payment_id TEXT PRIMARY KEY REFERENCES payment_transactions(id) ON DELETE CASCADE,
  status TEXT NOT NULL CHECK (status IN ('pending', 'processing', 'complete')),
  attempts INTEGER NOT NULL DEFAULT 0,
  last_error TEXT,
  created_at INTEGER NOT NULL,
  processed_at INTEGER
);

CREATE TABLE task_definitions (
  id TEXT PRIMARY KEY,
  title TEXT NOT NULL,
  description TEXT NOT NULL DEFAULT '',
  period TEXT NOT NULL CHECK (period IN ('once', 'daily', 'weekly', 'monthly')),
  reward_coins INTEGER NOT NULL DEFAULT 0 CHECK (reward_coins >= 0),
  reward_minor INTEGER NOT NULL DEFAULT 0 CHECK (reward_minor >= 0),
  status TEXT NOT NULL CHECK (status IN ('draft', 'active', 'archived')),
  sort_order INTEGER NOT NULL DEFAULT 0,
  created_at INTEGER NOT NULL,
  updated_at INTEGER NOT NULL
);
CREATE INDEX task_definitions_status_idx ON task_definitions(status, sort_order);

CREATE TABLE content_pages (
  id TEXT PRIMARY KEY,
  slug TEXT NOT NULL,
  title TEXT NOT NULL,
  body TEXT NOT NULL,
  locale TEXT NOT NULL DEFAULT 'en',
  status TEXT NOT NULL CHECK (status IN ('draft', 'published', 'archived')),
  version INTEGER NOT NULL DEFAULT 1,
  created_at INTEGER NOT NULL,
  updated_at INTEGER NOT NULL,
  UNIQUE(slug, locale, version)
);
CREATE INDEX content_pages_public_idx ON content_pages(slug, locale, status, version DESC);

ALTER TABLE prizes ADD COLUMN tracking_reference TEXT;
ALTER TABLE prizes ADD COLUMN admin_note TEXT;
ALTER TABLE withdrawals ADD COLUMN rejection_reason TEXT;
ALTER TABLE withdrawals ADD COLUMN payout_reference TEXT;
ALTER TABLE withdrawals ADD COLUMN reviewed_at INTEGER;

INSERT INTO task_definitions (id, title, description, period, reward_coins, reward_minor, status, sort_order, created_at, updated_at)
VALUES
  ('55555555-5555-4555-8555-555555555555', 'Daily check-in', 'Open Oriva and claim the daily reward.', 'daily', 10, 0, 'active', 10, 1700000000, 1700000000),
  ('66666666-6666-4666-8666-666666666666', 'Join a campaign', 'Complete one approved campaign entry.', 'daily', 20, 0, 'active', 20, 1700000000, 1700000000);

INSERT INTO content_pages (id, slug, title, body, locale, status, version, created_at, updated_at)
VALUES
  ('77777777-7777-4777-8777-777777777777', 'about', 'About Oriva', 'Oriva brings campaigns, rewards, tasks, and transparent winner updates into one experience.', 'en', 'published', 1, 1700000000, 1700000000),
  ('88888888-8888-4888-8888-888888888888', 'rules', 'Campaign Rules', 'Every campaign shows its price, entry capacity, end condition, and result status. Only administrator-verified payments become valid paid orders.', 'en', 'published', 1, 1700000000, 1700000000);

PRAGMA foreign_keys = ON;
