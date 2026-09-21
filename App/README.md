# Oriva Platform

A clean React Native and Cloudflare implementation of the Oriva experience, using the repository's authorized legacy ORich application assets as its visual reference and a new secure backend.

## Workspace

- `apps/mobile` — Expo Router React Native application
- `apps/worker` — Cloudflare Workers API using Hono, D1, R2, Queues, Cron Triggers, and Durable Objects
- `apps/admin` — React administration dashboard
- `packages/shared` — Oriva API schemas, domain types, money helpers, routes, and recovered design tokens
- `ORich_2.1.4_APKPure.xapk_Decompiler.com` — read-only reference artifact; never shipped as application source

## Design source

The canonical design reference is the embedded uni-app under:

`ORich_2.1.4_APKPure.xapk_Decompiler.com/resources/com.orich.orichrelease.apk/assets/apps/__UNI__F330A24/www/`

Only application assets from `www/static` are reused. The stale `www/hybrid/html` BigCash landing content and generic SDK/native resources are intentionally excluded.

## Requirements

- Node.js 22+
- npm 11+
- Expo/EAS account for device builds
- Cloudflare account with Workers, D1, R2, Queues, and Durable Objects enabled

## Commands

```bash
npm install
npm run dev:mobile
npm run dev:worker
npm run dev:admin
npm run typecheck
npm run build
```

## Environment setup

Copy each `.env.example` or `.dev.vars.example` file and supply environment-specific values. Secrets must be configured through EAS and `wrangler secret`; never commit them.

## Documentation

- `docs/SETUP.md` — Cloudflare, Expo, admin, and release setup
- `docs/MANUAL_PAYMENTS.md` — user submission and administrator verification workflow
- `docs/SCREEN_PARITY.md` — mapping for all 43 original screen roles

## Security model

- Access tokens are short-lived; rotating refresh tokens are stored hashed server-side and in Expo SecureStore on-device.
- Financial values use integer minor units.
- Wallet and campaign writes are serialized by Durable Objects and persisted as immutable D1 ledger entries.
- Payment state is finalized only after an authorized finance administrator verifies a unique bank/UPI reference; proof images remain private in R2.
- Uploads use restricted R2 keys and authenticated upload sessions.
- Remote force-installed WGT updates, permissive TLS, plaintext callbacks, and client-held signing secrets from the reference application are not reproduced.
