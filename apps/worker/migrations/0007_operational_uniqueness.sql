-- Close remaining concurrency gaps with forward-only partial uniqueness constraints.
CREATE UNIQUE INDEX payments_active_order_unique
ON payment_transactions(order_id)
WHERE order_id IS NOT NULL AND status NOT IN ('cancelled', 'refunded');

CREATE UNIQUE INDEX payout_beneficiary_default_unique
ON payout_beneficiaries(user_id)
WHERE active = 1 AND is_default = 1;

CREATE UNIQUE INDEX referral_program_active_unique
ON referral_programs(status)
WHERE status = 'active';
