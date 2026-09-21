PRAGMA foreign_keys = ON;

-- Payout beneficiaries are encrypted by the Worker. Only masked/fingerprinted values are queryable.
CREATE TABLE payout_beneficiaries (
  id TEXT PRIMARY KEY,
  user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  type TEXT NOT NULL CHECK (type IN ('bank', 'upi')),
  label TEXT NOT NULL,
  account_holder_name TEXT,
  bank_name TEXT,
  ifsc TEXT,
  destination_ciphertext TEXT NOT NULL,
  destination_iv TEXT NOT NULL,
  destination_last4 TEXT NOT NULL,
  destination_fingerprint TEXT NOT NULL,
  is_default INTEGER NOT NULL DEFAULT 0 CHECK (is_default IN (0, 1)),
  verification_status TEXT NOT NULL DEFAULT 'pending' CHECK (verification_status IN ('pending', 'verified', 'rejected')),
  verified_by_user_id TEXT REFERENCES users(id),
  verified_at INTEGER,
  rejection_reason TEXT,
  active INTEGER NOT NULL DEFAULT 1 CHECK (active IN (0, 1)),
  created_at INTEGER NOT NULL,
  updated_at INTEGER NOT NULL,
  UNIQUE(user_id, destination_fingerprint)
);
CREATE INDEX payout_beneficiaries_user_idx ON payout_beneficiaries(user_id, active, is_default DESC);
CREATE INDEX payout_beneficiaries_verification_idx ON payout_beneficiaries(verification_status, created_at);

ALTER TABLE withdrawals ADD COLUMN beneficiary_id TEXT REFERENCES payout_beneficiaries(id);
ALTER TABLE withdrawals ADD COLUMN destination_snapshot_json TEXT;
ALTER TABLE withdrawals ADD COLUMN settled_at INTEGER;

-- A draw is committed before it can be executed. server_seed is revealed only on execution.
CREATE TABLE campaign_draws (
  id TEXT PRIMARY KEY,
  campaign_id TEXT NOT NULL UNIQUE REFERENCES campaigns(id),
  status TEXT NOT NULL CHECK (status IN ('committed', 'executed', 'voided')),
  algorithm_version TEXT NOT NULL,
  server_seed TEXT NOT NULL,
  seed_commitment TEXT NOT NULL,
  entry_snapshot_hash TEXT NOT NULL,
  eligible_entry_count INTEGER NOT NULL CHECK (eligible_entry_count > 0),
  winning_index INTEGER,
  winning_entry_id TEXT REFERENCES campaign_entries(id),
  committed_by_user_id TEXT NOT NULL REFERENCES users(id),
  committed_at INTEGER NOT NULL,
  executed_by_user_id TEXT REFERENCES users(id),
  executed_at INTEGER,
  revealed_seed TEXT,
  void_reason TEXT
);
CREATE INDEX campaign_draws_status_idx ON campaign_draws(status, committed_at);

-- Task claims are backed by an authoritative eligibility mode and immutable event evidence.
ALTER TABLE task_definitions ADD COLUMN eligibility_event TEXT NOT NULL DEFAULT 'check_in';
UPDATE task_definitions SET eligibility_event = 'paid_order' WHERE id = '66666666-6666-4666-8666-666666666666';
CREATE TABLE task_events (
  id TEXT PRIMARY KEY,
  user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  event_type TEXT NOT NULL CHECK (event_type IN ('check_in', 'paid_order')),
  source_type TEXT NOT NULL,
  source_id TEXT NOT NULL,
  occurred_at INTEGER NOT NULL,
  UNIQUE(user_id, event_type, source_type, source_id)
);
CREATE INDEX task_events_eligibility_idx ON task_events(user_id, event_type, occurred_at DESC);
CREATE TABLE coin_accounts (
  user_id TEXT PRIMARY KEY REFERENCES users(id) ON DELETE CASCADE,
  balance INTEGER NOT NULL DEFAULT 0 CHECK (balance >= 0),
  version INTEGER NOT NULL DEFAULT 0,
  updated_at INTEGER NOT NULL
);
CREATE TABLE coin_ledger_entries (
  id TEXT PRIMARY KEY,
  transaction_id TEXT NOT NULL,
  user_id TEXT NOT NULL REFERENCES users(id),
  direction TEXT NOT NULL CHECK (direction IN ('credit', 'debit')),
  amount INTEGER NOT NULL CHECK (amount > 0),
  entry_type TEXT NOT NULL,
  description TEXT NOT NULL,
  reference_type TEXT NOT NULL,
  reference_id TEXT NOT NULL,
  created_at INTEGER NOT NULL,
  UNIQUE(reference_type, reference_id, entry_type, direction)
);
CREATE INDEX coin_ledger_user_idx ON coin_ledger_entries(user_id, created_at DESC);

