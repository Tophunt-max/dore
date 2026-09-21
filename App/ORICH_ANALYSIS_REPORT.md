# ORich Android Application — Deep Static Analysis

**Application:** ORich  
**Package:** `com.orich.orichrelease`  
**Version:** 2.1.4 (`versionCode` 214)  
**Analysis date:** 2026-09-19  
**Assessment type:** Static analysis of decompiled XAPK/APK artifacts  
**Overall risk:** **High** — not suitable for sensitive financial use without remediation and dynamic/server-side validation

## 1. Executive summary

ORich 2.1.4 is a DCloud HBuilder/uni-app hybrid Android application, not a conventional native Android app. A small native container starts a compiled Vue/Weex application identified as `__UNI__F330A24`. The product appears to combine one-rupee/group-buy or lottery-style commerce, orders and prizes, referrals and tasks, wallet recharge/cash-out, payment processing, finance products, and games.

The app is **not proven to be malware** from this static evidence. It does, however, have a dangerous security posture for an app handling money and personal data. The most serious issue is a chain involving permissive certificate handling, cleartext/mixed-content support, and a backend-directed WGT hybrid-code updater that force-installs downloaded application content without an application-level hash or signature check visible in the compiled app logic. If the update response or transport is compromised, the hybrid application layer may be replaceable.

Other major concerns include a recoverable client-side request-signing secret, plaintext session-token storage, payment and personal data placed in URL query strings, insecure HTTP callback URLs, embedded push credentials, broad device/privacy permissions, third-party profiling capabilities, exposed SDK components, permissive WebView bridges, and an overbroad FileProvider policy.

### Bottom line

- **What it is:** a hybrid lottery/group-buy, wallet, payment, referral, finance, task, and game app.
- **Architecture:** Android DCloud shell + local compiled uni-app/Vue UI + remote APIs.
- **Malware verdict:** no conclusive proof of malware or hidden native payload execution.
- **Security verdict:** high risk; several findings could affect account, payment, privacy, or update integrity.
- **Trust recommendation:** do not treat the app as safe for financial use until the critical/high findings are fixed and verified through runtime and backend testing.

## 2. Scope and limitations

Reviewed artifacts are under:

`ORich_2.1.4_APKPure.xapk_Decompiler.com/`

The review covered the recovered Android manifest, Java output, smali/source structure, application assets, compiled uni-app JavaScript, native plugin declarations, split APK resources, and selected SDK/native-loader code.

Limitations:

1. No server-side implementation was available. Authorization, token expiry, OTP throttling, payment verification, replay controls, and upload validation cannot be proven.
2. `app-service.js` is minified into extremely long generated lines. Application behavior can be identified from constants and call paths, but original function names and source structure are lost.
3. Native binaries and `assets/39285EFA.dex` were not fully reverse engineered. Their structure is consistent with an OAID/MIIT identifier SDK, but opaque native code remains a review blind spot.
4. No runtime traffic interception, device execution, API probing, or payment transaction was performed.
5. No conclusive lower-level DCloud WGT signature-verification implementation was identified. The report therefore states that no **application-level** verification is visible, not that no lower-layer verification can exist.

## 3. Artifact inventory and identity

### 3.1 Package metadata

| Field               | Value                       |
| ------------------- | --------------------------- |
| App name            | ORich                       |
| Package             | `com.orich.orichrelease`    |
| Version             | 2.1.4                       |
| Version code        | 214                         |
| Minimum Android SDK | 21                          |
| Target/compile SDK  | 30                          |
| Build type          | Release; `debuggable=false` |
| Hybrid app ID       | `__UNI__F330A24`            |
| DCloud compiler     | uni-app 3.2.16 / uni-v3     |
| Main launch asset   | `__uniappview.html`         |
| Channel             | Google                      |

Evidence:

- `resources/com.orich.orichrelease.apk/AndroidManifest.xml:2-12`
- `resources/com.orich.orichrelease.apk/assets/apps/__UNI__F330A24/www/manifest.json:1`
- `resources/com.orich.orichrelease.apk/assets/data/dcloud_control.xml:2`

### 3.2 Package layout

The decompiler output contains:

- Base APK resources: `resources/com.orich.orichrelease.apk/`
- Split artifacts for ARM64, English, Chinese, and xhdpi resources
- Recovered Java: `sources/`
- Smali: `smali/`
- Multiple DEX payloads, including `classes.dex`, `classes2.dex`, and `assets/39285EFA.dex`
- ARM64 native libraries for DCloud/Weex, Getui, image/audio support, C++ runtime, and `lib39285EFA.so`

