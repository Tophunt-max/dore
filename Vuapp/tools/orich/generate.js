'use strict';
/**
 * Regenerate the vuapp user app from the decompiled ORich reference bundle.
 *
 *   node generate.js [--out ../../app/src]
 *
 * Every page and component is rebuilt from the compiled artifacts rather than
 * written by hand, so the markup, styling, text and behaviour all come straight
 * from the reference:
 *
 *   <template>  transpiled from the compiled render function (service layer for
 *               literal classes/text, view layer for static attrs/text)
 *   <script>    the component options module, rewired onto the vuapp API client
 *   <style>     the verbatim stylesheet, with real asset urls restored
 *
 * The network layer, the store and the i18n catalogs are generated too, so the
 * result builds and runs against the vuapp Cloudflare Worker backend.
 */
const fs = require('fs');
const path = require('path');

const { Bundle, WWW, REPO } = require('./bundle');
const { Transpiler, viewStaticAttrs, viewStaticText } = require('./template');
const { scopedStylesheet, globalStylesheet, format: formatCss } = require('./css');
const { apiSurface } = require('./api');
const {
  portOptions,
  transformObject,
  requireBindings,
  emitImports,
  printObject,
} = require('./script');
const { collectVendor } = require('./vendor');
const { catalogs, localeOf, escapeCatalog } = require('./locale');
const { apiClient, apiOrich } = require('./support');
const acorn = require('acorn');

// ---------------------------------------------------------------------- setup

const argOut = (() => {
  const i = process.argv.indexOf('--out');
  return i !== -1 ? process.argv[i + 1] : path.join(REPO, 'Vuapp', 'app', 'src');
})();
const OUT = path.resolve(argOut);

const kebab = (s) => s.replace(/([a-z0-9])([A-Z])/g, '$1-$2').toLowerCase();

const write = (rel, content) => {
  const file = path.join(OUT, rel);
  fs.mkdirSync(path.dirname(file), { recursive: true });
  fs.writeFileSync(file, content);
};

// ------------------------------------------------------------- SFC collection

function collectSfcs(bundle) {
  const pages = [];
  const components = new Map(); // moduleId -> descriptor
  const pm = bundle.pageModules();

  for (const p of bundle.pages()) pages.push(bundle.describe(pm.get(p), p));

  const queue = pages.flatMap((d) => Object.entries(d.components));
  while (queue.length) {
    const [name, mod] = queue.shift();
    if (components.has(mod)) continue;
    const d = bundle.describe(mod, name);
    components.set(mod, d);
    queue.push(...Object.entries(d.components));
  }
  return { pages, components };
}

// -------------------------------------------------------------- SFC rendering

