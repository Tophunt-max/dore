# Remaining work

`app/src` is generated from the ORich reference bundle by `tools/orich` — all 43
screens and 41 components, with templates, verbatim scoped CSS, the reference
i18n catalogs, the static assets, the vuex store and the component behaviour.

**Current state:** all 43 routes walked in a headless browser at 390×844 against
the deployed worker, **signed in**, with real query parameters where a screen
needs them — **0 console errors, 0 broken images, no NaN/undefined text**.

Live: https://vuapp-user.pages.dev · API: https://vuapp-api.mohantasumanta660.workers.dev

---

## 0. Investigated and **not** defects

Things that look wrong but measure correct against the reference. Recorded so
they are not "fixed" into a regression later.

| Observation | Finding |
|---|---|
| Banner slider appears to show two slides side by side | It doesn't. Sampling the swiper transform once a second: rests at `0` (slide offsets 7/390), passes `-316` mid-transition, rests at `-383` (offsets -377/7). Screenshots catch the 500 ms autoplay transition. |
| Purple band under the finance card | That section's own `bg_Finance.png`. `elementFromPoint` at the bottom returns `uni-view.finance` itself, not a child, and the geometry matches the reference exactly (378rpx section = 183px, 214rpx card = 103px). |
| Finance card looks short / next card peeks | Measured against the reference CSS: 296px card in a 360px strip, 84px thumbnail, `scrollLeft: 0`. The peek is the intended carousel; the card is short only because the demo data has no subscriber rows or funding progress. |
| `NaN` in the price on `goods/comfirm` | Only when opened directly without `?num=`. Reached normally (`?id=4&num=1`) it renders `₹6999 / ₹10 / ₹10.00` — the reference is the same, the screen is only reachable from a goods page. |
| `index/index`, `intro`, `payform/payform` near-empty | Near-empty in the reference too (its `index/index` spec is ~530 bytes). |
| `order/detail` empty | Root `v-if="cardList.length"` — gated on loaded data, as in the reference. |
| Participant avatars / share poster have no `src` | The backend has no participant data, so the mappers supply empty arrays deliberately. |

## 0b. Traps to remember when changing the generator

Each of these caused a real, wide-reaching bug. They all come from one fact: a
component's **service half and view half are separate compilations**.

- Different `data-v-*` scope ids — the stylesheet is filed under the **view** one.
  Missing this left **all 41 components unstyled**.
- Different render module ids — static attributes survive only in the view
  render. Missing this left **every `<image>` without a `src`**.
- Different webpack require aliases (`s` in app-service.js, `e` in app-view.js).
  Hardcoding `s(` silently resolved nothing.

Separately: vnode data can be wrapped in the `_b`/`_g` spread helpers, so looking
for "the first object argument" finds a *call* and **drops every prop on the
element** — this broke the navbar title and back arrow on 16 screens.

`tools/orich/README.md` has the full list with the reasoning.

---

## 1. Response-shape adapters — largely done

The screens read the reference payload shapes; the Worker returns its own field
names and integer minor units. Adapt in `tools/orich/support.js` (the `MAP` table
and the mappers above it), **never in a screen**, so the pages stay comparable
with the reference.

Mapped so far: `Index`, `ActiveList`, `GKind`, `DuobaoItem`, `DuobaoSwiperItem`,
`GoodsList`, `GoodsDetail`, `GoodsHisDetail`, `GoodsShareDetail`, `financeList`,
`financeDetail`, `financeDetailHistory`, `financeOrderRecent`, `myFinanceList`,
`WinnerList`, `myWinner`, `userShare`, `getTitle`, `getAnswer`, `userAccount`,
`UserInfo`, `UserBalance`, `myTeam`, `userInviteTop`, `userInviteList`,
`userOrder`, `orderDetail`, `taskList`, `bankList`, `rechargeList`, `cashList`,
`userConsume`, `userRebateList`.

Shared mappers: `goodsItem`, `financeItem`, `winnerItem`, `userShape`.

