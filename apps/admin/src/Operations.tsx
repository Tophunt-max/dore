import { useState, type ChangeEvent, type FormEvent } from 'react';
import { useMutation, useQuery, useQueryClient } from '@tanstack/react-query';
import { AdminApiError, adminApi, type AdminRole } from './api';

export type OperationsPageName =
  | 'draws'
  | 'payment-operations'
  | 'audit-logs'
  | 'referrals-rewards'
  | 'beneficiaries'
  | 'support-tickets'
  | 'notifications'
  | 'banners'
  | 'categories'
  | 'prize-activities'
  | 'memberships-discounts'
  | 'finance-offers'
  | 'finance-orders'
  | 'after-sales'
  | 'winners'
  | 'system-settings'
  | 'game-config'
  | 'reports';

type Row = Record<string, unknown>;
type Column = { key: string; label: string };
type CreateField = {
  name: string;
  label: string;
  type?: 'text' | 'textarea' | 'number' | 'select' | 'image';
  options?: string[];
  required?: boolean;
  defaultValue?: string;
};
type RowAction = {
  label: string;
  className?: string;
  roles: AdminRole[];
  visible?: (row: Row) => boolean;
  path: (row: Row) => string;
  method: 'POST' | 'PATCH' | 'DELETE';
  confirm: (row: Row) => string;
  body?: (row: Row) => Record<string, unknown> | null;
};
type Section = {
  title: string;
  description: string;
  endpoint: string;
  columns: Column[];
  statuses?: string[];
  createLabel?: string;
  createFields?: CreateField[];
  createRoles?: AdminRole[];
  actions?: RowAction[];
  note?: string;
};

const adminOnly: AdminRole[] = ['admin'];
const finance: AdminRole[] = ['finance', 'admin'];
const support: AdminRole[] = ['support', 'admin'];

const sections: Record<
  Exclude<OperationsPageName, 'reports' | 'system-settings'>,
  Section[]
