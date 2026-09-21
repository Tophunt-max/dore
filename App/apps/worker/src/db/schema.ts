import {
  integer,
  sqliteTable,
  text,
  uniqueIndex,
} from 'drizzle-orm/sqlite-core';

export const users = sqliteTable('users', {
  id: text('id').primaryKey(),
  phoneE164: text('phone_e164').notNull().unique(),
  phoneHash: text('phone_hash').notNull().unique(),
  displayName: text('display_name'),
  email: text('email'),
  avatarKey: text('avatar_key'),
  referralCode: text('referral_code').notNull().unique(),
  referredByUserId: text('referred_by_user_id'),
  role: text('role').notNull().default('user'),
  status: text('status').notNull().default('active'),
  createdAt: integer('created_at').notNull(),
  updatedAt: integer('updated_at').notNull(),
});

export const campaigns = sqliteTable('campaigns', {
  id: text('id').primaryKey(),
  productId: text('product_id').notNull(),
  entryPriceMinor: integer('entry_price_minor').notNull(),
  totalEntries: integer('total_entries').notNull(),
  soldEntries: integer('sold_entries').notNull().default(0),
  reservedEntries: integer('reserved_entries').notNull().default(0),
  startsAt: integer('starts_at').notNull(),
  endsAt: integer('ends_at').notNull(),
  status: text('status').notNull(),
  winnerUserId: text('winner_user_id'),
  createdAt: integer('created_at').notNull(),
  updatedAt: integer('updated_at').notNull(),
});

export const orders = sqliteTable(
  'orders',
  {
    id: text('id').primaryKey(),
    userId: text('user_id').notNull(),
    campaignId: text('campaign_id'),
    title: text('title').notNull(),
    quantity: integer('quantity').notNull(),
    amountMinor: integer('amount_minor').notNull(),
    currency: text('currency').notNull(),
    status: text('status').notNull(),
    idempotencyKey: text('idempotency_key').notNull(),
    reservationExpiresAt: integer('reservation_expires_at'),
    createdAt: integer('created_at').notNull(),
    updatedAt: integer('updated_at').notNull(),
  },
  (table) => [
    uniqueIndex('orders_idempotency_unique').on(
      table.userId,
      table.idempotencyKey,
    ),
  ],
);

export const ledgerEntries = sqliteTable(
  'ledger_entries',
  {
    id: text('id').primaryKey(),
    transactionId: text('transaction_id').notNull(),
    userId: text('user_id').notNull(),
    direction: text('direction').notNull(),
    amountMinor: integer('amount_minor').notNull(),
    currency: text('currency').notNull(),
    entryType: text('entry_type').notNull(),
    description: text('description').notNull(),
    referenceType: text('reference_type'),
    referenceId: text('reference_id'),
    createdAt: integer('created_at').notNull(),
  },
  (table) => [
    uniqueIndex('ledger_reference_unique').on(
      table.referenceType,
      table.referenceId,
      table.entryType,
      table.direction,
    ),
  ],
);

export const paymentMethods = sqliteTable('payment_methods', {
  id: text('id').primaryKey(),
  type: text('type').notNull(),
  displayName: text('display_name').notNull(),
  instructions: text('instructions').notNull(),
  accountName: text('account_name'),
  accountNumber: text('account_number'),
  bankName: text('bank_name'),
  ifsc: text('ifsc'),
  upiId: text('upi_id'),
  qrImageKey: text('qr_image_key'),
  currency: text('currency').notNull().default('INR'),
  enabled: integer('enabled').notNull().default(1),
  sortOrder: integer('sort_order').notNull().default(0),
  createdAt: integer('created_at').notNull(),
  updatedAt: integer('updated_at').notNull(),
});

export const paymentTransactions = sqliteTable(
  'payment_transactions',
  {
    id: text('id').primaryKey(),
    userId: text('user_id').notNull(),
    orderId: text('order_id'),
    paymentMethodId: text('payment_method_id').notNull(),
    purpose: text('purpose').notNull(),
    amountMinor: integer('amount_minor').notNull(),
    currency: text('currency').notNull().default('INR'),
    idempotencyKey: text('idempotency_key').notNull(),
    status: text('status').notNull(),
    settlementProcessedAt: integer('settlement_processed_at'),
    createdAt: integer('created_at').notNull(),
    updatedAt: integer('updated_at').notNull(),
  },
  (table) => [
    uniqueIndex('payments_idempotency_unique').on(
      table.userId,
      table.idempotencyKey,
    ),
  ],
);

