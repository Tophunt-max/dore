# vuapp deployment (Cloudflare)

All three targets are deployed manually with `wrangler`. Requires `CLOUDFLARE_API_TOKEN` and `CLOUDFLARE_ACCOUNT_ID` in the environment.

## 1. One-time Cloudflare resource creation

```bash
cd vuapp/api

# D1 database — copy the printed database_id into wrangler.toml
npx wrangler d1 create vuapp-db

# KV namespace — copy the printed id into wrangler.toml
npx wrangler kv namespace create VUAPP_KV

# R2 bucket
npx wrangler r2 bucket create vuapp-uploads

# Secrets
npx wrangler secret put JWT_SECRET
npx wrangler secret put ADMIN_BOOTSTRAP
```

Update `wrangler.toml` (`database_id`, KV `id`) and the `ALLOWED_ORIGINS` var with your Pages URLs.

## 2. Initialise the database schema

```bash
cd vuapp/api
npx wrangler d1 execute vuapp-db --remote --file=./src/db/schema.sql
npx wrangler d1 execute vuapp-db --remote --file=./src/db/seed.sql   # optional demo data
```

## 3. Deploy the API worker

```bash
cd vuapp/api
npx wrangler deploy
# -> https://vuapp-api.<account>.workers.dev
```

## 4. Deploy the user app (uni-app H5) to Cloudflare Pages

```bash
cd vuapp/app
VITE_API_URL=https://vuapp-api.<account>.workers.dev npm run build:h5
# uni-app H5 output:
OUT=dist/build/h5
cp _redirects "$OUT/_redirects"          # SPA fallback for the hash router
npx wrangler pages deploy "$OUT" --project-name vuapp-user --branch main
# -> https://vuapp-user.pages.dev
```

## 5. Deploy the admin panel to Cloudflare Pages

```bash
cd vuapp/admin
VITE_API_URL=https://vuapp-api.<account>.workers.dev npm run build
# public/_redirects is copied into dist automatically by Vite
npx wrangler pages deploy dist --project-name vuapp-admin --branch main
# -> https://vuapp-admin.pages.dev
```

## Notes

- Both Pages apps are SPAs and rely on the `_redirects` file (`/* /index.html 200`).
- After deploying Pages, add their URLs to the worker's `ALLOWED_ORIGINS` var and re-deploy the worker so CORS allows them.