The base declares `android:isSplitRequired="true"`; the base APK alone is not a complete install.

## 4. Architecture and startup flow

### 4.1 Technology stack

ORich is a native Android wrapper around a compiled uni-app application:

- DCloud `DCloudApplication`
- DCloud `PandoraEntry` / `PandoraEntryActivity` / `WebAppActivity`
- uni-app and Vue 2.6.11
- Vuex 3.4.0
- vue-i18n 8.24.1
- Weex/nvue runtime and native libraries
- Local HTML/JS/CSS application bundle under `assets/apps/__UNI__F330A24/www/`

Native product-specific Java is minimal. Most business behavior is in the generated `app-service.js` bundle.

### 4.2 Startup sequence

1. Android creates `io.dcloud.application.DCloudApplication`.
2. The launcher activity `io.dcloud.PandoraEntry` initializes Android resources and calls `BaseInfo.parseControl()`.
3. `dcloud_control.xml` selects app ID `__UNI__F330A24`.
4. `PandoraEntry` redirects the launch intent to `PandoraEntryActivity`, starts it, and finishes.
5. The inherited DCloud activity/core initializes permissions, privacy settings, splash handling, storage, plugins, and the hybrid runtime.
6. The embedded `manifest.json` selects `__uniappview.html`.
7. `__uniappview.html` loads the uni-app renderer and `app-view.js`; `app-service.js` supplies application logic and `app-config-service.js` supplies route/window configuration.

Evidence:

- `sources/io/dcloud/PandoraEntry.java:114-139`
- `resources/com.orich.orichrelease.apk/assets/data/dcloud_control.xml:2`
- `resources/com.orich.orichrelease.apk/assets/apps/__UNI__F330A24/www/manifest.json:1`
- `resources/com.orich.orichrelease.apk/assets/apps/__UNI__F330A24/www/__uniappview.html:1-25`

## 5. Functional analysis

The generated route table contains 43 screens. `pages/home/home` is the entry page.

### 5.1 Authentication

- OTP/mobile-number login
- Registration
- Login submits an optional referral/channel value and push client ID
- No password-based flow was identified
- Session state uses the key `oned_token`

Routes:

- `pages/login/login`
- `pages/login/regist`
- `pages/intro`

### 5.2 Commerce, lottery/group-buy, and fulfillment

Routes and static assets indicate:

- Goods/catalog browsing
- Group-buy or one-rupee participation
- Order confirmation and calculation
- Delivery-address management
- Order details, history, and discounts
- Winner lists, prize records, and result sharing/basking
- Success/result pages

Important routes:

- `pages/goods/goods`
- `pages/goods/comfirm` (spelling in package)
- `pages/goods/calculation`
- `pages/address/address`, `pages/address/add`
- `pages/order/detail`, `record`, `discount`
- `pages/winner/winner`, `myShare`
- `pages/prize/prize`
- `pages/bask/index`

### 5.3 Wallet and payments

The application includes:

- Wallet/account-balance lookup
- Payment-method addition
- Recharge
- Cash-out/withdrawal
- Recharge and cash records
- Payment status checks
- A hosted payment form
- QArt payment-gateway integration
- Paytm/XPay-branded image assets

Routes:

- `pages/payment/payment`
- `pages/payment/add`
- `pages/payment/recharge`
- `pages/payment/cashOut`
- `pages/payment/payrecord`
- `pages/payment/cashrecord`
- `pages/payform/payform`

### 5.4 Referrals, tasks, finance, and engagement

The bundle contains:

- Invitation/referral flow
- Team and member screens
- Daily/weekly/monthly task/reward assets
- Finance list/detail/order screens
- Game screen
- Help, service, settings, funding records, rules, and profile editing

This feature description is strongly supported by route and asset names, but exact eligibility, payout, lottery, and finance rules are server-dependent and cannot be validated statically.

## 6. Network and API behavior

### 6.1 Hardcoded destinations

| Destination                                       | Purpose/observation                             |
| ------------------------------------------------- | ----------------------------------------------- |
| `https://api.orich.in`                            | Main backend and hosted payment form            |
| `https://img.orich.in`                            | Image/static content base                       |
| `https://open.qartpayment.com/v2/payment/gateway` | External payment gateway                        |
| `http://orich.in/...`                             | Payment/order success callbacks; insecure HTTP  |
| `https://wa.me/`                                  | WhatsApp link handling                          |
| `https://bit.ly/...`                              | Shortened external link                         |
| Getui domains/IPs                                 | Push/config/telemetry transport                 |
| AppsFlyer/Firebase endpoints                      | Attribution, analytics, installation, messaging |