export const paymentSubmissions = sqliteTable(
  'payment_submissions',
  {
    id: text('id').primaryKey(),
    paymentId: text('payment_id').notNull(),
    userId: text('user_id').notNull(),
    transactionReference: text('transaction_reference').notNull(),
    normalizedReference: text('normalized_reference').notNull(),
    proofUploadId: text('proof_upload_id'),
    idempotencyKey: text('idempotency_key').notNull(),
    status: text('status').notNull(),
    rejectionReason: text('rejection_reason'),
    submittedAt: integer('submitted_at').notNull(),
    reviewedAt: integer('reviewed_at'),
    reviewedByUserId: text('reviewed_by_user_id'),
  },
  (table) => [
    uniqueIndex('payment_reference_unique').on(table.normalizedReference),
    uniqueIndex('payment_submission_idempotency_unique').on(
      table.userId,
      table.idempotencyKey,
    ),
  ],
);

export const taskDefinitions = sqliteTable('task_definitions', {
  id: text('id').primaryKey(),
  title: text('title').notNull(),
  description: text('description').notNull(),
  period: text('period').notNull(),
  eligibilityEvent: text('eligibility_event').notNull().default('check_in'),
  rewardCoins: integer('reward_coins').notNull().default(0),
  rewardMinor: integer('reward_minor').notNull().default(0),
  status: text('status').notNull(),
  sortOrder: integer('sort_order').notNull().default(0),
  createdAt: integer('created_at').notNull(),
  updatedAt: integer('updated_at').notNull(),
});

export const contentPages = sqliteTable('content_pages', {
  id: text('id').primaryKey(),
  slug: text('slug').notNull(),
  title: text('title').notNull(),
  body: text('body').notNull(),
  locale: text('locale').notNull().default('en'),
  status: text('status').notNull(),
  version: integer('version').notNull().default(1),
  createdAt: integer('created_at').notNull(),
  updatedAt: integer('updated_at').notNull(),
});

export const payoutBeneficiaries = sqliteTable(
  'payout_beneficiaries',
  {
    id: text('id').primaryKey(),
    userId: text('user_id').notNull(),
    type: text('type').notNull(),
    label: text('label').notNull(),
    accountHolderName: text('account_holder_name'),
    bankName: text('bank_name'),
    ifsc: text('ifsc'),
    destinationCiphertext: text('destination_ciphertext').notNull(),
    destinationIv: text('destination_iv').notNull(),
    destinationLast4: text('destination_last4').notNull(),
    destinationFingerprint: text('destination_fingerprint').notNull(),
    isDefault: integer('is_default').notNull().default(0),
    verificationStatus: text('verification_status')
      .notNull()
      .default('pending'),
    verifiedByUserId: text('verified_by_user_id'),
    verifiedAt: integer('verified_at'),
    rejectionReason: text('rejection_reason'),
    active: integer('active').notNull().default(1),
    createdAt: integer('created_at').notNull(),
    updatedAt: integer('updated_at').notNull(),
  },
  (table) => [
    uniqueIndex('payout_beneficiary_destination_unique').on(
      table.userId,
      table.destinationFingerprint,
    ),
  ],
);

export const withdrawals = sqliteTable(
  'withdrawals',
  {
    id: text('id').primaryKey(),
    userId: text('user_id').notNull(),
    amountMinor: integer('amount_minor').notNull(),
    currency: text('currency').notNull().default('INR'),
    idempotencyKey: text('idempotency_key').notNull(),
    status: text('status').notNull(),
    beneficiaryId: text('beneficiary_id'),
    destinationSnapshotJson: text('destination_snapshot_json'),
    rejectionReason: text('rejection_reason'),
    payoutReference: text('payout_reference'),
    reviewedByUserId: text('reviewed_by_user_id'),
    reviewedAt: integer('reviewed_at'),
    settledAt: integer('settled_at'),
    createdAt: integer('created_at').notNull(),
    updatedAt: integer('updated_at').notNull(),
  },
  (table) => [
    uniqueIndex('withdrawal_idempotency_unique').on(
      table.userId,
      table.idempotencyKey,
    ),
  ],
);

export const campaignDraws = sqliteTable('campaign_draws', {
  id: text('id').primaryKey(),
  campaignId: text('campaign_id').notNull().unique(),
  status: text('status').notNull(),
  algorithmVersion: text('algorithm_version').notNull(),
  serverSeed: text('server_seed').notNull(),
  seedCommitment: text('seed_commitment').notNull(),
  entrySnapshotHash: text('entry_snapshot_hash').notNull(),
  eligibleEntryCount: integer('eligible_entry_count').notNull(),
  winningIndex: integer('winning_index'),
  winningEntryId: text('winning_entry_id'),
  committedByUserId: text('committed_by_user_id').notNull(),
  committedAt: integer('committed_at').notNull(),
  executedByUserId: text('executed_by_user_id'),
  executedAt: integer('executed_at'),
  revealedSeed: text('revealed_seed'),
});

export const coinAccounts = sqliteTable('coin_accounts', {
  userId: text('user_id').primaryKey(),
  balance: integer('balance').notNull().default(0),
  version: integer('version').notNull().default(0),
  updatedAt: integer('updated_at').notNull(),
});

