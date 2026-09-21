'use strict';
/**
 * Recover the i18n message catalogs from the bundle.
 *
 * The catalogs are plain data modules (babel adds a `_defineProperty` helper
 * for the computed keys), so they can simply be evaluated in a sandbox with
 * stubbed webpack arguments to get the exact message objects back.
 */
const vm = require('vm');

/** Evaluate a webpack module body and return its exports. */
function evalModule(body, requireStub = () => ({})) {
  const moduleObj = { exports: {} };
  const sandbox = {
    module: moduleObj,
    exports: moduleObj.exports,
    require: requireStub,
    console,
  };
  // webpack module signature: function(module, exports, __webpack_require__)
  const fn = vm.runInNewContext(`(function(t, e, s){${body.slice(1, -1)}})`, sandbox, {
    timeout: 5000,
  });
  fn(moduleObj, moduleObj.exports, requireStub);
  return moduleObj.exports;
}

/** Message catalogs keyed by the locale code declared in the bundle. */
function catalogs(bundle) {
  const found = [];
  for (const [id, body] of bundle.mods.service) {
    // a catalog is data-only and carries the well-known top-level sections
    if (!/\bhome\s*[:=]/.test(body)) continue;
    if (!body.includes('joinnow')) continue;
    try {
      const exp = evalModule(body);
      const msg = exp && (exp.default || exp);
      if (msg && typeof msg === 'object' && msg.home) found.push({ id, messages: msg });
    } catch {
      /* not a catalog */
    }
  }
  return found;
}

/**
 * Make a message safe for vue-i18n v9's stricter compiler.
 *
 * The reference app used vue-i18n v8, which treated `@` and unmatched braces as
 * ordinary text. v9 parses `@:`/`@.` as linked messages, `|` as a plural
 * separator and `{...}` as interpolation, so a message like
 * `"{A ÷ Number of needed} Remainder"` or `"eg. xxx@gmail.com"` fails to
 * compile. Those characters are wrapped in v9's literal syntax, which renders
 * them exactly as before.
 */
function escapeMessage(text) {
  let out = text.replace(/\{([^{}]*)\}/g, (match, inner) =>
    /^\s*[A-Za-z0-9_$]+\s*$/.test(inner) ? match : `{'{'}${inner}{'}'}`
  );
  // any brace left over is unmatched
  out = out.replace(/\{(?!['"])(?![^{}]*\})/g, "{'{'}");
  out = out.replace(/@/g, "{'@'}").replace(/\|/g, "{'|'}");
  return out;
}

/** Recursively escape every string in a catalog. */
function escapeCatalog(value) {
  if (typeof value === 'string') return escapeMessage(value);
  if (Array.isArray(value)) return value.map(escapeCatalog);
  if (value && typeof value === 'object') {
    const out = {};
    for (const key of Object.keys(value)) out[key] = escapeCatalog(value[key]);
    return out;
  }
  return value;
}

/** Guess a locale code from catalog contents. */
function localeOf(messages) {
  const probe = JSON.stringify(messages).slice(0, 4000);
  // Devanagari range => Hindi
  if (/[\u0900-\u097F]/.test(probe)) return 'hi';
  if (/[\u4e00-\u9fff]/.test(probe)) return 'zh-Hans';
  return 'en';
}

module.exports = { catalogs, localeOf, evalModule, escapeMessage, escapeCatalog };

if (require.main === module) {
  const { Bundle } = require('./bundle');
  const b = new Bundle();
  const found = catalogs(b);
  console.log('catalogs found:', found.length);
  for (const c of found) {
    const keys = Object.keys(c.messages);
    const count = JSON.stringify(c.messages).match(/"/g).length / 4;
    console.log(
      `  module ${c.id} locale=${localeOf(c.messages)} sections=${keys.length} (~${Math.round(count)} strings)`
    );
    console.log(`    sections: ${keys.join(', ')}`);
    console.log(`    sample: home.joinnow = ${JSON.stringify(c.messages.home && c.messages.home.joinnow)}`);
  }
}