> = {
  'after-sales': [
    {
      title: 'After-sales',
      description: 'Handle returns, exchanges, and complaints on orders.',
      endpoint: 'after-sales',
      statuses: ['open', 'in_review', 'resolved', 'rejected'],
      columns: [
        { key: 'phoneMasked', label: 'User' },
        { key: 'orderTitle', label: 'Order' },
        { key: 'type', label: 'Type' },
        { key: 'reason', label: 'Reason' },
        { key: 'status', label: 'Status' },
        { key: 'createdAt', label: 'Created' },
      ],
      actions: [
        {
          label: 'Review',
          roles: support,
          visible: (r) => String(r.status) === 'open',
          path: (r) => `after-sales/${r.id}/status`,
          method: 'POST',
          confirm: () => 'Move this request to in-review?',
          body: () => ({ status: 'in_review' }),
        },
        {
          label: 'Resolve',
          className: 'approve',
          roles: support,
          visible: (r) => String(r.status) !== 'resolved',
          path: (r) => `after-sales/${r.id}/status`,
          method: 'POST',
          confirm: () => 'Mark this request resolved?',
          body: () => ({
            status: 'resolved',
            adminNote: window.prompt('Resolution note (optional)') ?? '',
          }),
        },
        {
          label: 'Reject',
          className: 'reject',
          roles: support,
          visible: (r) => String(r.status) !== 'rejected',
          path: (r) => `after-sales/${r.id}/status`,
          method: 'POST',
          confirm: () => 'Reject this request?',
          body: () => ({
            status: 'rejected',
            adminNote: window.prompt('Rejection reason') ?? '',
          }),
        },
      ],
    },
  ],
  'finance-orders': [
    {
      title: 'Finance orders',
      description:
        'Review finance purchases and settle them manually. Settlement credits principal + return to the user wallet (regulated — no auto interest).',
      endpoint: 'finance-orders',
      statuses: ['active', 'matured', 'settled', 'cancelled'],
      columns: [
        { key: 'phoneMasked', label: 'User' },
        { key: 'offerTitle', label: 'Offer' },
        { key: 'principalMinor', label: 'Principal (minor)' },
        { key: 'status', label: 'Status' },
        { key: 'createdAt', label: 'Created' },
      ],
      actions: [
        {
          label: 'Settle',
          className: 'approve',
          roles: finance,
          visible: (r) => String(r.status) === 'active',
          path: (r) => `finance-orders/${r.id}/settle`,
          method: 'POST',
          confirm: (r) =>
            `Settle order ${r.id}? This credits principal + return to the user wallet.`,
          body: () => {
            const value = window.prompt(
              'Return/interest in minor units (e.g. 500 = ₹5.00). Principal is added automatically.',
              '0',
            );
            if (value === null) return null;
            const amount = Number(value);
            if (!Number.isFinite(amount) || amount < 0) {
              window.alert('Enter a valid non-negative amount.');
              return null;
            }
            return {
              returnMinor: Math.round(amount),
              note: window.prompt('Settlement note (optional)') ?? '',
            };
          },
        },
      ],
    },
  ],
  winners: [
    {
      title: 'Winners',
      description:
        'Announced winners. For cash-award campaigns, pay the cash prize into the winner wallet (manual, audited).',
      endpoint: 'winners',
      columns: [
        { key: 'phoneMasked', label: 'User' },
        { key: 'productTitle', label: 'Product' },
        { key: 'entryNumber', label: 'Lucky code' },
        { key: 'announcedAt', label: 'Announced' },
      ],
      actions: [
        {
          label: 'Cash payout',
          className: 'approve',
          roles: finance,
          path: (r) => `winners/${r.id}/payout`,
          method: 'POST',
          confirm: (r) => `Pay a cash prize to ${r.phoneMasked}?`,
          body: () => {
            const value = window.prompt(
              'Payout amount in minor units (e.g. 100000 = ₹1000.00)',
            );
            if (value === null) return null;
            const amount = Number(value);
            if (!Number.isFinite(amount) || amount <= 0) {
              window.alert('Enter a valid positive amount.');
              return null;
            }
            return {
              amountMinor: Math.round(amount),
              note: window.prompt('Payout note (optional)') ?? '',
            };
          },
        },
      ],
    },
  ],
  draws: [
    {
      title: 'Draw execution',
      description:
        'Monitor drawing campaigns and execute the audited draw workflow.',
      endpoint: 'draws',
      statuses: ['ready', 'drawing', 'completed', 'failed'],
      columns: [
        { key: 'campaign_id', label: 'Campaign' },
        { key: 'status', label: 'Status' },
        { key: 'eligible_entries', label: 'Eligible entries' },
        { key: 'algorithm_version', label: 'Algorithm' },
      ],
      note: 'Execution uses the Worker commitment/reveal algorithm and remains idempotent and auditable.',
      actions: [
        {
          label: 'Commit draw',
          roles: adminOnly,
          visible: (row) => row.status === 'drawing' && !row.algorithm_version,
          path: (row) => `campaigns/${row.campaign_id}/draw/preview`,
          method: 'POST',
          confirm: (row) =>
            `Commit the entry snapshot and hidden seed for campaign ${row.campaign_id}? Execute only after this commitment is recorded.`,
        },
        {
          label: 'Execute draw',
          className: 'approve',
          roles: adminOnly,
          visible: (row) =>
            row.status === 'drawing' && Boolean(row.algorithm_version),
          path: (row) => `campaigns/${row.campaign_id}/draw/execute`,
          method: 'POST',
          confirm: (row) =>
            `Reveal the committed seed and execute campaign ${row.campaign_id}? This creates the winner and prize permanently.`,
        },
      ],
    },
    {
      title: 'Draw results',
      description: 'Review winner selection and published proof references.',
      endpoint: 'draw-results',
      columns: [
        { key: 'campaign_id', label: 'Campaign' },
        { key: 'winner_user_id', label: 'Winner' },
        { key: 'winning_entry_id', label: 'Entry' },
        { key: 'draw_commitment', label: 'Commitment' },
        { key: 'created_at', label: 'Completed' },
      ],
    },
  ],
  'payment-operations': [
    {
      title: 'Payment reconciliation',
      description: 'Compare approvals, settlement, wallet, and order outcomes.',
      endpoint: 'payment-reconciliation',
      statuses: ['matched', 'mismatch', 'unsettled'],
      columns: [
        { key: 'payment_id', label: 'Payment' },
        { key: 'purpose', label: 'Purpose' },
        { key: 'status', label: 'Status' },
        { key: 'difference_minor', label: 'Difference minor' },
        { key: 'checked_at', label: 'Checked' },
      ],
    },
    {
      title: 'Settlement outbox failures',
      description: 'Inspect and retry asynchronous settlement failures.',
      endpoint: 'payment-settlement-outbox',
      statuses: ['pending', 'processing', 'complete'],
      columns: [
        { key: 'paymentId', label: 'Payment' },
        { key: 'status', label: 'Status' },
        { key: 'attempts', label: 'Attempts' },
        { key: 'lastError', label: 'Last error' },
        { key: 'createdAt', label: 'Created' },
      ],
      actions: [
        {
          label: 'Retry',
          roles: finance,
          visible: (row) => ['failed', 'pending'].includes(String(row.status)),
          path: (row) => `payment-settlement-outbox/${row.paymentId}/retry`,
          method: 'POST',
          confirm: (row) =>
            `Retry settlement for payment ${row.paymentId}? Server idempotency is enforced.`,
        },
      ],
    },
  ],
  'audit-logs': [
    {
      title: 'Audit logs',
      description: 'Search immutable operations activity by actor or entity.',
      endpoint: 'audit-logs',
      columns: [
        { key: 'createdAt', label: 'Time' },
        { key: 'actorUserId', label: 'Actor' },
        { key: 'action', label: 'Action' },
        { key: 'entityType', label: 'Entity' },
        { key: 'entityId', label: 'Entity ID' },
        { key: 'requestId', label: 'Request' },
      ],
    },
  ],
  'referrals-rewards': [
    {
      title: 'Referrals',
      description: 'Trace inviter, referred user, qualification, and status.',
      endpoint: 'referrals',
      statuses: ['pending', 'qualified', 'rewarded', 'rejected'],
      columns: [
        { key: 'referrer_user_id', label: 'Referrer' },
        { key: 'referred_user_id', label: 'Referred user' },
        { key: 'referral_code', label: 'Code' },
        { key: 'status', label: 'Status' },
        { key: 'created_at', label: 'Created' },
      ],
    },
    {
      title: 'Reward ledger',
      description: 'Review referral and task reward issuance or reversal.',
      endpoint: 'rewards',
      statuses: ['pending', 'credited', 'reversed', 'failed'],
      columns: [
        { key: 'user_id', label: 'User' },
        { key: 'source_type', label: 'Source' },
        { key: 'reward_coins', label: 'Coins' },
        { key: 'reward_minor', label: 'Reward minor' },
        { key: 'status', label: 'Status' },
      ],
    },
  ],
  beneficiaries: [
    {
      title: 'Payout beneficiaries',
      description:
        'Review encrypted payout destinations and internal verification status.',
      endpoint: 'payout-beneficiaries',
      statuses: ['pending', 'verified', 'restricted', 'rejected'],
      columns: [
        { key: 'userId', label: 'User' },
        { key: 'type', label: 'Type' },
        { key: 'maskedDestination', label: 'Destination' },
        { key: 'verificationStatus', label: 'Verification' },
        { key: 'phone', label: 'Phone' },
        { key: 'active', label: 'Active' },
      ],
      note: 'Verification is an internal destination check. External KYC/AML provider integration remains a deployment decision.',
      actions: [
        {
          label: 'Verify',
          className: 'approve',
          roles: finance,
          visible: (row) => row.verificationStatus === 'pending',
          path: (row) => `payout-beneficiaries/${row.id}/verification`,
          method: 'POST',
          confirm: (row) => `Verify payout beneficiary ${row.id}?`,
          body: () => ({ status: 'verified' }),
        },
        {
          label: 'Reject',
          className: 'reject',
          roles: finance,
          visible: (row) => row.verificationStatus === 'pending',
          path: (row) => `payout-beneficiaries/${row.id}/verification`,
          method: 'POST',
          confirm: (row) => `Reject payout beneficiary ${row.id}?`,
          body: () => {
            const reason = window.prompt('Rejection reason');
            return reason && reason.trim().length >= 5
              ? { status: 'rejected', reason: reason.trim() }
              : null;
          },
        },
      ],
    },
  ],
  'support-tickets': [
    {
      title: 'Support tickets',
      description: 'Search, triage, assign, and resolve customer requests.',
      endpoint: 'support/tickets',
      statuses: [
        'open',
        'in_progress',
        'waiting_on_user',
        'resolved',
        'closed',
      ],
      columns: [
        { key: 'id', label: 'Ticket' },
        { key: 'userId', label: 'User' },
        { key: 'subject', label: 'Subject' },
        { key: 'priority', label: 'Priority' },
        { key: 'status', label: 'Status' },
        { key: 'updatedAt', label: 'Updated' },
      ],
      actions: [
        {
          label: 'Resolve',
          className: 'approve',
          roles: support,
          visible: (row) =>
            !['resolved', 'closed'].includes(String(row.status)),
          path: (row) => `support/tickets/${row.id}`,
          method: 'PATCH',
          confirm: (row) => `Resolve support ticket ${row.id}?`,
          body: () => ({ status: 'resolved' }),
        },
      ],
    },
  ],
  notifications: [
    {
      title: 'Notification broadcasts',
      description: 'Schedule and monitor audience-targeted broadcasts.',
      endpoint: 'notification-broadcasts',
      statuses: ['processing', 'sent', 'failed'],
      columns: [
        { key: 'title', label: 'Title' },
        { key: 'audience', label: 'Audience' },
        { key: 'status', label: 'Status' },
        { key: 'recipientCount', label: 'Recipients' },
        { key: 'lastError', label: 'Last error' },
        { key: 'sentAt', label: 'Sent' },
      ],
      createLabel: 'New broadcast',
      createRoles: adminOnly,
      createFields: [
        { name: 'title', label: 'Title', required: true },
        { name: 'body', label: 'Message', type: 'textarea', required: true },
        {
          name: 'audience',
          label: 'Audience',
          type: 'select',
          options: ['all', 'active_users'],
          defaultValue: 'active_users',
          required: true,
        },
      ],
      actions: [
        {
          label: 'Retry',
          roles: adminOnly,
          visible: (row) => row.status === 'failed',
          path: (row) => `notification-broadcasts/${row.id}/retry`,
          method: 'POST',
          confirm: (row) =>
            `Resume failed broadcast ${row.id} from its stored cursor?`,
        },
      ],
    },
    {
      title: 'Notification templates',
      description: 'Manage reusable notification copy.',
      endpoint: 'notification-templates',
      columns: [
        { key: 'key', label: 'Key' },
        { key: 'titleTemplate', label: 'Title' },
        { key: 'bodyTemplate', label: 'Body' },
        { key: 'status', label: 'Status' },
        { key: 'updatedAt', label: 'Updated' },
      ],
      createLabel: 'New template',
      createRoles: adminOnly,
      createFields: [
        { name: 'key', label: 'Template key', required: true },
        { name: 'titleTemplate', label: 'Title', required: true },
        {
          name: 'bodyTemplate',
          label: 'Body',
          type: 'textarea',
          required: true,
        },
        {
          name: 'status',
          label: 'Status',
          type: 'select',
          options: ['draft', 'active', 'archived'],
          defaultValue: 'draft',
        },
      ],
    },
  ],
  categories: [
    {
      title: 'Categories',
      description: 'Product categories used to group and filter draws on home.',
      endpoint: 'categories',
      statuses: ['draft', 'active', 'archived'],
      columns: [
        { key: 'name', label: 'Name' },
        { key: 'slug', label: 'Slug' },
        { key: 'sortOrder', label: 'Order' },
        { key: 'status', label: 'Status' },
      ],
      createLabel: 'New category',
      createRoles: adminOnly,
      createFields: [
        { name: 'name', label: 'Name', required: true },
        { name: 'slug', label: 'Slug (lowercase-hyphen)', required: true },
        { name: 'imageKey', label: 'Icon image', type: 'image' },
        {
          name: 'status',
          label: 'Status',
          type: 'select',
          options: ['draft', 'active', 'archived'],
          defaultValue: 'draft',
        },
        {
          name: 'sortOrder',
          label: 'Sort order',
          type: 'number',
          defaultValue: '0',
        },
      ],
    },
  ],
  'prize-activities': [
    {
      title: 'Prize activities',
      description:
        'Cash prize-pool events. Create, then run the draw to split the pool among qualified participants (manual, audited).',
      endpoint: 'prize-activities',
      statuses: ['draft', 'active', 'drawing', 'completed', 'cancelled'],
      columns: [
        { key: 'title', label: 'Title' },
        { key: 'prizePoolMinor', label: 'Pool (minor)' },
        { key: 'winnersCount', label: 'Winners' },
        { key: 'requiredInvites', label: 'Req. invites' },
        { key: 'participantCount', label: 'Participants' },
        { key: 'status', label: 'Status' },
      ],
      createLabel: 'New activity',
      createRoles: adminOnly,
      createFields: [
        { name: 'title', label: 'Title', required: true },
        { name: 'description', label: 'Description', type: 'textarea' },
        { name: 'rules', label: 'Rules', type: 'textarea' },
        {
          name: 'prizePoolMinor',
          label: 'Prize pool (minor units, e.g. 500000 = ₹5000)',
          type: 'number',
          defaultValue: '0',
        },
        {
          name: 'winnersCount',
          label: 'Number of winners',
          type: 'number',
          defaultValue: '1',
        },
        {
          name: 'requiredInvites',
          label: 'Required qualified invites',
          type: 'number',
          defaultValue: '0',
        },
        { name: 'imageKey', label: 'Banner image', type: 'image' },
        {
          name: 'status',
          label: 'Status',
          type: 'select',
          options: ['draft', 'active', 'drawing', 'completed', 'cancelled'],
          defaultValue: 'draft',
        },
        { name: 'startsAt', label: 'Starts epoch', type: 'number' },
        { name: 'endsAt', label: 'Ends epoch (deadline)', type: 'number' },
      ],
      actions: [
        {
          label: 'Run draw',
          className: 'approve',
          roles: finance,
          visible: (r) => ['active', 'drawing'].includes(String(r.status)),
          path: (r) => `prize-activities/${r.id}/draw`,
          method: 'POST',
          confirm: (r) =>
            `Run the draw for "${r.title}"? This splits the pool among qualified winners and credits their wallets. This cannot be undone.`,
          body: () => ({}),
        },
      ],
    },
  ],
  banners: [
    {
      title: 'Banners',
      description: 'Manage copy, imagery, action URLs, and publishing windows.',
      endpoint: 'banners',
      statuses: ['draft', 'active', 'archived'],
      columns: [
        { key: 'title', label: 'Title' },
        { key: 'body', label: 'Body' },
        { key: 'status', label: 'Status' },
        { key: 'startsAt', label: 'Starts' },
        { key: 'endsAt', label: 'Ends' },
      ],
      createLabel: 'New banner',
      createRoles: adminOnly,
      createFields: [
        { name: 'title', label: 'Title', required: true },
        { name: 'body', label: 'Body', type: 'textarea' },
        { name: 'imageKey', label: 'Banner image', type: 'image' },
        { name: 'actionUrl', label: 'Action URL' },
        {
          name: 'status',
          label: 'Status',
          type: 'select',
          options: ['draft', 'active', 'archived'],
          defaultValue: 'draft',
        },
        { name: 'startsAt', label: 'Starts epoch', type: 'number' },
        { name: 'endsAt', label: 'Ends epoch', type: 'number' },
        {
          name: 'sortOrder',
          label: 'Sort order',
          type: 'number',
          defaultValue: '0',
        },
      ],
    },
  ],
  'memberships-discounts': [
    {
      title: 'Membership plans',
      description:
        'Configure administrator-granted or promotional membership plans.',
      endpoint: 'membership-plans',
      statuses: ['draft', 'active', 'archived'],
      columns: [
        { key: 'name', label: 'Name' },
        { key: 'durationDays', label: 'Days' },
        { key: 'priceMinor', label: 'Price minor' },
        { key: 'status', label: 'Status' },
        { key: 'benefits', label: 'Benefits' },
      ],
      createLabel: 'New membership plan',
      createRoles: adminOnly,
      createFields: [
        { name: 'name', label: 'Name', required: true },
        {
          name: 'description',
          label: 'Description',
          type: 'textarea',
          required: true,
        },
        {
          name: 'benefits',
          label: 'Benefits (comma separated)',
          type: 'textarea',
          required: true,
        },
        {
          name: 'priceMinor',
          label: 'Price minor',
          type: 'number',
          defaultValue: '0',
        },
        {
          name: 'currency',
          label: 'Currency',
          type: 'select',
          options: ['INR', 'USD'],
          defaultValue: 'INR',
        },
        {
          name: 'durationDays',
          label: 'Duration days',
          type: 'number',
          required: true,
        },
        {
          name: 'status',
          label: 'Status',
          type: 'select',
          options: ['draft', 'active', 'archived'],
          defaultValue: 'draft',
        },
      ],
    },
    {
      title: 'Discounts',
      description: 'Manage discount rules without modifying wallet balances.',
      endpoint: 'discounts',
      statuses: ['draft', 'active', 'expired', 'archived'],
      columns: [
        { key: 'code', label: 'Code' },
        { key: 'discountType', label: 'Type' },
        { key: 'value', label: 'Value' },
        { key: 'status', label: 'Status' },
        { key: 'endsAt', label: 'Ends' },
      ],
      createLabel: 'New discount',
      createRoles: adminOnly,
      createFields: [
        { name: 'code', label: 'Code', required: true },
        {
          name: 'discountType',
          label: 'Type',
          type: 'select',
          options: ['percentage', 'fixed'],
          required: true,
        },
        {
          name: 'value',
          label: 'Value',
          type: 'number',
          required: true,
        },
        { name: 'title', label: 'Title', required: true },
        { name: 'description', label: 'Description', type: 'textarea' },
        {
          name: 'minimumOrderMinor',
          label: 'Minimum order minor',
          type: 'number',
          defaultValue: '0',
        },
        {
          name: 'maxDiscountMinor',
          label: 'Maximum discount minor',
          type: 'number',
        },
        { name: 'redemptionLimit', label: 'Redemption limit', type: 'number' },
        {
          name: 'perUserLimit',
          label: 'Per-user limit',
          type: 'number',
          defaultValue: '1',
        },
        {
          name: 'status',
          label: 'Status',
          type: 'select',
          options: ['draft', 'active', 'archived'],
          defaultValue: 'draft',
        },
        { name: 'startsAt', label: 'Starts epoch', type: 'number' },
        { name: 'endsAt', label: 'Ends epoch', type: 'number' },
      ],
    },
  ],
  'finance-offers': [
    {
      title: 'Finance informational offers',
      description:
        'Publish informational partner offers only; no application, approval, balance, or disbursement actions.',
      endpoint: 'finance-offers',
      statuses: ['draft', 'active', 'archived'],
      columns: [
        { key: 'title', label: 'Title' },
        { key: 'providerName', label: 'Provider' },
        { key: 'disclaimer', label: 'Disclosure' },
        { key: 'status', label: 'Status' },
        { key: 'updatedAt', label: 'Updated' },
      ],
      createLabel: 'New informational offer',
      createRoles: adminOnly,
      createFields: [
        { name: 'title', label: 'Title', required: true },
        { name: 'providerName', label: 'Provider name', required: true },
        {
          name: 'description',
          label: 'Description',
          type: 'textarea',
          required: true,
        },
        {
          name: 'category',
          label: 'Category',
          type: 'select',
          options: ['education', 'insurance', 'savings_information', 'other'],
          defaultValue: 'other',
          required: true,
        },
        {
          name: 'disclaimer',
          label: 'Disclosure',
          type: 'textarea',
          required: true,
        },
        { name: 'externalUrl', label: 'External destination' },
        {
          name: 'status',
          label: 'Status',
          type: 'select',
          options: ['draft', 'active', 'archived'],
          defaultValue: 'draft',
        },
        {
          name: 'sortOrder',
          label: 'Sort order',
          type: 'number',
          defaultValue: '0',
        },
      ],
      note: 'This surface intentionally has no monetary execution or underwriting controls.',
    },
  ],
  'game-config': [
    {
      title: 'Non-monetary game configuration',
      description:
        'Configure presentation and engagement values only; wallet, price, odds, and payout keys are prohibited.',
      endpoint: 'games',
      columns: [
        { key: 'title', label: 'Title' },
        { key: 'dailyPlayLimit', label: 'Daily limit' },
        { key: 'pointsPerPlay', label: 'Points' },
        { key: 'status', label: 'Status' },
        { key: 'description', label: 'Description' },
      ],
      createLabel: 'Add non-monetary game',
      createRoles: adminOnly,
      createFields: [
        { name: 'title', label: 'Title', required: true },
        {
          name: 'description',
          label: 'Description',
          type: 'textarea',
          required: true,
        },
        { name: 'rules', label: 'Rules', type: 'textarea', required: true },
        {
          name: 'dailyPlayLimit',
          label: 'Daily play limit',
          type: 'number',
          required: true,
        },
        {
          name: 'pointsPerPlay',
          label: 'Points per play',
          type: 'number',
          defaultValue: '0',
        },
        {
          name: 'status',
          label: 'Status',
          type: 'select',
          options: ['draft', 'active', 'archived'],
          defaultValue: 'draft',
        },
      ],
      note: 'The backend stores only non-monetary points and rejects wallet, odds, and payout configuration.',
    },
  ],
};

