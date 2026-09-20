# Deployment (manual only)

Deployments to Cloudflare are done **manually**. Do **not** rely on auto-deploy
from a git push. The workflow is:

1. Open a GitHub PR and merge it into `main`.
2. From `main`, build and deploy all three targets manually (below).

Requires env vars: `CLOUDFLARE_API_TOKEN`, `CLOUDFLARE_ACCOUNT_ID`.

Live API (used as the build-time API URL for both web apps):
`https://oriva-api.mohantasumanta660.workers.dev`

## 1. API worker (`oriva-api`)

```bash
cd apps/worker
npx wrangler deploy
```

## 2. User web app → `oriva-user.pages.dev`

The user app is the Expo app exported to web.

```bash
cd apps/mobile
rm -rf dist
EXPO_PUBLIC_API_URL="https://oriva-api.mohantasumanta660.workers.dev" \
  npx expo export --platform web
# SPA deep-link fallback (routes like /products/<id>):
printf '/*    /index.html   200\n' > dist/_redirects
npx wrangler pages deploy dist --project-name oriva-user --branch main
```

## 3. Admin web app → `oriva-admin.pages.dev`

```bash
# from repo root
VITE_API_URL="https://oriva-api.mohantasumanta660.workers.dev" \
  npm run build -w @oriva/admin
printf '/*    /index.html   200\n' > apps/admin/dist/_redirects
cd apps/admin
npx wrangler pages deploy dist --project-name oriva-admin --branch main
```

## Notes

- Both Pages projects use `main` as the production branch, so
  `--branch main` publishes to production.
- Both web apps are single-page apps; the `dist/_redirects` rule
  (`/*  /index.html  200`) is required or deep links 404.
- The worker `vars` currently use `APP_ENV=local` and `OTP_DEV_MODE=true`
  (fixed dev OTP `123456`) for testing without an SMS provider. Set
  `APP_ENV=production` and `OTP_DEV_MODE=false`, and configure a real OTP
  provider, before handling real users/funds.
- After deploying, verify: `GET /health` on the worker, and that
  `https://oriva-user.pages.dev/products/<campaignId>` returns HTTP 200.
