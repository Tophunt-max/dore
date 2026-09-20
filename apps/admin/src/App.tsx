import { useEffect, useMemo, useState, type FormEvent } from 'react';
import { useMutation, useQuery, useQueryClient } from '@tanstack/react-query';
import { formatMoney } from '@oriva/shared';
import {
  AdminApiError,
  adminApi,
  type AdminPayment,
  type AdminRole,
  type AdminUser,
  type PaymentSubmission,
  type Withdrawal,
} from './api';
import { OperationsPage, type OperationsPageName } from './Operations';

type ResourcePage =
  | 'payment-methods'
  | 'products'
  | 'campaigns'
  | 'users'
  | 'orders'
  | 'tasks'
  | 'content'
  | 'prizes';
type Page =
  'dashboard' | 'payments' | 'withdrawals' | ResourcePage | OperationsPageName;

type NavItem = { page: Page; roles: AdminRole[]; group: string };
const everyone: AdminRole[] = ['support', 'finance', 'admin'];
const finance: AdminRole[] = ['finance', 'admin'];
const support: AdminRole[] = ['support', 'admin'];
const adminOnly: AdminRole[] = ['admin'];
const navigation: NavItem[] = [
  { page: 'dashboard', roles: everyone, group: 'Overview' },
  { page: 'payments', roles: finance, group: 'Money' },
  { page: 'payment-methods', roles: finance, group: 'Money' },
  { page: 'withdrawals', roles: finance, group: 'Money' },
  { page: 'finance-orders', roles: finance, group: 'Money' },
  { page: 'payment-operations', roles: finance, group: 'Money' },
  { page: 'beneficiaries', roles: finance, group: 'Money' },
  { page: 'finance-offers', roles: adminOnly, group: 'Platform' },
  { page: 'products', roles: adminOnly, group: 'Platform' },
  { page: 'campaigns', roles: adminOnly, group: 'Platform' },
  { page: 'draws', roles: adminOnly, group: 'Platform' },
  { page: 'orders', roles: adminOnly, group: 'Platform' },
  { page: 'tasks', roles: adminOnly, group: 'Platform' },
  { page: 'content', roles: adminOnly, group: 'Platform' },
  { page: 'prizes', roles: adminOnly, group: 'Platform' },
  { page: 'banners', roles: adminOnly, group: 'Platform' },
  { page: 'categories', roles: adminOnly, group: 'Platform' },
  { page: 'memberships-discounts', roles: adminOnly, group: 'Platform' },
  { page: 'game-config', roles: adminOnly, group: 'Platform' },
  { page: 'users', roles: support, group: 'People' },
  { page: 'referrals-rewards', roles: adminOnly, group: 'People' },
  { page: 'support-tickets', roles: support, group: 'People' },
  { page: 'after-sales', roles: support, group: 'People' },
  { page: 'winners', roles: finance, group: 'Platform' },
  { page: 'notifications', roles: adminOnly, group: 'Communication' },
  { page: 'audit-logs', roles: finance, group: 'Governance' },
  { page: 'reports', roles: finance, group: 'Governance' },
  { page: 'system-settings', roles: adminOnly, group: 'Governance' },
];

const label = (value: string) =>
  value
    .split('-')
    .map((part) => part.charAt(0).toUpperCase() + part.slice(1))
    .join(' ');
const errorMessage = (error: unknown) => {
  if (error instanceof AdminApiError && error.status === 404)
    return 'This endpoint is not available in the current Worker deployment.';
  return error instanceof Error ? error.message : 'The operation failed.';
};
const canFinance = (role: AdminRole) => finance.includes(role);

export function App() {
  const [user, setUser] = useState<AdminUser | null>(() =>
    adminApi.hasSession() ? adminApi.sessionUser() : null,
  );
  const [page, setPage] = useState<Page>('dashboard');
  if (!user) return <Login onAuthenticated={setUser} />;
  const visibleNavigation = navigation.filter((item) =>
    item.roles.includes(user.role),
  );
  return (
    <div className="app-shell">
      <aside className="sidebar">
        <div className="brand">
          <div className="brand-icon">◇</div>
          <div>
            <strong>Oriva</strong>
            <span>Operations</span>
          </div>
        </div>
        <nav>
          {visibleNavigation.map((item, index) => (
            <div className="nav-item" key={item.page}>
              {index === 0 ||
              visibleNavigation[index - 1]?.group !== item.group ? (
                <span className="nav-group">{item.group}</span>
              ) : null}
              <button
                className={page === item.page ? 'nav active' : 'nav'}
                onClick={() => setPage(item.page)}
              >
                {label(item.page)}
              </button>
            </div>
          ))}
        </nav>
        <button
          className="logout"
          onClick={() => {
            adminApi.logout();
            setUser(null);
            setPage('dashboard');
          }}
        >
          Sign out
        </button>
      </aside>
      <main className="main">
        <header>
          <div>
            <p className="eyebrow">Secure operations console</p>
            <h1>{label(page)}</h1>
          </div>
          <div className="identity">
            <strong>{user.displayName ?? user.phoneMasked}</strong>
            <span className="admin-badge">{label(user.role)}</span>
          </div>
        </header>
        <PageView page={page} user={user} />
      </main>
    </div>
  );
}

