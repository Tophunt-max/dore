PRAGMA foreign_keys = OFF;

CREATE TABLE notification_broadcasts_v2 (
  id TEXT PRIMARY KEY,
  title TEXT NOT NULL,
  body TEXT NOT NULL,
  audience TEXT NOT NULL CHECK (audience IN ('all', 'active_users')),
  status TEXT NOT NULL CHECK (status IN ('draft', 'processing', 'sent', 'failed')),
  created_by_user_id TEXT NOT NULL REFERENCES users(id),
  cursor_created_at INTEGER NOT NULL DEFAULT -1,
  cursor_user_id TEXT NOT NULL DEFAULT '',
  recipient_count INTEGER NOT NULL DEFAULT 0,
  last_error TEXT,
  created_at INTEGER NOT NULL,
  sent_at INTEGER
);
INSERT INTO notification_broadcasts_v2
  (id,title,body,audience,status,created_by_user_id,created_at,sent_at)
SELECT id,title,body,audience,status,created_by_user_id,created_at,sent_at
FROM notification_broadcasts;
DROP TABLE notification_broadcasts;
ALTER TABLE notification_broadcasts_v2 RENAME TO notification_broadcasts;
CREATE INDEX notification_broadcasts_status_idx ON notification_broadcasts(status, created_at);

CREATE TABLE notification_broadcast_recipients (
  broadcast_id TEXT NOT NULL REFERENCES notification_broadcasts(id) ON DELETE CASCADE,
  user_id TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  notification_id TEXT NOT NULL UNIQUE REFERENCES notification_inbox(id) ON DELETE CASCADE,
  created_at INTEGER NOT NULL,
  PRIMARY KEY (broadcast_id, user_id)
);

PRAGMA foreign_keys = ON;
