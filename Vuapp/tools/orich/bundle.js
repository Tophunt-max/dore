'use strict';
/**
 * Low-level reader for the decompiled ORich uni-app bundle.
 *
 * Read-only access to the authorized reference artifact under
 *   ORich/resources/com.orich.orichrelease.apk/assets/apps/__UNI__F330A24/www/
 *
 * Exposes webpack-module lookup, compiled-SFC descriptors (render module,
 * options module, css scope id, child components) and verbatim scoped CSS.
 * Development tooling only - nothing here ships in the application.
 */
const fs = require('fs');
const path = require('path');

const REPO = path.resolve(__dirname, '..', '..', '..');
const WWW = path.join(
  REPO,
  'ORich/resources/com.orich.orichrelease.apk/assets/apps/__UNI__F330A24/www'
);

const PAIRS = { '{': '}', '[': ']', '(': ')' };

/** Return the bracketed block starting at index `openAt` (inclusive). */
function balanced(src, openAt) {
  const opener = src[openAt];
  const closer = PAIRS[opener];
  let depth = 0;
  let str = null;
  for (let i = openAt; i < src.length; i++) {
    const c = src[i];
    if (str) {
      if (c === '\\') { i++; continue; }
      if (c === str) str = null;
      continue;
    }
    if (c === '"' || c === "'" || c === '`') { str = c; continue; }
    if (c === opener) depth++;
    else if (c === closer) {
      depth--;
      if (depth === 0) return src.slice(openAt, i + 1);
    }
  }
  return src.slice(openAt);
}

class Bundle {
  constructor() {
    this.config = fs.readFileSync(path.join(WWW, 'app-config-service.js'), 'utf8');
    this.service = fs.readFileSync(path.join(WWW, 'app-service.js'), 'utf8');
    this.view = fs.readFileSync(path.join(WWW, 'app-view.js'), 'utf8');
    this.mods = { service: new Map(), view: new Map() };
    this._index('service', this.service);
    this._index('view', this.view);
  }

