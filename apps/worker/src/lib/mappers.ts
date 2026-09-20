import type {
  Address,
  CampaignDraw,
  PayoutBeneficiary,
  Prize,
  TaskDefinition,
  TeamMember,
  Withdrawal,
} from '@oriva/shared';
import { maskPhone } from './user';

const iso = (value: number | null | undefined) =>
  value ? new Date(value * 1000).toISOString() : null;

export function mapAddress(row: Record<string, unknown>): Address {
  return {
    id: String(row.id),
    recipientName: String(row.recipient_name),
    phone: String(row.phone_e164),
    line1: String(row.line1),
    line2: row.line2 == null ? null : String(row.line2),
    city: String(row.city),
    region: String(row.region),
    postalCode: String(row.postal_code),
    countryCode: String(row.country_code),
    isDefault: Boolean(row.is_default),
  };
}

export function mapTask(row: Record<string, unknown>): TaskDefinition & {
  eligibilityEvent: 'check_in' | 'paid_order';
} {
  return {
    id: String(row.id),
    title: String(row.title),
    description: String(row.description),
    period: row.period as TaskDefinition['period'],
    eligibilityEvent: row.eligibility_event as 'check_in' | 'paid_order',
    rewardCoins: Number(row.reward_coins),
    rewardMinor: Number(row.reward_minor),
    status: row.status as TaskDefinition['status'],
    sortOrder: Number(row.sort_order),
  };
}

export function mapPrize(row: Record<string, unknown>): Prize {
  return {
    id: String(row.id),
    productTitle: String(row.product_title),
    status: row.status as Prize['status'],
    trackingReference:
      row.tracking_reference == null ? null : String(row.tracking_reference),
    createdAt: iso(Number(row.created_at)) ?? new Date(0).toISOString(),
  };
}

export function mapTeamMember(row: Record<string, unknown>): TeamMember {
  return {
    id: String(row.id),
    userId: String(row.user_id),
    displayName: row.display_name == null ? null : String(row.display_name),
    phoneMasked: maskPhone(String(row.phone_e164)),
    status: row.status as TeamMember['status'],
    createdAt: iso(Number(row.created_at)) ?? new Date(0).toISOString(),
    qualifiedAt: iso(
      row.qualified_at == null ? null : Number(row.qualified_at),
    ),
    rewardedAt: iso(row.rewarded_at == null ? null : Number(row.rewarded_at)),
  };
}

export function mapBeneficiary(
  row: Record<string, unknown>,
): PayoutBeneficiary {
  const type = row.type as PayoutBeneficiary['type'];
  const last4 = String(row.destination_last4);
  return {
    id: String(row.id),
    type,
    label: String(row.label),
    accountHolderName:
      row.account_holder_name == null ? null : String(row.account_holder_name),
    bankName: row.bank_name == null ? null : String(row.bank_name),
    ifsc: row.ifsc == null ? null : String(row.ifsc),
    maskedDestination: type === 'bank' ? `••••${last4}` : `••••@${last4}`,
    isDefault: Boolean(row.is_default),
    verificationStatus:
      row.verification_status as PayoutBeneficiary['verificationStatus'],
    rejectionReason:
      row.rejection_reason == null ? null : String(row.rejection_reason),
    active: Boolean(row.active),
    createdAt: iso(Number(row.created_at)) ?? new Date(0).toISOString(),
    updatedAt: iso(Number(row.updated_at)) ?? new Date(0).toISOString(),
  };
}

export function mapWithdrawal(row: Record<string, unknown>): Withdrawal {
  let snapshot: Withdrawal['destinationSnapshot'];
  try {
    const stored = JSON.parse(String(row.destination_snapshot_json)) as Record<
      string,
      unknown
    >;
    snapshot = {
      type: stored.type === 'upi' ? 'upi' : 'bank',
      label: String(stored.label ?? 'Unavailable'),
      maskedDestination: String(stored.maskedDestination ?? '••••'),
      accountHolderName:
        stored.accountHolderName == null
          ? null
          : String(stored.accountHolderName),
      bankName: stored.bankName == null ? null : String(stored.bankName),
      ifsc: stored.ifsc == null ? null : String(stored.ifsc),
    };
  } catch {
    snapshot = {
      type: 'bank',
      label: 'Unavailable',
      maskedDestination: '••••',
      accountHolderName: null,
      bankName: null,
      ifsc: null,
    };
  }
  return {
    id: String(row.id),
    amountMinor: Number(row.amount_minor),
    currency: row.currency as Withdrawal['currency'],
    status: row.status as Withdrawal['status'],
    beneficiaryId: String(row.beneficiary_id ?? ''),
    destinationSnapshot: snapshot,
    rejectionReason:
      row.rejection_reason == null ? null : String(row.rejection_reason),
    payoutReference:
      row.payout_reference == null ? null : String(row.payout_reference),
    createdAt: iso(Number(row.created_at)) ?? new Date(0).toISOString(),
    updatedAt: iso(Number(row.updated_at)) ?? new Date(0).toISOString(),
    settledAt: iso(row.settled_at == null ? null : Number(row.settled_at)),
  };
}

export function mapDraw(row: Record<string, unknown>): CampaignDraw {
  return {
    id: String(row.id),
    campaignId: String(row.campaign_id),
    status: row.status as CampaignDraw['status'],
    algorithmVersion: String(row.algorithm_version),
    seedCommitment: String(row.seed_commitment),
    entrySnapshotHash: String(row.entry_snapshot_hash),
    eligibleEntryCount: Number(row.eligible_entry_count),
    winningIndex: row.winning_index == null ? null : Number(row.winning_index),
    winningEntryId:
      row.winning_entry_id == null ? null : String(row.winning_entry_id),
    committedAt: iso(Number(row.committed_at)) ?? new Date(0).toISOString(),
    executedAt: iso(row.executed_at == null ? null : Number(row.executed_at)),
    revealedSeed:
      row.status === 'executed' && row.revealed_seed != null
        ? String(row.revealed_seed)
        : null,
  };
}