function Login({
  onAuthenticated,
}: {
  onAuthenticated: (user: AdminUser) => void;
}) {
  const [phone, setPhone] = useState('+91');
  const [code, setCode] = useState('');
  const [sent, setSent] = useState(false);
  const [error, setError] = useState('');
  const otp = useMutation({
    mutationFn: () => adminApi.requestOtp(phone),
    onSuccess: () => {
      setSent(true);
      setError('');
    },
    onError: (reason) => setError(errorMessage(reason)),
  });
  const verify = useMutation({
    mutationFn: () => adminApi.verifyOtp(phone, code),
    onSuccess: (session) => {
      if (!['support', 'finance', 'admin'].includes(session.user.role)) {
        adminApi.logout();
        setError('This account does not have operations access.');
        return;
      }
      setError('');
      onAuthenticated(session.user as AdminUser);
    },
    onError: (reason) => setError(errorMessage(reason)),
  });
  return (
    <div className="login-page">
      <form
        className="login-card"
        onSubmit={(event) => {
          event.preventDefault();
          if (sent) verify.mutate();
          else otp.mutate();
        }}
      >
        <div className="login-brand">
          <span>◇</span>
          <strong>Oriva</strong>
        </div>
        <p className="eyebrow">Operations console</p>
        <h1>Welcome back</h1>
        <p className="muted">Use an authorized operations phone number.</p>
        <label>
          Mobile number
          <input
            required
            value={phone}
            onChange={(event) => setPhone(event.target.value)}
          />
        </label>
        {sent ? (
          <label>
            Six-digit OTP
            <input
              required
              value={code}
              inputMode="numeric"
              pattern="[0-9]{6}"
              maxLength={6}
              onChange={(event) => setCode(event.target.value)}
            />
          </label>
        ) : null}
        {error ? <p className="error">{error}</p> : null}
        <button
          className="primary"
          disabled={otp.isPending || verify.isPending}
          type="submit"
        >
          {otp.isPending || verify.isPending
            ? 'Please wait…'
            : sent
              ? 'Verify & continue'
              : 'Send OTP'}
        </button>
        {sent ? (
          <button
            className="link centered"
            type="button"
            onClick={() => {
              setSent(false);
              setCode('');
              setError('');
            }}
          >
            Use another number
          </button>
        ) : null}
        <p className="security-note">
          All finance and content changes are audited.
        </p>
      </form>
    </div>
  );
}

function PageView({ page, user }: { page: Page; user: AdminUser }) {
  if (page === 'dashboard') return <Dashboard />;
  if (page === 'payments') return <Payments role={user.role} />;
  if (page === 'withdrawals') return <Withdrawals role={user.role} />;
  if (page in configs) {
    const config = configs[page as ResourcePage];
    return <ResourceManager config={config} role={user.role} />;
  }
  return <OperationsPage page={page as OperationsPageName} role={user.role} />;
}

function Dashboard() {
  const query = useQuery({
    queryKey: ['admin-dashboard'],
    queryFn: adminApi.dashboard,
  });
  if (query.isPending)
    return <div className="panel state">Loading platform health…</div>;
  if (query.isError)
    return <div className="panel state error">{errorMessage(query.error)}</div>;
  const d = query.data;
  return (
    <>
      <section className="metrics">
        <Metric label="Users" value={d.users} />
        <Metric label="Active campaigns" value={d.activeCampaigns} />
        <Metric
          label="Manual payments"
          value={d.pendingPayments}
          tone="warning"
        />
        <Metric
          label="Withdrawals"
          value={d.pendingWithdrawals}
          tone="warning"
        />
      </section>
      <section className="panel highlight">
        <div>
          <p className="eyebrow">Administrator-approved volume</p>
          <h2>{formatMoney(d.grossVolumeMinor, d.currency)}</h2>
          <p className="muted">Only manually verified payments are counted.</p>
        </div>
        <div className="shield">✓</div>
      </section>
      <section className="panel">
        <h2>Operational safeguards</h2>
        <div className="safeguards">
          <span>Unique transaction reference</span>
          <span>Private proof storage</span>
          <span>Immutable wallet ledger</span>
          <span>Audited approvals</span>
        </div>
      </section>
    </>
  );
}
function Metric({
  label: metricLabel,
  value,
  tone,
}: {
  label: string;
  value: number;
  tone?: string;
}) {
  return (
    <article className={`metric ${tone ?? ''}`}>
      <span>{metricLabel}</span>
      <strong>{value.toLocaleString()}</strong>
      <small>Live platform data</small>
    </article>
  );
}

