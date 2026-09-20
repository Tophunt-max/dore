import { Hono } from 'hono';
import { cors } from 'hono/cors';
import { authRoutes } from './routes/auth';
import { userRoutes } from './routes/users';
import { campaignRoutes } from './routes/campaigns';
import { orderRoutes } from './routes/orders';
import { walletRoutes } from './routes/wallet';
import { withdrawalRoutes } from './routes/withdrawals';
import { winnerRoutes } from './routes/winners';
import { pushRoutes } from './routes/push';
import { paymentRoutes } from './routes/payments';
import { uploadRoutes } from './routes/uploads';
import { adminRoutes } from './routes/admin';
import { featureRoutes } from './routes/features';
import { payoutRoutes } from './routes/payouts';
import { platformRoutes } from './routes/platform';
import { adminOperationsRoutes } from './routes/admin-operations';
import { adminCatalogRoutes } from './routes/admin-catalog';
import { requestContext } from './middleware/request-context';
import { requireAdmin, requireAuth } from './middleware/auth';
import { fail, ok } from './lib/http';
import { consumeNotificationEvents, consumePaymentEvents } from './queues';
import { runScheduledMaintenance } from './scheduled';
import type {
  AppEnv,
  Bindings,
  NotificationEvent,
  PaymentEvent,
} from './types';

export { CampaignCoordinator } from './durable-objects/campaign-coordinator';
export { OtpRateLimiter } from './durable-objects/otp-rate-limiter';
export { WalletCoordinator } from './durable-objects/wallet-coordinator';

const app = new Hono<AppEnv>();
app.use('*', requestContext);
app.use(
  '*',
  cors({
    origin: (origin, c) =>
      !origin || origin === c.env.API_ORIGIN ? origin : '',
    allowMethods: ['GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'OPTIONS'],
    allowHeaders: [
      'Authorization',
      'Content-Type',
      'X-Request-Id',
      'X-Upload-Id',
    ],
    maxAge: 86400,
  }),
);
app.get('/health', (c) =>
  ok(c, { service: 'oriva-api', environment: c.env.APP_ENV }),
);
app.route('/api/v1/auth', authRoutes);
app.route('/api/v1/campaigns', campaignRoutes);
app.route('/api/v1/winners', winnerRoutes);
app.use('/api/v1/*', requireAuth);
app.route('/api/v1/users', userRoutes);
app.route('/api/v1/orders', orderRoutes);
app.route('/api/v1/wallet', walletRoutes);
app.route('/api/v1/withdrawals', withdrawalRoutes);
app.route('/api/v1/payments', paymentRoutes);
app.route('/api/v1/push', pushRoutes);
app.route('/api/v1/uploads', uploadRoutes);
app.route('/api/v1/payout-beneficiaries', payoutRoutes);
app.route('/api/v1', featureRoutes);
app.route('/api/v1', platformRoutes);
app.use('/api/v1/admin/*', requireAdmin);
app.route('/api/v1/admin', adminRoutes);
app.route('/api/v1/admin', adminOperationsRoutes);
app.route('/api/v1/admin', adminCatalogRoutes);
app.notFound((c) => fail(c, 404, 'NOT_FOUND', 'Route not found'));
app.onError((error, c) => {
  console.error(
    JSON.stringify({
      requestId: c.get('requestId'),
      message: error.message,
      stack: c.env.APP_ENV === 'development' ? error.stack : undefined,
    }),
  );
  return fail(c, 500, 'INTERNAL_ERROR', 'An unexpected error occurred');
});

export default {
  fetch: app.fetch,
  async queue(
    batch: MessageBatch<PaymentEvent | NotificationEvent>,
    env: Bindings,
  ) {
    if (batch.queue === 'oriva-payment-events')
      await consumePaymentEvents(batch as MessageBatch<PaymentEvent>, env);
    else
      await consumeNotificationEvents(
        batch as MessageBatch<NotificationEvent>,
        env,
      );
  },
  async scheduled(
    controller: ScheduledController,
    env: Bindings,
    context: ExecutionContext,
  ) {
    context.waitUntil(runScheduledMaintenance(controller, env));
  },
};