Stale bundled hybrid marketing content also references BigCash, Google Analytics/Ads/Tag Manager, Hotjar, and CDN domains. This content is not the declared startup page and should be treated as reused/legacy material, not proof that ORich launches BigCash.

### 6.2 API families observed

Application-specific API strings include:

- Authentication: `sendverify`, `login`, `logout`
- User/account: `useraccount`, profile/account state
- Address: list/add/edit/delete/default
- Goods, orders, lottery/results, winner/prize data
- Balance, recharge, cash/withdrawal records
- Withdrawal: `userwithdraw`
- Bank/payment-method add/edit/delete
- Payment/order creation: `addorderpay`, `addrechargepay2`
- Payment status: `paystatus`
- AppsFlyer-related user attribution status
- Image upload: `/api/index/upload`
- Runtime update metadata and package download

### 6.3 Request construction

Requests include form fields such as:

- `date`
- `sign`
- `language`
- `token`
- JSON-stringified `param`

The client computes `sign` from the serialized parameters, current date, language, and an embedded shared string. The implementation appears to use an MD5 utility. This is not a trustworthy proof that a request came from the official app because every app recipient can recover and reproduce it.

## 7. Authentication and local storage

### 7.1 Session handling

The compiled app:

- Reads `oned_token` using `uni.getStorageSync`
- Writes it after login using `uni.setStorageSync`
- Removes it on logout/authentication failure
- Places the token in request form bodies rather than an `Authorization` header

The DCloud/Weex storage implementation uses a normal SQLite key/value table named `default_wx_storage` in database `DCStorage`. No Android Keystore wrapper, `EncryptedSharedPreferences`, or application-layer encryption was found for the token.

Evidence:

- `sources/io/dcloud/common/util/db/DCSQLiteOpenHelper.java:14-23`
- `sources/com/taobao/weex/appfram/storage/WXSQLiteOpenHelper.java:20-24`
- `app-service.js` (`oned_token` constants and storage calls)

`allowBackup=false` is a positive control, but it does not protect against rooted-device extraction, same-process compromise, runtime instrumentation, or accidental request logging.

## 8. Permissions and privacy surface

### 8.1 Declared permissions

The manifest requests Internet/network access plus a broad set of legacy or sensitive permissions:

- External storage read/write and obsolete mount/unmount permission
- Camera, autofocus, flashlight
- Fine and coarse location
- Phone state
- Accounts
- Wi-Fi state/change
- Bluetooth and Bluetooth admin
- Boot completed
- Write system settings
- Read logs
- Get running tasks
- Wake lock and vibration
- Push, install-referrer, advertising-ID/vendor-ID permissions

Several permissions are duplicated. Target SDK 30 means the package uses older storage/Bluetooth permission models.

### 8.2 Proven app use versus bundled capability

**Directly observed in ORich logic:**

- Image selection and upload for profile/share flows
- Push client-ID collection and submission during login
- Push link handling
- AppsFlyer initialization/deep-link attribution
- Firebase and AppsFlyer purchase-event reporting
- Payment, order, account, and withdrawal API use

**Bundled SDK/runtime capability, but not proven active for every datum:**

- Android ID, OAID, IMEI/IMSI/device/subscriber identifiers
- Last-known GPS/network/passive location
- Installed-package inventory
- Root/VPN detection
- Device model/display/IP/user-agent profiling

**Not directly found in ORich application logic:**

- Contacts access
- SMS access
- Microphone/recording
- Direct ORich invocation of location APIs
- Direct ORich invocation of GAID getter APIs

The manifest does not declare contacts, SMS, or microphone permissions. Their presence in generic DCloud feature code is therefore capability/attack surface, not evidence of actual collection by this app.

## 9. Android components and exposed surfaces

### 9.1 Main components

- Application: `io.dcloud.application.DCloudApplication`
- Launcher: `io.dcloud.PandoraEntry`
- Runtime host: `io.dcloud.PandoraEntryActivity` / `io.dcloud.WebAppActivity`
- Push: Getui/UniPush plus Firebase Cloud Messaging
- Analytics: Firebase Measurement/Analytics and AppsFlyer
- Media: DCloud gallery/photo/image editor activities
- Provider: DCloud FileProvider and FirebaseInitProvider