const display = (value: unknown) => {
  if (value === undefined || value === null || value === '') return '—';
  if (typeof value === 'number' && value > 1_000_000_000) {
    return new Date(
      value * (value < 10_000_000_000 ? 1_000 : 1),
    ).toLocaleString();
  }
  if (typeof value === 'object') return JSON.stringify(value);
  return String(value).replaceAll('_', ' ');
};

function errorMessage(error: unknown) {
  if (error instanceof AdminApiError && error.status === 404) {
    return 'This operations endpoint is not available in the current Worker deployment.';
  }
  return error instanceof Error ? error.message : 'The operation failed.';
}

function OperationalSection({
  section,
  role,
}: {
  section: Section;
  role: AdminRole;
}) {
  const client = useQueryClient();
  const [search, setSearch] = useState('');
  const [status, setStatus] = useState('');
  const [page, setPage] = useState(1);
  const [creating, setCreating] = useState(false);
  const query = useQuery({
    queryKey: ['admin-operation', section.endpoint, search, status, page],
    queryFn: () =>
      adminApi.operations(section.endpoint, {
        search: search || undefined,
        status: status || undefined,
        page,
        pageSize: 25,
      }),
  });
  const action = useMutation({
    mutationFn: ({
      path,
      method,
      body,
    }: {
      path: string;
      method: 'POST' | 'PATCH' | 'DELETE';
      body?: unknown;
    }) => adminApi.operationAction(path, method, body),
    onSuccess: () =>
      void client.invalidateQueries({
        queryKey: ['admin-operation', section.endpoint],
      }),
  });
  const rows = query.data?.items ?? [];
  const hasNext = query.data?.total
    ? page * (query.data.pageSize ?? 25) < query.data.total
    : rows.length === 25 || Boolean(query.data?.nextCursor);
  return (
    <section className="panel">
      <div className="panel-heading operational-heading">
        <div>
          <h2>{section.title}</h2>
          <p className="muted">{section.description}</p>
        </div>
        {section.createFields && section.createRoles?.includes(role) ? (
          <button className="primary small" onClick={() => setCreating(true)}>
            {section.createLabel ?? 'Add new'}
          </button>
        ) : null}
      </div>
      <div className="filters">
        <input
          aria-label={`Search ${section.title}`}
          placeholder="Search ID, user, title, or reference"
          value={search}
          onChange={(event) => {
            setSearch(event.target.value);
            setPage(1);
          }}
        />
        {section.statuses ? (
          <select
            aria-label={`Filter ${section.title} by status`}
            value={status}
            onChange={(event) => {
              setStatus(event.target.value);
              setPage(1);
            }}
          >
            <option value="">All statuses</option>
            {section.statuses.map((value) => (
              <option key={value} value={value}>
                {display(value)}
              </option>
            ))}
          </select>
        ) : null}
      </div>
      {query.isPending ? (
        <div className="state">Loading {section.title.toLowerCase()}…</div>
      ) : null}
      {query.isError ? (
        <div className="state error">{errorMessage(query.error)}</div>
      ) : null}
      {action.isError ? (
        <div className="state error">{errorMessage(action.error)}</div>
      ) : null}
      {!query.isPending && !query.isError ? (
        <div className="table-wrap">
          <table>
            <thead>
              <tr>
                {section.columns.map((column) => (
                  <th key={column.key}>{column.label}</th>
                ))}
                {section.actions?.some((item) => item.roles.includes(role)) ? (
                  <th>Actions</th>
                ) : null}
              </tr>
            </thead>
            <tbody>
              {rows.map((row, index) => (
                <tr key={String(row.id ?? `${section.endpoint}-${index}`)}>
                  {section.columns.map((column) => (
                    <td key={column.key} data-label={column.label}>
                      {column.key.includes('status') && row[column.key] ? (
                        <span className={`status ${String(row[column.key])}`}>
                          {display(row[column.key])}
                        </span>
                      ) : (
                        display(row[column.key])
                      )}
                    </td>
                  ))}
                  {section.actions?.some((item) =>
                    item.roles.includes(role),
                  ) ? (
                    <td className="actions" data-label="Actions">
                      {section.actions
                        .filter(
                          (item) =>
                            item.roles.includes(role) &&
                            (!item.visible || item.visible(row)),
                        )
                        .map((item) => (
                          <button
                            key={item.label}
                            className={item.className}
                            disabled={action.isPending}
                            onClick={() => {
                              if (!window.confirm(item.confirm(row))) return;
                              const body = item.body?.(row);
                              if (body === null) return;
                              action.mutate({
                                path: item.path(row),
                                method: item.method,
                                body,
                              });
                            }}
                          >
                            {item.label}
                          </button>
                        ))}
                    </td>
                  ) : null}
                </tr>
              ))}
            </tbody>
          </table>
          {!rows.length ? (
            <div className="empty">No records matched these filters.</div>
          ) : null}
        </div>
      ) : null}
      <div className="pager">
        <button
          disabled={page === 1 || query.isFetching}
          onClick={() => setPage((value) => value - 1)}
        >
          Previous
        </button>
        <span>Page {page}</span>
        <button
          disabled={!hasNext || query.isFetching}
          onClick={() => setPage((value) => value + 1)}
        >
          Next
        </button>
      </div>
      {section.note ? <p className="operational-note">{section.note}</p> : null}
      {creating && section.createFields ? (
        <CreateOperationForm
          title={section.createLabel ?? `Create ${section.title}`}
          fields={section.createFields}
          busy={action.isPending}
          error={action.isError ? errorMessage(action.error) : ''}
          onCancel={() => setCreating(false)}
          onSubmit={(body) =>
            action.mutate(
              { path: section.endpoint, method: 'POST', body },
              { onSuccess: () => setCreating(false) },
            )
          }
        />
      ) : null}
    </section>
  );
}

