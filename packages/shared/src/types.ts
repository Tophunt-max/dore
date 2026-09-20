export type CurrencyCode = 'INR' | 'USD';
export type UserRole = 'user' | 'support' | 'finance' | 'admin';

export interface ApiSuccess<T> {
  success: true;
  data: T;
  requestId: string;
}

export interface ApiFailure {
  success: false;
  error: {
    code: string;
    message: string;
    fieldErrors?: Record<string, string[]>;
  };
  requestId: string;
}

export type ApiResponse<T> = ApiSuccess<T> | ApiFailure;

export interface User {
  id: string;
  phoneMasked: string;
  displayName: string | null;
  email: string | null;
  avatarUrl: string | null;
  referralCode: string;
  role: UserRole;
  status: 'active' | 'suspended' | 'closed';
}

export interface Address {
  id: string;
  recipientName: string;
  phone: string;
  line1: string;
  line2: string | null;
  city: string;
  region: string;
  postalCode: string;
  countryCode: string;
  isDefault: boolean;
}

export interface Product {
  id: string;
  title: string;
  description: string;
  imageUrl: string | null;
  retailPriceMinor: number;
  currency: CurrencyCode;
  status: 'draft' | 'active' | 'archived';
}

export interface Campaign {
  id: string;
  product: Product;
  entryPriceMinor: number;
  totalEntries: number;
  soldEntries: number;
  startsAt: string;
  endsAt: string;
  status:
    'scheduled' | 'active' | 'sold_out' | 'drawing' | 'completed' | 'cancelled';
}

export interface Order {
  id: string;
  campaignId: string | null;
  title: string;
  quantity: number;
  amountMinor: number;
  currency: CurrencyCode;
  status: 'pending' | 'paid' | 'failed' | 'cancelled' | 'fulfilled';
  createdAt: string;
}

export interface WalletSummary {
  availableMinor: number;
  lockedMinor: number;
  currency: CurrencyCode;
}

export interface LedgerEntry {
  id: string;
  direction: 'credit' | 'debit';
  amountMinor: number;
  currency: CurrencyCode;
  entryType: string;
  description: string;
  createdAt: string;
}

export interface Winner {
  id: string;
  campaignId: string;
  displayName: string;
  avatarUrl: string | null;
  productTitle: string;
  announcedAt: string;
}

export type PaymentMethodType = 'bank' | 'upi';
export interface PaymentMethod {
  id: string;
  type: PaymentMethodType;
  displayName: string;
  instructions: string;
  accountName: string | null;
  accountNumber: string | null;
  bankName: string | null;
  ifsc: string | null;
  upiId: string | null;
  qrImageUrl: string | null;
  currency: CurrencyCode;
  enabled: boolean;
  sortOrder: number;
}

export type PaymentStatus =
  | 'awaiting_submission'
  | 'under_review'
  | 'approved'
  | 'rejected'
  | 'cancelled'
  | 'refunded';
export type PaymentSubmissionStatus = 'submitted' | 'approved' | 'rejected';

export interface PaymentSubmission {
  id: string;
  transactionReference: string;
  proofUploadId: string | null;
  status: PaymentSubmissionStatus;
  rejectionReason: string | null;
  submittedAt: string;
  reviewedAt: string | null;
}

export interface ManualPayment {
  id: string;
  purpose: 'order' | 'recharge';
  orderId: string | null;
  amountMinor: number;
  currency: CurrencyCode;
  status: PaymentStatus;
  method: PaymentMethod;
  latestSubmission: PaymentSubmission | null;
  createdAt: string;
  updatedAt: string;
}

export interface TaskDefinition {
  id: string;
  title: string;
  description: string;
  period: 'once' | 'daily' | 'weekly' | 'monthly';
  eligibilityEvent: 'check_in' | 'paid_order';
  rewardCoins: number;
  rewardMinor: number;
  status: 'draft' | 'active' | 'archived';
  sortOrder: number;
}

export interface ContentPage {
  id: string;
  slug: string;
  title: string;
  body: string;
  locale: string;
  status: 'draft' | 'published' | 'archived';
  updatedAt: string;
}

export interface Prize {
  id: string;
  productTitle: string;
  status: 'unclaimed' | 'claimed' | 'processing' | 'shipped' | 'delivered';
  trackingReference: string | null;
  createdAt: string;
}

export interface AdminDashboard {
  users: number;
  activeCampaigns: number;
  pendingOrders: number;
  pendingWithdrawals: number;
  pendingPayments: number;
  grossVolumeMinor: number;
  currency: CurrencyCode;
}

export type NotificationType =
  | 'order.updated'
  | 'payment.submitted'
  | 'payment.completed'
  | 'payment.failed'
  | 'withdrawal.updated'
  | 'campaign.completed'
  | 'prize.won'
  | 'task.completed'
  | 'referral.rewarded'
  | 'support.updated'
  | 'broadcast';

export type VerificationStatus = 'pending' | 'verified' | 'rejected';

