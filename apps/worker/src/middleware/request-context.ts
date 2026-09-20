import { createMiddleware } from 'hono/factory';
import type { AppEnv } from '../types';

export const requestContext = createMiddleware<AppEnv>(async (c, next) => {
  const requestId =
    c.req.header('X-Request-Id')?.slice(0, 100) || crypto.randomUUID();
  c.set('requestId', requestId);
  c.header('X-Request-Id', requestId);
  c.header('X-Content-Type-Options', 'nosniff');
  c.header('Referrer-Policy', 'no-referrer');
  c.header('Cache-Control', 'no-store');
  await next();
});