function CreateOperationForm({
  title,
  fields,
  busy,
  error,
  onCancel,
  onSubmit,
}: {
  title: string;
  fields: CreateField[];
  busy: boolean;
  error: string;
  onCancel: () => void;
  onSubmit: (body: Row) => void;
}) {
  const initial = Object.fromEntries(
    fields.map((field) => [field.name, field.defaultValue ?? '']),
  );
  const [values, setValues] = useState<Record<string, string>>(initial);
  function submit(event: FormEvent) {
    event.preventDefault();
    const body: Row = {};
    fields.forEach((field) => {
      const value = values[field.name]?.trim() ?? '';
      if (!value) return;
      body[field.name] =
        field.name === 'benefits'
          ? value
              .split(',')
              .map((item) => item.trim())
              .filter(Boolean)
          : field.type === 'number'
            ? Number(value)
            : value;
    });
    onSubmit(body);
  }
  return (
    <div className="modal-backdrop">
      <form className="resource-form" onSubmit={submit}>
        <div className="panel-heading">
          <h2>{title}</h2>
          <button type="button" onClick={onCancel}>
            Close
          </button>
        </div>
        <div className="form-grid">
          {fields.map((field) => (
            <label key={field.name}>
              {field.label}
              {field.type === 'textarea' ? (
                <textarea
                  required={field.required}
                  value={values[field.name] ?? ''}
                  onChange={(event) =>
                    setValues({ ...values, [field.name]: event.target.value })
                  }
                />
              ) : field.type === 'select' ? (
                <select
                  required={field.required}
                  value={values[field.name] ?? ''}
                  onChange={(event) =>
                    setValues({ ...values, [field.name]: event.target.value })
                  }
                >
                  <option value="">Select</option>
                  {field.options?.map((option) => (
                    <option key={option}>{option}</option>
                  ))}
                </select>
              ) : field.type === 'image' ? (
                <ImageUploadField
                  value={values[field.name] ?? ''}
                  onChange={(key) =>
                    setValues({ ...values, [field.name]: key })
                  }
                />
              ) : (
                <input
                  required={field.required}
                  type={field.type === 'number' ? 'number' : 'text'}
                  value={values[field.name] ?? ''}
                  onChange={(event) =>
                    setValues({ ...values, [field.name]: event.target.value })
                  }
                />
              )}
            </label>
          ))}
        </div>
        {error ? <p className="error">{error}</p> : null}
        <button className="primary" disabled={busy} type="submit">
          {busy ? 'Saving…' : 'Save'}
        </button>
      </form>
    </div>
  );
}

