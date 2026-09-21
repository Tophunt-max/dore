# Oriva 43-Screen Parity Map

The original generated uni-app route roles are represented by the following Expo Router screens. Equivalent legacy routes are consolidated where one secure modern flow replaces multiple generated pages.

|   # | Original role          | Oriva Expo route                                                            |
| --: | ---------------------- | --------------------------------------------------------------------------- |
|   1 | Home                   | `/(tabs)`                                                                   |
|   2 | Login                  | `/login`                                                                    |
|   3 | Address list           | `/addresses`                                                                |
|   4 | Add address            | `/addresses/add`                                                            |
|   5 | Goods/catalog          | `/products`, `/products/[productId]`                                        |
|   6 | Confirm order          | `/checkout/[orderId]`                                                       |
|   7 | Draw calculation       | `/calculation`                                                              |
|   8 | Legacy index           | `/(tabs)`                                                                   |
|   9 | Order detail           | `/orders/[orderId]`                                                         |
|  10 | Order record           | `/orders`                                                                   |
|  11 | Discounts              | `/discounts`                                                                |
|  12 | Success/payment result | `/payments/[paymentId]`                                                     |
|  13 | Account                | `/(tabs)/account`                                                           |
|  14 | Settings               | `/settings`                                                                 |
|  15 | About                  | `/about`                                                                    |
|  16 | Customer service       | `/support`                                                                  |
|  17 | Funding record         | `/wallet/transactions`                                                      |
|  18 | Username/profile       | `/profile/username`                                                         |
|  19 | Team                   | `/team`                                                                     |
|  20 | Team detail            | `/team/[memberId]`                                                          |
|  21 | Bask/share win         | `/bask/share`                                                               |
|  22 | Winners                | `/(tabs)/winners`                                                           |
|  23 | My shares              | `/my-shares`                                                                |
|  24 | Payment/wallet         | `/wallet`                                                                   |
|  25 | Payment method         | `/payment-methods`                                                          |
|  26 | Recharge               | `/wallet/recharge`                                                          |
|  27 | Cash-out               | `/wallet/withdraw`                                                          |
|  28 | Rules                  | `/rules`                                                                    |
|  29 | Intro                  | `/intro`                                                                    |
|  30 | Invitation             | `/referrals`                                                                |
|  31 | Help                   | `/help`                                                                     |
|  32 | Help detail            | `/help/[topic]`                                                             |
|  33 | Payment records        | `/payments`                                                                 |
|  34 | Cash records           | `/wallet/transactions` and withdrawal history API                           |
|  35 | Payment form           | In-app manual transfer form in `/checkout/[orderId]` and `/wallet/recharge` |
|  36 | Registration           | `/login` + `/verify-otp`                                                    |
|  37 | Prizes                 | `/prizes`, `/prizes/[prizeId]`                                              |
|  38 | Finance list           | `/finance`                                                                  |
|  39 | Finance detail         | `/finance/[financeId]`                                                      |
|  40 | Finance request        | `/finance/order`                                                            |
|  41 | Tasks                  | `/(tabs)/tasks`                                                             |
|  42 | Membership             | `/(tabs)/member`                                                            |
|  43 | Game                   | `/game`                                                                     |

## Design system

The screens retain the recovered 750-pixel artboard proportions, light `#F8F8F8` background, dark navy text, orange accent, yellow-to-orange actions, white rounded cards, five-tab structure, Roboto typography, and authorized static artwork. The obsolete hybrid BigCash landing content is excluded.

## Functional note

Screen parity means every original route role has a designed, navigable Oriva equivalent. API-backed production behavior exists for authentication, campaigns/orders, manual payments, wallet, uploads, notifications, and core user resources. Finance offers and game mechanics remain controlled presentation shells until their final regulated business rules/providers are supplied.
