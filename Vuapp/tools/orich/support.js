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
 * Response adapters.
 *
 * The Worker stores integer minor units and its own field names; the reference
 * screens read major-unit strings and the reference's names. Adapting here keeps
 * the generated screens byte-comparable with the reference.
 */
const SHAPE_HELPERS = `
// --- response adapters ----------------------------------------------------
//
// The Worker returns its own field names and integer minor units; the ported
// screens read the reference's names and major-unit values. Convert here, never
// in a screen, so the pages stay comparable with the reference.

const major = (minor) => (minor == null ? 0 : Number(minor) / 100);
const nowSec = () => Math.floor(Date.now() / 1000);

/** A goods row -> the reference's group-buy item shape. */
const goodsItem = (g) => {
  const it = g || {};
  return {
    ...it,
    id: it.id,
    name: it.title,
    iconurl: it.image,
    imageurl: it.image,
    unit_price: major(it.price_minor),
    price: major(it.price_minor),
    allprice: major(it.market_price_minor),
    current_buy: it.filled_slots || 0,
    max_buy: it.total_slots || 0,
    issue: it.issue,
    // the reference used 1 = joinable, 2 = drawn, 3 = counting down
    has_lottery: it.status === 'active' ? 1 : 2,
    lottery: it.end_at,
    success: it.end_at,
    nowtime: nowSec(),
    countdown: '',
    // participant avatars / count: the reference showed who had joined. No
    // equivalent on the vuapp backend yet - empty arrays so the strip renders
    // blank instead of the template reading a length off undefined.
    userimgurl: [],
    usernumber: 0,

    // --- detail-screen fields ---
    galleryurl: it.gallery || (it.image ? [it.image] : []),
    description: it.description || '',
    current_price: major(it.price_minor),
    type: it.category || '',
    newid: it.id,
    normal: 1,
    nickname: '',
    // draw bookkeeping the reference displayed; no equivalent yet
    getnumber: 0,
    getnumberall: 0,
    getnumbercount: 0,
    lottery_time: it.end_at || 0,
    lottery_sn: '',
    lotteryallocation: [],
    fair_sn_local: '',
    faq_url: '',
    del_type: 0,
    auto_return: 0,
    max_return: 0,
  };
};

/** A finance product row -> the reference's plan shape. */
const financeItem = (p) => {
  const it = p || {};
  const filled = Number(it.filled_minor || 0);
  const cap = Number(it.max_minor || 0);
  return {
    ...it,
    name: it.title,
    // the card binds src to \`img\`; iconurl/imageurl are used elsewhere
    img: it.image,
    iconurl: it.image,
    imageurl: it.image,
    rate: (it.rate_bps || 0) / 100,
    rate_income: (it.rate_bps || 0) / 100,
    day: it.term_days,
    min: major(it.min_minor),
    max: major(it.max_minor),
    price: major(it.min_minor),
    amount: major(it.min_minor),
    max_buy: major(it.max_minor),
    // the progress bar is bound as \`100 * progress\`, so this must be a 0-1
    // fraction and never undefined (NaN collapses the bar)
    progress: cap > 0 ? Math.min(1, filled / cap) : 0,
    all_buy_num: it.orders_count || 0,
    countdown: '',
    description: it.description || '',
    // the countdown is countDown(end_in, server_time); the vuapp plans have no
    // end date, so 0 makes it resolve to 00:00:00, which the screen hides
    end_in: it.end_at || 0,
    server_time: nowSec(),
    // what a minimum subscription returns over the full term
    receive: Math.round(major(it.min_minor) * ((it.rate_bps || 0) / 10000) * (it.term_days || 0) * 100) / 100,
    surplus: major(it.max_minor),
    balance: 0,
    // subscriber avatars the reference showed; no equivalent yet
    userimgurl: [],
    usernumber: 0,
    user_headimg: '',
    user_name: '',
  };
};

/** The account payload -> the reference's user-info shape. */
const userShape = (r) => {
  const res = r || {};
  const u = res.user || res;
  const c = res.counts || {};
  return {
    ...u,
    name: u.username || '',
    nickname: u.username || '',
    mobile: u.phone || '',
    imgUrl: u.avatar || '',
    headimgurl: u.avatar || '',
    money: major(u.balance_minor),
    balance: major(u.balance_minor),
    invite_code: u.invite_code || '',
    status: 1,
    // 1 marks a brand-new user; it drives the home guide overlay
    new: (c.orders || 0) === 0 ? 1 : 0,
    order_count: c.orders || 0,
    win_count: c.wins || 0,
    team_count: c.team || 0,
    // balances the reference broke out separately; the vuapp wallet is a single
    // ledger, so the withdrawable amount is the balance and the rest are zero
    cashOut: major(u.balance_minor),
    today_cost: 0,
    finance_all_price: 0,
    finance_all_income: 0,
    finance_day_income: 0,
    return_amount: 0,
    return_cap: 0,
    return_income: 0,
    return_rate: 0,
    vip_img: '',
    vip_level: u.vip_level || 0,
  };
};

/** A winner row -> the reference's "latest winners" ticker shape. */
const winnerItem = (w) => {
  const it = w || {};
  return {
    ...it,
    nickname: it.nickname || it.username || it.phone_masked || '',
    headimgurl: it.avatar || it.image || '',
    name: it.goods_title || it.title || '',
  };
};

const listOf = (r, ...keys) => {
  const res = r || {};
  for (const k of keys) if (Array.isArray(res[k])) return res[k];
  return Array.isArray(res) ? res : [];
};
`;

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
  userAccount: `() => get('/api/account').then(userShape)`,
  UserInfo: `() => get('/api/account').then(userShape)`,
  AccountEdit: `(d = {}) => put('/api/account/username', { username: d.name || d.username })`,
  UserBalance: `() => get('/api/wallet').then((r) => ({ ...(r || {}), money: major((r || {}).balance_minor), balance: major((r || {}).balance_minor) }))`,
  userConsume: `() =>
    get('/api/wallet/transactions').then((r) => ({
      ...(r || {}),
      list: listOf(r, 'transactions', 'txns', 'list').map((x) => ({ ...x, price: major(x.amount_minor) })),
    }))`,
  userRebateList: `() =>
    get('/api/wallet/transactions').then((r) => ({
      ...(r || {}),
      list: listOf(r, 'transactions', 'txns', 'list').map((x) => ({ ...x, price: major(x.amount_minor) })),
    }))`,
  myTeam: `(d = {}) =>
    get('/api/team', d).then((r) => {
      const res = r || {};
      const members = listOf(res, 'members', 'team', 'list').map((m) => ({
        ...m,
        name: m.username || m.name || '',
        nickname: m.username || '',
        headimgurl: m.avatar || '',
        mobile: m.phone || '',
        money: major(m.balance_minor),
      }));
      const direct = members.filter((m) => (m.level || 1) === 1);
      return {
        ...res,
        list: members,
        count_1: res.direct_count != null ? res.direct_count : direct.length,
        count_2: res.indirect_count != null ? res.indirect_count : members.length - direct.length,
        myachievement: major(res.my_volume_minor),
        teamachievement: major(res.team_volume_minor),
        reward: major(res.reward_minor),
      };
    })`,
  userInviteTop: `() =>
    get('/api/referrals').then((r) => {
      const res = r || {};
      const list = listOf(res, 'referrals', 'list');
      return {
        ...res,
        list,
        invite: res.total != null ? res.total : list.length,
        reward: major(res.reward_minor),
        inviteurl: res.invite_url || res.inviteurl || '',
      };
    })`,
  userInviteList: `() =>
    get('/api/referrals').then((r) => ({ list: listOf(r, 'referrals', 'list') }))`,
  userShare: `() =>
    get('/api/my-shares').then((r) => ({ list: listOf(r, 'shares', 'orders', 'list').map(goodsItem) }))`,
  // --- addresses
  AddressList: `() => get('/api/addresses')`,
  AddAddress: `(d = {}) => post('/api/addresses', d)`,
  EditAddress: `(d = {}) => (d.id ? put('/api/addresses/' + d.id, d) : post('/api/addresses', d))`,
  DelAddress: `(d = {}) => (d.id ? del('/api/addresses/' + d.id) : Promise.resolve({}))`,
  EditAccount: `(d = {}) => (d.id ? put('/api/addresses/' + d.id, { ...d, is_default: 1 }) : Promise.resolve({}))`,
  itemDefaultAddr: `() => get('/api/addresses')`,

  // --- goods / lottery
  GoodsList: `(d = {}) =>
    get('/api/goods', { category: d.category }).then((r) => {
      const list = listOf(r, 'goods').map(goodsItem);
      return { list, count: list.length };
    })`,
  ActiveList: `() =>
    Promise.all([get('/api/home'), get('/api/winners').catch(() => ({}))]).then(([home, win]) => {
      const newbie = listOf(home, 'newbie');
      return {
        // the newbie deal card
        runoob: newbie.length ? goodsItem(newbie[0]) : {},
        // "latest winners" ticker
        new: { list: listOf(win, 'winners').map(winnerItem) },
        // the "hot picks" strip
        zhuanqu: { list: listOf(home, 'high').map(goodsItem) },
        // the "upcoming" strip
        upcoming: listOf(home, 'latest').map(goodsItem),
        // the reference drove a banner countdown from this; no equivalent yet
        activity: { time: 0, nowtime: nowSec() },
      };
    })`,
  DuobaoItem: `(d = {}) =>
    get('/api/goods', { category: d.kind || d.category }).then((r) => {
      const list = listOf(r, 'goods').map(goodsItem);
      return { list, count: list.length };
    })`,
  DuobaoSwiperItem: `() =>
    get('/api/home').then((r) => listOf(r, 'latest', 'high', 'newbie').map(goodsItem))`,
  GKind: `() =>
    get('/api/goods').then((r) => {
      const cats = [];
      for (const g of listOf(r, 'goods')) if (g.category && !cats.includes(g.category)) cats.push(g.category);
      return cats.map((c) => ({ label: c.charAt(0).toUpperCase() + c.slice(1), value: c }));
    })`,
  GoodsDetail: `(d = {}) =>
    (d.id ? get('/api/goods/' + d.id) : get('/api/goods')).then((r) => {
      const row = (r && r.goods) || r || {};
      return goodsItem(Array.isArray(row) ? row[0] : row);
    })`,
  GoodsHisDetail: `(d = {}) =>
    (d.id ? get('/api/goods/' + d.id) : get('/api/goods')).then((r) => {
      const row = (r && r.goods) || r || {};
      return goodsItem(Array.isArray(row) ? row[0] : row);
    })`,
  GoodsShareDetail: `(d = {}) =>
    (d.id ? get('/api/goods/' + d.id) : get('/api/goods')).then((r) => {
      const row = (r && r.goods) || r || {};
      return goodsItem(Array.isArray(row) ? row[0] : row);
    })`,
  GoodsBuyDetail: `(d = {}) => (d.id ? get('/api/goods/' + d.id) : get('/api/goods'))`,
  GetLottery: `(d = {}) => (d.id ? post('/api/goods/' + d.id + '/draw', d) : Promise.resolve({ list: [] }))`,
  // --- orders
  AddOrder: `(d = {}) => post('/api/orders', d)`,
  userOrder: `(d = {}) =>
    get('/api/orders', d).then((r) => {
      const list = listOf(r, 'orders').map(goodsItem);
      return { list, cardList: list, count: list.length };
    })`,
  orderDetail: `(d = {}) =>
    (d.id || d.dumid ? get('/api/orders/' + (d.id || d.dumid)) : get('/api/orders')).then((r) => {
      const row = (r && (r.order || r.orders)) || r || {};
      const it = goodsItem(Array.isArray(row) ? row[0] : row);
      return {
        ...it,
        dumid: it.id,
        // the detail screen reads addr.name / addr.mobile and walks logdetail
        addr: row.address || {},
        logdetail: listOf(row, 'logs', 'logdetail'),
        logcount: listOf(row, 'logs', 'logdetail').length,
        lucklottery: row.lucky_code || '',
        status: row.status || it.status || 1,
      };
    })`,
  itemEdit: `(d = {}) => post('/api/orders', d)`,
  GetResult: `(d = {}) => (d.id ? get('/api/orders/' + d.id + '/ranking') : Promise.resolve({ list: [] }))`,
  UserJoin: `(d = {}) => get('/api/orders', d)`,

  // --- winners / shares
  WinnerList: `(d = {}) =>
    get('/api/winners', d).then((r) => ({ list: listOf(r, 'winners').map(winnerItem) }))`,
  myWinner: `(d = {}) =>
    get('/api/my-shares', d).then((r) => ({ list: listOf(r, 'shares', 'orders').map(goodsItem) }))`,
  ItemShare: `(d = {}) => post('/api/orders', d)`,
  // --- finance
  financeList: `() =>
    get('/api/finance').then((r) => ({ list: listOf(r, 'products').map(financeItem) }))`,
  financeDetail: `(d = {}) =>
    (d.id ? get('/api/finance/' + d.id) : get('/api/finance')).then((r) => {
      const row = (r && (r.product || r.products)) || r || {};
      return financeItem(Array.isArray(row) ? row[0] : row);
    })`,
  financeDetailHistory: `(d = {}) =>
    (d.id ? get('/api/finance/' + d.id) : get('/api/finance')).then((r) => {
      const row = (r && (r.product || r.products)) || r || {};
      const it = financeItem(Array.isArray(row) ? row[0] : row);
      return { list: it.history || [] };
    })`,
  financeBuy: `(d = {}) => post('/api/finance/order', d)`,
  myFinanceList: `() =>
    get('/api/finance/orders/mine').then((r) => ({
      list: listOf(r, 'orders', 'products', 'list').map(financeItem),
    }))`,
  financeOrderRecent: `() =>
    get('/api/finance/orders/mine').then((r) => ({
      list: listOf(r, 'orders', 'products', 'list').map(financeItem),
    }))`,
  // --- tasks / vip
  taskList: `() =>
    get('/api/tasks').then((r) => ({
      ...(r || {}),
      list: listOf(r, 'tasks', 'list').map((t) => ({
        ...t,
        name: t.title || t.name || '',
        reward: major(t.reward_minor),
        status: t.claimed ? 2 : 1,
      })),
    }))`,
  taskReceive: `(d = {}) => (d.id ? post('/api/tasks/' + d.id + '/claim', d) : Promise.resolve({}))`,
  // --- wallet / payment
  bankList: `() =>
    get('/api/beneficiaries').then((r) => ({
      ...(r || {}),
      list: listOf(r, 'beneficiaries', 'list').map((b) => ({
        ...b,
        name: b.holder || b.name || '',
        bank_name: b.bank || b.bank_name || '',
        bank_no: b.account || b.bank_no || '',
      })),
    }))`,
  bankadd: `(d = {}) => post('/api/beneficiaries', d)`,
  bankDel: `(d = {}) => (d.id ? del('/api/beneficiaries/' + d.id) : Promise.resolve({}))`,
  rechargeList: `() =>
    get('/api/recharge/records').then((r) => ({
      ...(r || {}),
      list: listOf(r, 'records', 'recharges', 'list').map((x) => ({ ...x, price: major(x.amount_minor) })),
    }))`,
  cashList: `() =>
    get('/api/withdraw/records').then((r) => ({
      ...(r || {}),
      list: listOf(r, 'records', 'withdrawals', 'list').map((x) => ({ ...x, price: major(x.amount_minor) })),
    }))`,
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
  getTitle: `() =>
    get('/api/help').then((r) => {
      const groups = [];
      for (const a of listOf(r, 'articles')) {
        const topic = a.topic || 'general';
        let g = groups.find((x) => x.category === topic);
        if (!g) {
          g = { category: topic, image_url: '/static/image/icon_faq.png', chr: [] };
          groups.push(g);
        }
        g.chr.push({ que_id: topic + ':' + a.id, title: a.title });
      }
      return groups;
    })`,
  getAnswer: `(d = {}) => {
    const raw = String(d.id || d.topic || '');
    const [topic, id] = raw.includes(':') ? raw.split(':') : [raw, raw];
    return get('/api/help/' + encodeURIComponent(topic))
      .then((r) => {
        const list = listOf(r, 'articles');
        const found = list.find((a) => String(a.id) === String(id)) || list[0] || {};
        return { ...found, que_info: found.body || found.content || '', que_title: found.title || '' };
      })
      .catch(() => ({ que_info: '' }));
  }`,
};