function ImageUploadField({
  value,
  onChange,
}: {
  value: string;
  onChange: (key: string) => void;
}) {
  const [busy, setBusy] = useState(false);
  const [error, setError] = useState('');
  const [preview, setPreview] = useState<string | null>(null);
  async function handleFile(event: ChangeEvent<HTMLInputElement>) {
    const file = event.target.files?.[0];
    if (!file) return;
    setBusy(true);
    setError('');
    try {
      const { objectKey, url } = await adminApi.uploadImage(file, 'banner');
      onChange(objectKey);
      setPreview(url);
    } catch (reason) {
      setError(reason instanceof Error ? reason.message : 'Upload failed.');
    } finally {
      setBusy(false);
    }
  }
  return (
    <div className="image-upload">
      {preview ? (
        <img className="image-upload-preview" src={preview} alt="Banner preview" />
      ) : null}
      <input
        type="file"
        accept="image/png,image/jpeg,image/webp"
        disabled={busy}
        onChange={handleFile}
      />
      {busy ? <small>Uploading…</small> : null}
      {!busy && value ? <small>Uploaded ✓</small> : null}
      {error ? <small className="error">{error}</small> : null}
    </div>
  );
}

function Reports({ role }: { role: AdminRole }) {
  const [report, setReport] = useState('payments');
  const [from, setFrom] = useState('');
  const [to, setTo] = useState('');
  const download = useMutation({
    mutationFn: () => adminApi.downloadReport({ report, from, to }),
  });
  return (
    <>
      <section className="panel report-controls">
        <div>
          <h2>Reports and CSV exports</h2>
          <p className="muted">
            Generate bounded operational exports. Export generation and
            retention are enforced by the Worker.
          </p>
        </div>
        <div className="filters">
          <select
            value={report}
            onChange={(event) => setReport(event.target.value)}
          >
            <option value="payments">Payments</option>
            <option value="withdrawals">Withdrawals</option>
            <option value="campaigns">Campaigns</option>
            <option value="rewards">Rewards</option>
            <option value="audit-logs">Audit logs</option>
          </select>
          <input
            aria-label="Report from date"
            type="date"
            value={from}
            onChange={(event) => setFrom(event.target.value)}
          />
          <input
            aria-label="Report to date"
            type="date"
            value={to}
            onChange={(event) => setTo(event.target.value)}
          />
          <button
            className="primary small"
            disabled={download.isPending}
            onClick={() => download.mutate()}
          >
            {download.isPending ? 'Preparing…' : 'Export CSV'}
          </button>
        </div>
        {download.isError ? (
          <div className="state error">{errorMessage(download.error)}</div>
        ) : null}
      </section>
      <OperationalSection
        role={role}
        section={{
          title: 'Generated reports',
          description:
            'Review generation status and expiration of recent exports.',
          endpoint: 'reports',
          statuses: ['queued', 'processing', 'ready', 'failed', 'expired'],
          columns: [
            { key: 'id', label: 'Report' },
            { key: 'report_type', label: 'Type' },
            { key: 'status', label: 'Status' },
            { key: 'requested_by_user_id', label: 'Requested by' },
            { key: 'created_at', label: 'Created' },
          ],
        }}
      />
    </>
  );
}

