PRAGMA foreign_keys = ON;

CREATE TABLE payment_review_decisions (
  payment_id TEXT PRIMARY KEY REFERENCES payment_transactions(id) ON DELETE CASCADE,
  submission_id TEXT NOT NULL REFERENCES payment_submissions(id),
  decision TEXT NOT NULL CHECK (decision IN ('approved', 'rejected')),
  reason TEXT,
  actor_user_id TEXT NOT NULL REFERENCES users(id),
  created_at INTEGER NOT NULL
);

CREATE TABLE refresh_token_rotations (
  previous_token_id TEXT PRIMARY KEY REFERENCES refresh_tokens(id) ON DELETE CASCADE,
  replacement_token_id TEXT NOT NULL UNIQUE REFERENCES refresh_tokens(id) ON DELETE CASCADE,
  rotated_at INTEGER NOT NULL
);

CREATE TABLE share_posts (
  id TEXT PRIMARY KEY,
  user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  prize_id TEXT REFERENCES prizes(id),
  body TEXT NOT NULL,
  status TEXT NOT NULL DEFAULT 'published' CHECK (status IN ('published', 'removed')),
  created_at INTEGER NOT NULL,
  updated_at INTEGER NOT NULL
);
CREATE INDEX share_posts_user_idx ON share_posts(user_id, created_at DESC);
CREATE INDEX share_posts_public_idx ON share_posts(status, created_at DESC);

CREATE TRIGGER campaign_economics_frozen
BEFORE UPDATE OF product_id, entry_price_minor, total_entries, starts_at, ends_at ON campaigns
WHEN (
  OLD.status != 'scheduled' OR OLD.sold_entries > 0 OR OLD.reserved_entries > 0
) AND (
  NEW.product_id != OLD.product_id OR
  NEW.entry_price_minor != OLD.entry_price_minor OR
  NEW.total_entries != OLD.total_entries OR
  NEW.starts_at != OLD.starts_at OR
  NEW.ends_at != OLD.ends_at
)
BEGIN
  SELECT RAISE(ABORT, 'campaign economics are frozen after activation or activity');
END;

CREATE TRIGGER pending_order_cancel_requires_unprotected_payment
BEFORE UPDATE OF status ON orders
WHEN OLD.status = 'pending' AND NEW.status = 'cancelled' AND EXISTS (
  SELECT 1 FROM payment_transactions p
  WHERE p.order_id = OLD.id AND p.status IN ('under_review', 'approved')
)
BEGIN
  SELECT RAISE(ABORT, 'protected payment prevents reservation release');
END;


CREATE TRIGGER refresh_rotation_requires_active_token
BEFORE INSERT ON refresh_token_rotations
WHEN NOT EXISTS (
  SELECT 1 FROM refresh_tokens
  WHERE id = NEW.previous_token_id AND revoked_at IS NULL AND replaced_by_token_id IS NULL
)
BEGIN
  SELECT RAISE(ABORT, 'refresh token replay detected');
END;


ALTER TABLE payment_refunds ADD COLUMN payout_reference TEXT;
ALTER TABLE campaign_entries ADD COLUMN voided_at INTEGER;
ALTER TABLE campaign_entries ADD COLUMN void_reason TEXT;


CREATE TRIGGER pending_order_requires_reserved_capacity
BEFORE INSERT ON orders
WHEN NEW.status = 'pending' AND NEW.campaign_id IS NOT NULL AND (
  SELECT reserved_entries - COALESCE((
    SELECT SUM(quantity) FROM orders existing
    WHERE existing.campaign_id = NEW.campaign_id AND existing.status = 'pending'
  ), 0)
  FROM campaigns WHERE id = NEW.campaign_id
) < NEW.quantity
BEGIN
  SELECT RAISE(ABORT, 'pending order has no reserved campaign capacity');
END;
