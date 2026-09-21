'use strict';
/**
 * Recover the stylesheets of the compiled app.
 *
 * Every SFC's CSS lives in a webpack module inside app-view.js as a
 * string-concatenation built by css-loader:
 *
 *   var a=e("24fb"), n=e("b8d8"), r=e("0f5a");     // runtime, url-escape, asset
 *   i=a(!1);
 *   var p=n(r);                                    // escaped asset url
 *   i.push([t.i, '.home{background:url('+p+')}', ""]);
 *
 * Resolving those bindings gives back the original CSS *including* every
 * `url(...)`, which a purely textual extraction has to throw away.
 *
 * The modules do not map one-to-one onto components: a page usually has its own
 * module, while the uView components share large aggregate modules that mix
 * scoped rules for dozens of components with unscoped shared rules (`.u-mask`,
 * `.u-flex`, ...). So every style module is parsed once and each rule is filed
 * by the `data-v-*` scope it carries, or as global when it carries none.
 */
const acorn = require('acorn');
const { balanced } = require('./bundle');

/** css-loader's url escape helper - identified by its `needQuotes` option. */
const isEscapeHelper = (body) => body.includes('needQuotes');

/**
 * Resolve the CSS text of one style module, with real asset urls.
 * @returns {string} CSS, or '' when not resolvable
 */
