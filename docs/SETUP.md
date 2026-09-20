# Oriva Platform Setup

## 1. Install

```bash
nvm use 22
npm install
```

## 2. Provision Cloudflare resources

Authenticate Wrangler and create the production resources:

```bash
npx wrangler login
npx wrangler d1 create oriva-db
npx wrangler r2 bucket create oriva-assets
npx wrangler r2 bucket create oriva-payment-proofs
npx wrangler queues create oriva-payment-events
npx wrangler queues create oriva-notification-events
```

Put the returned D1 database ID in `apps/worker/wrangler.jsonc`. Replace the example API origin, public asset domain, and OTP provider URL with production values.

Configure secrets with strong random values:

```bash
cd apps/worker
npx wrangler secret put JWT_SECRET
npx wrangler secret put OTP_PEPPER
npx wrangler secret put OTP_PROVIDER_API_KEY
npx wrangler secret put BENEFICIARY_ENCRYPTION_KEY
npx wrangler secret put EXPO_ACCESS_TOKEN
npx wrangler secret put ADMIN_BOOTSTRAP_TOKEN
```

Set `OTP_DEV_MODE` to `false` before deploying production.

Apply the schema and deploy:

```bash
npm run db:migrate:remote
npm run deploy
```

## 3. Local Worker

Copy `apps/worker/.dev.vars.example` to `apps/worker/.dev.vars` and replace every placeholder. The committed development configuration uses OTP `123456`; it must never be enabled in production.

```bash
npm run db:migrate:local -w @oriva/worker
npm run dev:worker
```

## 4. Bootstrap an administrator

1. Register a placeholder operations account through the OTP flow.
2. Promote it directly in D1 using the real authorized phone number in place of the placeholder:

```bash
npx wrangler d1 execute oriva-db --remote \
  --command "UPDATE users SET role = 'admin' WHERE phone_e164 = '+910000000000';"
```

Use separate `support`, `finance`, and `admin` accounts in production. Do not share administrator sessions.

## 5. Configure the admin app

Copy `apps/admin/.env.example` to `apps/admin/.env` and set the deployed Worker URL. Set the same admin origin in the Worker `API_ORIGIN` variable.

```bash
npm run build -w @oriva/admin
```

Deploy `apps/admin/dist` to Cloudflare Pages.

## 6. Configure Expo

Copy `apps/mobile/.env.example` to `apps/mobile/.env` and set the deployed Worker URL. Create an EAS project and put its project ID in `EXPO_PUBLIC_EAS_PROJECT_ID`.

```bash
cd apps/mobile
npx eas init
npx eas build --profile development --platform android
```

The mobile app imports the authorized legacy ORich images and Roboto files directly from the repository artifact tree for the Oriva visual system. Keep that tree available during EAS builds or move the cleared assets into a dedicated package before separating repositories.

## 7. External services still requiring credentials/contracts

- Production OTP/SMS provider and approved message template
- Manual bank/UPI accounts configured and verified by finance administrators
- Private `oriva-payment-proofs` R2 bucket retention and access policy
- R2 public/custom domain
- Expo/EAS project and push access token
- Email/support destination
- Privacy policy and terms URLs
- KYC provider if withdrawals require identity verification
- Jurisdiction-specific approvals for money, prize, lottery, or finance features

## 8. Release gates

Before handling real funds:

1. Configure real bank/UPI payment methods in the admin console and validate the approval/rejection reconciliation process.
2. Add KYC, beneficiary verification, withdrawal settlement/reversal, and reconciliation workflows.
3. Implement and independently review the auditable draw algorithm.
4. Run authorization, manual-reference duplication, concurrency, upload, and mobile security assessments.
5. Configure logs, alerts, D1 backups/exports, R2 lifecycle rules, and incident response.
6. Verify rights for every reused image, portrait, font, and payment trademark.