### 9.2 Exported or externally reachable components

Potentially exposed surfaces include:

1. `PandoraEntry` — implicitly exported due to MAIN/LAUNCHER and a generic BROWSABLE VIEW filter with no scheme, host, or path constraint.
2. `com.appsflyer.MultipleInstallBroadcastReceiver` — exported without a sender permission.
3. `com.igexin.sdk.GActivity` — exported without a manifest permission.
4. `io.dcloud.feature.unipush.GTPushDevService` — exported without a manifest permission.
5. Firebase instance-ID components — exported; some are protected by Google C2DM permissions, but the service declaration warrants version review.

Most first-party/media activities and both providers are explicitly non-exported, which is positive.

## 10. Third-party SDKs and native code

### 10.1 SDK inventory

- DCloud HBuilder/uni-app runtime
- Weex/nvue runtime
- AppsFlyer attribution and deep linking
- Firebase Analytics/Measurement
- Firebase Messaging/Installations/Instance ID
- Getui/UniPush, with FCM fallback
- OAID/MIIT/MSA/vendor identifier support
- QArt payment gateway
- Image/media and LAME audio libraries

### 10.2 Native/opaque code

`assets/39285EFA.dex`, `lib39285EFA.so`, and `com/bun/miitmdid/core/JLibrary.java` form an obfuscated/native loader associated with the MIIT/OAID identifier stack. The loader extracts/loads native assets and invokes methods reflectively. This opacity materially limits static review, but the observed naming and package context align with advertising/device-ID support rather than a separately identified malicious payload.

No independent application-specific generic `DexClassLoader` remote native-code loader was found. The separately identified WGT updater changes the hybrid application layer.

## 11. Security findings

### F-01 — Backend-directed WGT force-update combined with permissive TLS

**Severity:** Critical  
**Confidence:** High for the code path; exploitability depends on runtime transport/update controls

**Evidence:**

- `app-service.js` obtains a server-provided `update_url_wgt`.
- It downloads a package and calls `plus.runtime.install(tempFilePath, {force:true})` followed by `plus.runtime.restart()`.
- No expected SHA-256 digest, detached signature, public-key verification, or strict filename allowlist is visible in the application bundle.
- DCloud initializes `untrustedca` to `accept`: `sources/io/dcloud/common/util/BaseInfo.java:284-287`.
- `WebLoadEvent.onReceivedSslError` accepts SSL errors unless policy is `refuse`, and only prompts for `warning`: `sources/io/dcloud/common/adapter/ui/webview/WebLoadEvent.java:994-1037`.
- Download, upload, and XHR objects inherit the app’s untrusted-CA policy.
- The Android app globally permits cleartext traffic.

**Impact:** If an attacker controls update metadata, the update host, or a transport path affected by permissive certificate validation, the attacker may be able to replace the app’s hybrid JavaScript/UI. This can expose account/payment actions available to the hybrid layer. Arbitrary native-code execution is **not** claimed.

**Remediation:**

- Set untrusted CA behavior to `refuse`.
- Never proceed on certificate errors.
- Disable cleartext and mixed content.
- Sign update manifests/packages with an offline private key.
- Verify signature, app ID, version monotonicity, and SHA-256 before install.
- Do not use `force:true` until provenance is verified.

### F-02 — Recoverable and replayable client-side request signature

**Severity:** High (if server treats it as an authenticity control)  
**Confidence:** High

The signing string is embedded in the public client. The signature depends on request JSON, date, language, and a shared value, apparently hashed with MD5. Any app recipient can reproduce it. A date is not a nonce, so same-day replay may also be possible unless the server independently prevents it.

**Remediation:** use strict TLS, short-lived server-issued access tokens, server-generated nonces/idempotency keys, and server-side authorization. Never treat a mobile-app shared secret as proof of client authenticity.

### F-03 — Payment and personal data placed in URL query strings

**Severity:** High  
**Confidence:** High

The hosted-payment URL includes amount, currency, merchant/order values, nonce, signature, timestamp, user ID, phone number, first/last name, and email as query parameters. Query strings may leak through WebView/browser history, proxies, logs, analytics, screenshots, and referrers. Some callback URLs use plain HTTP.

**Remediation:** create a short-lived payment session server-to-server and place only an opaque one-time handle in the client URL. Use HTTPS-only callbacks and verify final payment state directly with the gateway.

