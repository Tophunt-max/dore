import type {
  AdminDashboard,
  ApiFailure,
  ApiResponse,
  User,
} from '@oriva/shared';

const API_URL = (
  import.meta.env.VITE_API_URL ?? 'http://127.0.0.1:8787'
).replace(/\/$/, '');
const ACCESS_KEY = 'oriva_admin_access';
const REFRESH_KEY = 'oriva_admin_refresh';
const DEVICE_KEY = 'oriva_admin_device';
const USER_KEY = 'oriva_admin_user';

export type AdminRole = Extract<User['role'], 'support' | 'finance' | 'admin'>;
export type AdminUser = User & { role: AdminRole };

export interface Session {
  accessToken: string;
  refreshToken: string;
  user: User;
}
export interface AdminPayment {
  id: string;
  user_id: string;
  phone_e164: string;
  order_id: string | null;
  purpose: 'order' | 'recharge';
  amount_minor: number;
  currency: 'INR';
  status: string;
  display_name: string;
  submission_id: string | null;
  transaction_reference: string | null;
  proof_upload_id: string | null;
  submission_status: string | null;
  rejection_reason: string | null;
  submitted_at: number | null;
  created_at: number;
  updated_at: number;
}
export interface PaymentSubmission {
  id: string;
  payment_id?: string;
  transaction_reference: string | null;
  proof_upload_id: string | null;
  status: string;
  rejection_reason: string | null;
  submitted_at: number | null;
  reviewed_at?: number | null;
  reviewed_by_user_id?: string | null;
}
export interface Withdrawal {
  id: string;
  userId: string;
  phone: string;
  amountMinor: number;
  currency: 'INR';
  status: string;
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
export interface ListResult<T> {
  items: T[];
  page?: number;
  pageSize?: number;
  total?: number;
  nextCursor?: string | null;
}

export class AdminApiError extends Error {
  constructor(
    message: string,
    readonly status: number,
    readonly code?: string,
  ) {
    super(message);
    this.name = 'AdminApiError';
  }
}

function deviceId() {
  let id = sessionStorage.getItem(DEVICE_KEY);
  if (!id) {
    id = crypto.randomUUID();
    sessionStorage.setItem(DEVICE_KEY, id);
  }
  return id;
}

function getSessionUser(): AdminUser | null {
  const value = sessionStorage.getItem(USER_KEY);
  if (!value) return null;
  try {
    const user = JSON.parse(value) as User;
    return ['support', 'finance', 'admin'].includes(user.role)
      ? (user as AdminUser)
      : null;
  } catch {
    return null;
  }
}

async function request<T>(
  path: string,
  options: RequestInit = {},
  authenticated = true,
): Promise<T> {
  const headers = new Headers(options.headers);
  if (options.body) headers.set('Content-Type', 'application/json');
  if (authenticated) {
    const token = sessionStorage.getItem(ACCESS_KEY);
    if (token) headers.set('Authorization', `Bearer ${token}`);
  }
  let response: Response;
  try {
    response = await fetch(`${API_URL}${path}`, { ...options, headers });
  } catch {
    throw new AdminApiError('The operations API is unreachable.', 0);
  }
  const payload = (await response
    .json()
    .catch(() => null)) as ApiResponse<T> | null;
  if (!response.ok || !payload?.success) {
    const failure = payload as ApiFailure | null;
    throw new AdminApiError(
      failure?.error?.message ?? `Request failed (${response.status})`,
      response.status,
      failure?.error?.code,
    );
  }
  return payload.data;
}

async function requestBlob(path: string) {
  const headers = new Headers();
  const token = sessionStorage.getItem(ACCESS_KEY);
  if (token) headers.set('Authorization', `Bearer ${token}`);
  let response: Response;
  try {
    response = await fetch(`${API_URL}${path}`, { headers });
  } catch {
    throw new AdminApiError('The operations API is unreachable.', 0);
  }
  if (!response.ok) {
    const payload = (await response
      .json()
      .catch(() => null)) as ApiFailure | null;
    throw new AdminApiError(
      payload?.error?.message ?? `Download failed (${response.status})`,
      response.status,
      payload?.error?.code,
    );
  }
  return {
    blob: await response.blob(),
    filename:
      response.headers
        .get('Content-Disposition')
        ?.match(/filename="?([^";]+)"?/)?.[1] ?? 'oriva-report.csv',
  };
}

const json = (method: string, body?: unknown): RequestInit => ({
  method,
  ...(body === undefined ? {} : { body: JSON.stringify(body) }),
});
const queryString = (params: Record<string, string | number | undefined>) => {
  const query = new URLSearchParams();
  Object.entries(params).forEach(([key, value]) => {
    if (value !== undefined && value !== '') query.set(key, String(value));
  });
  const serialized = query.toString();
  return serialized ? `?${serialized}` : '';
};
const adminPath = (path: string) => `/api/v1/admin/${path.replace(/^\//, '')}`;