-- Referral rewards are configuration-driven; no monetary reward is issued until an active program exists.
ALTER TABLE referrals ADD COLUMN first_paid_order_id TEXT REFERENCES orders(id);
ALTER TABLE referrals ADD COLUMN rewarded_at INTEGER;
ALTER TABLE referrals ADD COLUMN program_id TEXT;
CREATE TABLE referral_programs (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  referrer_reward_minor INTEGER NOT NULL DEFAULT 0 CHECK (referrer_reward_minor >= 0),
  referred_reward_minor INTEGER NOT NULL DEFAULT 0 CHECK (referred_reward_minor >= 0),
  referrer_reward_coins INTEGER NOT NULL DEFAULT 0 CHECK (referrer_reward_coins >= 0),
  referred_reward_coins INTEGER NOT NULL DEFAULT 0 CHECK (referred_reward_coins >= 0),
  currency TEXT NOT NULL DEFAULT 'INR',
  status TEXT NOT NULL CHECK (status IN ('draft', 'active', 'archived')),
  starts_at INTEGER,
  ends_at INTEGER,
  created_at INTEGER NOT NULL,
  updated_at INTEGER NOT NULL
);
CREATE INDEX referral_programs_active_idx ON referral_programs(status, starts_at, ends_at);
CREATE TABLE referral_reward_issues (
  id TEXT PRIMARY KEY,
  referral_id TEXT NOT NULL REFERENCES referrals(id),
  program_id TEXT NOT NULL REFERENCES referral_programs(id),
  beneficiary_user_id TEXT NOT NULL REFERENCES users(id),
  role TEXT NOT NULL CHECK (role IN ('referrer', 'referred')),
  amount_minor INTEGER NOT NULL DEFAULT 0 CHECK (amount_minor >= 0),
  coin_amount INTEGER NOT NULL DEFAULT 0 CHECK (coin_amount >= 0),
  created_at INTEGER NOT NULL,
  UNIQUE(referral_id, role)
);

-- Refunds and reconciliation use compensating records; approved evidence is never deleted.
CREATE TABLE payment_refunds (
  id TEXT PRIMARY KEY,
  payment_id TEXT NOT NULL REFERENCES payment_transactions(id),
  amount_minor INTEGER NOT NULL CHECK (amount_minor > 0),
  currency TEXT NOT NULL,
  reason TEXT NOT NULL,
  status TEXT NOT NULL CHECK (status IN ('pending', 'complete', 'failed')),
  requested_by_user_id TEXT NOT NULL REFERENCES users(id),
  idempotency_key TEXT NOT NULL UNIQUE,
  ledger_transaction_id TEXT,
  created_at INTEGER NOT NULL,
  completed_at INTEGER,
  failure_reason TEXT,
  UNIQUE(payment_id)
);
CREATE TABLE reconciliation_runs (
  id TEXT PRIMARY KEY,
  source TEXT NOT NULL,
  statement_reference TEXT NOT NULL,
  status TEXT NOT NULL CHECK (status IN ('open', 'complete')),
  opened_by_user_id TEXT NOT NULL REFERENCES users(id),
  opened_at INTEGER NOT NULL,
  completed_at INTEGER,
  notes TEXT,
  UNIQUE(source, statement_reference)
);
CREATE TABLE reconciliation_items (
  id TEXT PRIMARY KEY,
  run_id TEXT NOT NULL REFERENCES reconciliation_runs(id) ON DELETE CASCADE,
  payment_id TEXT REFERENCES payment_transactions(id),
  external_reference TEXT NOT NULL,
  amount_minor INTEGER NOT NULL CHECK (amount_minor > 0),
  currency TEXT NOT NULL,
  status TEXT NOT NULL CHECK (status IN ('matched', 'missing_internal', 'amount_mismatch', 'duplicate', 'resolved')),
  resolution_note TEXT,
  resolved_by_user_id TEXT REFERENCES users(id),
  resolved_at INTEGER,
  created_at INTEGER NOT NULL,
  UNIQUE(run_id, external_reference)
);
CREATE INDEX reconciliation_items_status_idx ON reconciliation_items(status, created_at);

