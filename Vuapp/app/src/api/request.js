// HTTP client for the vuapp Cloudflare Worker backend.
//
// Uses uni.request so the same code runs on H5, App and mini-program targets.

const BASE = (import.meta.env && import.meta.env.VITE_API_URL) || 'http://localhost:8787';

const ACCESS_KEY = 'access_token';
const REFRESH_KEY = 'refresh_token';

export function setTokens(access, refresh) {
  if (access) uni.setStorageSync(ACCESS_KEY, access);
  if (refresh) uni.setStorageSync(REFRESH_KEY, refresh);
}

export function clearTokens() {
  uni.removeStorageSync(ACCESS_KEY);
  uni.removeStorageSync(REFRESH_KEY);
}

export function readAccess() {
  try {
    return uni.getStorageSync(ACCESS_KEY) || '';
  } catch (e) {
    return '';
  }
}

export function readRefresh() {
  try {
    return uni.getStorageSync(REFRESH_KEY) || '';
  } catch (e) {
    return '';
  }
}

function send(method, path, data, retry) {
  const token = readAccess();
  const header = { 'Content-Type': 'application/json' };
  if (token) header.Authorization = 'Bearer ' + token;

  return new Promise((resolve, reject) => {
    uni.request({
      url: BASE + path,
      method,
      data,
      header,
      success: (res) => {
        const body = res.data;
        if (res.statusCode === 401 && !retry && readRefresh()) {
          refresh()
            .then(() => resolve(send(method, path, data, true)))
            .catch(reject);
          return;
        }
        if (res.statusCode >= 200 && res.statusCode < 300) {
          // the worker wraps payloads as { ok: true, data } - unwrap for callers
          if (body && typeof body === 'object' && 'data' in body && 'ok' in body) resolve(body.data);
          else resolve(body);
          return;
        }
        reject((body && (body.error || body.message)) || 'request failed: ' + res.statusCode);
      },
      fail: (err) => reject(err),
    });
  });
}

function refresh() {
  return new Promise((resolve, reject) => {
    uni.request({
      url: BASE + '/api/auth/refresh',
      method: 'POST',
      data: { refresh: readRefresh() },
      header: { 'Content-Type': 'application/json' },
      success: (res) => {
        const body = res.data || {};
        const payload = body.data || body;
        if (res.statusCode === 200 && payload && payload.access) {
          setTokens(payload.access, payload.refresh);
          resolve(payload);
        } else {
          clearTokens();
          reject('refresh failed');
        }
      },
      fail: () => {
        clearTokens();
        reject('refresh failed');
      },
    });
  });
}

function query(path, data) {
  if (!data) return path;
  const parts = Object.keys(data)
    .filter((k) => data[k] !== undefined && data[k] !== null && data[k] !== '')
    .map((k) => encodeURIComponent(k) + '=' + encodeURIComponent(data[k]));
  if (!parts.length) return path;
  return path + (path.includes('?') ? '&' : '?') + parts.join('&');
}

export const get = (path, data) => send('GET', query(path, data));
export const post = (path, data) => send('POST', path, data);
export const put = (path, data) => send('PUT', path, data);
export const del = (path, data) => send('DELETE', path, data);