function Payments({ role }: { role: AdminRole }) {
  const client = useQueryClient();
  const [status, setStatus] = useState('under_review');
  const [search, setSearch] = useState('');
  const [page, setPage] = useState(1);
  const [historyId, setHistoryId] = useState<string | null>(null);
  const query = useQuery({
    queryKey: ['admin-payments', status],
    queryFn: () => adminApi.payments(status),
  });
  const action = useMutation({
    mutationFn: ({
      id,
      name,
      reason,
      payoutReference,
    }: {
      id: string;
      name: 'approve' | 'reject' | 'refund';
      reason?: string;
      payoutReference?: string;
    }) => {
      if (name === 'approve') return adminApi.approvePayment(id);
      if (name === 'reject') return adminApi.rejectPayment(id, reason ?? '');
      return adminApi.refundPayment(id, reason ?? '', payoutReference ?? '');
    },
    onSuccess: () => {
      void client.invalidateQueries({ queryKey: ['admin-payments'] });
      void client.invalidateQueries({ queryKey: ['admin-dashboard'] });
    },
  });
  const normalized = search.trim().toLowerCase();
  const filtered = (query.data?.items ?? []).filter(
    (item) =>
      !normalized ||
      [
        item.id,
        item.phone_e164,
        item.order_id,
        item.transaction_reference,
        item.submission_id,
      ].some((value) =>
        String(value ?? '')
          .toLowerCase()
          .includes(normalized),
      ),
  );
  const pageSize = 20;
  const items = filtered.slice((page - 1) * pageSize, page * pageSize);
  function approvePayment(item: AdminPayment) {
    const confirmation = [
      'Confirm manual payment approval?',
      `Payment: ${item.id}`,
      `User: ${item.phone_e164}`,
      `Purpose: ${item.purpose}${item.order_id ? ` / order ${item.order_id}` : ''}`,
      `Amount: ${formatMoney(item.amount_minor, item.currency)}`,
      `Reference: ${item.transaction_reference ?? 'MISSING'}`,
      `Submission: ${item.submission_id ?? 'MISSING'} (${item.submission_status ?? 'unknown'})`,
      '',
      'You confirm the bank/UPI statement, amount, reference, and private proof match.',
    ].join('\n');
    if (window.confirm(confirmation))
      action.mutate({ id: item.id, name: 'approve' });
  }
  function reasonAction(item: AdminPayment, name: 'reject' | 'refund') {
    const reason = window.prompt(`${label(name)} reason (required, audited)`);
    if (!reason || reason.trim().length < 5) return;
    const payoutReference =
      name === 'refund'
        ? window.prompt('External refund/payout reference (required, audited)')
        : null;
    if (
      name === 'refund' &&
      (!payoutReference || payoutReference.trim().length < 4)
    )
      return;
    const warning = `${label(name)} payment ${item.id} for ${formatMoney(item.amount_minor, item.currency)}?\n\nReason: ${reason.trim()}${payoutReference ? `\nRefund reference: ${payoutReference.trim()}` : ''}\n\nThis records an audited compensating operation.`;
    if (window.confirm(warning))
      action.mutate({
        id: item.id,
        name,
        reason: reason.trim(),
        payoutReference: payoutReference?.trim(),
      });
  }
  async function proof(item: AdminPayment) {
    const proofWindow = window.open('', '_blank');
    if (proofWindow) proofWindow.opener = null;
    try {
      const url = await adminApi.paymentProof(item.id);
      if (proofWindow) proofWindow.location.href = url;
      else throw new Error('Allow pop-ups to view the private proof.');
      window.setTimeout(() => URL.revokeObjectURL(url), 60_000);
    } catch (error) {
      proofWindow?.close();
      window.alert(errorMessage(error));
    }
  }
  return (
    <section className="panel">
      <div className="panel-heading">
        <div>
          <h2>Manual payment verification</h2>
          <p className="muted">
            Match amount, statement, transaction reference, submission history,
            and proof before approval.
          </p>
        </div>
      </div>
      <div className="filters">
        <input
          placeholder="Search payment, user, order, or reference"
          value={search}
          onChange={(event) => {
            setSearch(event.target.value);
            setPage(1);
          }}
        />
        <select
          value={status}
          onChange={(event) => {
            setStatus(event.target.value);
            setPage(1);
          }}
        >
          <option value="under_review">Under review</option>
          <option value="approved">Approved</option>
          <option value="rejected">Rejected</option>
          <option value="refunded">Refunded</option>
          <option value="">All</option>
        </select>
      </div>
      {query.isPending ? (
        <div className="state">Loading payment submissions…</div>
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
                <th>User / payment</th>
                <th>Purpose / amount</th>
                <th>Method / reference</th>
                <th>Submission / history</th>
                <th>Status</th>
                {canFinance(role) ? <th>Review</th> : null}
              </tr>
            </thead>
            <tbody>
              {items.map((item) => (
                <tr key={item.id}>
                  <td>
                    <strong>{item.phone_e164}</strong>
                    <small>Payment {item.id}</small>
                    <small>User {item.user_id}</small>
                  </td>
                  <td>
                    <strong>{item.purpose}</strong>
                    <small>
                      {formatMoney(item.amount_minor, item.currency)}
                    </small>
                    <small>
                      {item.order_id
                        ? `Order ${item.order_id}`
                        : 'Wallet recharge'}
                    </small>
                  </td>
                  <td>
                    <strong>{item.display_name}</strong>
                    <small>
                      Reference: {item.transaction_reference ?? 'Not supplied'}
                    </small>
                    {canFinance(role) && item.proof_upload_id ? (
                      <button className="link" onClick={() => void proof(item)}>
                        View private proof
                      </button>
                    ) : null}
                  </td>
                  <td>
                    <strong>{item.submission_status ?? 'No submission'}</strong>
                    <small>ID: {item.submission_id ?? '—'}</small>
                    <small>Proof upload: {item.proof_upload_id ?? '—'}</small>
                    <small>Submitted: {formatDate(item.submitted_at)}</small>
                    <button
                      className="link"
                      onClick={() =>
                        setHistoryId(historyId === item.id ? null : item.id)
                      }
                    >
                      {historyId === item.id
                        ? 'Hide history'
                        : 'Submission history'}
                    </button>
                    {historyId === item.id ? (
                      <PaymentHistory paymentId={item.id} latest={item} />
                    ) : null}
                  </td>
                  <td>
                    <span className={`status ${item.status}`}>
                      {display(item.status)}
                    </span>
                    {item.rejection_reason ? (
                      <small>{item.rejection_reason}</small>
                    ) : null}
                    <small>Created: {formatDate(item.created_at)}</small>
                    <small>Updated: {formatDate(item.updated_at)}</small>
                  </td>
                  {canFinance(role) ? (
                    <td className="actions">
                      {item.status === 'under_review' ? (
                        <>
                          <button
                            className="approve"
                            disabled={action.isPending}
                            onClick={() => approvePayment(item)}
                          >
                            Approve
                          </button>
                          <button
                            className="reject"
                            disabled={action.isPending}
                            onClick={() => reasonAction(item, 'reject')}
                          >
                            Reject
                          </button>
                        </>
                      ) : null}
                      {item.status === 'approved' ? (
                        <>
                          <button
                            className="reject"
                            disabled={action.isPending}
                            onClick={() => reasonAction(item, 'refund')}
                          >
                            Refund / reverse
                          </button>
                        </>
                      ) : null}
                      {!['under_review', 'approved'].includes(item.status) ? (
                        <span>Reviewed</span>
                      ) : null}
                    </td>
                  ) : null}
                </tr>
              ))}
            </tbody>
          </table>
          {!items.length ? (
            <div className="empty">No payments matched these filters.</div>
          ) : null}
        </div>
      ) : null}
      <Pager
        page={page}
        setPage={setPage}
        hasNext={page * pageSize < filtered.length}
        busy={query.isFetching}
      />
      {!canFinance(role) ? (
        <p className="operational-note">
          Support access excludes private proof and all payment decisions.
        </p>
      ) : null}
    </section>
  );
}