export const coinLedgerEntries = sqliteTable(
  'coin_ledger_entries',
  {
    id: text('id').primaryKey(),
    transactionId: text('transaction_id').notNull(),
    userId: text('user_id').notNull(),
    direction: text('direction').notNull(),
    amount: integer('amount').notNull(),
    entryType: text('entry_type').notNull(),
    description: text('description').notNull(),
    referenceType: text('reference_type').notNull(),
    referenceId: text('reference_id').notNull(),
    createdAt: integer('created_at').notNull(),
  },
  (table) => [
    uniqueIndex('coin_ledger_reference_unique').on(
      table.referenceType,
      table.referenceId,
      table.entryType,
      table.direction,
    ),
  ],
);

export const paymentRefunds = sqliteTable('payment_refunds', {
  id: text('id').primaryKey(),
  paymentId: text('payment_id').notNull().unique(),
  amountMinor: integer('amount_minor').notNull(),
  currency: text('currency').notNull(),
  reason: text('reason').notNull(),
  status: text('status').notNull(),
  requestedByUserId: text('requested_by_user_id').notNull(),
  idempotencyKey: text('idempotency_key').notNull().unique(),
  ledgerTransactionId: text('ledger_transaction_id'),
  createdAt: integer('created_at').notNull(),
  completedAt: integer('completed_at'),
  failureReason: text('failure_reason'),
});

export const outboxEvents = sqliteTable(
  'outbox_events',
  {
    id: text('id').primaryKey(),
    eventType: text('event_type').notNull(),
    aggregateType: text('aggregate_type').notNull(),
    aggregateId: text('aggregate_id').notNull(),
    payloadJson: text('payload_json').notNull(),
    status: text('status').notNull().default('pending'),
    attempts: integer('attempts').notNull().default(0),
    availableAt: integer('available_at').notNull(),
    leaseExpiresAt: integer('lease_expires_at'),
    lastError: text('last_error'),
    createdAt: integer('created_at').notNull(),
    processedAt: integer('processed_at'),
  },
  (table) => [
    uniqueIndex('outbox_aggregate_unique').on(
      table.eventType,
      table.aggregateType,
      table.aggregateId,
    ),
  ],
);

export const notificationInbox = sqliteTable('notification_inbox', {
  id: text('id').primaryKey(),
  userId: text('user_id').notNull(),
  type: text('type').notNull(),
  title: text('title').notNull(),
  body: text('body').notNull(),
  entityId: text('entity_id'),
  readAt: integer('read_at'),
  createdAt: integer('created_at').notNull(),
});

export const supportTickets = sqliteTable('support_tickets', {
  id: text('id').primaryKey(),
  userId: text('user_id').notNull(),
  subject: text('subject').notNull(),
  category: text('category').notNull(),
  status: text('status').notNull(),
  priority: text('priority').notNull().default('normal'),
  assignedToUserId: text('assigned_to_user_id'),
  createdAt: integer('created_at').notNull(),
  updatedAt: integer('updated_at').notNull(),
  closedAt: integer('closed_at'),
});

export const paymentReviewDecisions = sqliteTable('payment_review_decisions', {
  paymentId: text('payment_id').primaryKey(),
  submissionId: text('submission_id').notNull(),
  decision: text('decision').notNull(),
  reason: text('reason'),
  actorUserId: text('actor_user_id').notNull(),
  createdAt: integer('created_at').notNull(),
});

export const refreshTokenRotations = sqliteTable('refresh_token_rotations', {
  previousTokenId: text('previous_token_id').primaryKey(),
  replacementTokenId: text('replacement_token_id').notNull().unique(),
  rotatedAt: integer('rotated_at').notNull(),
});

export const sharePosts = sqliteTable('share_posts', {
  id: text('id').primaryKey(),
  userId: text('user_id').notNull(),
  prizeId: text('prize_id'),
  body: text('body').notNull(),
  status: text('status').notNull().default('published'),
  createdAt: integer('created_at').notNull(),
  updatedAt: integer('updated_at').notNull(),
});

export const notificationBroadcasts = sqliteTable('notification_broadcasts', {
  id: text('id').primaryKey(),
  title: text('title').notNull(),
  body: text('body').notNull(),
  audience: text('audience').notNull(),
  status: text('status').notNull(),
  createdByUserId: text('created_by_user_id').notNull(),
  cursorCreatedAt: integer('cursor_created_at').notNull().default(-1),
  cursorUserId: text('cursor_user_id').notNull().default(''),
  recipientCount: integer('recipient_count').notNull().default(0),
  lastError: text('last_error'),
  createdAt: integer('created_at').notNull(),
  sentAt: integer('sent_at'),
});

export const notificationBroadcastRecipients = sqliteTable(
  'notification_broadcast_recipients',
  {
    broadcastId: text('broadcast_id').notNull(),
    userId: text('user_id').notNull(),
    notificationId: text('notification_id').notNull().unique(),
    createdAt: integer('created_at').notNull(),
  },
  (table) => [
    uniqueIndex('broadcast_recipient_unique').on(
      table.broadcastId,
      table.userId,
    ),
  ],
);