/** Prop names declared by a compiled options module. */
function propNames(body) {
  const names = new Set();
  const m = /props\s*:\s*\{/.exec(body);
  if (!m) return names;
  const { balanced } = require('./bundle');
  const block = balanced(body, m.index + m[0].length - 1);
  // only the top level of the props object
  let depth = 0;
  let str = null;
  let keyStart = 1;
  for (let i = 1; i < block.length; i++) {
    const c = block[i];
    if (str) {
      if (c === '\\') i++;
      else if (c === str) str = null;
      continue;
    }
    if (c === '"' || c === "'") { str = c; continue; }
    if (c === '{' || c === '[' || c === '(') depth++;
    else if (c === '}' || c === ']' || c === ')') depth--;
    else if (c === ':' && depth === 0) {
      const key = block.slice(keyStart, i).trim().replace(/^["']|["']$/g, '');
      if (/^[A-Za-z_$][\w$]*$/.test(key)) names.add(key);
    } else if (c === ',' && depth === 0) {
      keyStart = i + 1;
    }
  }
  return names;
}

function buildSfc(bundle, d, ctx) {
  const opts = bundle.resolveOptions(d.options);

  // The view-layer half of the same SFC is a separate compilation: its own
  // render module id and its own scope id. The scope is where the stylesheet is
  // filed, and the render is the only place static attributes (an
  // `<image src="...">`) and the literal text between interpolations survive.
  const viewDesc = bundle.describe(d.mod, d.name, 'view');
  const viewSrc = bundle.renderSource(viewDesc.render || d.render, 'view');
  const viewScope = viewDesc.scope;

  const t = new Transpiler({
    asset: ctx.assetOf,
    viewAttrs: viewStaticAttrs(viewSrc),
    viewText: viewStaticText(viewSrc),
    props: propNames(opts.body),
  });
  const { template, warnings } = t.transpile(bundle.renderSource(d.render));

  const script = portOptions({ body: opts.body, resolve: ctx.resolve });

  const style = scopedStylesheet(bundle, [d.scope, viewScope]);

  const parts = [`<template>\n${template}\n</template>`, `<script>\n${script.code}\n</script>`];
  if (style.css) parts.push(`<style scoped>\n${style.css}\n</style>`);

  return {
    sfc: parts.join('\n\n') + '\n',
    warnings: [...warnings, ...script.warnings],
    rules: style.rules,
    templateLines: template.split('\n').length,
  };
}

// ------------------------------------------------------------------ pages.json

function buildPagesJson(bundle, componentTags) {
  const cfg = JSON.parse(
    /var __uniConfig\s*=\s*(\{[\s\S]*?\});\s*\nvar __uniRoutes/.exec(bundle.config)[1]
  );
  const routes = JSON.parse(
    /var __uniRoutes\s*=\s*(\[[\s\S]*?\]);/.exec(bundle.config)[1]
  );
  const styleByPath = new Map();
  for (const r of routes) styleByPath.set(r.path.replace(/^\//, ''), r.window || {});

  const pages = cfg.pages.map((p) => {
    const style = { ...(styleByPath.get(p) || {}) };
    // the reference app draws its own headers on every screen
    style.navigationStyle = style.navigationStyle || 'custom';
    return { path: p, style };
  });

  const easycom = {
    autoscan: true,
    custom: Object.fromEntries(componentTags.map((tag) => [`^${tag}$`, `@/components/${tag}.vue`])),
  };

  return JSON.stringify(
    {
      easycom,
      pages,
      globalStyle: {
        navigationBarTextStyle: cfg.window.navigationBarTextStyle,
        navigationBarTitleText: cfg.window.navigationBarTitleText,
        navigationBarBackgroundColor: cfg.window.navigationBarBackgroundColor,
        backgroundColor: cfg.window.backgroundColor,
      },
    },
    null,
    2
  ) + '\n';
}

// ----------------------------------------------------------------- app plumbing

/** Port the vuex store (the reference store maps 1:1 onto vuex 4). */
function buildStore(bundle, resolve) {
  const body = bundle.module('782e');
  const ast = acorn.parse(`(function(t, e, s){${body.slice(1, -1)}})`, { ecmaVersion: 2020 });
  const binds = requireBindings(ast);

  // the config object passed to `new Vuex.Store({...})`
  let config = null;
  const visit = (n) => {
    if (!n || typeof n !== 'object') return;
    if (Array.isArray(n)) return n.forEach(visit);
    if (!n.type) return;
    if (n.type === 'NewExpression' && n.arguments[0] && n.arguments[0].type === 'ObjectExpression') {
      config = config || n.arguments[0];
    }
    for (const k of Object.keys(n)) {
      if (k === 'type' || k === 'start' || k === 'end') continue;
      visit(n[k]);
    }
  };
  visit(ast);
  if (!config) return { code: null, warnings: ['store config not found'] };

  const { tree, named, defaults, warnings } = transformObject({ objectNode: config, binds, resolve });
  const lines = [
    `// The reference app's vuex store, ported to vuex 4 (Vue 3).`,
    `//`,
    `// Generated by tools/orich. The getters/mutations/actions are the originals;`,
    `// only the store constructor and the API imports changed.`,
    ``,
    `import { createStore } from 'vuex';`,
    ...emitImports(named, defaults).filter((l) => !l.includes("from 'vuex'")),
    ``,
    `export default createStore(${printObject(tree)});`,
    ``,
  ];
  return { code: lines.join('\n'), warnings };
}

/** Port App.vue (options only - the reference App.vue has no template). */
function buildAppVue(bundle, resolve, localeCodes) {
  const d = bundle.describe('f2ee', 'App');
  const opts = bundle.resolveOptions(d.options || 'dfd6');
  const ported = portOptions({ body: opts.body, resolve });
  const script = ported.code.replace(
    /^export default /m,
    'export default '
  );
  const sfc = `<script>\n${script}\n</script>\n\n<style>\n/* The reference app's global stylesheet (uView base + app-wide rules). */\n@import './styles/global.css';\n</style>\n`;
  return { sfc, warnings: ported.warnings };
}

function buildMain(localeCodes, defaultLocale, uview) {
  const imports = localeCodes.map((c) => `import ${c.replace(/\W/g, '_')} from './locale/${c}.json';`);
  const entries = localeCodes.map((c) => `    '${c}': ${c.replace(/\W/g, '_')},`);
  return `import { createSSRApp } from 'vue';
import { createI18n } from 'vue-i18n';
import App from './App.vue';
import store from './store';
// uView 1.x: importing the library sets \`uni.$u\`, which every u-* component
// reads. Its own installer is Vue 2 only (Vue.prototype / Vue.filter), so the
// pieces are attached here the Vue 3 way instead.
import './vendor/${uview.plugin}.js';
import uviewMixin from './vendor/${uview.mixin}.js';
import vue2Compat from './utils/vue2-compat';
${imports.join('\n')}

export const i18n = createI18n({
  legacy: true,
  globalInjection: true,
  locale: (function () {
    try {
      return uni.getStorageSync('language') || '${defaultLocale}';
    } catch (e) {
      return '${defaultLocale}';
    }
  })(),
  fallbackLocale: '${defaultLocale}',
  silentTranslationWarn: true,
  silentFallbackWarn: true,
  messages: {
${entries.join('\n')}
  },
});

export function createApp() {
  const app = createSSRApp(App);
  app.use(store);
  app.use(i18n);
  app.config.globalProperties.$u = uni.$u;
  app.mixin(uviewMixin.default || uviewMixin);
  // Vue 2's $on / $children / self-$emit, which uView's form components use
  app.mixin(vue2Compat);
  return { app };
}
`;
}

/** mescroll's localised defaults reach for the app instance's \`$i18n\`. */
function buildAppI18nShim() {
  return `// mescroll's default option texts are built from the app's i18n instance.
// The reference bundle read them off the Vue app; this exposes the same shape.

import { i18n } from '../main';

export default {
  $i18n: {
    t: (key, ...args) => i18n.global.t(key, ...args),
  },
};
`;
}

/**
 * The reference app's date/countdown/clipboard helpers. Kept verbatim behind the
 * vendor shim and re-exported by name, since the ported pages call them
 * directly (`parseTime`, `countDown`, ...).
 */
function buildUtils(bundle, resolve) {
  const id = 'f16a';
  const body = bundle.module(id);
  const names = [...new Set([...body.matchAll(/\be\.([A-Za-z_$][\w$]*)\s*=/g)].map((m) => m[1]))].filter(
    (n) => n !== 'default'
  );

  const deps = [];
  for (const m of body.matchAll(/\bs\("([^"]+)"\)/g)) {
    const dep = m[1];
    if (deps.some((d) => d.id === dep)) continue;
    const t = resolve(dep);
    if (t.kind === 'inline') deps.push({ id: dep, literal: JSON.stringify(t.value) });
    else deps.push({ id: dep, literal: `m_${dep.replace(/[^\w$]/g, '_')}`, importFrom: `../vendor/${dep}.js` });
  }

  const imports = deps
    .filter((d) => d.importFrom)
    .map((d) => `import ${d.literal} from '${d.importFrom}';`);

  return `// The reference app's shared helpers (webpack module "${id}"), kept verbatim.
// Generated by tools/orich - regenerate instead of editing.
/* eslint-disable */
import { webpackModule } from '../vendor/runtime.js';
${imports.join('\n')}

const deps = {
${deps.map((d) => `  ${JSON.stringify(d.id)}: ${d.literal},`).join('\n')}
};

const mod = webpackModule(function (t, e, s) {${body.slice(1, -1)}}, deps);

${names.map((n) => `export const ${n} = mod.${n};`).join('\n')}

export default mod;
`;
}

/**
 * Vue 2 instance APIs the reference components rely on, reimplemented for Vue 3.
 *
 * uView's form components talk to each other with Vue 2's event API: a parent
 * `broadcast()`s down the tree and children listen with `this.$on(...)`. Vue 3
 * removed `$on`/`$off`/`$children` and made `$emit` parent-only, so the pattern
 * is rebuilt here instead of being patched into every component.
 */
function buildVue2Compat() {
  return `// Vue 2 instance-API compatibility layer.
//
// The reference app was built on Vue 2, where a component could listen to its
// own events (\`this.$on\`), enumerate \`$children\`, and \`$emit\` to itself. Vue 3
// removed all three. uView's form components (u-form / u-form-item / u-input)
// depend on that pattern, so it is reimplemented here and installed globally.

/**
 * Direct child component instances, the Vue 3 way (walks the render tree until
 * it reaches each nested component).
 */
export function childComponents(instance) {
  const out = [];
  const internal = instance && instance.$;
  if (!internal) return out;

  const walk = (vnode) => {
    if (!vnode) return;
    if (Array.isArray(vnode)) {
      vnode.forEach(walk);
      return;
    }
    if (vnode.component) {
      if (vnode.component.proxy) out.push(vnode.component.proxy);
      return;
    }
    const children = vnode.children;
    if (Array.isArray(children)) children.forEach(walk);
    else if (children && typeof children === 'object') {
      for (const key of Object.keys(children)) {
        const slot = children[key];
        if (typeof slot === 'function') continue;
        walk(slot);
      }
    }
  };
  walk(internal.subTree);
  return out;
}

const componentName = (vm) => (vm && vm.$options && vm.$options.name) || '';

const vue2Compat = {
  created() {
    // handlers registered through \`this.$on\`
    this.__localHandlers = {};
  },
  methods: {
    $on(event, handler) {
      if (!this.__localHandlers) this.__localHandlers = {};
      (this.__localHandlers[event] || (this.__localHandlers[event] = [])).push(handler);
      return this;
    },
    $once(event, handler) {
      const wrapped = (...args) => {
        this.$off(event, wrapped);
        handler.apply(this, args);
      };
      return this.$on(event, wrapped);
    },
    $off(event, handler) {
      if (!this.__localHandlers) return this;
      if (!event) this.__localHandlers = {};
      else if (!handler) delete this.__localHandlers[event];
      else {
        const list = this.__localHandlers[event] || [];
        this.__localHandlers[event] = list.filter((h) => h !== handler);
      }
      return this;
    },
    /** Invoke this instance's own \`$on\` handlers - Vue 2's self-\`$emit\`. */
    __emitLocal(event, args) {
      const list = (this.__localHandlers && this.__localHandlers[event]) || [];
      for (const handler of list.slice()) handler.apply(this, args);
    },
    /** Walk up to the named ancestor and deliver the event. */
    dispatch(name, event, ...args) {
      let parent = this.$parent || this.$root;
      while (parent && componentName(parent) !== name) parent = parent.$parent;
      if (!parent) return;
      if (parent.__emitLocal) parent.__emitLocal(event, args);
      parent.$emit(event, ...args);
    },
    /** Walk down to every named descendant and deliver the event. */
    broadcast(name, event, ...args) {
      const visit = (vm) => {
        for (const child of childComponents(vm)) {
          if (componentName(child) === name) {
            if (child.__emitLocal) child.__emitLocal(event, args);
            child.$emit(event, ...args);
          } else {
            visit(child);
          }
        }
      };
      visit(this);
    },
  },
};

export default vue2Compat;

/** Matches what babel's interop helper produced for this module. */
export const interopDefault = vue2Compat;
`;
}

/**
 * The mescroll page mixin, adjusted for Vue 3 lifecycle ordering.
 *
 * Pages call `this.mescroll.resetUpScroll()` from `onShow`. Under the reference
 * app's Vue 2 runtime the `<mescroll-body>` child had already emitted `init` by
 * then; in Vue 3 `onShow` runs before children mount, so `mescroll` is still
 * null and the list never loads. The mixin therefore starts with a stub that
 * records calls and replays them onto the real instance once it arrives.
 */
function buildMescrollMixin() {
  return `// mescroll page mixin (reference webpack module "4df3"), adapted to Vue 3.
//
// Same data, hooks and methods as the original. The one change: \`mescroll\`
// starts as a queueing stub, because pages call it from \`onShow\` and Vue 3 runs
// page \`onShow\` before the <mescroll-body> child has mounted and emitted
// \`init\`. Queued calls are replayed in order the moment the instance exists.

const QUEUED_METHODS = [
  'resetUpScroll',
  'triggerDownScroll',
  'triggerUpScroll',
  'endSuccess',
  'endErr',
  'endByPage',
  'endBySize',
  'endUpScroll',
  'setPageNum',
  'setPageSize',
  'scrollTo',
  'showEmpty',
  'removeEmpty',
  'lockDownScroll',
  'lockUpScroll',
  'onPullDownRefresh',
  'onPageScroll',
  'onReachBottom',
];

function createPendingMescroll() {
  const calls = [];
  const stub = {
    __pending: calls,
    // the original reads this before choosing a refresh path
    optUp: { use: true },
    optDown: { use: true },
  };
  for (const name of QUEUED_METHODS) {
    stub[name] = (...args) => {
      calls.push([name, args]);
    };
  }
  return stub;
}

const mescrollMixin = {
  data() {
    return { mescroll: createPendingMescroll() };
  },
  onPullDownRefresh() {
    this.mescroll && this.mescroll.onPullDownRefresh();
  },
  onPageScroll(e) {
    this.mescroll && this.mescroll.onPageScroll(e);
  },
  onReachBottom() {
    this.mescroll && this.mescroll.onReachBottom();
  },
  mounted() {
    this.mescrollInitByRef();
  },
  methods: {
    mescrollInit(mescroll) {
      this.__adoptMescroll(mescroll);
      this.mescrollInitByRef();
    },
    mescrollInitByRef() {
      if (!this.mescroll || !this.mescroll.resetUpScroll || this.mescroll.__pending) {
        const ref = this.$refs.mescrollRef;
        if (ref && ref.mescroll) this.__adoptMescroll(ref.mescroll);
      }
    },
    /** Swap the stub for the real instance and replay anything queued. */
    __adoptMescroll(mescroll) {
      if (!mescroll || mescroll.__pending) return;
      const pending = this.mescroll && this.mescroll.__pending;
      this.mescroll = mescroll;
      if (!pending || !pending.length) return;
      const calls = pending.splice(0, pending.length);
      for (const [name, args] of calls) {
        if (typeof mescroll[name] === 'function') mescroll[name](...args);
      }
    },
    downCallback() {
      if (this.mescroll.optUp && this.mescroll.optUp.use) this.mescroll.resetUpScroll();
      else setTimeout(() => this.mescroll.endSuccess(), 500);
    },
    upCallback() {
      setTimeout(() => this.mescroll.endErr(), 500);
    },
  },
};

export default mescrollMixin;

/** Matches what babel's interop helper produced for this module. */
export const interopDefault = mescrollMixin;
`;
}

/**
 * Compatibility shim for the native-only APIs the reference app used.
 *
 * The reference shipped as an Android build and called `plus.*` and native
 * analytics plugins directly. This app also runs on H5, so those calls go
 * through here: on a native build they reach the real APIs, on the web they
 * degrade to sensible equivalents instead of throwing.
 */
function buildNativeShim() {
  return `// Native API compatibility layer.
//
// The reference app targeted a native App build and called \`plus.*\` plus two
// native analytics plugins directly. This app also runs on H5, so the ported
// screens go through this shim: native builds get the real APIs, the web gets a
// working fallback.

const hasPlus = typeof plus !== 'undefined' && plus;

const noop = () => {};

/** A \`plus\`-shaped object that is safe to touch on the web. */
export const nativePlus = hasPlus
  ? plus
  : {
      runtime: {
        openURL: (url) => {
          if (typeof window !== 'undefined') window.open(url, '_blank');
        },
        openWeb: (url) => {
          if (typeof window !== 'undefined') window.open(url, '_blank');
        },
        appid: '',
        version: '',
        quit: noop,
      },
      push: {
        getClientInfo: () => ({ clientid: '' }),
        addEventListener: noop,
        clear: noop,
      },
      io: { resolveLocalFileSystemURL: noop },
      nativeObj: { Bitmap: function Bitmap() { return { save: noop, clear: noop }; } },
    };

/**
 * Analytics stand-in for the reference app's native SDKs.
 *
 * The original bundled third-party SDKs (and their keys); this project does not,
 * so events are recorded as no-ops. Point this at your own analytics if needed.
 */
export const analytics = {
  initSdk: noop,
  onAppOpenAttribution: noop,
  registerDeepLink: noop,
  logEvent: noop,
  trackEvent: noop,
  setUserId: noop,
  setUserProperty: noop,
};

export default { nativePlus, analytics };
`;
}

function buildManifest(bundle) {
  const cfg = JSON.parse(/var __uniConfig\s*=\s*(\{[\s\S]*?\});\s*\nvar __uniRoutes/.exec(bundle.config)[1]);
  return JSON.stringify(
    {
      name: 'vuapp',
      appid: '',
      description: cfg.appname ? `vuapp (reference parity with ${cfg.appname})` : 'vuapp',
      versionName: '1.0.0',
      versionCode: '100',
      transformPx: false,
      h5: { router: { mode: 'hash', base: './' }, title: 'vuapp' },
      'app-plus': { usingComponents: true, splashscreen: { alwaysShowBeforeRender: true, autoclose: false } },
    },
    null,
    2
  ) + '\n';
}

// ---------------------------------------------------------------------- assets

function copyStatic(dest) {
  const src = path.join(WWW, 'static');
  fs.cpSync(src, dest, { recursive: true });
  let files = 0;
  const walkDir = (p) => {
    for (const e of fs.readdirSync(p, { withFileTypes: true })) {
      if (e.isDirectory()) walkDir(path.join(p, e.name));
      else files++;
    }
  };
  walkDir(dest);
  return files;
}

// ------------------------------------------------------------------------ main

/**
 * Directories this generator owns end to end. They are cleared first so a
 * module that is no longer emitted (a vendor file replaced by a hand-written
 * compatibility layer, say) cannot linger and shadow the new one.
 */
const OWNED_DIRS = ['pages', 'components', 'vendor', 'locale', 'styles', 'api', 'utils', 'store', 'static'];

function clean() {
  for (const dir of OWNED_DIRS) {
    fs.rmSync(path.join(OUT, dir), { recursive: true, force: true });
  }
}

function main() {
  clean();
  const bundle = new Bundle();
  const { pages, components } = collectSfcs(bundle);
  const surface = apiSurface(bundle);
  const apiModules = new Set([...surface.values()].map((v) => v.module));
  const componentModules = new Set(components.keys());

  const assetOf = (id) => {
    for (const which of ['service', 'view']) {
      const m = /^\{[\w$]+\.exports="([^"]*)"\}$/.exec(bundle.module(id, which));
      if (m) return m[1];
    }
    return null;
  };

  const STORE_MODULE = '782e';
  const UTILS_MODULE = 'f16a';
  const APP_ENTRY = '1a27'; // the reference main.js, only reached for its $i18n
  const UVIEW_MODULE = '68e5'; // uView 1.x library entry (populates uni.$u)
  const EMITTER_MODULE = 'd780'; // Vue 2 dispatch/broadcast mixin -> vue2-compat
  const MESCROLL_MIXIN = '4df3'; // mescroll page mixin -> utils/mescroll-mixin
  const EXTERNALS = new Map([
    ['2f62', { specifier: 'vuex', kind: 'named' }],
    ['8bbf', { specifier: 'vue', kind: 'default', localName: 'Vue' }],
  ]);

  // i18n catalogs, discovered from the reference i18n setup module
  const i18nSetup = bundle.module('06b7');
  const catalogModules = new Map(); // moduleId -> locale code
  for (const m of (i18nSetup.match(/messages:\{[^}]*\}/) || [''])[0].matchAll(/([\w$]+):([\w$]+)\.default/g)) {
    const local = m[2];
    const req = new RegExp(`${local}\\s*=\\s*[\\w$]+\\(s\\("([^"]+)"\\)\\)`).exec(i18nSetup);
    if (req) catalogModules.set(req[1], m[1]);
  }
  const defaultLocale =
    (/locale:\s*uni\.getStorageSync\("language"\)\s*\|\|\s*"([^"]+)"/.exec(i18nSetup) || [])[1] || 'en_us';

  /**
   * Modules that belong to the app's own structure rather than to a library.
   * The vendor graph must stop at these, otherwise it swallows the entire
   * bundle (page wrappers -> renders -> every other page).
   */
  const structural = new Set([
    ...bundle.pageModules().values(),
    '9e50', // __definePage registrations
    'f2ee', // App.vue wrapper
    'dfd6',
    '06b7', // i18n setup
    'a925', // vue-i18n
    '8226', // the reference HTTP client (replaced by src/api/request.js)
    APP_ENTRY,
    STORE_MODULE,
    UTILS_MODULE,
    ...catalogModules.keys(),
  ]);
  for (const d of [...pages, ...components.values()]) {
    if (d.render) structural.add(d.render);
    if (d.options) structural.add(d.options);
    structural.add(bundle.resolveOptions(d.options).id);
  }

  const classify = (id) => {
    if (apiModules.has(id)) return 'skip';
    if (componentModules.has(id)) return 'skip';
    // the reference main.js is only ever reached for its `$i18n`; the generated
    // app exposes the same shape from locale/app-i18n.js
    if (id === APP_ENTRY) return 'external';
    if (id === EMITTER_MODULE) return 'external';
    if (id === MESCROLL_MIXIN) return 'external';
    if (structural.has(id)) return 'skip';
    if (EXTERNALS.has(id)) return 'external';
    if (assetOf(id) !== null) return 'asset';
    if (!bundle.module(id) && !bundle.module(id, 'view')) return 'skip';
    return 'vendor';
  };

  const resolve = (id) => {
    if (apiModules.has(id)) return { specifier: '@/api/orich', kind: 'named' };
    if (id === UTILS_MODULE) return { specifier: '@/utils/orich', kind: 'named' };
    if (id === STORE_MODULE) return { specifier: '@/store', kind: 'default', localName: 'store' };
    if (id === APP_ENTRY) return { specifier: '@/locale/app-i18n', kind: 'default', localName: 'appI18n' };
    if (id === EMITTER_MODULE) {
      return { specifier: '@/utils/vue2-compat', kind: 'default', localName: 'vue2Compat' };
    }
    if (id === MESCROLL_MIXIN) {
      return { specifier: '@/utils/mescroll-mixin', kind: 'default', localName: 'mescrollMixin' };
    }
    if (EXTERNALS.has(id)) return EXTERNALS.get(id);
    if (componentModules.has(id)) return { kind: 'drop' };
    const asset = assetOf(id);
    if (asset !== null) return { kind: 'inline', value: asset };
    return { specifier: `@/vendor/${id}`, kind: 'default', localName: `m_${id}` };
  };

  const ctx = { assetOf, resolve };
  const report = { pages: [], components: [], warnings: [] };

  // --- pages
  for (const d of pages) {
    const built = buildSfc(bundle, d, ctx);
    write(`${d.name}.vue`, built.sfc);
    report.pages.push({ name: d.name, lines: built.templateLines, rules: built.rules });
    for (const w of built.warnings) report.warnings.push(`${d.name}: ${w}`);
  }

  // --- components
  const componentTags = [];
  for (const d of components.values()) {
    const tag = kebab(d.name);
    componentTags.push(tag);
    const built = buildSfc(bundle, d, ctx);
    write(`components/${tag}.vue`, built.sfc);
    report.components.push({ name: tag, lines: built.templateLines, rules: built.rules });
    for (const w of built.warnings) report.warnings.push(`${tag}: ${w}`);
  }
  componentTags.sort();

  // --- vendor internals reachable from every ported script
  const seeds = new Set();
  for (const d of [...pages, ...components.values()]) {
    const body = bundle.resolveOptions(d.options).body;
    for (const m of body.matchAll(/\bs\("([^"]+)"\)/g)) {
      if (classify(m[1]) === 'vendor') seeds.add(m[1]);
    }
  }

  // The uView library itself: importing it populates `uni.$u`, which every u-*
  // component reads for config (zIndex, colors) and helpers (guid, test, ...).
  const uview = { plugin: UVIEW_MODULE, mixin: null };
  const uviewBody = bundle.module(UVIEW_MODULE);
  const mixinLocal = /t\.mixin\(([\w$]+)\.default\)/.exec(uviewBody);
  if (mixinLocal) {
    const req = new RegExp(`\\b${mixinLocal[1]}\\s*=\\s*[\\w$]+\\(s\\("([^"]+)"\\)\\)`).exec(uviewBody);
    if (req) uview.mixin = req[1];
  }
  seeds.add(UVIEW_MODULE);
  if (uview.mixin) seeds.add(uview.mixin);
  const { vendor, files, dropped } = collectVendor(bundle, seeds, {
    classify,
    assetOf,
    externalSpecifier: (id) => {
      if (id === APP_ENTRY) return '@/locale/app-i18n';
      if (id === EMITTER_MODULE) return '@/utils/vue2-compat';
      if (id === MESCROLL_MIXIN) return '@/utils/mescroll-mixin';
      return (EXTERNALS.get(id) || {}).specifier || 'vue';
    },
  });
  for (const [mod, deps] of dropped) {
    report.warnings.push(`vendor/${mod}: dependency not bundled: ${[...deps].join(', ')}`);
  }
  for (const [name, content] of files) write(`vendor/${name}`, content);

  // --- i18n catalogs (named by the codes the reference app registered)
  const locales = [];
  for (const [modId, code] of catalogModules) {
    const body = bundle.module(modId);
    let messages = null;
    try {
      const { evalModule } = require('./locale');
      const exp = evalModule(body);
      messages = exp && (exp.default || exp);
    } catch {
      /* fall through */
    }
    if (messages && Object.keys(messages).length) {
      locales.push(code);
      write(`locale/${code}.json`, JSON.stringify(escapeCatalog(messages), null, 2) + '\n');
    }
  }
  write('locale/app-i18n.js', buildAppI18nShim());

  // --- app plumbing
  const store = buildStore(bundle, resolve);
  if (store.code) write('store/index.js', store.code);
  for (const w of store.warnings) report.warnings.push(`store: ${w}`);

  const appVue = buildAppVue(bundle, resolve, locales);
  write('App.vue', appVue.sfc);
  for (const w of appVue.warnings) report.warnings.push(`App.vue: ${w}`);

  write('main.js', buildMain(locales, locales.includes(defaultLocale) ? defaultLocale : locales[0], uview));
  write('manifest.json', buildManifest(bundle));

  // --- global stylesheet: every rule the reference left unscoped (uView base
  //     plus the app's own global rules, which the components rely on)
  const globalCss = globalStylesheet(bundle);
  write('styles/global.css', globalCss.css + '\n');

  // --- api + utils
  write('utils/native.js', buildNativeShim());
  write('utils/vue2-compat.js', buildVue2Compat());
  write('utils/mescroll-mixin.js', buildMescrollMixin());
  write('api/request.js', apiClient());
  const client = apiOrich(surface);
  write('api/orich.js', client.code);
  write('utils/orich.js', buildUtils(bundle, resolve));

  // --- pages.json
  write('pages.json', buildPagesJson(bundle, componentTags));

  // --- static assets
  const staticFiles = copyStatic(path.join(OUT, 'static'));

  // --- report
  const out = {
    pages: report.pages.length,
    components: report.components.length,
    vendorModules: vendor.size,
    locales,
    staticFiles,
    apiFunctions: surface.size,
    apiMapped: client.mapped,
    apiStubs: client.stubs.length,
    templateLines:
      report.pages.reduce((a, p) => a + p.lines, 0) + report.components.reduce((a, c) => a + c.lines, 0),
    cssRules:
      report.pages.reduce((a, p) => a + p.rules, 0) + report.components.reduce((a, c) => a + c.rules, 0),
    warnings: report.warnings,
  };
  console.log(JSON.stringify(out, null, 2));
  if (report.warnings.length) {
    console.log('\n-- warnings --');
    for (const w of report.warnings) console.log('  ' + w);
  }
  return out;
}

if (require.main === module) main();
module.exports = { main, collectSfcs };
