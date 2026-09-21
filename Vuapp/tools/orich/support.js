'use strict';
/**
 * The non-ORich infrastructure of the generated app: the HTTP client that talks
 * to the vuapp Cloudflare Worker, and the mapping from the reference app's API
 * function names onto that backend.
 *
 * Keeping this in the generator (rather than as checked-in files the generator
 * must not clobber) means `node generate.js` always produces a complete,
 * buildable `src/` tree.
 */

/**
 * ORich function name -> vuapp Worker endpoint.
 *
 * `args` receives the single payload object the reference app passed, and
 * returns `[path, body]`. Functions with no equivalent on the vuapp backend are
 * listed in UNMAPPED so they resolve to an empty result instead of failing.
 */
const MAP = {
  // --- bootstrap / system
  //
  // The reference screens read very specific payload shapes. Where the vuapp
  // backend names things differently, adapt here rather than in the screen, so
  // the ported pages stay byte-comparable with the reference. `Index` is the
  // worked example: the home screen iterates `bannerlist` and reads
  // `system.whatsapp`, so those keys must exist or the screen stalls.
  Index: `() =>
    get('/api/home').then((r) => {
      const home = r || {};
      return {
        title: 'vuapp',
        bannerlist: (home.banners || []).map((b) => ({
          imageurl: b.image,
          type: b.type || '',
          url: b.link || '',
        })),
        navigationlist: home.navigation || [],
        system: home.system || { whatsapp: '', customercontent: '' },
        ...home,
      };
    })`,
  // App configuration, not home content. The reference endpoint returned the
  // app title, a task-centre flag, a promo image and the native version list;
  // the vuapp backend has no equivalent, so a minimal config is returned here.
  // (Serving home content instead would set unrelated keys and pop the promo
  // overlay on first load.)
  SystemInfo: `() =>
    Promise.resolve({
      title: 'vuapp',
      taskstatus: 1,
      image: '',
      version: [],
      tablist: [],
    })`,
  OrderNews: `() => get('/api/notices')`,
  RunoobDetail: `(d = {}) => get('/api/pages/' + (d.slug || d.id || 'about'))`,
  systemService: `() => get('/api/pages/support')`,
  chlWhatsApp: `() => get('/api/pages/support')`,

  // --- auth
  SendVerify: `(d = {}) => post('/api/auth/sendverify', { phone: d.mobile || d.phone })`,
  Login: `(d = {}) =>
    post('/api/auth/login', { phone: d.mobile || d.phone, code: d.code, invite: d.invitecode }).then((r) => {
      if (r && r.access) setTokens(r.access, r.refresh);
      return { ...r, token: r && r.access };
    })`,
  Logout: `() => post('/api/auth/logout', { refresh: readRefresh() }).then((r) => { clearTokens(); return r; })`,

  // --- account
  userAccount: `() => get('/api/account')`,
  UserInfo: `() => get('/api/account')`,
  AccountEdit: `(d = {}) => put('/api/account/username', { username: d.name || d.username })`,
  UserBalance: `() => get('/api/wallet')`,
  userConsume: `() => get('/api/wallet/transactions')`,
  userRebateList: `() => get('/api/wallet/transactions')`,
  myTeam: `() => get('/api/team')`,
  userInviteTop: `() => get('/api/referrals')`,
  userInviteList: `() => get('/api/referrals')`,
  userShare: `() => get('/api/my-shares')`,

  // --- addresses
  AddressList: `() => get('/api/addresses')`,
  AddAddress: `(d = {}) => post('/api/addresses', d)`,
  EditAddress: `(d = {}) => (d.id ? put('/api/addresses/' + d.id, d) : post('/api/addresses', d))`,
  DelAddress: `(d = {}) => (d.id ? del('/api/addresses/' + d.id) : Promise.resolve({}))`,
  EditAccount: `(d = {}) => (d.id ? put('/api/addresses/' + d.id, { ...d, is_default: 1 }) : Promise.resolve({}))`,
  itemDefaultAddr: `() => get('/api/addresses')`,

  // --- goods / lottery
  GoodsList: `(d = {}) => get('/api/goods', d)`,
  ActiveList: `(d = {}) => get('/api/goods', d)`,
  DuobaoItem: `(d = {}) => get('/api/goods', d)`,
  DuobaoSwiperItem: `(d = {}) => get('/api/goods', d)`,
  GKind: `() => get('/api/goods')`,
  GoodsDetail: `(d = {}) => (d.id ? get('/api/goods/' + d.id) : get('/api/goods'))`,
  GoodsHisDetail: `(d = {}) => (d.id ? get('/api/goods/' + d.id) : get('/api/goods'))`,
  GoodsShareDetail: `(d = {}) => (d.id ? get('/api/goods/' + d.id) : get('/api/goods'))`,
  GoodsBuyDetail: `(d = {}) => (d.id ? get('/api/goods/' + d.id) : get('/api/goods'))`,
  GetLottery: `(d = {}) => (d.id ? post('/api/goods/' + d.id + '/draw', d) : Promise.resolve({ list: [] }))`,
  // --- orders
  AddOrder: `(d = {}) => post('/api/orders', d)`,
  userOrder: `(d = {}) => get('/api/orders', d)`,
  orderDetail: `(d = {}) => (d.id ? get('/api/orders/' + d.id) : get('/api/orders'))`,
  itemEdit: `(d = {}) => post('/api/orders', d)`,
  GetResult: `(d = {}) => (d.id ? get('/api/orders/' + d.id + '/ranking') : Promise.resolve({ list: [] }))`,
  UserJoin: `(d = {}) => get('/api/orders', d)`,

  // --- winners / shares
  WinnerList: `(d = {}) => get('/api/winners', d)`,
  myWinner: `(d = {}) => get('/api/my-shares', d)`,
  ItemShare: `(d = {}) => post('/api/orders', d)`,
  // --- finance
  financeList: `() => get('/api/finance')`,
  financeDetail: `(d = {}) => (d.id ? get('/api/finance/' + d.id) : get('/api/finance'))`,
  financeDetailHistory: `(d = {}) => (d.id ? get('/api/finance/' + d.id) : get('/api/finance'))`,
  financeBuy: `(d = {}) => post('/api/finance/order', d)`,
  myFinanceList: `() => get('/api/finance/orders/mine')`,
  financeOrderRecent: `() => get('/api/finance/orders/mine')`,

  // --- tasks / vip
  taskList: `() => get('/api/tasks')`,
  taskReceive: `(d = {}) => (d.id ? post('/api/tasks/' + d.id + '/claim', d) : Promise.resolve({}))`,
  // --- wallet / payment
  bankList: `() => get('/api/beneficiaries')`,
  bankadd: `(d = {}) => post('/api/beneficiaries', d)`,
  bankDel: `(d = {}) => (d.id ? del('/api/beneficiaries/' + d.id) : Promise.resolve({}))`,
  rechargeList: `() => get('/api/recharge/records')`,
  cashList: `() => get('/api/withdraw/records')`,
  userWithdraw: `(d = {}) => post('/api/withdraw', d)`,
  addRechargePay: `(d = {}) => post('/api/recharge', d)`,
  getUserAfs: `() => get('/api/payments')`,

  // --- prizes / game
  getActivity: `() => get('/api/prizes')`,
  activityDetail: `(d = {}) => get('/api/prizes', d)`,
  joinActivity: `(d = {}) => post('/api/game/play', d)`,
  luckyNow: `() => get('/api/prizes')`,
  luckyBuy: `(d = {}) => post('/api/game/play', d)`,
  luckyList: `() => get('/api/prizes')`,
  luckyOrderList: `() => get('/api/orders', { kind: 'lucky' })`,

  // --- help
  getTitle: `() => get('/api/help')`,
  getAnswer: `(d = {}) => (d.id || d.topic ? get('/api/help/' + (d.id || d.topic)) : get('/api/help'))`,
};

