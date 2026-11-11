'use strict';
/**
 * ORich-clone mock API. Dependency-free Node http server.
 *
 * Matches the original app's contract: endpoints live under /api/index/*, requests are
 * POST with a JSON (or form) body, and every response is { code, msg, data } where
 * code === 1 means success. Auth uses a bearer-style "token" header after login.
 *
 *   node server/index.js        -> http://localhost:8787
 */
const http = require('http');
const { products, winners, finances, rechargeOptions, freshUser, img } = require('./db');

const PORT = Number(process.env.PORT || 8787);
const sessions = Object.create(null); // token -> user
const otps = Object.create(null);     // phone -> code
const orders = [];                    // demo join/recharge/finance orders

const ok = (data = {}, msg = 'success') => ({ code: 1, msg, data });
const err = (msg = 'error', code = 0) => ({ code, msg, data: null });

function rupees(paise) {
  return (paise / 100).toFixed(2);
}

function productView(p) {
  const percent = Math.min(100, Math.round((p.joined / p.total) * 100));
  return { ...p, remaining: Math.max(0, p.total - p.joined), percent };
}

function userView(u) {
  return {
    phone: u.phone,
    nickname: u.nickname || ('ORich' + u.phone.slice(-4)),
    avatar: u.avatar,
    balance: rupees(u.balance),
    frozen: rupees(u.frozen),
    inviteCode: u.inviteCode,
    teamCount: u.teamCount,
  };
}

function authUser(req) {
  const token = req.headers['token'] || (req.headers['authorization'] || '').replace(/^Bearer\s+/i, '');
  return token && sessions[token] ? { token, user: sessions[token] } : null;
}

// ---- route handlers: each receives (body, ctx) and returns an envelope ----
const routes = {
  '/index/getsystem': () => ok({
    name: 'ORich',
    logo: '/static/logo.png',
    service: 'https://wa.me/910000000000',
    notice: 'Welcome to ORich — join group-buys from just ₹5 and win big!',
    tabBarColor: '#17273a',
    tabBarActive: '#de6436',
  }),

  '/index/gettitle': () => ok({ banners: [img('home/bg_homepage.png'), img('home/bg_Yellow.png')] }),

  '/index/index': () => ok({
    banners: [img('home/bg_homepage.png'), img('home/bg_Yellow.png')],
    notice: 'Lucky draw for iPhone 15 Pro Max closes soon — join now!',
    entries: [
      { key: 'recharge', label: 'Recharge', icon: img('home/icon_Recharge.png') },
      { key: 'invite', label: 'Invite', icon: img('home/icon_Invite.png') },
      { key: 'orders', label: 'My Orders', icon: img('home/icon_MyOrders.png') },
      { key: 'support', label: 'Support', icon: img('home/icon_Support.png') },
    ],
    hot: products.filter((p) => p.hot).map(productView),
    list: products.map(productView),
    winners: winners.slice(0, 5),
  }),

  '/index/duobaoitemlist': () => ok({ list: products.map(productView) }),
  '/index/duobaoitemlistnew': () => ok({ list: products.map(productView) }),

  '/index/duobaoitemdetail': (b) => {
    const p = products.find((x) => x.id === Number(b.id));
    return p ? ok({ item: productView(p), joinPrices: [1, 5, 10, 20, 50, 100] }) : err('Product not found');
  },

  '/index/winnerlist': () => ok({ list: winners }),

  '/index/sendverify': (b) => {
    if (!/^\d{6,15}$/.test(String(b.phone || ''))) return err('Enter a valid phone number');
    const code = String(Math.floor(1000 + Math.random() * 8999));
    otps[b.phone] = code;
    // Demo: the OTP is returned so the UI can show it; a real backend would SMS it.
    return ok({ sent: true, demoCode: code }, 'Verification code sent');
  },

  '/index/login': (b) => {
    const phone = String(b.phone || '');
    const code = String(b.code || '');
    if (!phone) return err('Phone is required');
    if (!otps[phone] || otps[phone] !== code) return err('Invalid verification code');
    delete otps[phone];
    const token = 'tok_' + Math.random().toString(36).slice(2) + Date.now().toString(36);
    const user = freshUser();
    user.phone = phone;
    if (b.invite) user.invitedBy = String(b.invite);
    sessions[token] = user;
    return ok({ token, user: userView(user) }, 'Logged in');
  },

  '/index/logout': (b, ctx) => {
    if (ctx.auth) delete sessions[ctx.auth.token];
    return ok({}, 'Logged out');
  },

  // ---- authenticated ----
  '/index/useraccount': (b, ctx) => ok({ user: userView(ctx.auth.user) }),
  '/index/userbalance': (b, ctx) => ok({ balance: rupees(ctx.auth.user.balance), frozen: rupees(ctx.auth.user.frozen) }),

  '/index/rechargelist': () => ok({ options: rechargeOptions }),

  '/index/addrechargepay2': (b, ctx) => {
    const amount = Math.round(Number(b.amount) * 100);
    if (!amount || amount < 100) return err('Minimum recharge is ₹1');
    ctx.auth.user.balance += amount;
    const order = { id: orders.length + 1, type: 'recharge', amount: rupees(amount), status: 'success', date: new Date().toISOString().slice(0, 10) };
    orders.push(order);
    return ok({ order, balance: rupees(ctx.auth.user.balance) }, 'Recharge successful');
  },

  '/index/addorder': (b, ctx) => {
    const p = products.find((x) => x.id === Number(b.id));
    if (!p) return err('Product not found');
    const shares = Math.max(1, Number(b.shares) || 1);
    const cost = shares * p.price * 100;
    if (ctx.auth.user.balance < cost) return err('Insufficient balance, please recharge');
    ctx.auth.user.balance -= cost;
    p.joined = Math.min(p.total, p.joined + shares);
    const order = { id: orders.length + 1, type: 'join', product: p.title, shares, amount: rupees(cost), status: 'ongoing', date: new Date().toISOString().slice(0, 10) };
    orders.push(order);
    return ok({ order, balance: rupees(ctx.auth.user.balance) }, 'Joined successfully');
  },

  '/index/ordernews': (b, ctx) => ok({ list: orders.filter((o) => o.type === 'join') }),
  '/index/userjoin': (b, ctx) => ok({ list: orders.filter((o) => o.type === 'join') }),
  '/index/mywinner': (b, ctx) => ok({ list: winners.slice(0, 2) }),
  '/index/usershare': (b, ctx) => ok({ list: winners.slice(0, 2) }),

  '/index/financeList': () => ok({ list: finances }),
  '/index/financeDetail': (b) => {
    const f = finances.find((x) => x.id === Number(b.id));
    return f ? ok({ item: f }) : err('Plan not found');
  },
  '/index/financeBuy': (b, ctx) => {
    const f = finances.find((x) => x.id === Number(b.id));
    if (!f) return err('Plan not found');
    const amount = Math.round(Number(b.amount) * 100);
    if (amount < f.min * 100) return err('Below minimum investment');
    if (ctx.auth.user.balance < amount) return err('Insufficient balance');
    ctx.auth.user.balance -= amount;
    const order = { id: orders.length + 1, type: 'finance', product: f.name, amount: rupees(amount), status: 'active', date: new Date().toISOString().slice(0, 10) };
    orders.push(order);
    return ok({ order, balance: rupees(ctx.auth.user.balance) }, 'Investment confirmed');
  },
  '/index/myFinanceList': (b, ctx) => ok({ list: orders.filter((o) => o.type === 'finance') }),

  '/index/myteam': (b, ctx) => ok({
    count: ctx.auth.user.teamCount,
    inviteCode: ctx.auth.user.inviteCode,
    levels: [{ level: 1, members: 0, commission: '0.00' }, { level: 2, members: 0, commission: '0.00' }],
    list: [],
  }),
  '/index/userinvitelist': (b, ctx) => ok({ inviteCode: ctx.auth.user.inviteCode, list: [] }),

  '/index/systemservice': () => ok({ whatsapp: 'https://wa.me/910000000000', email: 'support@orich.example' }),
  '/index/help': () => ok({
    list: [
      { id: 1, q: 'How does a group-buy work?', a: 'Buy one or more shares of a product. When all shares sell, a winner is drawn and receives the product.' },
      { id: 2, q: 'How do I recharge?', a: 'Open Account → Wallet → Recharge and pick an amount.' },
      { id: 3, q: 'How do referrals pay out?', a: 'Share your invite code; you earn commission when invitees join.' },
    ],
  }),
};