  /** Index every `"id":function(a,b,c){...}` webpack module body. */
  _index(which, src) {
    const table = this.mods[which];
    // module keys appear quoted ("2c87"), as identifiers (f0c5) and as bare
    // numbers (2668) - webpack emits whichever is shortest.
    const re = /[,{]\s*(?:"([^"]{2,16})"|([A-Za-z_$][\w$]{1,15})|(\d{1,16}))\s*:\s*function\s*\(/g;
    let m;
    while ((m = re.exec(src))) {
      const id = m[1] || m[2] || m[3];
      const brace = src.indexOf('{', m.index + m[0].length);
      if (brace === -1) continue;
      // only a parameter list may sit between `function(` and the body brace
      if (!/^[\w$,\s]*\)\s*$/.test(src.slice(m.index + m[0].length, brace))) continue;
      if (!table.has(id)) table.set(id, balanced(src, brace));
    }
  }

  module(id, which = 'service') {
    return this.mods[which].get(id) || '';
  }

  /** Page paths in declaration order, from app-config-service.js. */
  pages() {
    const m = /"pages":\[(.*?)\]/.exec(this.config);
    return m ? [...m[1].matchAll(/"([^"]+)"/g)].map((x) => x[1]) : [];
  }

  /** page path -> wrapper module id */
  pageModules() {
    const out = new Map();
    const re = /__definePage\("([^"]+)",\(function\(\)\{return Vue\.extend\(s\("([^"]+)"\)\.default\)\}\)\)/g;
    let m;
    while ((m = re.exec(this.service))) out.set(m[1], m[2]);
    return out;
  }

  /** Global (app-level) component registrations, e.g. easycom'd components. */
  globalComponents() {
    const out = new Map();
    const re = /Vue\.component\("([^"]+)",\s*(?:[\w$]+\.default|s\("([^"]+)"\)\.default)/g;
    let m;
    while ((m = re.exec(this.service))) if (m[2]) out.set(m[1], m[2]);
    return out;
  }

  /**
   * Parse a compiled-SFC wrapper module into its parts.
   *
   *   var i=s("<render>"),a=s("<options>"), ...
   *   c=Object(o["a"])(a.default,i.b,i.c,!1,null,"<scope>",null,!1,i.a,r)
   *
   * The child-component map lives in the *render* module as
   *   var i={navbar:s("5e3e").default, uCollapse:s("d142").default}
   */
  describe(modId, name, which = 'service') {
    const d = { name, mod: modId, render: null, options: null, scope: null, components: {} };
    const body = this.module(modId, which);
    if (!body) return d;

    const ids = /var\s+[\w$]+\s*=\s*s\("([^"]+)"\)\s*,\s*[\w$]+\s*=\s*s\("([^"]+)"\)/.exec(body);
    if (ids) { d.render = ids[1]; d.options = ids[2]; }
    const sc = /Object\([\w$]+\["a"\]\)\([^;]*?,"([0-9a-f]{6,10})"/.exec(body);
    if (sc) d.scope = sc[1];

    if (d.render) {
      const rmod = this.module(d.render, which);
      const cm = /var\s+[\w$]+\s*=\s*\{(?=[^{}]*s\(")/.exec(rmod);
      if (cm) {
        const block = balanced(rmod, cm.index + cm[0].length - 1);
        const re = /(?:"([^"]+)"|([\w$]+))\s*:\s*s\("([^"]+)"\)\.default/g;
        let c;
        while ((c = re.exec(block))) d.components[c[1] || c[2]] = c[3];
      }
    }

    // components can also be declared in the options module, e.g.
    //   components:{mescrollBody:i.default}   with   var i=s("<mod>")
    if (d.options) {
      const opts = this.resolveOptions(d.options, which);
      d.optionsModule = opts.id;
      const cm = /components\s*:\s*\{/.exec(opts.body);
      if (cm) {
        const block = balanced(opts.body, cm.index + cm[0].length - 1);
        const locals = new Map();
        for (const m of opts.body.matchAll(/([\w$]+)\s*=\s*[\w$]+\(s\("([^"]+)"\)\)/g)) locals.set(m[1], m[2]);
        for (const m of opts.body.matchAll(/var\s+([\w$]+)\s*=\s*s\("([^"]+)"\)/g)) if (!locals.has(m[1])) locals.set(m[1], m[2]);
        for (const m of block.matchAll(/(?:"([^"]+)"|([\w$]+))\s*:\s*([\w$]+)(?:\.default)?/g)) {
          const name = m[1] || m[2];
          const mod = locals.get(m[3]);
          if (name && mod && !d.components[name]) d.components[name] = mod;
        }
      }
    }
    return d;
  }

  /**
   * Follow the re-export shims (`var i=s("1475"); e.default=i.a`) down to the
   * module that actually holds the component options.
   */
  resolveOptions(id, which = 'service', depth = 0) {
    const body = this.module(id, which);
    if (!body || depth > 6) return { id, body };
    if (/data\s*[:(]|methods\s*:\s*\{|computed\s*:\s*\{|props\s*:\s*[{[]/.test(body)) {
      return { id, body };
    }
    const m = /var\s+[\w$]+\s*=\s*s\("([^"]+)"\)/.exec(body);
    if (m) return this.resolveOptions(m[1], which, depth + 1);
    return { id, body };
  }

  /** Raw body of the compiled `render` function of a render module. */
  renderSource(renderMod, which = 'service') {
    const rmod = this.module(renderMod, which);
    if (!rmod) return '';
    const m = /=\s*function\(\)\{var t=this/.exec(rmod);
    if (!m) return '';
    return balanced(rmod, rmod.indexOf('{', m.index));
  }

  /** Verbatim CSS rules carrying `[data-v-<scope>]`, in source order. */
  scopedCss(scope) {
    const src = this.view;
    const marker = `[data-v-${scope}]`;
    const rules = [];
    const seen = new Set();
    let idx = 0;
    for (;;) {
      const j = src.indexOf(marker, idx);
      if (j === -1) break;
      let k = j;
      while (k > 0 && !'}{;'.includes(src[k - 1])) k--;
      const end = src.indexOf('}', j);
      if (end === -1) break;
      const rule = src
        .slice(k, end + 1)
        .replace(/\\r/g, '')
        .replace(/\\n/g, ' ')
        .replace(/\s+/g, ' ')
        .trim();
      if (rule && !seen.has(rule)) { seen.add(rule); rules.push(rule); }
      idx = end + 1;
    }
    return rules;
  }
}

module.exports = { Bundle, balanced, WWW, REPO };

if (require.main === module) {
  const b = new Bundle();
  console.log('www:', WWW);
  console.log('modules: service=%d view=%d', b.mods.service.size, b.mods.view.size);
  const pages = b.pages();
  const pm = b.pageModules();
  console.log('pages: %d resolved: %d', pages.length, pm.size);
  console.log('global components:', [...b.globalComponents().keys()].join(', ') || '(none)');
  for (const p of pages.slice(0, 8)) {
    const d = b.describe(pm.get(p), p);
    console.log(
      `  ${p.padEnd(30)} render=${d.render} options=${d.options} scope=${d.scope} comps=${JSON.stringify(d.components)}`
    );
  }
}