/**
 * Reference endpoints with no counterpart on the vuapp backend. They resolve to
 * an empty result so the ported screens still render.
 */
const UNMAPPED = {
  GetTime: 'lottery countdown feed',
  NumberMax: 'per-user slot cap',
  gPrice: 'price table',
  bankEdit: 'beneficiary edit',
  addOrderPay: 'order payment intent',
  payStatus: 'payment status poll',
  editAfStatus: 'payment method toggle',
  vipLevel: 'vip tiers',
  vipBuy: 'vip purchase',
};

function apiClient() {
  return `// HTTP client for the vuapp Cloudflare Worker backend.
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
`;
}

/** The generated ORich-named client, covering every function the pages call. */
function apiOrich(surface) {
  const lines = [
    `// The reference app's API surface, mapped onto the vuapp Worker backend.`,
    `//`,
    `// Generated by tools/orich from the decompiled bundle: every name below is a`,
    `// function the ported pages actually call, so the screens keep reading like`,
    `// the original while the requests go to the vuapp API.`,
    ``,
    `import { get, post, put, del, setTokens, clearTokens, readRefresh } from './request';`,
    ``,
  ];

  const mapped = [];
  const stubs = [];
  for (const name of [...surface.keys()].sort()) {
    if (MAP[name]) mapped.push(name);
    else stubs.push(name);
  }

  for (const name of mapped) {
    const info = surface.get(name);
    lines.push(`/** ${info.method} ${info.path} */`);
    lines.push(`export const ${name} = ${MAP[name]};`);
    lines.push('');
  }

  if (stubs.length) {
    lines.push(`// --- not implemented on the vuapp backend -------------------------------`);
    lines.push(`//`);
    lines.push(`// These reference endpoints have no vuapp counterpart yet. They resolve to`);
    lines.push(`// an empty result so the screens that call them still render.`);
    lines.push(`// Resolves to an empty object rather than null: the screens read`);
    lines.push(`// properties straight off the response, so \`{}\` degrades to empty`);
    lines.push(`// state while null would throw.`);
    lines.push(`const notImplemented = (name) => {`);
    lines.push(`  if (!notImplemented.warned) notImplemented.warned = {};`);
    lines.push(`  if (!notImplemented.warned[name]) {`);
    lines.push(`    notImplemented.warned[name] = true;`);
    lines.push(`    console.warn('[api] ' + name + ' is not implemented on the vuapp backend');`);
    lines.push(`  }`);
    lines.push(`  return Promise.resolve({});`);
    lines.push(`};`);
    lines.push('');
    for (const name of stubs) {
      const why = UNMAPPED[name] ? ` (${UNMAPPED[name]})` : '';
      const info = surface.get(name);
      lines.push(`/** ${info.method} ${info.path}${why} */`);
      lines.push(`export const ${name} = () => notImplemented('${name}');`);
    }
    lines.push('');
  }

  return { code: lines.join('\n'), mapped: mapped.length, stubs };
}

module.exports = { apiClient, apiOrich, MAP, UNMAPPED };
