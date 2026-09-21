# vuapp

An independent group-buy / lottery, wallet, referral, tasks, finance and game app
built with the **same technology stack as the reference ORich application** —
**uni-app + Vue 3** — with a **brand-new Cloudflare backend** and a **Cloudflare
admin panel**.

> This project is completely separate from the `Oriva` React Native
> implementation in the repository root. It shares no code, database, or
> deployment with it.

## Workspaces

| Path | Stack | Purpose | Deploy target |
|------|-------|---------|---------------|
| `app/`   | uni-app + Vue 3 (H5) | User mobile/web app (43 screens) | Cloudflare Pages (`vuapp-user`) |
| `api/`   | Cloudflare Worker (Hono) + D1 + R2 + KV | REST backend | Cloudflare Worker (`vuapp-api`) |
| `admin/` | Vue 3 + Vite SPA | Admin panel | Cloudflare Pages (`vuapp-admin`) |
| `tools/orich/` | Node (dev only) | Regenerates `app/src` from the reference bundle | not deployed |

## The user app is generated, not hand-written

`app/src` is produced mechanically from the authorised decompiled ORich bundle
(`../ORich`) by `tools/orich`. Every screen's markup, styling, text and behaviour
comes from the reference artifacts rather than from an approximation:

| Part of the SFC | Source |
|---|---|
| `<template>` | the compiled render function — the service layer supplies literal classes and text, the view layer supplies static attributes and the literal text *between* interpolations (joined on the shared `_i` node id) |
| `<script>`   | the component options module (`data` / `computed` / `methods` / lifecycle), with its API calls rewired onto `api/orich.js` |
| `<style scoped>` | the verbatim stylesheet, including the `url(...)` asset references that a textual extraction loses |

Also generated: `pages.json`, `App.vue`, `main.js`, the vuex store, the three
i18n catalogs, `styles/global.css` (the reference's unscoped uView base), the
static assets, and `vendor/` (library internals kept verbatim behind a small
webpack-runtime shim).

### Regenerate

```bash
cd vuapp/tools/orich
npm install
node generate.js            # writes ../../app/src
```

The generator is deterministic and reports what it produced:

```
43 pages · 41 components · 42 vendor modules · 3 locales · 251 static files
78 reference API functions (69 mapped, 9 stubbed) · 4642 template lines · 2117 css rules
```

**Edit the generator, not `app/src`** — a regeneration overwrites the tree.

## Deliberate deviations from the reference

The reference targeted a native Android build on Vue 2; this app also runs on H5
under Vue 3, so a small, enumerated set of changes is applied during generation:

- **Vue 2 → Vue 3 APIs**: `beforeDestroy`/`destroyed` → `beforeUnmount`/`unmounted`,
  `this.$set(o,k,v)` → `o[k]=v`, `this.createIntersectionObserver(...)` →
  `uni.createIntersectionObserver(this, ...)`, `v-model` on a prop → `:value` +
  a forwarded `input` event.
- **`$on` / `$children` / self-`$emit`** (removed in Vue 3) are reimplemented in
  `utils/vue2-compat.js`, which uView's form components depend on.
- **mescroll** (`utils/mescroll-mixin.js`): pages call `this.mescroll.*` from
  `onShow`, which in Vue 3 runs before the child has mounted, so calls are
  queued and replayed once the instance exists.
- **Native APIs**: `plus.*` and the native analytics plugins go through
  `utils/native.js` — real APIs on a native build, working fallbacks on the web.

## What is intentionally NOT copied

- No remote force-installed WGT hot-update (those statements are dropped).
- No third-party analytics SDKs, and **no credential literals** — keys such as
  the reference's AppsFlyer `devKey` are scrubbed during generation.
- No permissive TLS / cleartext acceptance.
- No client-held request-signing secret.
- No PII / payment data in URLs (manual, verified recharge flow instead).
- Short-lived access tokens + rotating, hashed refresh tokens; the wallet is an
  immutable ledger in integer minor units.

## Known gap: API response shapes

`api/orich.js` exposes all 78 function names the ported screens call and maps 69
of them onto Worker endpoints; the remaining 9 have no counterpart and resolve to
an empty object (they log a one-time warning).

Mapping the *names* is done — mapping every *payload shape* is not. The reference
screens read reference-shaped responses (`Index()` iterating `bannerlist`,
`ActiveList()` returning `runoob`, …), while the Worker returns its own shapes.
`Index` is adapted as the worked example; other screens render their empty state
until the same is done for them. Adapt in `api/orich.js` (i.e. in the generator's
`tools/orich/support.js`) rather than in the screens, so the pages stay
comparable with the reference.

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
npm run dev:app

# 3) Admin panel
cp admin/.env.example admin/.env             # VITE_API_URL=http://localhost:8787
npm run dev:admin
```

First admin login: any email + the `ADMIN_BOOTSTRAP` password — the first admin
is created automatically.

## Deployment

See [`DEPLOY.md`](./DEPLOY.md). All three targets are deployed **manually** with
`wrangler`.