-- General durable outbox for persisted notifications and operational failure reporting.
CREATE TABLE outbox_events (
  id TEXT PRIMARY KEY,
  event_type TEXT NOT NULL,
  aggregate_type TEXT NOT NULL,
  aggregate_id TEXT NOT NULL,
  payload_json TEXT NOT NULL,
  status TEXT NOT NULL DEFAULT 'pending' CHECK (status IN ('pending', 'processing', 'complete', 'dead_letter')),
  attempts INTEGER NOT NULL DEFAULT 0,
  available_at INTEGER NOT NULL,
  lease_expires_at INTEGER,
  last_error TEXT,
  created_at INTEGER NOT NULL,
  processed_at INTEGER,
  UNIQUE(event_type, aggregate_type, aggregate_id)
);
CREATE INDEX outbox_dispatch_idx ON outbox_events(status, available_at, attempts);

CREATE TABLE notification_inbox (
  id TEXT PRIMARY KEY,
  user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  type TEXT NOT NULL,
  title TEXT NOT NULL,
  body TEXT NOT NULL,
  entity_id TEXT,
  read_at INTEGER,
  created_at INTEGER NOT NULL
);
CREATE INDEX notification_inbox_user_idx ON notification_inbox(user_id, created_at DESC);
CREATE TABLE notification_deliveries (
  id TEXT PRIMARY KEY,
  notification_id TEXT NOT NULL REFERENCES notification_inbox(id) ON DELETE CASCADE,
  push_device_id TEXT NOT NULL REFERENCES push_devices(id) ON DELETE CASCADE,
  status TEXT NOT NULL CHECK (status IN ('pending', 'sent', 'failed', 'invalid_token')),
  provider_reference TEXT,
  attempts INTEGER NOT NULL DEFAULT 0,
  last_error TEXT,
  updated_at INTEGER NOT NULL,
  UNIQUE(notification_id, push_device_id)
);
CREATE TABLE notification_templates (
  id TEXT PRIMARY KEY,
  key TEXT NOT NULL UNIQUE,
  title_template TEXT NOT NULL,
  body_template TEXT NOT NULL,
  status TEXT NOT NULL CHECK (status IN ('draft', 'active', 'archived')),
  created_at INTEGER NOT NULL,
  updated_at INTEGER NOT NULL
);
CREATE TABLE notification_broadcasts (
  id TEXT PRIMARY KEY,
  title TEXT NOT NULL,
  body TEXT NOT NULL,
  audience TEXT NOT NULL CHECK (audience IN ('all', 'active_users')),
  status TEXT NOT NULL CHECK (status IN ('draft', 'sent')),
  created_by_user_id TEXT NOT NULL REFERENCES users(id),
  created_at INTEGER NOT NULL,
  sent_at INTEGER
);
CREATE TABLE banners (
  id TEXT PRIMARY KEY,
  title TEXT NOT NULL,
  body TEXT NOT NULL DEFAULT '',
  image_key TEXT,
  action_url TEXT,
  status TEXT NOT NULL CHECK (status IN ('draft', 'active', 'archived')),
  starts_at INTEGER,
  ends_at INTEGER,
  sort_order INTEGER NOT NULL DEFAULT 0,
  created_at INTEGER NOT NULL,
  updated_at INTEGER NOT NULL
);
CREATE INDEX banners_active_idx ON banners(status, starts_at, ends_at, sort_order);

