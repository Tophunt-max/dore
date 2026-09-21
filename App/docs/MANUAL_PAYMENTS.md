# Oriva Manual Payment Operations

## User flow

1. A user creates an order or selects a wallet recharge amount.
2. The app fetches enabled methods from `GET /api/v1/payments/methods`.
3. The user selects a bank or UPI method. The API creates one idempotent payment intent in `awaiting_submission` state.
4. The app displays the exact amount and administrator-configured transfer details.
5. The user transfers outside Oriva, enters the UTR/bank reference, and may attach a screenshot.
6. Screenshots are uploaded to the separate private `oriva-payment-proofs` R2 bucket under `private/payment-proofs/`. They never receive a public asset URL.
7. `POST /api/v1/payments/:id/submissions` normalizes the reference, rejects duplicate references globally, verifies proof ownership/status, and moves the payment to `under_review`.
8. The status screen polls while review is pending. A rejection displays its reason and permits a new submission without deleting prior evidence.

## Administrator flow

1. Finance/admin opens **Payments** and filters `under_review`.
2. Staff matches phone, purpose, exact amount, configured receiving account, UTR/reference, bank statement, and optional private proof.
3. **Approve** updates the submission and intent, writes an audit record, and creates a unique settlement outbox record.
4. The payment queue idempotently credits a recharge through `WalletCoordinator` or changes one pending order to paid, then marks settlement complete.
5. **Reject** requires a reason, preserves the submission, sets the intent to `rejected`, and notifies the user. The user can submit a new reference/proof.

## Statuses

- `awaiting_submission` — intent exists; no reference submitted.
- `under_review` — finance verification required.
- `approved` — administrator approved; settlement is applied through the outbox/queue.
- `rejected` — latest submission rejected; resubmission allowed.
- `cancelled` — abandoned intent closed by policy.
- `refunded` — approved payment later reversed through a controlled operation.

## Controls

- No example receiving account is enabled by default. Finance must replace placeholders and explicitly enable a verified method before users can submit money.
- Never approve from a screenshot alone; match the reference in the real receiving account statement.
- A transaction reference can fund only one Oriva payment.
- Support users can view but cannot approve/reject; finance/admin roles are required.
- Every create/update/review action is audit logged.
- Recharge settlement is protected by an immutable unique ledger reference.
- Order settlement uses a conditional pending-to-paid transition.
- Pending settlement outbox records are retried by Cron.
- Payment proof objects are returned only through an authenticated admin endpoint with `private, no-store` headers.

## Reconciliation checklist

Daily finance operations should compare approved Oriva payments with bank/UPI statements, confirm every approved intent has `settlement_processed_at`, investigate pending outbox retries, and verify rejected references were not received. Any correction must use an audited reversal/refund workflow rather than deleting records.
