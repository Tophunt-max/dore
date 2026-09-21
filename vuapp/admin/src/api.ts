const BASE = (import.meta.env.VITE_API_URL as string) || 'http://localhost:8787';

function token(): string {
  return localStorage.getItem('admin_token') || '';
}

export function setToken(t: string) {
  localStorage.setItem('admin_token', t);
}
export function clearToken() {
  localStorage.removeItem('admin_token');
}

export async function req<T = any>(path: string, method = 'GET', body?: any): Promise<T & { ok: boolean; error?: string }> {
  const headers: Record<string, string> = { 'Content-Type': 'application/json' };
  const t = token();
  if (t) headers.Authorization = `Bearer ${t}`;
  const res = await fetch(`${BASE}${path}`, {
    method,
    headers,
    body: body ? JSON.stringify(body) : undefined,
  });
  if (res.status === 401) {
    clearToken();
    if (location.hash !== '#/login') location.hash = '#/login';
  }
  try {
    return await res.json();
  } catch {
    return { ok: false, error: `http_${res.status}` } as any;
  }
}

export const adminApi = {
  base: BASE,
  login: (email: string, password: string) => req('/admin/login', 'POST', { email, password }),
  stats: () => req('/admin/stats'),
  users: (q = '') => req(`/admin/users${q ? '?q=' + encodeURIComponent(q) : ''}`),
  setUserStatus: (id: number, status: string) => req(`/admin/users/${id}/status`, 'POST', { status }),
  adjust: (id: number, amount_minor: number, note: string) => req(`/admin/users/${id}/adjust`, 'POST', { amount_minor, note }),
  goods: () => req('/admin/goods'),
  createGoods: (data: any) => req('/admin/goods', 'POST', data),
  updateGoods: (id: number, data: any) => req(`/admin/goods/${id}`, 'PUT', data),
  draw: (id: number) => req(`/admin/goods/${id}/draw`, 'POST'),
  recharges: (status = 'pending') => req(`/admin/recharges?status=${status}`),
  reviewRecharge: (id: number, action: string) => req(`/admin/recharges/${id}/review`, 'POST', { action }),
  withdrawals: (status = 'pending') => req(`/admin/withdrawals?status=${status}`),
  reviewWithdrawal: (id: number, action: string) => req(`/admin/withdrawals/${id}/review`, 'POST', { action }),
  proofUrl: (id: number) => `${BASE}/admin/proof/${id}`,
  createBanner: (data: any) => req('/admin/banners', 'POST', data),
  createNotice: (text: string) => req('/admin/notices', 'POST', { text }),
  savePage: (slug: string, title: string, bodyText: string) => req(`/admin/pages/${slug}`, 'PUT', { title, body: bodyText }),
  createTask: (data: any) => req('/admin/tasks', 'POST', data),
  createFinance: (data: any) => req('/admin/finance-products', 'POST', data),
};

export function fmt(minor?: number): string {
  return '₹' + ((minor ?? 0) / 100).toLocaleString('en-IN', { minimumFractionDigits: 2 });
}