function resolveStyleModule(bundle, modId) {
  const body = bundle.module(modId, 'view');
  if (!body) return '';

  // 1. direct requires:  var r = e("0f5a")
  const requires = new Map();
  for (const m of body.matchAll(/var\s+([\w$]+)\s*=\s*[\w$]+\("([^"]+)"\)/g)) requires.set(m[1], m[2]);
  for (const m of body.matchAll(/,\s*([\w$]+)\s*=\s*[\w$]+\("([^"]+)"\)/g)) {
    if (!requires.has(m[1])) requires.set(m[1], m[2]);
  }

  const assetOf = (id) => {
    const src = bundle.module(id, 'view') || bundle.module(id, 'service');
    const m = /^\{[\w$]+\.exports="([^"]*)"\}$/.exec(src);
    return m ? m[1] : null;
  };

  let escapeName = null;
  for (const [name, id] of requires) {
    const src = bundle.module(id, 'view');
    if (src && isEscapeHelper(src)) escapeName = name;
  }

  // 2. escaped urls:  var p = n(r)
  const values = new Map();
  if (escapeName) {
    for (const m of body.matchAll(new RegExp(`([\\w$]+)\\s*=\\s*${escapeName}\\(([\\w$]+)\\)`, 'g'))) {
      const id = requires.get(m[2]);
      const path = id ? assetOf(id) : null;
      // css-loader strips the leading slash; keep the absolute path so the url
      // resolves from the site root in the H5 build
      if (path) values.set(m[1], path);
    }
  }
  for (const [name, id] of requires) {
    if (values.has(name)) continue;
    const path = assetOf(id);
    if (path) values.set(name, path);
  }

  // 3. every pushed CSS expression:  i.push([t.i, <expr>, ""])
  const chunks = [];
  for (const m of body.matchAll(/\.push\(\[/g)) {
    const arr = balanced(body, body.indexOf('[', m.index));
    let ast;
    try {
      ast = acorn.parse(`(${arr})`, { ecmaVersion: 2020 });
    } catch {
      continue;
    }
    const elements = ast.body[0].expression.elements || [];
    if (elements.length < 2) continue;

    const fold = (n) => {
      if (!n) return '';
      if (n.type === 'Literal') return String(n.value);
      if (n.type === 'BinaryExpression' && n.operator === '+') return fold(n.left) + fold(n.right);
      if (n.type === 'Identifier') {
        const v = values.get(n.name);
        return v !== undefined ? `'${v}'` : '';
      }
      return '';
    };
    const css = fold(elements[1]);
    if (css) chunks.push(css);
  }
  return chunks.join('\n');
}

/** Split CSS into top-level statements, respecting nested at-rule blocks. */
function statements(css) {
  const out = [];
  let depth = 0;
  let start = 0;
  let str = null;
  for (let i = 0; i < css.length; i++) {
    const c = css[i];
    if (str) {
      if (c === '\\') { i++; continue; }
      if (c === str) str = null;
      continue;
    }
    if (c === '"' || c === "'") { str = c; continue; }
    if (c === '{') depth++;
    else if (c === '}') {
      depth--;
      if (depth === 0) { out.push(css.slice(start, i + 1).trim()); start = i + 1; }
    } else if (c === ';' && depth === 0) {
      out.push(css.slice(start, i + 1).trim());
      start = i + 1;
    }
  }
  if (start < css.length && css.slice(start).trim()) out.push(css.slice(start).trim());
  return out.filter(Boolean);
}

/** Readable one-rule-per-line formatting, with nested blocks indented. */
function format(css, indent = '') {
  const lines = [];
  for (const st of statements(css)) {
    const open = st.indexOf('{');
    if (open === -1 || !st.endsWith('}')) {
      lines.push(indent + st);
      continue;
    }
    const head = st.slice(0, open).trim().replace(/\s*,\s*/g, ', ');
    const inner = st.slice(open + 1, -1).trim();
    if (/^@(media|supports|keyframes|-webkit-keyframes|layer|document)/i.test(head)) {
      lines.push(`${indent}${head} {`);
      lines.push(format(inner, indent + '  '));
      lines.push(`${indent}}`);
    } else {
      lines.push(`${indent}${head} { ${inner} }`);
    }
  }
  return lines.join('\n');
}

const SCOPE_RE = /\[data-v-([0-9a-f]{6,10})\]|-data-v-([0-9a-f]{6,10})\b/g;

/** Scope ids a statement refers to (selector attributes or keyframe names). */
function scopesOf(statement) {
  const out = new Set();
  for (const m of statement.matchAll(SCOPE_RE)) out.add(m[1] || m[2]);
  return out;
}

/**
 * Parse every style module once and file each rule by scope.
 * @returns {{byScope: Map<string,string[]>, global: string[]}}
 */
function indexStylesheets(bundle) {
  if (bundle.__cssIndex) return bundle.__cssIndex;

  const byScope = new Map();
  const global = [];
  const seenGlobal = new Set();
  const seenScoped = new Map();

  for (const [id, body] of bundle.mods.view) {
    if (!body.includes('.push([')) continue;
    const css = resolveStyleModule(bundle, id);
    if (!css) continue;

    for (const statement of statements(css)) {
      if (/^@charset/i.test(statement)) continue;
      const scopes = scopesOf(statement);
      if (scopes.size === 0) {
        if (!seenGlobal.has(statement)) {
          seenGlobal.add(statement);
          global.push(statement);
        }
        continue;
      }
      for (const scope of scopes) {
        if (!byScope.has(scope)) {
          byScope.set(scope, []);
          seenScoped.set(scope, new Set());
        }
        if (seenScoped.get(scope).has(statement)) continue;
        seenScoped.get(scope).add(statement);
        byScope.get(scope).push(statement);
      }
    }
  }

  bundle.__cssIndex = { byScope, global };
  return bundle.__cssIndex;
}

/** Strip the scope attribute; the generated SFC re-scopes via Vue's `scoped`. */
const unscope = (css) => css.replace(/\[data-v-[0-9a-f]+\]/g, '');

/**
 * The stylesheet belonging to one compiled SFC.
 *
 * Accepts every scope id the SFC is known by. uni-app compiles a component
 * twice - once for the service layer and once for the view layer - and the two
 * halves get different `data-v-*` ids, with the CSS filed under the view one.
 * Looking up only the service id silently yields no styles at all.
 */
function scopedStylesheet(bundle, scopes) {
  const { byScope } = indexStylesheets(bundle);
  const wanted = (Array.isArray(scopes) ? scopes : [scopes]).filter(Boolean);
  const collected = [];
  const seen = new Set();
  for (const scope of wanted) {
    for (const rule of byScope.get(scope) || []) {
      const key = unscope(rule);
      if (seen.has(key)) continue;
      seen.add(key);
      collected.push(key);
    }
  }
  if (!collected.length) return { css: '', rules: 0 };
  const text = format(collected.join('\n'));
  return { css: text, rules: (text.match(/\{/g) || []).length };
}

/**
 * The app-wide stylesheet: every rule that carried no scope attribute. This is
 * the uView base CSS plus the reference app's own global rules, which its
 * components rely on (`.u-mask`, `.u-flex`, `.otw`, ...).
 */
function globalStylesheet(bundle) {
  const { global } = indexStylesheets(bundle);
  const text = format(global.join('\n'));
  return { css: text, rules: (text.match(/\{/g) || []).length };
}

module.exports = {
  scopedStylesheet,
  globalStylesheet,
  resolveStyleModule,
  indexStylesheets,
  format,
};

if (require.main === module) {
  const { Bundle } = require('./bundle');
  const b = new Bundle();
  const { byScope, global } = indexStylesheets(b);
  console.log('scopes with css:', byScope.size, ' global rules:', global.length);
  const home = b.describe(b.pageModules().get('pages/home/home'), 'home');
  console.log('home scope', home.scope, '->', scopedStylesheet(b, home.scope).rules, 'rules');
  const mask = b.describe('16bb', 'uMask');
  console.log('u-mask scope', mask.scope, '->', scopedStylesheet(b, mask.scope).rules, 'rules');
  const g = globalStylesheet(b);
  console.log('global ->', g.rules, 'rules; has .u-mask:', /\.u-mask\b/.test(g.css), '; has .u-flex:', /\.u-flex\b/.test(g.css));
}