### F-04 — Embedded push/attribution credentials

**Severity:** High for any privileged push secret; otherwise operational  
**Confidence:** High

The manifest contains an AppsFlyer developer key and Getui app ID, key, and value explicitly labeled `PUSH_APPSECRET`. Mobile SDK identifiers are often public by design, but a privileged push-send secret must not be shipped to clients.

**Remediation:** rotate the Getui secret, determine whether it authorizes server APIs, keep privileged credentials server-side, and apply package/signing-certificate restrictions where supported.

### F-05 — Broad privacy permissions and profiling capability

**Severity:** High privacy/compliance risk  
**Confidence:** High for permissions and active analytics; medium for every SDK datum

AppsFlyer, Firebase, Getui, DCloud statistics, and OAID support are bundled. Active logic initializes attribution/push and reports purchases. SDK code can collect persistent identifiers, location/cell data, installed apps, and device security signals. Static presence does not prove that every value is sent, but the requested permissions make substantial collection possible.

**Remediation:** remove unused permissions and SDK modules, disable Getui GBD/profile collection, initialize analytics only after valid consent, minimize purchase/user identifiers, and document recipients, purposes, and retention.

### F-06 — Plaintext session-token persistence

**Severity:** Medium  
**Confidence:** High

`oned_token` is stored in normal uni-app SQLite-backed storage and sent in request bodies.

**Remediation:** use short-lived access tokens, server-side revocation and rotation, avoid body/request logging, and protect any long-lived refresh credential with Android Keystore-backed storage.

### F-07 — Exported/unprotected SDK components

**Severity:** Medium  
**Confidence:** High for exposure; exploitability unproven

The generic browsable launcher and multiple AppsFlyer/Getui components are externally reachable without an app-defined signature permission.

**Remediation:** set `android:exported="false"` unless required, constrain deep links to exact HTTPS scheme/host/path values, and protect required internal SDK entry points with signature-level permissions where supported.

### F-08 — WebView bridge and navigation trust weaknesses

**Severity:** Medium  
**Confidence:** High for configuration; exploitability depends on content control

DCloud/Weex WebViews enable JavaScript, DOM storage, content/file access in relevant paths, geolocation, and `MIXED_CONTENT_ALWAYS_ALLOW`. Bridge objects such as `__UNI_WEBVIEW_JS_BRIDGE` accept messages without an origin check visible at that boundary. Push payload links are passed into application navigation.

**Remediation:** isolate remote content in bridge-free WebViews, enforce exact origin allowlists, reject unexpected schemes and file/content URLs, disable mixed content/file access, and allow only fixed internal routes from push payloads.

### F-09 — Overbroad FileProvider path policy

**Severity:** Medium-Low  
**Confidence:** High

`res/xml/dcloud_file_provider.xml` maps all external storage and the filesystem root. The provider is non-exported and uses temporary URI grants, but any future path validation or grant bug has an unnecessarily broad impact.

**Remediation:** remove `root-path` and global external paths; expose only narrow application-owned subdirectories.

### F-10 — Upload endpoint has no visible explicit authentication

**Severity:** Medium (server-dependent)  
**Confidence:** Medium

Image-upload flows send files to `/api/index/upload` without a token/header visible in the upload call. Server-side cookie/session controls or validation may exist but could not be assessed.

**Remediation:** require authenticated, short-lived upload grants; validate MIME, content, and size; randomize object names; scan content; and store uploads outside executable/web roots.

## 12. Positive controls

The review also found meaningful positive controls:

- `debuggable=false`
- `allowBackup=false`
- Most app activities and providers are non-exported
- Primary API and image bases use HTTPS
- The reviewed standalone Weex WebView disables file access initially and does not itself introduce a certificate-proceed path
- No contacts, SMS, or microphone permissions
- No direct ORich use of contacts/SMS/microphone APIs found
- No conclusive application-specific remote native DEX loader found

These controls reduce some attack paths but do not offset the critical update/TLS and payment/session findings.

## 13. Suspicious-behavior assessment

### Observed but plausibly legitimate

- WGT hot-update mechanism: common in hybrid frameworks, but implemented insecurely here.
- OAID/native identifier loader: consistent with Chinese/vendor advertising-ID SDKs, though opaque.
- Push service starting after boot/connectivity events: normal for push SDKs.
- AppsFlyer/Firebase purchase analytics: common acquisition/measurement behavior.
- Root/VPN/package checks inside Getui SDK: privacy-invasive but attributable to bundled SDK capability.

