import { createMiddleware } from 'hono/factory';
import { fail } from '../lib/http';
import { verifyAccessToken } from '../lib/jwt';
import type { AppEnv, Variables } from '../types';

export const requireAuth = createMiddleware<AppEnv>(async (c, next) => {
  const authorization = c.req.header('Authorization');
  if (!authorization?.startsWith('Bearer '))
    return fail(c, 401, 'UNAUTHORIZED', 'Authentication is required');
  let userId: string;
  try {
    userId = (await verifyAccessToken(c.env, authorization.slice(7))).sub;
  } catch {
    return fail(
      c,
      401,
      'INVALID_TOKEN',
      'The access token is invalid or expired',
    );
  }
  const user = await c.env.DB.prepare(
    'SELECT role,status FROM users WHERE id=?',
  )
    .bind(userId)
    .first<{ role: Variables['userRole']; status: string }>();
  if (!user || user.status !== 'active')
    return fail(c, 403, 'ACCOUNT_UNAVAILABLE', 'This account is not active');
  c.set('userId', userId);
  c.set('userRole', user.role);
  await next();
});

const financePrefixes = [
  '/api/v1/admin/dashboard',
  '/api/v1/admin/payment-methods',
  '/api/v1/admin/payments',
  '/api/v1/admin/withdrawals',
  '/api/v1/admin/payout-beneficiaries',
  '/api/v1/admin/reports',
  '/api/v1/admin/reconciliation',
  '/api/v1/admin/payment-settlement-outbox',
  '/api/v1/admin/outbox',
  '/api/v1/admin/audit-logs',
  '/api/v1/admin/support',
];
export const requireAdmin = createMiddleware<AppEnv>(async (c, next) => {
  const role = c.get('userRole');
  const path = c.req.path;
  if (role === 'admin') return next();
  if (
    role === 'finance' &&
    financePrefixes.some((prefix) => path.startsWith(prefix))
  )
    return next();
  if (
    role === 'support' &&
    (path.startsWith('/api/v1/admin/support') ||
      (c.req.method === 'GET' && path.startsWith('/api/v1/admin/dashboard')) ||
      (c.req.method === 'GET' && path.startsWith('/api/v1/admin/users')))
  )
    return next();
  return fail(
    c,
    403,
    'FORBIDDEN',
    'Your current staff role cannot access this operation',
  );
});
