export interface PaymentEvent {
  type: 'payment.approved';
  paymentId: string;
}

export interface NotificationEvent {
  notificationId: string;
}

export interface Bindings {
  DB: D1Database;
  ASSETS_BUCKET: R2Bucket;
  PAYMENT_PROOFS_BUCKET: R2Bucket;
  PAYMENT_EVENTS: Queue<PaymentEvent>;
  NOTIFICATION_EVENTS: Queue<NotificationEvent>;
  WALLET_COORDINATOR: DurableObjectNamespace;
  CAMPAIGN_COORDINATOR: DurableObjectNamespace;
  OTP_RATE_LIMITER: DurableObjectNamespace;
  APP_ENV: string;
  API_ORIGIN: string;
  PUBLIC_ASSET_BASE: string;
  OTP_PROVIDER_URL: string;
  OTP_DEV_MODE: string;
  JWT_SECRET: string;
  OTP_PEPPER: string;
  OTP_PROVIDER_API_KEY: string;
  EXPO_ACCESS_TOKEN: string;
  ADMIN_BOOTSTRAP_TOKEN: string;
  BENEFICIARY_ENCRYPTION_KEY: string;
}

export interface Variables {
  requestId: string;
  userId: string;
  userRole: 'user' | 'support' | 'finance' | 'admin';
}

export type AppEnv = {
  Bindings: Bindings;
  Variables: Variables;
};