### Not established

- No proof of credential theft or covert banking overlay behavior.
- No direct SMS interception, contacts harvesting, microphone recording, or call-log access.
- No proven arbitrary native remote-code execution.
- No proof that every bundled identifier/location/package-inventory path executes.
- No proof that the stale BigCash marketing page is the launched ORich experience.

### Assessment

The package is better described as a **high-risk, privacy-heavy financial/lottery hybrid application with weak security controls**, not conclusively as malware. Dynamic analysis could change that conclusion if runtime traffic or downloaded WGT content reveals undisclosed behavior.

## 14. Remediation priority

1. **Immediately:** reject invalid certificates and cryptographically authenticate every WGT update.
2. **Immediately:** rotate/remove any privileged Getui secret embedded in the client.
3. **High:** replace client-held request-signing secrets with server-enforced token/nonce authorization.
4. **High:** remove PII, signatures, and reusable transaction data from URLs; eliminate HTTP callbacks.
5. **High:** minimize permissions and third-party profiling; implement consent and retention controls.
6. **Medium:** protect session material with short lifetimes, revocation, and Keystore-backed refresh storage.
7. **Medium:** close exported components and constrain deep links/push navigation.
8. **Medium:** isolate WebViews and enforce bridge origin/route allowlists.
9. **Medium:** narrow FileProvider roots and authenticate uploads.
10. **Maintenance:** update target SDK and third-party SDK/runtime versions, then repeat security review.

## 15. Recommended dynamic validation

A complete follow-up should use an isolated test account and controlled lab device to validate:

1. Actual TLS behavior for API, image, update, payment, and push endpoints.
2. Whether a user-installed CA or invalid server certificate is accepted.
3. Exact WGT package format and lower-level signature verification.
4. API authorization across account IDs, order IDs, wallet, withdrawal, address, and payment routes.
5. OTP rate limiting, account enumeration, token expiry/revocation, and replay behavior.
6. Upload MIME/content/size validation and storage location.
7. Exported-component behavior using explicit intents.
8. WebView origin/bridge access from remote content.
9. Actual telemetry destinations and identifiers sent before and after consent.
10. Payment callback integrity and server-to-server status verification.
11. Runtime-downloaded files and differences between bundled and updated application assets.

## 16. Key evidence index

- Android package, permissions, flags, credentials, components:  
  `resources/com.orich.orichrelease.apk/AndroidManifest.xml`
- Generated application routes and entry page:  
  `resources/com.orich.orichrelease.apk/assets/apps/__UNI__F330A24/www/app-config-service.js`
- Application business/API/auth/payment/update logic:  
  `resources/com.orich.orichrelease.apk/assets/apps/__UNI__F330A24/www/app-service.js`
- uni-app identity/runtime configuration:  
  `resources/com.orich.orichrelease.apk/assets/apps/__UNI__F330A24/www/manifest.json`
- DCloud selected app ID:  
  `resources/com.orich.orichrelease.apk/assets/data/dcloud_control.xml`
- Native plugin registry:  
  `resources/com.orich.orichrelease.apk/assets/dcloud_uniplugins.json`
- Launcher handoff:  
  `sources/io/dcloud/PandoraEntry.java`
- Default untrusted certificate policy:  
  `sources/io/dcloud/common/util/BaseInfo.java:284-287`
- WebView certificate behavior:  
  `sources/io/dcloud/common/adapter/ui/webview/WebLoadEvent.java:994-1037`
- Main WebView settings:  
  `sources/io/dcloud/common/adapter/ui/webview/SysWebView.java:587-636`
- Weex WebView/bridge behavior:  
  `sources/io/dcloud/feature/weex/adapter/webview/DCWXWebView.java`
- Plain SQLite storage schema:  
  `sources/io/dcloud/common/util/db/DCSQLiteOpenHelper.java:14-23`
- FileProvider roots:  
  `resources/com.orich.orichrelease.apk/res/xml/dcloud_file_provider.xml`
- AppsFlyer native initialization/deep links:  
  `sources/com/itfenbao/snplugin/appsflyer/AppsFlyerProxy.java`
- OAID native loader:  
  `sources/com/bun/miitmdid/core/JLibrary.java`

---

**Final confidence:** High for package identity, architecture, declared permissions/components, routes, hardcoded client logic, and SDK inventory. Medium for runtime privacy collection and exploitability where behavior depends on permissions, remote configuration, framework internals, or server-side controls.
