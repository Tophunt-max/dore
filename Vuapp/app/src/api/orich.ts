// ORich-named API layer. The original app called functions like Login(),
// SendVerify(), Index(), UserAccount() from its bundle. We keep the same names
// and call signatures so faithfully-ported pages read like the original, while
// mapping them onto the vuapp Cloudflare Worker backend.
import { api } from './request';

// --- auth / bootstrap ---
export const Index = () => api.get('/api/home').then((r) => ({ title: 'vuapp', ...r }));
export const SendVerify = (d: { mobile: string }) => api.post('/api/auth/sendverify', { phone: d.mobile });
export const Login = (d: { mobile: string; code: string; invitecode?: string; channel?: string; cid?: string }) =>
  api.post('/api/auth/login', { phone: d.mobile, code: d.code, invite: d.invitecode }).then((r) => ({
    ...r,
    token: r.access,
    isreg: 1,
  }));
export const Logout = () => api.post('/api/auth/logout', { refresh: uni.getStorageSync('refresh_token') });

// --- account ---
export const UserAccount = () => api.get('/api/account');
export const SetUsername = (d: { username: string }) => api.put('/api/account/username', d);
export const Funding = () => api.get('/api/wallet/transactions');
export const Team = () => api.get('/api/team');
export const TeamDetail = (d: { id: number | string }) => api.get(`/api/team/${d.id}`);
export const Referrals = () => api.get('/api/referrals');

// --- home / goods / orders ---
export const HomeData = () => api.get('/api/home');
export const GoodsList = (d?: { category?: string }) => api.get(`/api/goods${d?.category ? '?category=' + d.category : ''}`);
export const GoodsDetail = (d: { id: number | string }) => api.get(`/api/goods/${d.id}`);
export const AddOrder = (d: { goods_id: number; slots?: number; address_id?: number }) => api.post('/api/orders', d);
export const OrderList = (d?: { status?: string }) => api.get(`/api/orders${d?.status ? '?status=' + d.status : ''}`);
export const OrderDetail = (d: { id: number | string }) => api.get(`/api/orders/${d.id}`);
export const OrderRanking = (d: { id: number | string }) => api.get(`/api/orders/${d.id}/ranking`);

// --- addresses ---
export const AddressList = () => api.get('/api/addresses');
export const AddressAdd = (d: any) => api.post('/api/addresses', d);
export const AddressUpdate = (id: number, d: any) => api.put(`/api/addresses/${id}`, d);
export const AddressDelete = (id: number) => api.del(`/api/addresses/${id}`);

// --- wallet / payment ---
export const Wallet = () => api.get('/api/wallet');
export const Beneficiaries = () => api.get('/api/beneficiaries');
export const BeneficiaryAdd = (d: any) => api.post('/api/beneficiaries', d);
export const BeneficiaryDelete = (id: number) => api.del(`/api/beneficiaries/${id}`);
export const Recharge = (d: any) => api.post('/api/recharge', d);
export const RechargeRecords = () => api.get('/api/recharge/records');
export const Withdraw = (d: any) => api.post('/api/withdraw', d);
export const WithdrawRecords = () => api.get('/api/withdraw/records');
export const PaymentRecords = () => api.get('/api/payments');

// --- winners / prize / bask ---
export const Winners = () => api.get('/api/winners');
export const MyShares = () => api.get('/api/my-shares');
export const Prizes = () => api.get('/api/prizes');

// --- finance ---
export const FinanceList = () => api.get('/api/finance');
export const FinanceDetail = (d: { id: number | string }) => api.get(`/api/finance/${d.id}`);
export const FinanceOrder = (d: any) => api.post('/api/finance/order', d);
export const FinanceOrders = () => api.get('/api/finance/orders/mine');

// --- tasks / game ---
export const Tasks = () => api.get('/api/tasks');
export const TaskClaim = (id: number) => api.post(`/api/tasks/${id}/claim`);
export const GamePlay = (d: any) => api.post('/api/game/play', d);

// --- content ---
export const Banners = () => api.get('/api/banners');
export const Notices = () => api.get('/api/notices');
export const HelpArticles = () => api.get('/api/help');
export const HelpDetail = (topic: string) => api.get(`/api/help/${topic}`);
export const PageContent = (slug: string) => api.get(`/api/pages/${slug}`);
export const uploadUrl = `${api.base}/api/index/upload`;


// --- adapters mapping vuapp backend responses to the shapes ORich pages expect ---

// Winner list: { list:[{userheadimgurl,username,time,content,imagesurl,iconurl,delname,issue,dumid}], count }
export const WinnerList = (_d: { start: number; limit: number }) =>
  api.get('/api/winners').then((r: any) => {
    const list = (r.winners || []).map((w: any) => ({
      userheadimgurl: w.avatar || '/static/image/other.png',
      username: w.username || 'Lucky user',
      time: w.drawn_at ? new Date(w.drawn_at * 1000).toLocaleString() : '',
      content: `Won ${w.title} · No. ${w.winning_no || ''}`,
      imagesurl: w.image ? [w.image] : [],
      iconurl: w.image,
      delname: w.title,
      issue: 'Issue ' + (w.issue || ''),
      dumid: w.goods_id || w.id,
    }));
    return { list, count: list.length };
  });

// Account: maps /api/account -> ORich userInfo fields
export const AccountData = () =>
  api.get('/api/account').then((r: any) => {
    const u = r.user || {};
    const c = r.counts || {};
    return {
      status: 1,
      nickname: u.username || '-',
      mobile: u.phone || '-',
      headimgurl: u.avatar || '',
      money: ((u.balance_minor || 0) / 100).toFixed(2),
      money_bad: 0,
      finance_day_income: 0,
      finance_all_income: '0.00',
      finance_all_price: '0.00',
      today_cost: 0,
      return_rate: 0,
      return_amount: 0,
      return_income: 0,
      return_cap: 0,
      vip_img: '',
      wait: 0,
      confirm: 0,
      delivery: 0,
      receive: c.wins || 0,
    };
  });
