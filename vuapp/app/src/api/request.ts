// Lightweight API client for the Cloudflare Worker backend.
// Uses uni.request so it works on H5, App, and mini-program targets.

const BASE = (import.meta.env.VITE_API_URL as string) || 'http://localhost:8787';

type Method = 'GET' | 'POST' | 'PUT' | 'DELETE';

function getToken(): string {
  try {
    return uni.getStorageSync('access_token') || '';
  } catch {
    return '';
  }
}

export function setTokens(access: string, refresh?: string) {
  uni.setStorageSync('access_token', access);
  if (refresh) uni.setStorageSync('refresh_token', refresh);
}

export function clearTokens() {
  uni.removeStorageSync('access_token');
  uni.removeStorageSync('refresh_token');
}

async function refreshAccess(): Promise<boolean> {
  const refresh = uni.getStorageSync('refresh_token');
  if (!refresh) return false;
  try {
    const res: any = await uni.request({
      url: `${BASE}/api/auth/refresh`,
      method: 'POST',
      data: { refresh },
      header: { 'Content-Type': 'application/json' },
    });
    if (res.statusCode === 200 && res.data?.ok) {
      setTokens(res.data.access, res.data.refresh);
      return true;
    }
  } catch {
    /* ignore */
  }
  return false;
}

export interface ApiResult<T = any> {
  ok: boolean;
  error?: string;
  [k: string]: any;
}

export async function request<T = any>(
  path: string,
  method: Method = 'GET',
  data?: any,
  _retry = true,
): Promise<ApiResult<T>> {
  const token = getToken();
  const header: Record<string, string> = { 'Content-Type': 'application/json' };
  if (token) header.Authorization = `Bearer ${token}`;

  const res: any = await uni.request({ url: `${BASE}${path}`, method, data, header });

  if (res.statusCode === 401 && _retry) {
    const refreshed = await refreshAccess();
    if (refreshed) return request<T>(path, method, data, false);
    clearTokens();
  }
  if (res.statusCode >= 200 && res.statusCode < 300) return res.data as ApiResult<T>;
  return { ok: false, error: res.data?.error || `http_${res.statusCode}`, ...res.data };
}

export const api = {
  get: <T = any>(p: string) => request<T>(p, 'GET'),
  post: <T = any>(p: string, d?: any) => request<T>(p, 'POST', d),
  put: <T = any>(p: string, d?: any) => request<T>(p, 'PUT', d),
  del: <T = any>(p: string) => request<T>(p, 'DELETE'),
  base: BASE,
};
