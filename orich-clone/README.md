# ORich Clone (fresh build)

A clean, from-scratch clone of the **ORich** app (`com.orich.orichrelease`, v2.0.7) — a
group-buy / lucky-draw ("duobao") commerce app with wallet, finance, referrals and winners.

The original is a DCloud **uni-app (Vue)** hybrid Android app. This clone keeps the same
stack family and the app's own brand assets, but is a brand-new, readable codebase with a
fresh backend — no decompiled source is reused.

| Folder | Stack | What it is |
|--------|-------|------------|
| `app/`    | Vue 3 + Vite + vue-router + Pinia + vue-i18n | The user app (mobile-width H5) |
| `server/` | Node (dependency-free `http`) | Mock REST API with demo data |

## Run

```bash
# 1. backend  →  http://localhost:8787
cd server && node index.js

# 2. app (new terminal)  →  http://localhost:5188   (/api is proxied to :8787)
cd app && npm install && npm run dev
```

Sign in with any phone number: tap **Send code** and the demo backend shows the OTP
(a real backend would SMS it). Recharge the wallet, then join a group-buy or a finance plan.

## Screens

Home (hot picks + group-buy list + winners), Goods detail (join with N shares),
Winners (all / mine), Account (wallet, menu), Recharge, Orders, Finance (list + detail,
projected return), Invitation (invite code + team), Help. Bottom tabs: **Home / Winner /
Account**, matching the original's tab bar (`#17273a` / active `#de6436`). English + Hindi.

## API contract (matches the original)

`POST /api/index/<name>`, JSON body, response `{ code, msg, data }` where `code === 1` is
success. Auth uses a `token` header after `/index/login`. Endpoints mirror the originals:
`index`, `login`, `sendverify`, `duobaoitemlist`, `duobaoitemdetail`, `addorder`,
`winnerlist`, `mywinner`, `useraccount`, `userbalance`, `rechargelist`, `addrechargepay2`,
`ordernews`, `financeList`, `financeDetail`, `financeBuy`, `myteam`, `userinvitelist`, `help`.

## Design source

Brand colours, the three bottom-tab icons, home icons and the logo are the app's own
`assets/.../www/static` images (the repository owns the uploaded XAPK as its reference).
The original's remote hosts, keys and server behaviour are **not** reused; the backend is new.

## Not included / to do

- Payments are simulated (wallet top-up adds balance instantly); wire a real gateway for production.
- A few original screens (bask/share image composer, rich-text rules, address book) are stubbed via Help/menu.
- Not yet run on a device/emulator; verified via `vite build` and the mock API.