function PaymentHistory({
  paymentId,
  latest,
}: {
  paymentId: string;
  latest: AdminPayment;
}) {
  const query = useQuery({
    queryKey: ['payment-submissions', paymentId],
    queryFn: () => adminApi.paymentSubmissions(paymentId),
  });
  if (query.isPending)
    return <small className="inline-state">Loading history…</small>;
  if (query.isError)
    return (
      <small className="inline-state error">
        {errorMessage(query.error)} Latest submission is shown above.
      </small>
    );
  const rows = query.data.items.length
    ? query.data.items
    : [latestSubmission(latest)];
  return (
    <div className="history-list">
      {rows.map((item) => (
        <div key={item.id}>
          <strong>{item.status}</strong>
          <small>
            {item.transaction_reference ?? 'No reference'} ·{' '}
            {formatDate(item.submitted_at)}
          </small>
          {item.rejection_reason ? (
            <small>{item.rejection_reason}</small>
          ) : null}
        </div>
      ))}
    </div>
  );
}
function latestSubmission(item: AdminPayment): PaymentSubmission {
  return {
    id: item.submission_id ?? 'latest',
    transaction_reference: item.transaction_reference,
    proof_upload_id: item.proof_upload_id,
    status: item.submission_status ?? 'unknown',
    rejection_reason: item.rejection_reason,
    submitted_at: item.submitted_at,
  };
}

