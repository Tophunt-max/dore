# tools/orich

Regenerates `vuapp/app/src` from the authorised decompiled ORich bundle at
`../../../ORich`. Development tooling only — nothing here ships in the app.

```bash
npm install
node generate.js                 # writes ../../app/src
node generate.js --out /tmp/gen  # or somewhere harmless
```

Each module can also be run on its own to inspect what it recovers:

```bash
node bundle.js     # module index, page descriptors, component maps
node css.js        # scoped vs global stylesheet split
node api.js        # the reference HTTP API surface (78 functions)
node locale.js     # the i18n catalogs
```

## Layout

| File | Responsibility |
|---|---|
| `bundle.js`   | Indexes the webpack modules in `app-service.js` / `app-view.js`; resolves page and component descriptors (render module, options module, css scope, child components) |
| `template.js` | Transpiles a compiled render function back into a Vue template |
| `css.js`      | Resolves each style module's CSS (restoring `url(...)`) and files every rule by `data-v-*` scope, or as global |
| `script.js`   | Ports an options module into a readable SFC script and rewires its imports |
| `api.js`      | Recovers the reference HTTP API surface (exported name → endpoint) |
| `support.js`  | The Worker HTTP client and the reference-name → vuapp-endpoint mapping |
| `vendor.js`   | Emits library internals verbatim behind a webpack-runtime shim, grouping dependency cycles |
| `locale.js`   | Evaluates the i18n catalog modules and escapes them for vue-i18n v9 |
| `generate.js` | Orchestrates the above and writes the tree |

## Things that are easy to get wrong

Notes for anyone extending this, all of which caused real bugs:

- **Module keys come in three forms.** webpack emits `"2c87"`, `f0c5` *and* bare
  numbers like `2668`. Missing the numeric form silently loses modules.
- **Literal values live in two places.** The service render keeps static classes
  and interpolation expressions; static *attributes* (`<image src="…">`) and the
  literal text *between* interpolations survive only in the view render. They are
  joined on the numeric prefix of the `_i` node id, which is stable across layers.
- **A component has two scope ids.** The service and view halves are compiled
  separately and get different `data-v-*` ids — and the stylesheet is filed under
  the view one. Looking up only the service id yields no styles at all (this left
  all 41 components unstyled).
- **CSS modules are not per-component.** Pages mostly have their own module, but
  the uView components share large aggregate modules mixing scoped rules for
  dozens of components with unscoped shared rules (`.u-mask`, `.u-flex`). Rules
  have to be filed individually, not by module.
- **babel reuses the module-scope require names as locals.** `var o = s("…")` at
  module scope and `var o = t[n](r)` inside a helper are different bindings, so
  every rewrite must be scope-aware *and* hoist `var` to function scope —
  otherwise `o.value` turns into an import.
- **Options objects come in three shapes**: plain, `(s("f16a"), {…})` to keep a
  side-effect require, and babel's `(i = {…}, _defineProperty(i, "k", v), i)`.
- **Helpers are hoisted out of the component.** Async/generator machinery sits at
  module scope, so free identifiers in the options object have to be carried
  across with it.
- **The vendor graph must stop at app-structural modules** (page wrappers,
  renders, options, the i18n setup, the store, `App.vue`) or it swallows the
  entire bundle — 237 modules instead of 42.
- **Vendor cycles need one file.** The `path` and `process` polyfills require each
  other; split across ES modules that deadlocks on the `const` temporal dead
  zone, so each cycle is emitted as a single module with a local registry.
- **`interop` matters.** `X.default` on a binding created by babel's interop
  helper is the module's default for an ES module but the whole `module.exports`
  for a CommonJS one. Collapsing it to the namespace breaks mixins and statics.
