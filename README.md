# dore

This repository contains three independent parts:

| Folder | What it is |
|--------|-----------|
| [`ORich/`](./ORich) | Read-only decompiled ORich 2.1.4 reference artifact (design/behaviour source). Never shipped as application code. |
| [`App/`](./App) | **Oriva Platform** — the React Native (Expo) + Cloudflare implementation. See [`App/README.md`](./App/README.md). |
| [`Vuapp/`](./Vuapp) | **vuapp** — an independent uni-app (Vue 3) app with its own Cloudflare Worker backend and admin panel. See [`Vuapp/README.md`](./Vuapp/README.md). |

`App` and `Vuapp` are separate projects: they share no code, database, or deployment.
