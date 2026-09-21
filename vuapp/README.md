# vuapp

An independent group-buy / lottery, wallet, referral, tasks, finance and game app built with the **same technology stack as the reference ORich application** — **uni-app + Vue 3** — with a **brand-new Cloudflare backend** and a **Cloudflare admin panel**.

> This project is completely separate from the `Oriva` React Native implementation in the repository root. It shares no code, database, or deployment with it.

## Workspaces

| Path | Stack | Purpose | Deploy target |
|------|-------|---------|---------------|
| `app/`   | uni-app + Vue 3 (H5) | User mobile/web app (43 screens) | Cloudflare Pages (`vuapp-user`) |
| `api/`   | Cloudflare Worker (Hono) + D1 + R2 + KV | REST backend | Cloudflare Worker (`vuapp-api`) |
| `admin/` | Vue 3 + Vite SPA | Admin panel | Cloudflare Pages (`vuapp-admin`) |

The user app reuses the original ORich static assets (`app/src/static`) for visual parity and keeps the original page paths (`pages/home/home`, …).

## Tech parity with ORich

- **uni-app** hybrid framework (H5 build; App/mini-program targets also possible from the same source).
- **Vue 3** + **Pinia** + **vue-i18n** (en / zh).
- 43 screens with the original route names and tabBar (`#17273a` / selected `#de6436`).

## What is intentionally NOT copied from ORich (security)

- No remote force-installed WGT hot-update.
- No permissive TLS / cleartext acceptance.
- No client-held request-signing secret.
- No PII / payment data in URLs (manual, verified recharge flow instead).
- Short-lived access tokens + rotating, hashed refresh tokens; wallet is an immutable ledger in integer minor units.

## Local development

```bash
cd vuapp
npm install

# 1) Backend (creates local D1, seeds demo data)
cp api/.dev.vars.example api/.dev.vars      # set JWT_SECRET + ADMIN_BOOTSTRAP
npm run db:init:local -w @vuapp/api
npm run db:seed:local -w @vuapp/api
npm run dev:api                              # http://localhost:8787

# 2) User app (uni-app H5)
cp app/.env.example app/.env                 # VITE_API_URL=http://localhost:8787
npm run dev:app                              # http://localhost:5173 (or shown port)

# 3) Admin panel
cp admin/.env.example admin/.env             # VITE_API_URL=http://localhost:8787
npm run dev:admin                            # http://localhost:5173
```

First admin login: use any email + the `ADMIN_BOOTSTRAP` password — the first admin is created automatically.

## Deployment

See [`DEPLOY.md`](./DEPLOY.md). All three targets are deployed **manually** with `wrangler`.