Still returning the raw payload (no screen currently shows wrong data because of
them, but they should be mapped before those flows are exercised):
`AddOrder`, `itemEdit`, `ItemShare`, `AddAddress`, `EditAddress`, `DelAddress`,
`EditAccount`, `itemDefaultAddr`, `bankadd`, `userWithdraw`, `addRechargePay`,
`financeBuy`, `taskReceive`, `GetLottery`, `joinActivity`, `luckyBuy`,
`getActivity`, `activityDetail`, `luckyNow`, `luckyList`, `luckyOrderList`,
`OrderNews`, `RunoobDetail`, `systemService`, `chlWhatsApp`, `GoodsBuyDetail`,
`UserJoin`, `AccountEdit`, `SendVerify`, `Login`, `Logout`, `getUserAfs`.

## 2. Endpoints with no backend counterpart

These 9 resolve to an empty (or shaped) result and log a one-time warning. They
need Worker routes, or a decision to drop the feature:

`GetTime`, `NumberMax`, `gPrice`, `bankEdit`, `addOrderPay`, `payStatus`,
`editAfStatus`, `vipLevel`, `vipBuy`

Feature impact: lottery countdown feed, per-user slot cap, price filter table,
beneficiary editing, the order payment intent / status poll, payment-method
toggle, and the VIP tier screen.

## 3. Thin seed data

Several screens correctly show their empty state because the tables are empty,
not because anything is broken. Seed these to exercise the screens properly:

- `winners` — `winner/winner` shows "No data", and the home "latest winners"
  ticker stays hidden
- `orders` — `order/record`, `order/detail`, `bask`, `winner/myShare`
- `beneficiaries`, `recharges`, `withdrawals` — the payment screens
- finance `orders` — `finance/order` shows all zeroes
- goods `filled_minor` / participant rows — the finance progress bars read 0 and
  the participant-avatar strips render empty (the mappers supply empty arrays
  deliberately, since the backend has no participant data)

## 4. Verification not yet done

- **Interactions.** Only page loads and data binding are verified. Forms (address
  add, beneficiary add, recharge, withdraw), the number-box / popup / collapse
  components, and the game bet flow have not been exercised end to end.
- **The login screen's own flow.** Sessions were established through the API and
  the token injected, so the OTP screen itself is untested.
- **Admin panel** beyond its login page rendering.

## 4b. Open product decisions (tunable, currently set to a default)

Two settings deviate from the reference on purpose. Both are one-line changes if
you want different values — see `README.md` → *Deliberate deviations*.

- **UI scale — currently `0.88`.** uni-app compiles every `rpx` to `rem`, so the
  root font size scales text *and* layout together. `1` is exactly the reference
  sizing; lower shrinks the whole interface proportionally.
  `node generate.js --ui-scale 0.82` to go smaller.
- **Home navbar logo — currently `static/image/logo.png` at 84rpx.** The
  reference showed a plain text title here; its `.nav-logo` CSS was dead. The
  asset is a square app icon, so the reference's 66rpx (written for a wordmark)
  rendered it small. Swap the asset or the size in `patchHomeLogo` in
  `tools/orich/generate.js`.

## 5. Smaller follow-ups

- `navbar`, `u-collapse`, `u-form` generate no `<style>` block. They appear to
  have no CSS of their own in the reference; worth a second check.
- The reference's own CSS typo (`ont-size:1rem`) is reproduced verbatim and shows
  as an esbuild warning. Left for fidelity.
- One reference template repeats an attribute (`u-badge type="success" …
  type="error"`); the generator keeps the last value, matching what the original
  ran. Noted so it is not mistaken for a bug.
- `tools/orich` has no tests. The highest-value ones would be golden-file tests
  for `template.js` and `css.js`, so the scope-id, require-alias and interop
  pitfalls in `tools/orich/README.md` cannot regress silently.

## 6. Deployment

`main` is deployed. Per the project workflow, deploys are manual:

```bash
cd vuapp/api   && npx wrangler deploy
cd vuapp/app   && VITE_API_URL=<worker> npm run build:h5 \
               && cp _redirects dist/build/h5/_redirects \
               && npx wrangler pages deploy dist/build/h5 --project-name vuapp-user  --branch main
cd vuapp/admin && VITE_API_URL=<worker> npm run build \
               && npx wrangler pages deploy dist --project-name vuapp-admin --branch main
```

Both Pages apps are SPAs and need `_redirects` containing `/*  /index.html  200`.
