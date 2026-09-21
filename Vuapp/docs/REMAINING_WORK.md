# Remaining work

State after regenerating `app/src` from the ORich reference bundle
(`tools/orich`). What is **done**: all 43 screens and 41 components are generated
from the compiled artifacts — templates, verbatim scoped CSS, the reference i18n
catalogs, the static assets, the vuex store and the component behaviour. The H5
build is green and all 43 routes load with **no script errors**.

What is left is mostly **data plumbing**, not UI.

---

## 1. API response-shape adapters — the main gap

`api/orich.js` exposes all 78 function names the screens call and maps 69 of them
onto Worker endpoints. The *names* line up; the *payload shapes* mostly do not.
The reference screens read reference-shaped responses, so until each is adapted
the screen renders its empty state.

Adapt in `tools/orich/support.js` (the `MAP` table) and regenerate — **not** in
the screens, so the pages stay comparable with the reference.

`Index` is already done as the worked example:

```js
Index: () => get('/api/home').then((r) => ({
  title: 'vuapp',
  bannerlist: (r.banners || []).map((b) => ({ imageurl: b.image, type: b.type || '', url: b.link || '' })),
  navigationlist: r.navigation || [],
  system: r.system || { whatsapp: '', customercontent: '' },
  ...r,
}))
```

Still to adapt, in rough priority order:

| Function | Screen | Expects (reference shape) | Worker returns |
|---|---|---|---|
| `ActiveList` | home | `{ runoob: {...}, new: { list: [] } }` | `{ goods: [] }` |
| `DuobaoItem` / `DuobaoSwiperItem` | home carousels | item arrays with `imageurl`, `unit_price`, `current_buy`, `max_buy` | `{ goods: [] }` with `price_minor`, `filled_slots`, `total_slots` |
| `financeList` / `myFinanceList` | home, finance/* | `{ list: [] }` | `{ products: [] }` |
| `GoodsDetail` | goods/goods, goods/comfirm | detail object with `description`, `allprice`, `unit_price`, `issue` | `{ goods: {...} }` with `*_minor` fields |
| `userOrder` / `orderDetail` | order/*, bask | `{ list: [], cardList: [] }` | `{ orders: [] }` |
| `WinnerList` / `myWinner` | winner/* | `{ list: [] }` | `{ winners: [] }` |
| `taskList` / `vipLevel` | task/task, task/member | `{ list: [], user_level, count }` | `{ tasks: [] }` / not implemented |
| `userAccount` | account/* | `nickname`, `balance`, `headimgurl`, `new` | `{ user: {...} }` |
| `bankList` / `rechargeList` / `cashList` | payment/* | `{ list: [] }` | `{ beneficiaries / records: [] }` |

Note the unit convention: the Worker stores integer **minor units**
(`price_minor`), the reference screens print major-unit strings. Convert in the
adapter (`utils/money.ts` in the old tree did this) rather than in templates.

## 2. Endpoints with no backend counterpart

These 9 resolve to `{}` and log a one-time warning. They need Worker routes (or a
deliberate decision to drop the feature):

`GetTime`, `NumberMax`, `gPrice`, `bankEdit`, `addOrderPay`, `payStatus`,
`editAfStatus`, `vipLevel`, `vipBuy`

Feature impact: lottery countdown feed, per-user slot cap, price filter table,
beneficiary editing, the order payment intent / status poll, payment-method
toggle, and the VIP tier screen.

## 3. Verification not yet done

- **Authenticated flows.** The sweep ran unauthenticated, so `/api/tasks`,
  `/api/account`, wallet and order screens returned 401. Log in with a seeded
  user and re-check those screens with real data.
- **Interaction testing.** Only page loads were verified. Forms (address add,
  beneficiary add, recharge, withdraw), the number-box / popup / collapse
  components and the game bet flow have not been exercised.
- **Screens that render nothing without data** — expected, since the reference
  gates them the same way, but re-confirm once adapters land:
  `goods/comfirm`, `order/detail`, `finance/fdetail` (root `v-if` on loaded data),
  and `index/index`, `intro`, `payform/payform` (near-empty by design).

## 4. Smaller follow-ups

- `navbar`, `u-collapse`, `u-form` generate no `<style>` block. They appear to
  have no CSS of their own in the reference; worth a second check against the
  bundle before assuming so.
- The reference's own CSS typo (`ont-size:1rem`) is reproduced verbatim and shows
  up as an esbuild warning. Left as-is for fidelity — fix only if the warning is
  noisy enough to matter.
- One reference template repeats an attribute (`u-badge type="success" …
  type="error"`); the generator keeps the last value, matching what the original
  actually ran. No action needed, noted so it is not mistaken for a bug.
- `tools/orich` has no tests. The highest-value ones would be golden-file tests
  for `template.js` (a page's transpiled output) and `css.js` (rule counts per
  scope), so the scope-id and interop pitfalls listed in `tools/orich/README.md`
  cannot regress silently.

## 5. Deployment

Nothing deployed yet from this branch. Per the project workflow: merge to `main`,
then build and deploy all three targets manually with `wrangler`
(see [`DEPLOY.md`](../DEPLOY.md)). The user app must be built with
`VITE_API_URL` pointing at the live Worker, and needs `dist/_redirects`
containing `/*  /index.html  200` because it is an SPA.