-- Support conversations retain an immutable message history.
CREATE TABLE support_tickets (
  id TEXT PRIMARY KEY,
  user_id TEXT NOT NULL REFERENCES users(id),
  subject TEXT NOT NULL,
  category TEXT NOT NULL CHECK (category IN ('payment', 'withdrawal', 'campaign', 'account', 'other')),
  status TEXT NOT NULL CHECK (status IN ('open', 'in_progress', 'waiting_on_user', 'resolved', 'closed')),
  priority TEXT NOT NULL DEFAULT 'normal' CHECK (priority IN ('low', 'normal', 'high', 'urgent')),
  assigned_to_user_id TEXT REFERENCES users(id),
  created_at INTEGER NOT NULL,
  updated_at INTEGER NOT NULL,
  closed_at INTEGER
);
CREATE INDEX support_tickets_queue_idx ON support_tickets(status, priority, updated_at DESC);
CREATE INDEX support_tickets_user_idx ON support_tickets(user_id, updated_at DESC);
CREATE TABLE support_messages (
  id TEXT PRIMARY KEY,
  ticket_id TEXT NOT NULL REFERENCES support_tickets(id) ON DELETE CASCADE,
  sender_user_id TEXT NOT NULL REFERENCES users(id),
  sender_role TEXT NOT NULL CHECK (sender_role IN ('user', 'support', 'finance', 'admin')),
  body TEXT NOT NULL,
  attachment_upload_id TEXT REFERENCES uploads(id),
  created_at INTEGER NOT NULL
);
CREATE INDEX support_messages_ticket_idx ON support_messages(ticket_id, created_at);

-- Informational finance offers only: no application, underwriting, deposit, lending, or execution tables.
CREATE TABLE finance_offers (
  id TEXT PRIMARY KEY,
  provider_name TEXT NOT NULL,
  title TEXT NOT NULL,
  description TEXT NOT NULL,
  category TEXT NOT NULL CHECK (category IN ('education', 'insurance', 'savings_information', 'other')),
  disclaimer TEXT NOT NULL,
  external_url TEXT,
  status TEXT NOT NULL CHECK (status IN ('draft', 'active', 'archived')),
  sort_order INTEGER NOT NULL DEFAULT 0,
  created_at INTEGER NOT NULL,
  updated_at INTEGER NOT NULL
);
CREATE TABLE game_definitions (
  id TEXT PRIMARY KEY,
  title TEXT NOT NULL,
  description TEXT NOT NULL,
  rules TEXT NOT NULL,
  daily_play_limit INTEGER NOT NULL DEFAULT 1 CHECK (daily_play_limit > 0 AND daily_play_limit <= 100),
  points_per_play INTEGER NOT NULL DEFAULT 0 CHECK (points_per_play >= 0),
  status TEXT NOT NULL CHECK (status IN ('draft', 'active', 'archived')),
  created_at INTEGER NOT NULL,
  updated_at INTEGER NOT NULL
);
CREATE TABLE game_plays (
  id TEXT PRIMARY KEY,
  game_id TEXT NOT NULL REFERENCES game_definitions(id),
  user_id TEXT NOT NULL REFERENCES users(id),
  play_date TEXT NOT NULL,
  sequence INTEGER NOT NULL,
  points_awarded INTEGER NOT NULL DEFAULT 0 CHECK (points_awarded >= 0),
  created_at INTEGER NOT NULL,
  UNIQUE(game_id, user_id, play_date, sequence)
);
CREATE TABLE membership_plans (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT NOT NULL,
  benefits_json TEXT NOT NULL DEFAULT '[]',
  price_minor INTEGER NOT NULL DEFAULT 0 CHECK (price_minor >= 0),
  currency TEXT NOT NULL DEFAULT 'INR',
  duration_days INTEGER NOT NULL CHECK (duration_days > 0),
  status TEXT NOT NULL CHECK (status IN ('draft', 'active', 'archived')),
  created_at INTEGER NOT NULL,
  updated_at INTEGER NOT NULL
);
CREATE TABLE memberships (
  id TEXT PRIMARY KEY,
  user_id TEXT NOT NULL REFERENCES users(id),
  plan_id TEXT NOT NULL REFERENCES membership_plans(id),
  status TEXT NOT NULL CHECK (status IN ('active', 'expired', 'cancelled')),
  source TEXT NOT NULL DEFAULT 'admin_grant' CHECK (source IN ('admin_grant', 'promotion')),
  starts_at INTEGER NOT NULL,
  ends_at INTEGER NOT NULL,
  created_at INTEGER NOT NULL,
  updated_at INTEGER NOT NULL
);
CREATE INDEX memberships_user_idx ON memberships(user_id, status, ends_at DESC);
CREATE TABLE discount_offers (
  id TEXT PRIMARY KEY,
  code TEXT NOT NULL UNIQUE,
  title TEXT NOT NULL,
  description TEXT NOT NULL,
  discount_type TEXT NOT NULL CHECK (discount_type IN ('fixed', 'percentage')),
  value INTEGER NOT NULL CHECK (value > 0),
  max_discount_minor INTEGER,
  minimum_order_minor INTEGER NOT NULL DEFAULT 0 CHECK (minimum_order_minor >= 0),
  redemption_limit INTEGER,
  per_user_limit INTEGER NOT NULL DEFAULT 1 CHECK (per_user_limit > 0),
  status TEXT NOT NULL CHECK (status IN ('draft', 'active', 'archived')),
  starts_at INTEGER,
  ends_at INTEGER,
  created_at INTEGER NOT NULL,
  updated_at INTEGER NOT NULL
);
CREATE TABLE discount_redemptions (
  id TEXT PRIMARY KEY,
  discount_id TEXT NOT NULL REFERENCES discount_offers(id),
  user_id TEXT NOT NULL REFERENCES users(id),
  order_id TEXT NOT NULL REFERENCES orders(id),
  amount_minor INTEGER NOT NULL CHECK (amount_minor > 0),
  created_at INTEGER NOT NULL,
  UNIQUE(discount_id, order_id)
);

