import { Hono } from 'hono';
import { cors } from 'hono/cors';
import type { Env } from './lib';
import auth from './routes/auth';
import shop from './routes/shop';
import wallet from './routes/wallet';
import account from './routes/account';
import misc from './routes/misc';
import admin from './routes/admin';

const app = new Hono<{ Bindings: Env }>();

// CORS: reflect only allowlisted origins.
app.use('*', async (c, next) => {
  const allowed = (c.env.ALLOWED_ORIGINS || '').split(',').map((s) => s.trim()).filter(Boolean);
  return cors({
    origin: (origin) => (allowed.includes(origin) ? origin : allowed[0] || ''),
    allowMethods: ['GET', 'POST', 'PUT', 'DELETE', 'OPTIONS'],
    allowHeaders: ['Content-Type', 'Authorization'],
    maxAge: 86400,
  })(c, next);
});

app.get('/', (c) => c.json({ ok: true, name: c.env.APP_NAME || 'vuapp', service: 'vuapp-api' }));
app.get('/health', (c) => c.json({ ok: true, ts: Date.now() }));

// Public + user API under /api
const api = new Hono<{ Bindings: Env }>();
api.route('/auth', auth);
api.route('/', shop);
api.route('/', wallet);
api.route('/', account);
api.route('/', misc);
app.route('/api', api);

// Admin API under /admin
app.route('/admin', admin);

app.notFound((c) => c.json({ ok: false, error: 'not_found' }, 404));
app.onError((err, c) => {
  console.error(err);
  return c.json({ ok: false, error: 'server_error' }, 500);
});

export default app;