export interface PayoutBeneficiary {
  id: string;
  type: 'bank' | 'upi';
  label: string;
  accountHolderName: string | null;
  bankName: string | null;
  ifsc: string | null;
  maskedDestination: string;
  isDefault: boolean;
  verificationStatus: VerificationStatus;
  rejectionReason: string | null;
  active: boolean;
  createdAt: string;
  updatedAt: string;
}

export interface Withdrawal {
  id: string;
  amountMinor: number;
  currency: CurrencyCode;
  status:
    'requested' | 'reviewing' | 'approved' | 'paid' | 'rejected' | 'cancelled';
  beneficiaryId: string;
  destinationSnapshot: {
    type: 'bank' | 'upi';
    label: string;
    maskedDestination: string;
    accountHolderName: string | null;
    bankName: string | null;
    ifsc: string | null;
  };
  rejectionReason: string | null;
  payoutReference: string | null;
  createdAt: string;
  updatedAt: string;
  settledAt: string | null;
}

export interface CampaignDraw {
  id: string;
  campaignId: string;
  status: 'committed' | 'executed' | 'voided';
  algorithmVersion: string;
  seedCommitment: string;
  entrySnapshotHash: string;
  eligibleEntryCount: number;
  winningIndex: number | null;
  winningEntryId: string | null;
  committedAt: string;
  executedAt: string | null;
  revealedSeed: string | null;
}

export interface TaskClaim {
  id: string;
  taskId: string;
  periodKey: string;
  rewardCoins: number;
  rewardMinor: number;
  claimedAt: string;
}

export interface CoinSummary {
  balance: number;
}

export interface CoinLedgerEntry {
  id: string;
  direction: 'credit' | 'debit';
  amount: number;
  entryType: string;
  description: string;
  createdAt: string;
}

export interface TeamMember {
  id: string;
  userId: string;
  displayName: string | null;
  phoneMasked: string;
  status: 'registered' | 'qualified' | 'rewarded';
  createdAt: string;
  qualifiedAt: string | null;
  rewardedAt: string | null;
}

export interface PaymentRefund {
  id: string;
  paymentId: string;
  amountMinor: number;
  currency: CurrencyCode;
  reason: string;
  status: 'pending' | 'complete' | 'failed';
  createdAt: string;
  completedAt: string | null;
  failureReason: string | null;
}

export interface OutboxFailure {
  id: string;
  eventType: string;
  aggregateType: string;
  aggregateId: string;
  status: 'pending' | 'processing' | 'complete' | 'dead_letter';
  attempts: number;
  lastError: string | null;
  createdAt: string;
}

export interface AuditLog {
  id: string;
  actorUserId: string | null;
  action: string;
  entityType: string;
  entityId: string | null;
  requestId: string | null;
  metadata: unknown;
  createdAt: string;
}

export interface SupportTicket {
  id: string;
  subject: string;
  category: 'payment' | 'withdrawal' | 'campaign' | 'account' | 'other';
  status: 'open' | 'in_progress' | 'waiting_on_user' | 'resolved' | 'closed';
  priority: 'low' | 'normal' | 'high' | 'urgent';
  assignedToUserId: string | null;
  createdAt: string;
  updatedAt: string;
}

export interface SupportMessage {
  id: string;
  ticketId: string;
  senderUserId: string;
  senderRole: UserRole;
  body: string;
  attachmentUploadId: string | null;
  createdAt: string;
}

export interface NotificationInboxItem {
  id: string;
  type: NotificationType;
  title: string;
  body: string;
  entityId: string | null;
  readAt: string | null;
  createdAt: string;
}

export interface Banner {
  id: string;
  title: string;
  body: string;
  imageUrl: string | null;
  actionUrl: string | null;
  startsAt: string | null;
  endsAt: string | null;
  sortOrder: number;
}

export interface FinanceOffer {
  id: string;
  providerName: string;
  title: string;
  description: string;
  category: 'education' | 'insurance' | 'savings_information' | 'other';
  disclaimer: string;
  externalUrl: string | null;
}

export interface GameDefinition {
  id: string;
  title: string;
  description: string;
  rules: string;
  dailyPlayLimit: number;
  pointsPerPlay: number;
}

export interface MembershipPlan {
  id: string;
  name: string;
  description: string;
  benefits: string[];
  priceMinor: number;
  currency: CurrencyCode;
  durationDays: number;
}

export interface Membership {
  id: string;
  planId: string;
  planName: string;
  status: 'active' | 'expired' | 'cancelled';
  source: 'admin_grant' | 'promotion';
  startsAt: string;
  endsAt: string;
}

export interface DiscountOffer {
  id: string;
  code: string;
  title: string;
  description: string;
  discountType: 'fixed' | 'percentage';
  value: number;
  maxDiscountMinor: number | null;
  minimumOrderMinor: number;
  startsAt: string | null;
  endsAt: string | null;
}

export interface SharePost {
  id: string;
  prizeId: string | null;
  body: string;
  status: 'published' | 'removed';
  createdAt: string;
  updatedAt: string;
}