interface Field {
  name: string;
  label: string;
  type?: 'text' | 'number' | 'textarea' | 'select' | 'boolean';
  source?: string;
  options?: string[];
  required?: boolean;
  defaultValue?: string | number | boolean;
}
interface ResourceConfig {
  resource: string;
  title: string;
  description: string;
  columns: { key: string; label: string }[];
  fields: Field[];
  canCreate?: boolean;
  canDelete?: boolean;
  writeRoles: AdminRole[];
}
const configs: Record<ResourcePage, ResourceConfig> = {
  'payment-methods': {
    resource: 'payment-methods',
    title: 'Payment methods',
    description: 'Configure bank and UPI accounts shown to users.',
    canCreate: true,
    canDelete: true,
    writeRoles: finance,
    columns: [
      { key: 'display_name', label: 'Name' },
      { key: 'type', label: 'Type' },
      { key: 'upi_id', label: 'UPI ID' },
      { key: 'account_number', label: 'Account' },
      { key: 'currency', label: 'Currency' },
      { key: 'enabled', label: 'Enabled' },
    ],
    fields: [
      {
        name: 'displayName',
        source: 'display_name',
        label: 'Display name',
        required: true,
      },
      {
        name: 'type',
        label: 'Type',
        type: 'select',
        options: ['upi', 'bank'],
        required: true,
      },
      {
        name: 'instructions',
        label: 'Instructions',
        type: 'textarea',
        required: true,
      },
      { name: 'upiId', source: 'upi_id', label: 'UPI ID' },
      { name: 'accountName', source: 'account_name', label: 'Account name' },
      {
        name: 'accountNumber',
        source: 'account_number',
        label: 'Account number',
      },
      { name: 'bankName', source: 'bank_name', label: 'Bank name' },
      { name: 'ifsc', label: 'IFSC' },
      { name: 'qrImageKey', source: 'qr_image_key', label: 'QR image key' },
      {
        name: 'currency',
        label: 'Currency',
        type: 'select',
        options: ['INR', 'USD'],
        defaultValue: 'INR',
      },
      {
        name: 'enabled',
        label: 'Enabled',
        type: 'boolean',
        defaultValue: true,
      },
      {
        name: 'sortOrder',
        source: 'sort_order',
        label: 'Sort order',
        type: 'number',
        defaultValue: 0,
      },
    ],
  },
  products: {
    resource: 'products',
    title: 'Products',
    description: 'Create and archive products used by campaigns.',
    canCreate: true,
    canDelete: true,
    writeRoles: adminOnly,
    columns: [
      { key: 'title', label: 'Title' },
      { key: 'retail_price_minor', label: 'Retail minor' },
      { key: 'currency', label: 'Currency' },
      { key: 'status', label: 'Status' },
    ],
    fields: [
      { name: 'title', label: 'Title', required: true },
      { name: 'description', label: 'Description', type: 'textarea' },
      { name: 'imageKey', source: 'image_key', label: 'R2 image key' },
      {
        name: 'retailPriceMinor',
        source: 'retail_price_minor',
        label: 'Retail price (minor)',
        type: 'number',
        required: true,
      },
      {
        name: 'currency',
        label: 'Currency',
        type: 'select',
        options: ['INR', 'USD'],
        defaultValue: 'INR',
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
  campaigns: {
    resource: 'campaigns',
    title: 'Campaigns',
    description: 'Manage entry price, capacity, schedule, and lifecycle.',
    canCreate: true,
    canDelete: true,
    writeRoles: adminOnly,
    columns: [
      { key: 'title', label: 'Product' },
      { key: 'entry_price_minor', label: 'Entry minor' },
      { key: 'sold_entries', label: 'Sold' },
      { key: 'total_entries', label: 'Capacity' },
      { key: 'status', label: 'Status' },
    ],
    fields: [
      {
        name: 'productId',
        source: 'product_id',
        label: 'Product UUID',
        required: true,
      },
      {
        name: 'entryPriceMinor',
        source: 'entry_price_minor',
        label: 'Entry price (minor)',
        type: 'number',
        required: true,
      },
      {
        name: 'totalEntries',
        source: 'total_entries',
        label: 'Capacity',
        type: 'number',
        required: true,
      },
      {
        name: 'startsAt',
        source: 'starts_at',
        label: 'Starts epoch',
        type: 'number',
        required: true,
      },
      {
        name: 'endsAt',
        source: 'ends_at',
        label: 'Ends epoch',
        type: 'number',
        required: true,
      },
      {
        name: 'status',
        label: 'Status',
        type: 'select',
        options: ['scheduled', 'active', 'cancelled'],
        defaultValue: 'scheduled',
      },
    ],
  },
  users: {
    resource: 'users',
    title: 'Users',
    description:
      'Search users. Only administrators can change roles or account status.',
    writeRoles: adminOnly,
    columns: [
      { key: 'phone_e164', label: 'Phone' },
      { key: 'display_name', label: 'Name' },
      { key: 'role', label: 'Role' },
      { key: 'status', label: 'Status' },
    ],
    fields: [
      { name: 'displayName', source: 'display_name', label: 'Display name' },
      { name: 'email', label: 'Email' },
      {
        name: 'role',
        label: 'Role',
        type: 'select',
        options: ['user', 'support', 'finance', 'admin'],
      },
      {
        name: 'status',
        label: 'Status',
        type: 'select',
        options: ['active', 'suspended', 'closed'],
      },
    ],
  },
  orders: {
    resource: 'orders',
    title: 'Orders',
    description:
      'Review orders and apply controlled cancellation or fulfillment.',
    writeRoles: adminOnly,
    columns: [
      { key: 'phone_e164', label: 'User' },
      { key: 'title', label: 'Title' },
      { key: 'amount_minor', label: 'Amount minor' },
      { key: 'status', label: 'Status' },
    ],
    fields: [
      {
        name: 'status',
        label: 'Status',
        type: 'select',
        options: ['cancelled', 'fulfilled'],
        required: true,
      },
    ],
  },
  tasks: {
    resource: 'tasks',
    title: 'Tasks',
    description: 'Configure user reward tasks.',
    canCreate: true,
    canDelete: true,
    writeRoles: adminOnly,
    columns: [
      { key: 'title', label: 'Title' },
      { key: 'period', label: 'Period' },
      { key: 'reward_coins', label: 'Coins' },
      { key: 'status', label: 'Status' },
    ],
    fields: [
      { name: 'title', label: 'Title', required: true },
      { name: 'description', label: 'Description', type: 'textarea' },
      {
        name: 'period',
        label: 'Period',
        type: 'select',
        options: ['once', 'daily', 'weekly', 'monthly'],
        defaultValue: 'once',
      },
      {
        name: 'rewardCoins',
        source: 'reward_coins',
        label: 'Reward coins',
        type: 'number',
        defaultValue: 0,
      },
      {
        name: 'rewardMinor',
        source: 'reward_minor',
        label: 'Reward minor',
        type: 'number',
        defaultValue: 0,
      },
      {
        name: 'status',
        label: 'Status',
        type: 'select',
        options: ['draft', 'active', 'archived'],
        defaultValue: 'draft',
      },
      {
        name: 'sortOrder',
        source: 'sort_order',
        label: 'Sort order',
        type: 'number',
        defaultValue: 0,
      },
    ],
  },
  content: {
    resource: 'content',
    title: 'Content',
    description:
      'Editing copy creates a new version; status-only changes update the selected version.',
    canCreate: true,
    canDelete: true,
    writeRoles: adminOnly,
    columns: [
      { key: 'slug', label: 'Slug' },
      { key: 'title', label: 'Title' },
      { key: 'locale', label: 'Locale' },
      { key: 'version', label: 'Version' },
      { key: 'status', label: 'Status' },
    ],
    fields: [
      { name: 'slug', label: 'Slug', required: true },
      { name: 'title', label: 'Title', required: true },
      { name: 'body', label: 'Body', type: 'textarea', required: true },
      { name: 'locale', label: 'Locale', defaultValue: 'en' },
      {
        name: 'status',
        label: 'Status',
        type: 'select',
        options: ['draft', 'published', 'archived'],
        defaultValue: 'draft',
      },
    ],
  },
  prizes: {
    resource: 'prizes',
    title: 'Prizes',
    description: 'Manage claim processing and shipment tracking.',
    writeRoles: adminOnly,
    columns: [
      { key: 'phone_e164', label: 'User' },
      { key: 'product_title', label: 'Prize' },
      { key: 'status', label: 'Status' },
      { key: 'tracking_reference', label: 'Tracking' },
    ],
    fields: [
      {
        name: 'status',
        label: 'Status',
        type: 'select',
        options: ['unclaimed', 'claimed', 'processing', 'shipped', 'delivered'],
        required: true,
      },
      {
        name: 'trackingReference',
        source: 'tracking_reference',
        label: 'Tracking reference',
      },
      {
        name: 'adminNote',
        source: 'admin_note',
        label: 'Admin note',
        type: 'textarea',
      },
    ],
  },
};

function ResourceManager({
  config,
  role,
}: {
  config: ResourceConfig;
  role: AdminRole;
}) {
  const client = useQueryClient();
  const [selected, setSelected] = useState<Record<string, unknown> | null>(
    null,
  );
  const [creating, setCreating] = useState(false);
  const [search, setSearch] = useState('');
  const [status, setStatus] = useState('');
  const [page, setPage] = useState(1);
  const canWrite = config.writeRoles.includes(role);
  const query = useQuery({
    queryKey: [
      'admin-resource',
      config.resource,
      config.resource === 'users' ? search : '',
    ],
    queryFn: () =>
      adminApi.list(
        config.resource,
        config.resource === 'users' ? { search } : {},
      ),
  });
  const save = useMutation({
    mutationFn: (values: Record<string, unknown>) => {
      if (selected && config.resource === 'content') {
        const versionFields = ['slug', 'title', 'body', 'locale'];
        if (versionFields.some((field) => field in values)) {
          const body = Object.fromEntries(
            config.fields
              .map((field) => [
                field.name,
                values[field.name] ??
                  selected[field.source ?? field.name] ??
                  field.defaultValue,
              ])
              .filter(([, value]) => value !== undefined && value !== ''),
          );
          return adminApi.create(config.resource, body);
        }
        return adminApi.update(config.resource, String(selected.id), values);
      }
      return selected
        ? adminApi.update(config.resource, String(selected.id), values)
        : adminApi.create(config.resource, values);
    },
    onSuccess: () => {
      setSelected(null);
      setCreating(false);
      void client.invalidateQueries({
        queryKey: ['admin-resource', config.resource],
      });
    },
  });
  const remove = useMutation({
    mutationFn: (id: string) => adminApi.remove(config.resource, id),
    onSuccess: () =>
      void client.invalidateQueries({
        queryKey: ['admin-resource', config.resource],
      }),
  });
  const normalized = search.trim().toLowerCase();
  const rows = (query.data?.items ?? []).filter((row) => {
    const matchesSearch =
      !normalized ||
      Object.values(row).some((value) =>
        String(value ?? '')
          .toLowerCase()
          .includes(normalized),
      );
    return matchesSearch && (!status || row.status === status);
  });
  const pageSize = 20;
  const pageRows = rows.slice((page - 1) * pageSize, page * pageSize);
  const statuses = [
    ...new Set(
      (query.data?.items ?? [])
        .map((row) => String(row.status ?? ''))
        .filter(Boolean),
    ),
  ];
  return (
    <section className="panel">
      <div className="panel-heading">
        <div>
          <h2>{config.title}</h2>
          <p className="muted">{config.description}</p>
        </div>
        {config.canCreate && canWrite ? (
          <button
            className="primary small"
            onClick={() => {
              setSelected(null);
              setCreating(true);
            }}
          >
            Add new
          </button>
        ) : null}
      </div>
      <div className="filters">
        <input
          placeholder={`Search ${config.title.toLowerCase()}`}
          value={search}
          onChange={(event) => {
            setSearch(event.target.value);
            setPage(1);
          }}
        />
        {statuses.length ? (
          <select
            value={status}
            onChange={(event) => {
              setStatus(event.target.value);
              setPage(1);
            }}
          >
            <option value="">All statuses</option>
            {statuses.map((value) => (
              <option key={value}>{value}</option>
            ))}
          </select>
        ) : null}
      </div>
      {query.isPending ? (
        <div className="state">Loading {config.title.toLowerCase()}…</div>
      ) : null}
      {query.isError ? (
        <div className="state error">{errorMessage(query.error)}</div>
      ) : null}
      {save.isError ? (
        <div className="state error">{errorMessage(save.error)}</div>
      ) : null}
      {remove.isError ? (
        <div className="state error">{errorMessage(remove.error)}</div>
      ) : null}
      {!query.isPending && !query.isError ? (
        <div className="table-wrap">
          <table>
            <thead>
              <tr>
                {config.columns.map((column) => (
                  <th key={column.key}>{column.label}</th>
                ))}
                {canWrite ? <th>Actions</th> : null}
              </tr>
            </thead>
            <tbody>
              {pageRows.map((row) => (
                <tr key={String(row.id)}>
                  {config.columns.map((column) => (
                    <td key={column.key}>
                      {column.key === 'status' ? (
                        <span className={`status ${String(row[column.key])}`}>
                          {display(row[column.key])}
                        </span>
                      ) : (
                        display(row[column.key])
                      )}
                    </td>
                  ))}
                  {canWrite ? (
                    <td className="actions">
                      <button
                        onClick={() => {
                          setSelected(row);
                          setCreating(false);
                        }}
                      >
                        {config.resource === 'content'
                          ? 'Edit / version'
                          : 'Edit'}
                      </button>
                      {config.canDelete ? (
                        <button
                          className="reject"
                          disabled={remove.isPending}
                          onClick={() => {
                            if (
                              window.confirm(
                                `Archive or disable ${String(row.id)}?`,
                              )
                            )
                              remove.mutate(String(row.id));
                          }}
                        >
                          Archive
                        </button>
                      ) : null}
                    </td>
                  ) : null}
                </tr>
              ))}
            </tbody>
          </table>
          {!pageRows.length ? (
            <div className="empty">No records matched these filters.</div>
          ) : null}
        </div>
      ) : null}
      <Pager
        page={page}
        setPage={setPage}
        hasNext={page * pageSize < rows.length}
        busy={query.isFetching}
      />
      {!canWrite ? (
        <p className="operational-note">
          Your role has read-only access to this page.
        </p>
      ) : null}
      {selected || creating ? (
        <ResourceForm
          key={`${config.resource}:${String(selected?.id ?? 'new')}`}
          config={config}
          initial={selected}
          busy={save.isPending}
          error={save.isError ? errorMessage(save.error) : ''}
          onCancel={() => {
            setSelected(null);
            setCreating(false);
            save.reset();
          }}
          onSave={(values) => save.mutate(values)}
        />
      ) : null}
    </section>
  );
}

function display(value: unknown) {
  if (value === null || value === undefined || value === '') return '—';
  if (typeof value === 'boolean') return value ? 'Yes' : 'No';
  if (typeof value === 'number') return value.toLocaleString();
  return String(value).replaceAll('_', ' ');
}
function formatDate(value: number | string | null | undefined) {
  if (!value) return '—';
  if (typeof value === 'string') {
    const parsed = new Date(value);
    return Number.isNaN(parsed.getTime()) ? value : parsed.toLocaleString();
  }
  return new Date(
    value * (value < 10_000_000_000 ? 1_000 : 1),
  ).toLocaleString();
}
function fieldValue(field: Field, initial: Record<string, unknown> | null) {
  const value = initial?.[field.source ?? field.name];
  if (field.type === 'boolean')
    return value === undefined || value === null
      ? (field.defaultValue ?? false)
      : value === true || value === 1;
  return value ?? field.defaultValue ?? '';
}
function ResourceForm({
  config,
  initial,
  busy,
  error,
  onCancel,
  onSave,
}: {
  config: ResourceConfig;
  initial: Record<string, unknown> | null;
  busy: boolean;
  error: string;
  onCancel: () => void;
  onSave: (values: Record<string, unknown>) => void;
}) {
  const defaults = useMemo(
    () =>
      Object.fromEntries(
        config.fields.map((field) => [field.name, fieldValue(field, initial)]),
      ),
    [config, initial],
  );
  const [values, setValues] = useState<Record<string, unknown>>(defaults);
  const [formError, setFormError] = useState('');
  useEffect(() => {
    setValues(defaults);
    setFormError('');
  }, [defaults]);
  function submit(event: FormEvent) {
    event.preventDefault();
    const body: Record<string, unknown> = {};
    config.fields.forEach((field) => {
      const raw = values[field.name];
      const baseline = fieldValue(field, initial);
      const changed = !initial || raw !== baseline;
      const unchangedCreateDefault =
        !initial &&
        !field.required &&
        field.defaultValue !== undefined &&
        raw === field.defaultValue;
      if (!changed || unchangedCreateDefault) return;
      if (field.type === 'boolean') {
        body[field.name] = Boolean(raw);
        return;
      }
      if (raw === '' || raw === null || raw === undefined) return;
      body[field.name] = field.type === 'number' ? Number(raw) : raw;
    });
    if (!Object.keys(body).length) {
      setFormError('Change at least one field before saving.');
      return;
    }
    setFormError('');
    onSave(body);
  }
  return (
    <div className="modal-backdrop">
      <form className="resource-form" onSubmit={submit}>
        <div className="panel-heading">
          <div>
            <h2>
              {initial ? 'Edit' : 'Create'} {config.title}
            </h2>
            {initial && config.resource === 'content' ? (
              <p className="muted">
                Copy changes create a new version. A status-only change updates
                this version.
              </p>
            ) : null}
          </div>
          <button type="button" onClick={onCancel}>
            Close
          </button>
        </div>
        <div className="form-grid">
          {config.fields.map((field) => (
            <label key={field.name}>
              {field.label}
              {field.type === 'textarea' ? (
                <textarea
                  required={field.required}
                  value={String(values[field.name] ?? '')}
                  onChange={(event) =>
                    setValues({ ...values, [field.name]: event.target.value })
                  }
                />
              ) : field.type === 'select' ? (
                <select
                  required={field.required}
                  value={String(values[field.name] ?? '')}
                  onChange={(event) =>
                    setValues({ ...values, [field.name]: event.target.value })
                  }
                >
                  <option value="">Select</option>
                  {field.options?.map((option) => (
                    <option key={option}>{option}</option>
                  ))}
                </select>
              ) : field.type === 'boolean' ? (
                <input
                  type="checkbox"
                  checked={Boolean(values[field.name])}
                  onChange={(event) =>
                    setValues({ ...values, [field.name]: event.target.checked })
                  }
                />
              ) : (
                <input
                  required={field.required}
                  type={field.type === 'number' ? 'number' : 'text'}
                  value={String(values[field.name] ?? '')}
                  onChange={(event) =>
                    setValues({ ...values, [field.name]: event.target.value })
                  }
                />
              )}
            </label>
          ))}
        </div>
        {formError || error ? (
          <p className="error">{formError || error}</p>
        ) : null}
        <button className="primary" disabled={busy} type="submit">
          {busy
            ? 'Saving…'
            : initial && config.resource === 'content'
              ? 'Save status / create version'
              : 'Save changes'}
        </button>
      </form>
    </div>
  );
}

function Withdrawals({ role }: { role: AdminRole }) {
  const client = useQueryClient();
  const [search, setSearch] = useState('');
  const [status, setStatus] = useState('');
  const [page, setPage] = useState(1);
  const [destinations, setDestinations] = useState<Record<string, string>>({});
  const query = useQuery({
    queryKey: ['admin-withdrawals'],
    queryFn: adminApi.withdrawals,
  });
  const action = useMutation({
    mutationFn: ({
      id,
      name,
      body,
    }: {
      id: string;
      name: 'review' | 'approve' | 'reject' | 'paid';
      body?: unknown;
    }) => adminApi.withdrawalAction(id, name, body),
    onSuccess: () => {
      void client.invalidateQueries({ queryKey: ['admin-withdrawals'] });
      void client.invalidateQueries({ queryKey: ['admin-dashboard'] });
    },
  });
  function run(
    item: Withdrawal,
    name: 'review' | 'approve' | 'reject' | 'paid',
  ) {
    let body: unknown = {};
    if (name === 'reject') {
      const reason = window.prompt('Rejection reason (required and audited)');
      if (!reason?.trim()) return;
      body = { reason: reason.trim() };
    }
    if (name === 'paid') {
      if (!destinations[item.id]) {
        window.alert(
          'Reveal and verify the audited payout destination before marking paid.',
        );
        return;
      }
      const payoutReference = window.prompt('Payout reference (required)');
      if (!payoutReference?.trim()) return;
      body = { payoutReference: payoutReference.trim() };
    }
    if (
      !window.confirm(
        `${label(name)} withdrawal ${item.id} for ${formatMoney(item.amountMinor, item.currency)}?`,
      )
    )
      return;
    action.mutate({ id: item.id, name, body });
  }
  const normalized = search.trim().toLowerCase();
  const filtered = (query.data?.items ?? []).filter(
    (item) =>
      (!status || item.status === status) &&
      (!normalized ||
        [item.id, item.phone, item.payoutReference].some((value) =>
          String(value ?? '')
            .toLowerCase()
            .includes(normalized),
        )),
  );
  const pageSize = 20;
  const items = filtered.slice((page - 1) * pageSize, page * pageSize);
  return (
    <section className="panel">
      <div className="panel-heading">
        <div>
          <h2>Withdrawals</h2>
          <p className="muted">
            Review, approve, settle, or reject with explicit confirmation.
          </p>
        </div>
      </div>
      <div className="filters">
        <input
          placeholder="Search user, withdrawal, or reference"
          value={search}
          onChange={(event) => {
            setSearch(event.target.value);
            setPage(1);
          }}
        />
        <select
          value={status}
          onChange={(event) => {
            setStatus(event.target.value);
            setPage(1);
          }}
        >
          <option value="">All statuses</option>
          {['requested', 'reviewing', 'approved', 'paid', 'rejected'].map(
            (value) => (
              <option key={value}>{value}</option>
            ),
          )}
        </select>
      </div>
      {query.isPending ? (
        <div className="state">Loading withdrawals…</div>
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
                <th>User</th>
                <th>Amount</th>
                <th>Status</th>
                <th>Reference / reason</th>
                <th>Created</th>
                {canFinance(role) ? <th>Actions</th> : null}
              </tr>
            </thead>
            <tbody>
              {items.map((item) => (
                <tr key={item.id}>
                  <td>
                    {item.phone}
                    <small>{item.id}</small>
                    <small>{item.destinationSnapshot.maskedDestination}</small>
                  </td>
                  <td>{formatMoney(item.amountMinor, item.currency)}</td>
                  <td>
                    <span className={`status ${item.status}`}>
                      {item.status}
                    </span>
                  </td>
                  <td>
                    {item.payoutReference ?? item.rejectionReason ?? '—'}
                    <button
                      className="link"
                      onClick={async () => {
                        try {
                          const destination =
                            await adminApi.withdrawalDestination(item.id);
                          setDestinations((current) => ({
                            ...current,
                            [item.id]: `${destination.label}: ${destination.destination}`,
                          }));
                        } catch (error) {
                          window.alert(errorMessage(error));
                        }
                      }}
                    >
                      {destinations[item.id]
                        ? 'Destination verified'
                        : 'Reveal audited destination'}
                    </button>
                    {destinations[item.id] ? (
                      <small>{destinations[item.id]}</small>
                    ) : null}
                  </td>
                  <td>{formatDate(item.createdAt)}</td>
                  {canFinance(role) ? (
                    <td className="actions">
                      {item.status === 'requested' ? (
                        <button onClick={() => run(item, 'review')}>
                          Review
                        </button>
                      ) : null}
                      {item.status === 'reviewing' ? (
                        <button
                          className="approve"
                          onClick={() => run(item, 'approve')}
                        >
                          Approve
                        </button>
                      ) : null}
                      {['requested', 'reviewing', 'approved'].includes(
                        item.status,
                      ) ? (
                        <button
                          className="reject"
                          onClick={() => run(item, 'reject')}
                        >
                          Reject
                        </button>
                      ) : null}
                      {item.status === 'approved' ? (
                        <button
                          className="approve"
                          disabled={!destinations[item.id] || action.isPending}
                          onClick={() => run(item, 'paid')}
                        >
                          Mark paid
                        </button>
                      ) : null}
                    </td>
                  ) : null}
                </tr>
              ))}
            </tbody>
          </table>
          {!items.length ? (
            <div className="empty">No withdrawals matched these filters.</div>
          ) : null}
        </div>
      ) : null}
      <Pager
        page={page}
        setPage={setPage}
        hasNext={page * pageSize < filtered.length}
        busy={query.isFetching}
      />
    </section>
  );
}

function Pager({
  page,
  setPage,
  hasNext,
  busy,
}: {
  page: number;
  setPage: (page: number) => void;
  hasNext: boolean;
  busy: boolean;
}) {
  return (
    <div className="pager">
      <button disabled={page === 1 || busy} onClick={() => setPage(page - 1)}>
        Previous
      </button>
      <span>Page {page}</span>
      <button disabled={!hasNext || busy} onClick={() => setPage(page + 1)}>
        Next
      </button>
    </div>
  );
}