/**
 * Reference endpoints with no counterpart on the vuapp backend. They resolve to
 * an empty result so the ported screens still render.
 */
/** Stubs whose callers read a specific key off the response. */
const STUB_SHAPES = {
  GetTime: '{ time: [] }',
  NumberMax: '{ max: 0 }',
  gPrice: '{ list: [] }',
  vipLevel: '{ list: [], user_level: 0, count: 0 }',
};

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
    SHAPE_HELPERS,
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
    lines.push(`const notImplemented = (name, shape) => {`);
    lines.push(`  if (!notImplemented.warned) notImplemented.warned = {};`);
    lines.push(`  if (!notImplemented.warned[name]) {`);
    lines.push(`    notImplemented.warned[name] = true;`);
    lines.push(`    console.warn('[api] ' + name + ' is not implemented on the vuapp backend');`);
    lines.push(`  }`);
    lines.push(`  return Promise.resolve(shape || {});`);
    lines.push(`};`);
    lines.push('');
    for (const name of stubs) {
      const why = UNMAPPED[name] ? ` (${UNMAPPED[name]})` : '';
      const info = surface.get(name);
      const shape = STUB_SHAPES[name] ? `, ${STUB_SHAPES[name]}` : '';
      lines.push(`/** ${info.method} ${info.path}${why} */`);
      lines.push(`export const ${name} = () => notImplemented('${name}'${shape});`);
    }
    lines.push('');
  }

  return { code: lines.join('\n'), mapped: mapped.length, stubs };
}

module.exports = { apiClient, apiOrich, MAP, UNMAPPED };
