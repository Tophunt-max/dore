export const API_VERSION = 'v1';
export const API_PREFIX = `/api/${API_VERSION}`;

export const ORIVA_ROUTES = {
  home: '/',
  login: '/login',
  verifyOtp: '/verify-otp',
  winners: '/winners',
  tasks: '/tasks',
  member: '/member',
  account: '/account',
  products: '/products',
  orders: '/orders',
  wallet: '/wallet',
  payments: '/payments',
  addresses: '/addresses',
  prizes: '/prizes',
  referrals: '/referrals',
  finance: '/finance',
  support: '/support',
} as const;

export const NOTIFICATION_ROUTE_MAP = {
  'order.updated': '/orders',
  'payment.submitted': '/payments',
  'payment.completed': '/wallet',
  'payment.failed': '/wallet',
  'withdrawal.updated': '/wallet',
  'campaign.completed': '/winners',
  'prize.won': '/prizes',
  'task.completed': '/tasks',
  'referral.rewarded': '/referrals',
  'support.updated': '/support',
  broadcast: '/notifications',
} as const;

export const MAX_UPLOAD_BYTES = 10 * 1024 * 1024;
export const ACCESS_TOKEN_TTL_SECONDS = 15 * 60;
export const REFRESH_TOKEN_TTL_SECONDS = 30 * 24 * 60 * 60;
export const OTP_TTL_SECONDS = 5 * 60;
