-- vuapp D1 schema. Money is stored in integer minor units (paise).
-- Safe to re-run: uses IF NOT EXISTS.

-- ---------- Users & auth ----------
CREATE TABLE IF NOT EXISTS users (
  id            INTEGER PRIMARY KEY AUTOINCREMENT,
  phone         TEXT UNIQUE NOT NULL,
  username      TEXT,
  avatar        TEXT,
  language      TEXT NOT NULL DEFAULT 'en',
  balance_minor INTEGER NOT NULL DEFAULT 0,
  invite_code   TEXT UNIQUE NOT NULL,
  invited_by    INTEGER REFERENCES users(id),
  status        TEXT NOT NULL DEFAULT 'active',   -- active | blocked
  created_at    INTEGER NOT NULL,
  updated_at    INTEGER NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_users_invited_by ON users(invited_by);

-- Rotating refresh tokens (store only a hash)
CREATE TABLE IF NOT EXISTS refresh_tokens (
  id          INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id     INTEGER NOT NULL REFERENCES users(id),
  token_hash  TEXT NOT NULL,
  expires_at  INTEGER NOT NULL,
  revoked     INTEGER NOT NULL DEFAULT 0,
  created_at  INTEGER NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_refresh_user ON refresh_tokens(user_id);

-- Admin accounts for the Cloudflare admin panel
CREATE TABLE IF NOT EXISTS admins (
  id            INTEGER PRIMARY KEY AUTOINCREMENT,
  email         TEXT UNIQUE NOT NULL,
  password_hash TEXT NOT NULL,
  role          TEXT NOT NULL DEFAULT 'admin',    -- admin | finance | support
  created_at    INTEGER NOT NULL
);

-- ---------- Addresses ----------
CREATE TABLE IF NOT EXISTS addresses (
  id         INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id    INTEGER NOT NULL REFERENCES users(id),
  name       TEXT NOT NULL,
  phone      TEXT NOT NULL,
  pincode    TEXT NOT NULL,
  line       TEXT NOT NULL,
  city       TEXT,
  state      TEXT,
  is_default INTEGER NOT NULL DEFAULT 0,
  created_at INTEGER NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_addresses_user ON addresses(user_id);

-- ---------- Goods / group-buy campaigns ----------
CREATE TABLE IF NOT EXISTS goods (
  id                INTEGER PRIMARY KEY AUTOINCREMENT,
  title             TEXT NOT NULL,
  image             TEXT,
  description       TEXT,
  category          TEXT NOT NULL DEFAULT 'normal',  -- newbie | normal | high | latest
  price_minor       INTEGER NOT NULL,                -- ticket price
  market_price_minor INTEGER NOT NULL DEFAULT 0,
  total_slots       INTEGER NOT NULL DEFAULT 100,
  filled_slots      INTEGER NOT NULL DEFAULT 0,
  issue             TEXT,                            -- round/issue number
  status            TEXT NOT NULL DEFAULT 'active',  -- active | drawing | closed
  end_at            INTEGER,
  created_at        INTEGER NOT NULL
);

-- Draw results / winners
CREATE TABLE IF NOT EXISTS draws (
  id          INTEGER PRIMARY KEY AUTOINCREMENT,
  goods_id    INTEGER NOT NULL REFERENCES goods(id),
  issue       TEXT,
  winner_user INTEGER REFERENCES users(id),
  winning_no  TEXT,
  drawn_at    INTEGER NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_draws_goods ON draws(goods_id);

-- ---------- Orders ----------
CREATE TABLE IF NOT EXISTS orders (
  id           INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id      INTEGER NOT NULL REFERENCES users(id),
  goods_id     INTEGER NOT NULL REFERENCES goods(id),
  address_id   INTEGER REFERENCES addresses(id),
  slots        INTEGER NOT NULL DEFAULT 1,
  amount_minor INTEGER NOT NULL,
  status       TEXT NOT NULL DEFAULT 'paid',   -- pending | paid | won | lost | shipped | delivered
  created_at   INTEGER NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_orders_user ON orders(user_id);
CREATE INDEX IF NOT EXISTS idx_orders_goods ON orders(goods_id);

-- ---------- Wallet ledger (immutable) ----------
CREATE TABLE IF NOT EXISTS wallet_txns (
  id            INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id       INTEGER NOT NULL REFERENCES users(id),
  type          TEXT NOT NULL,   -- recharge | withdraw | order | refund | reward | task | referral
  amount_minor  INTEGER NOT NULL, -- positive = credit, negative = debit
  balance_after INTEGER NOT NULL,
  ref_type      TEXT,
  ref_id        INTEGER,
  note          TEXT,
  created_at    INTEGER NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_wallet_user ON wallet_txns(user_id);

-- ---------- Beneficiaries (bank / UPI) ----------
CREATE TABLE IF NOT EXISTS beneficiaries (
  id          INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id     INTEGER NOT NULL REFERENCES users(id),
  type        TEXT NOT NULL,   -- bank | upi
  holder_name TEXT NOT NULL,
  account_no  TEXT,
  ifsc        TEXT,
  upi_id      TEXT,
  is_default  INTEGER NOT NULL DEFAULT 0,
  created_at  INTEGER NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_benef_user ON beneficiaries(user_id);

-- ---------- Recharge (manual verification) ----------
CREATE TABLE IF NOT EXISTS recharges (
  id           INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id      INTEGER NOT NULL REFERENCES users(id),
  amount_minor INTEGER NOT NULL,
  method       TEXT NOT NULL DEFAULT 'upi',  -- upi | bank
  utr          TEXT,                          -- bank/UPI reference number (unique per verify)
  proof_key    TEXT,                          -- R2 object key (private)
  status       TEXT NOT NULL DEFAULT 'pending', -- pending | approved | rejected
  reviewed_by  INTEGER REFERENCES admins(id),
  reviewed_at  INTEGER,
  created_at   INTEGER NOT NULL
);
CREATE UNIQUE INDEX IF NOT EXISTS idx_recharge_utr ON recharges(utr) WHERE utr IS NOT NULL;
CREATE INDEX IF NOT EXISTS idx_recharge_user ON recharges(user_id);

-- ---------- Withdrawals ----------
CREATE TABLE IF NOT EXISTS withdrawals (
  id             INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id        INTEGER NOT NULL REFERENCES users(id),
  beneficiary_id INTEGER REFERENCES beneficiaries(id),
  amount_minor   INTEGER NOT NULL,
  status         TEXT NOT NULL DEFAULT 'pending', -- pending | approved | paid | rejected
  reviewed_by    INTEGER REFERENCES admins(id),
  reviewed_at    INTEGER,
  created_at     INTEGER NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_withdraw_user ON withdrawals(user_id);

-- ---------- Tasks ----------
CREATE TABLE IF NOT EXISTS tasks (
  id           INTEGER PRIMARY KEY AUTOINCREMENT,
  title        TEXT NOT NULL,
  description  TEXT,
  reward_minor INTEGER NOT NULL DEFAULT 0,
  period       TEXT NOT NULL DEFAULT 'daily',  -- daily | weekly | monthly | once
  target       INTEGER NOT NULL DEFAULT 1,
  active        INTEGER NOT NULL DEFAULT 1,
  created_at   INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS user_tasks (
  id          INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id     INTEGER NOT NULL REFERENCES users(id),
  task_id     INTEGER NOT NULL REFERENCES tasks(id),
  progress    INTEGER NOT NULL DEFAULT 0,
  claimed     INTEGER NOT NULL DEFAULT 0,
  updated_at  INTEGER NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_usertask_user ON user_tasks(user_id);

-- ---------- Finance products ----------
CREATE TABLE IF NOT EXISTS finance_products (
  id            INTEGER PRIMARY KEY AUTOINCREMENT,
  title         TEXT NOT NULL,
  image         TEXT,
  rate_bps      INTEGER NOT NULL DEFAULT 0,   -- annualised rate in basis points
  term_days     INTEGER NOT NULL DEFAULT 30,
  min_minor     INTEGER NOT NULL DEFAULT 0,
  max_minor     INTEGER NOT NULL DEFAULT 0,
  status        TEXT NOT NULL DEFAULT 'active',
  created_at    INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS finance_orders (
  id            INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id       INTEGER NOT NULL REFERENCES users(id),
  product_id    INTEGER NOT NULL REFERENCES finance_products(id),
  amount_minor  INTEGER NOT NULL,
  status        TEXT NOT NULL DEFAULT 'active', -- active | matured | redeemed
  start_at      INTEGER NOT NULL,
  end_at        INTEGER NOT NULL,
  created_at    INTEGER NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_finorder_user ON finance_orders(user_id);

-- ---------- Game rounds (non-monetary demo) ----------
CREATE TABLE IF NOT EXISTS game_plays (
  id           INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id      INTEGER NOT NULL REFERENCES users(id),
  bet_minor    INTEGER NOT NULL DEFAULT 0,
  result       TEXT,
  payout_minor INTEGER NOT NULL DEFAULT 0,
  created_at   INTEGER NOT NULL
);

-- ---------- Content: banners, notices, help, rules ----------
CREATE TABLE IF NOT EXISTS banners (
  id        INTEGER PRIMARY KEY AUTOINCREMENT,
  image     TEXT NOT NULL,
  link      TEXT,
  sort      INTEGER NOT NULL DEFAULT 0,
  active    INTEGER NOT NULL DEFAULT 1
);
CREATE TABLE IF NOT EXISTS notices (
  id         INTEGER PRIMARY KEY AUTOINCREMENT,
  text       TEXT NOT NULL,
  active     INTEGER NOT NULL DEFAULT 1,
  created_at INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS help_articles (
  id       INTEGER PRIMARY KEY AUTOINCREMENT,
  topic    TEXT NOT NULL,
  title    TEXT NOT NULL,
  body     TEXT NOT NULL,
  sort     INTEGER NOT NULL DEFAULT 0
);
CREATE TABLE IF NOT EXISTS pages_content (
  slug     TEXT PRIMARY KEY,   -- 'rule' | 'about' | 'intro'
  title    TEXT NOT NULL,
  body     TEXT NOT NULL
);
