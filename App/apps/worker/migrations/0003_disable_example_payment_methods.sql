UPDATE payment_methods
SET enabled = 0, updated_at = unixepoch()
WHERE id IN (
  '33333333-3333-4333-8333-333333333333',
  '44444444-4444-4444-8444-444444444444'
);