-- Proof uploads cannot be reused across submissions.
CREATE UNIQUE INDEX payment_submission_proof_unique ON payment_submissions(proof_upload_id) WHERE proof_upload_id IS NOT NULL;
ALTER TABLE uploads ADD COLUMN consumed_at INTEGER;

-- Financial and audit evidence is append-only. Corrections use compensating rows.
CREATE TRIGGER ledger_entries_no_update BEFORE UPDATE ON ledger_entries BEGIN SELECT RAISE(ABORT, 'ledger entries are immutable'); END;
CREATE TRIGGER ledger_entries_no_delete BEFORE DELETE ON ledger_entries BEGIN SELECT RAISE(ABORT, 'ledger entries are immutable'); END;
CREATE TRIGGER coin_ledger_no_update BEFORE UPDATE ON coin_ledger_entries BEGIN SELECT RAISE(ABORT, 'coin ledger entries are immutable'); END;
CREATE TRIGGER coin_ledger_no_delete BEFORE DELETE ON coin_ledger_entries BEGIN SELECT RAISE(ABORT, 'coin ledger entries are immutable'); END;
CREATE TRIGGER audit_logs_no_update BEFORE UPDATE ON audit_logs BEGIN SELECT RAISE(ABORT, 'audit logs are immutable'); END;
CREATE TRIGGER audit_logs_no_delete BEFORE DELETE ON audit_logs BEGIN SELECT RAISE(ABORT, 'audit logs are immutable'); END;
CREATE TRIGGER payment_refunds_no_update BEFORE UPDATE ON payment_refunds WHEN OLD.status = 'complete' BEGIN SELECT RAISE(ABORT, 'completed refunds are immutable'); END;
CREATE TRIGGER payment_refunds_no_delete BEFORE DELETE ON payment_refunds BEGIN SELECT RAISE(ABORT, 'refund records are immutable'); END;
