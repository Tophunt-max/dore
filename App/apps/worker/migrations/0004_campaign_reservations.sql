ALTER TABLE campaigns ADD COLUMN reserved_entries INTEGER NOT NULL DEFAULT 0 CHECK (reserved_entries >= 0);
ALTER TABLE orders ADD COLUMN reservation_expires_at INTEGER;

UPDATE orders
SET reservation_expires_at = created_at + 86400
WHERE status = 'pending' AND reservation_expires_at IS NULL;
