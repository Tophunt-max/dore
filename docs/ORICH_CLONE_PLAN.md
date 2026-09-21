# ORich → Oriva pixel-parity clone plan

Ground truth for every screen lives in `docs/reference/orich/<page>.md` (generated
by `scripts/extract-orich-reference.py` from the authorized decompiled bundle):
literal template + scoped CSS + component options. Each screen below is rebuilt
in `apps/mobile/app/…` to match the original layout, spacing, colours and fonts
using the recovered assets, wired to the existing Oriva API where a concept
matches.

Legend: ✅ done · ⬜ todo · ⭐ intentional Oriva enhancement kept

## Status

| # | ORich page | Oriva route | Status |
|--:|------------|-------------|:------:|
| 1 | home/home | `/(tabs)` | ✅ (prior) |
| 2 | login/login | `/(auth)/login` | ✅ |
| 3 | address/address | `/addresses` | ✅ |
| 4 | address/add | `/addresses/add` | ⬜ |
| 5 | goods/goods | `/products/[id]` | ✅ (prior) |
| 6 | goods/comfirm | `/checkout/[orderId]` | ⬜ |
| 7 | goods/calculation | `/calculation` | ⬜ |
| 8 | index/index | `/(tabs)` | ✅ (legacy noop) |
| 9 | order/detail | `/orders/[orderId]` | ⬜ |
| 10 | order/record | `/orders` | ✅ |
| 11 | order/discount | `/discounts` | ✅ (winner ranking) |
| 12 | success/index | `/result` | ✅ |
| 13 | account/account | `/(tabs)/account` | ✅ (prior) |
| 14 | account/setting | `/settings` | ✅ |
| 15 | account/aboutus | `/about` | ✅ |
| 16 | account/service | `/support` | ⭐ ticket system kept |
| 17 | account/funding | `/wallet/transactions` | ✅ |
| 18 | account/username | `/profile/username` | ✅ |
| 19 | account/team | `/team` | ✅ |
| 20 | account/teamDetail | `/team/[memberId]` | ✅ |
| 21 | bask/index | `/bask/share` | ✅ |
| 22 | winner/winner | `/(tabs)/winners` | ✅ |
| 23 | winner/myShare | `/my-shares` | ✅ |
| 24 | payment/payment | `/wallet/beneficiaries` | ✅ |
| 25 | payment/add | `/wallet/beneficiaries/add` | ⬜ |
| 26 | payment/recharge | `/wallet/recharge` | ⬜ |
| 27 | payment/cashOut | `/wallet/withdraw` | ⬜ |
| 28 | richtext/rule | `/rules` | ✅ |
| 29 | intro | `/intro` | ⬜ (webview orig) |
| 30 | invitation/invitation | `/referrals` | ✅ |
| 31 | help/help | `/help` | ✅ |
| 32 | help/help_detail | `/help/[topic]` | ✅ |
| 33 | payment/payrecord | `/payments` | ✅ |
| 34 | payment/cashrecord | `/wallet/withdrawals` | ✅ |
| 35 | payform/payform | in-app forms | ⭐ web-view orig |
| 36 | login/regist | `/(auth)/verify-otp` | ✅ |
| 37 | prize/prize | `/prizes` | ⬜ |
| 38 | finance/flist | `/finance` | ⬜ |
| 39 | finance/fdetail | `/finance/[financeId]` | ⬜ |
| 40 | finance/order | `/finance/order` | ⬜ |
| 41 | task/task | `/(tabs)/tasks` | ⬜ |
| 42 | task/member | `/(tabs)/member` | ⬜ |
| 43 | game/game | `/game` | ⬜ |

## Verification per batch

- `npm run typecheck -w @oriva/mobile`
- `node apps/mobile/scripts/check-i18n.mjs`
- `EXPO_PUBLIC_API_URL=… npx expo export --platform web`

## Deploy (after merge to main)

- API: `cd apps/worker && npx wrangler deploy`
- User: `npx wrangler pages deploy apps/mobile/dist --project-name oriva-user --branch main`
- Admin: `npx wrangler pages deploy apps/admin/dist --project-name oriva-admin --branch main`