export const adminApi = {
  hasSession: () =>
    Boolean(sessionStorage.getItem(ACCESS_KEY) && getSessionUser()),
  sessionUser: getSessionUser,
  requestOtp: (phone: string) =>
    request('/api/v1/auth/otp/request', json('POST', { phone }), false),
  verifyOtp: async (phone: string, code: string) => {
    const session = await request<Session>(
      '/api/v1/auth/otp/verify',
      json('POST', { phone, code, deviceId: deviceId() }),
      false,
    );
    sessionStorage.setItem(ACCESS_KEY, session.accessToken);
    sessionStorage.setItem(REFRESH_KEY, session.refreshToken);
    sessionStorage.setItem(USER_KEY, JSON.stringify(session.user));
    return session;
  },
  logout: () => {
    sessionStorage.removeItem(ACCESS_KEY);
    sessionStorage.removeItem(REFRESH_KEY);
    sessionStorage.removeItem(USER_KEY);
  },
  // Upload an image to R2 via the 3-step upload flow and return its object key
  // (stored as a banner/product/etc. imageKey) and public URL.
  uploadImage: async (
    file: File,
    purpose: 'banner' | 'product' | 'campaign' | 'prize' = 'banner',
  ): Promise<{ objectKey: string; url: string | null }> => {
    const extByType: Record<string, 'jpg' | 'png' | 'webp'> = {
      'image/jpeg': 'jpg',
      'image/png': 'png',
      'image/webp': 'webp',
    };
    const fileExtension = extByType[file.type];
    if (!fileExtension)
      throw new AdminApiError('Use a JPG, PNG, or WebP image.', 400);
    const session = await request<{
      uploadId: string;
      uploadUrl: string;
      objectKey: string;
    }>(
      '/api/v1/uploads',
      json('POST', {
        purpose,
        contentType: file.type,
        contentLength: file.size,
        fileExtension,
      }),
    );
    const token = sessionStorage.getItem(ACCESS_KEY);
    const headers = new Headers({ 'Content-Type': file.type });
    if (token) headers.set('Authorization', `Bearer ${token}`);
    let putResponse: Response;
    try {
      putResponse = await fetch(`${API_URL}${session.uploadUrl}`, {
        method: 'PUT',
        headers,
        body: file,
      });
    } catch {
      throw new AdminApiError('The operations API is unreachable.', 0);
    }
    if (!putResponse.ok)
      throw new AdminApiError('Image upload failed.', putResponse.status);
    const complete = await request<{ uploadId: string; url: string | null }>(
      `/api/v1/uploads/${session.uploadId}/complete`,
      json('POST'),
    );
    return { objectKey: session.objectKey, url: complete.url };
  },
  dashboard: () => request<AdminDashboard>(adminPath('dashboard')),
  list: <T = Record<string, unknown>>(
    resource: string,
    params: Record<string, string | number | undefined> = {},
  ) => request<ListResult<T>>(`${adminPath(resource)}${queryString(params)}`),
  create: <T = unknown>(resource: string, body: unknown) =>
    request<T>(adminPath(resource), json('POST', body)),
  update: <T = unknown>(resource: string, id: string, body: unknown) =>
    request<T>(adminPath(`${resource}/${id}`), json('PATCH', body)),
  remove: <T = unknown>(resource: string, id: string) =>
    request<T>(adminPath(`${resource}/${id}`), json('DELETE')),
  payments: (status = '') =>
    request<ListResult<AdminPayment>>(
      `${adminPath('payments')}${queryString({ status })}`,
    ),
  paymentSubmissions: (id: string) =>
    request<ListResult<PaymentSubmission>>(
      adminPath(`payments/${id}/submissions`),
    ),
  approvePayment: (id: string) =>
    request(adminPath(`payments/${id}/approve`), json('POST')),
  rejectPayment: (id: string, reason: string) =>
    request(adminPath(`payments/${id}/reject`), json('POST', { reason })),
  refundPayment: (id: string, reason: string, payoutReference: string) =>
    request(
      adminPath(`payments/${id}/refunds`),
      json('POST', {
        reason,
        payoutReference,
        idempotencyKey: crypto.randomUUID(),
      }),
    ),
  paymentProof: async (id: string) => {
    const role = getSessionUser()?.role;
    if (role !== 'finance' && role !== 'admin') {
      throw new AdminApiError(
        'Finance access is required for private proof.',
        403,
      );
    }
    const { blob } = await requestBlob(adminPath(`payments/${id}/proof`));
    return URL.createObjectURL(blob);
  },
  withdrawals: () => request<ListResult<Withdrawal>>(adminPath('withdrawals')),
  withdrawalDestination: (id: string) =>
    request<{
      type: string;
      label: string;
      accountHolderName: string | null;
      bankName: string | null;
      ifsc: string | null;
      destination: string;
    }>(adminPath(`withdrawals/${id}/destination`)),
  withdrawalAction: (
    id: string,
    action: 'review' | 'approve' | 'reject' | 'paid',
    body: unknown = {},
  ) => request(adminPath(`withdrawals/${id}/${action}`), json('POST', body)),
  operations: <T = Record<string, unknown>>(
    path: string,
    params: Record<string, string | number | undefined> = {},
  ) => request<ListResult<T>>(`${adminPath(path)}${queryString(params)}`),
  operationAction: <T = unknown>(
    path: string,
    method: 'POST' | 'PATCH' | 'DELETE',
    body?: unknown,
  ) => request<T>(adminPath(path), json(method, body)),
  downloadReport: async (params: Record<string, string | undefined>) => {
    const result = await requestBlob(
      `${adminPath('reports/export.csv')}${queryString(params)}`,
    );
    const url = URL.createObjectURL(result.blob);
    const anchor = document.createElement('a');
    anchor.href = url;
    anchor.download = result.filename;
    anchor.click();
    window.setTimeout(() => URL.revokeObjectURL(url), 1_000);
  },
};
