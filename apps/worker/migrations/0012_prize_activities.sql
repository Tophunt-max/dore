-- Prize-pool "Dividing the prize" activity (ORich getactivity/joinactivity).
-- A cash prize pool that users join (after inviting the required friends); at
-- the deadline an ADMINISTRATOR runs the draw, which splits the pool among
-- winners and credits their wallets. Nothing is automated (regulated money).
CREATE TABLE prize_activities (
  id TEXT PRIMARY KEY,
  title TEXT NOT NULL,
  description TEXT NOT NULL DEFAULT '',
  rules TEXT NOT NULL DEFAULT '',
  prize_pool_minor INTEGER NOT NULL DEFAULT 0 CHECK (prize_pool_minor >= 0),
  currency TEXT NOT NULL DEFAULT 'INR',
  winners_count INTEGER NOT NULL DEFAULT 1 CHECK (winners_count > 0),
  required_invites INTEGER NOT NULL DEFAULT 0 CHECK (required_invites >= 0),
  image_key TEXT,
  status TEXT NOT NULL CHECK (status IN ('draft', 'active', 'drawing', 'completed', 'cancelled')),
  starts_at INTEGER,
  ends_at INTEGER,
  drawn_at INTEGER,
  created_at INTEGER NOT NULL,
  updated_at INTEGER NOT NULL
);
CREATE INDEX prize_activities_status_idx ON prize_activities(status, ends_at);

CREATE TABLE prize_activity_participants (
  id TEXT PRIMARY KEY,
  activity_id TEXT NOT NULL REFERENCES prize_activities(id),
  user_id TEXT NOT NULL REFERENCES users(id),
  status TEXT NOT NULL DEFAULT 'joined' CHECK (status IN ('joined', 'qualified', 'won', 'not_won')),
  prize_minor INTEGER NOT NULL DEFAULT 0,
  created_at INTEGER NOT NULL,
  UNIQUE(activity_id, user_id)
);
CREATE INDEX pap_activity_idx ON prize_activity_participants(activity_id, status);
CREATE INDEX pap_user_idx ON prize_activity_participants(user_id);