const AUTH_REQUIRED = new Set([
  '/index/useraccount', '/index/userbalance', '/index/addrechargepay2', '/index/addorder',
  '/index/ordernews', '/index/userjoin', '/index/mywinner', '/index/usershare', '/index/logout',
  '/index/financeBuy', '/index/myFinanceList', '/index/myteam', '/index/userinvitelist',
]);

function send(res, status, payload) {
  const body = JSON.stringify(payload);
  res.writeHead(status, {
    'Content-Type': 'application/json; charset=utf-8',
    'Content-Length': Buffer.byteLength(body),
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Headers': 'Content-Type, token, Authorization',
    'Access-Control-Allow-Methods': 'GET, POST, OPTIONS',
    'Cache-Control': 'no-store',
  });
  res.end(body);
}

function readBody(req) {
  return new Promise((resolve) => {
    let raw = '';
    req.on('data', (c) => { raw += c; if (raw.length > 1e6) req.destroy(); });
    req.on('end', () => {
      if (!raw) return resolve({});
      try { resolve(JSON.parse(raw)); }
      catch { resolve(Object.fromEntries(new URLSearchParams(raw))); }
    });
  });
}

const server = http.createServer(async (req, res) => {
  if (req.method === 'OPTIONS') return send(res, 204, {});
  const url = new URL(req.url, `http://${req.headers.host || 'localhost'}`);
  const path = url.pathname.replace(/^\/api/, '');
  const handler = routes[path];
  if (!handler) return send(res, 404, err('Not found'));

  const body = { ...Object.fromEntries(url.searchParams), ...(await readBody(req)) };
  const auth = authUser(req);
  if (AUTH_REQUIRED.has(path) && !auth) return send(res, 200, err('Please sign in', 401));

  try {
    send(res, 200, handler(body, { auth }));
  } catch (e) {
    send(res, 200, err('Server error: ' + e.message));
  }
});

server.listen(PORT, () => {
  console.log(`ORich-clone API → http://localhost:${PORT}`);
  console.log(`  e.g. POST http://localhost:${PORT}/api/index/index`);
});