export function OperationsPage({
  page,
  role,
}: {
  page: OperationsPageName;
  role: AdminRole;
}) {
  if (page === 'reports') return <Reports role={role} />;
  if (page === 'system-settings') return <SystemSettings />;
  return (
    <>
      {sections[page].map((section) => (
        <OperationalSection
          key={section.endpoint}
          section={section}
          role={role}
        />
      ))}
    </>
  );
}

function SystemSettings() {
  const client = useQueryClient();
  const query = useQuery({
    queryKey: ['admin-operation', 'settings'],
    queryFn: () => adminApi.operations('settings'),
  });
  const [values, setValues] = useState<Record<string, string>>({});
  const [dirty, setDirty] = useState(false);
  const items = (query.data?.items ?? []) as Array<{
    key: string;
    value: string;
    updatedAt?: string;
  }>;
  const current: Record<string, string> = {};
  for (const item of items) current[item.key] = item.value;
  const view = dirty ? values : current;
  const save = useMutation({
    mutationFn: () =>
      adminApi.operationAction('settings', 'PUT', { settings: view }),
    onSuccess: () => {
      setDirty(false);
      void client.invalidateQueries({
        queryKey: ['admin-operation', 'settings'],
      });
    },
  });
  return (
    <section className="panel">
      <div className="panel-heading">
        <div>
          <h2>System settings</h2>
          <p className="muted">
            Global configuration surfaced to the apps (withdrawal limits, fees,
            support contacts, home notice).
          </p>
        </div>
        <button
          className="primary small"
          disabled={!dirty || save.isPending}
          onClick={() => save.mutate()}
        >
          {save.isPending ? 'Saving…' : 'Save changes'}
        </button>
      </div>
      {query.isPending ? <div className="state">Loading settings…</div> : null}
      {query.isError ? (
        <div className="state error">{errorMessage(query.error)}</div>
      ) : null}
      {save.isError ? (
        <div className="state error">{errorMessage(save.error)}</div>
      ) : null}
      {!query.isPending && !query.isError ? (
        <div className="form-grid">
          {items.map((item) => (
            <label key={item.key}>
              {item.key}
              <input
                value={view[item.key] ?? ''}
                onChange={(event) => {
                  setValues({ ...view, [item.key]: event.target.value });
                  setDirty(true);
                }}
              />
            </label>
          ))}
          {!items.length ? (
            <div className="empty">No settings configured.</div>
          ) : null}
        </div>
      ) : null}
    </section>
  );
}
