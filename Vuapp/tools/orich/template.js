'use strict';
/**
 * Transpile a compiled uni-app (Vue 2) render function back into a readable
 * Vue template.
 *
 * The service-layer render functions in app-service.js keep every *literal*
 * static class and text through the `_$s(id, type, value)` marker calls, so the
 * original template can be recovered almost exactly:
 *
 *   _$s(id,'sc', 'foo')      static class      -> class="foo"
 *   _$s(id,'c',  expr)       dynamic class     -> :class="expr"
 *   _$s(id,'s',  expr)       dynamic style     -> :style="expr"
 *   _$s(id,'a-x',expr)       dynamic attribute -> :x="expr"
 *   _$s(id,'i',  expr)       v-if              -> v-if="expr"
 *   _$s(id,'e',  expr)       v-else-if         -> v-else-if="expr"
 *   _$s(id,'f',  {forItems}) v-for             -> v-for="(item, index) in ..."
 *   _$s(id,'tN-M', _s(expr)) interpolation     -> {{ expr }}
 *   _$s(id,'v-model'|'v-show'|'v-html', expr)  -> the matching directive
 *
 * Helpers: _v (text), _s (toString), _e (empty), _l (list), _u (scoped slots).
 */
const acorn = require('acorn');
const astring = require('astring');
const { generate } = astring;

/** Prefer single-quoted strings so expressions can live in HTML attributes. */
const singleQuote = (s) =>
  `'${String(s).replace(/\\/g, '\\\\').replace(/'/g, "\\'").replace(/\n/g, '\\n')}'`;

const TEMPLATE_GENERATOR = Object.assign({}, astring.baseGenerator, {
  Literal(node, state) {
    if (typeof node.value === 'string') state.write(singleQuote(node.value));
    else if (node.value === null && node.raw === undefined) state.write('null');
    else state.write(node.raw !== undefined ? node.raw : String(node.value));
  },
});

const toSource = (node) => generate(node, { generator: TEMPLATE_GENERATOR, indent: '', lineEnd: ' ' });

// uni-app built-in tags that must stay as-is (everything else is a component)
const VOID_LIKE = new Set(['image', 'input', 'textarea', 'br', 'hr', 'img']);

/** Parse the render function source and return its returned expression. */
function parseRender(src) {
  const ast = acorn.parse(`(function()${src})`, { ecmaVersion: 2020 });
  const fn = ast.body[0].expression;
  let creator = 's';
  for (const stmt of fn.body.body) {
    if (stmt.type !== 'VariableDeclaration') continue;
    for (const decl of stmt.declarations) {
      // var s = t._self._c || e
      if (
        decl.init &&
        decl.init.type === 'LogicalExpression' &&
        generate(decl.init.left).includes('_self._c')
      ) {
        creator = decl.id.name;
      }
    }
  }
  const ret = fn.body.body.find((s) => s.type === 'ReturnStatement');
  return { root: ret ? ret.argument : null, creator };
}

// ---------------------------------------------------------------- AST helpers

const isCall = (n, name) =>
  n &&
  n.type === 'CallExpression' &&
  n.callee.type === 'MemberExpression' &&
  !n.callee.computed &&
  n.callee.property.name === name;

const isMarker = (n) => isCall(n, '_$s');

/** `_$s(id, type, value)` -> {type, value} */
function marker(n) {
  if (!isMarker(n) || n.arguments.length < 2) return null;
  const t = n.arguments[1];
  if (!t || t.type !== 'Literal') return null;
  return { kind: String(t.value), value: n.arguments[2] };
}

function literalOf(n) {
  if (!n) return undefined;
  if (n.type === 'Literal') return n.value;
  // minified booleans: !0 / !1
  if (n.type === 'UnaryExpression' && n.operator === '!' && n.argument.type === 'Literal') {
    return !n.argument.value;
  }
  return undefined;
}

function objectProps(n) {
  const out = [];
  if (!n || n.type !== 'ObjectExpression') return out;
  for (const p of n.properties) {
    if (p.type !== 'Property') continue;
    const key = p.key.type === 'Literal' ? String(p.key.value) : p.key.name;
    out.push([key, p.value]);
  }
  return out;
}

const getProp = (n, key) => {
  const hit = objectProps(n).find(([k]) => k === key);
  return hit ? hit[1] : null;
};

// ------------------------------------------------------------ expression text

/**
 * Print an expression as template source:
 *   - `t.foo`        -> `foo`        (component instance access)
 *   - loop/slot params are renamed to their emitted names
 *   - asset requires `s("23db")` are folded to their string path
 */
function expr(node, ctx) {
  if (!node) return '';
  const holder = { root: JSON.parse(JSON.stringify(node)) };
  const walk = (n, parent, key) => {
    if (!n || typeof n !== 'object') return;
    if (Array.isArray(n)) {
      n.forEach((c, i) => walk(c, n, i));
      return;
    }
    if (!n.type) return;

    // fold asset requires: s("23db") -> "/static/image/...png"
    if (
      n.type === 'CallExpression' &&
      n.callee.type === 'Identifier' &&
      n.callee.name !== ctx.creator &&
      n.arguments.length === 1 &&
      n.arguments[0].type === 'Literal' &&
      typeof n.arguments[0].value === 'string' &&
      ctx.asset
    ) {
      const p = ctx.asset(n.arguments[0].value);
      if (p) {
        parent[key] = { type: 'Literal', value: p };
        return;
      }
    }

    // t.foo -> foo   (and any `_$s`-receiver alias behaves the same)
    if (
      n.type === 'MemberExpression' &&
      !n.computed &&
      n.object.type === 'Identifier' &&
      (n.object.name === 't' || ctx.vmAliases.has(n.object.name))
    ) {
      parent[key] = { type: 'Identifier', name: n.property.name };
      walk(parent[key], parent, key);
      return;
    }

    // minified booleans: !0 -> true, !1 -> false
    if (
      n.type === 'UnaryExpression' &&
      n.operator === '!' &&
      n.argument.type === 'Literal' &&
      typeof n.argument.value === 'number'
    ) {
      parent[key] = { type: 'Identifier', name: n.argument.value ? 'false' : 'true' };
      return;
    }

    // rename loop / slot-prop identifiers
    if (n.type === 'Identifier' && ctx.names.has(n.name)) {
      n.name = ctx.names.get(n.name);
      return;
    }

    for (const k of Object.keys(n)) {
      if (k === 'type' || k === 'start' || k === 'end') continue;
      walk(n[k], n, k);
    }
  };
  walk(holder.root, holder, 'root');

  let out;
  try {
    out = toSource(holder.root);
  } catch {
    return '';
  }
  return out.replace(/\s+/g, ' ').trim();
}

/**
 * Escape a value for use inside a double-quoted attribute. Only `"` needs
 * escaping - leaving `&&` and `<` alone keeps generated expressions readable.
 */
const attrQuote = (s) => String(s).replace(/"/g, '&quot;');

// --------------------------------------------------------------- IR utilities

/**
 * The compiler-internal node id of a vnode: `_i:47` or `_i:"11-"+n+"-"+r`.
 * The numeric prefix is stable across the service and view layers, so it can
 * be used to join the two renders of the same template.
 */
function nodeIdOf(attrsObj) {
  const iv = getProp(attrsObj, '_i');
  if (!iv) return null;
  if (iv.type === 'Literal') return String(iv.value);
  let n = iv;
  while (n.type === 'BinaryExpression') n = n.left;
  if (n.type === 'Literal' && typeof n.value === 'string') {
    const m = /^(\d+)/.exec(n.value);
    if (m) return m[1];
  }
  return null;
}

/**
 * Harvest static attributes from a *view-layer* render function.
 *
 * uni-app splits a page across two bundles: the service render keeps the
 * literal classes/text behind `_$s(...)` markers, while purely static
 * attributes (an `<image src="/static/...">`, `mode="widthFix"`, ...) survive
 * only in the view render. Both layers number their nodes identically, so the
 * static attributes can be merged back by node id.
 *
 * @returns Map<nodeId, Array<[name, literalValue]>>
 */
function viewStaticAttrs(src) {
  const out = new Map();
  if (!src) return out;
  let ast;
  try {
    ast = acorn.parse(`(function()${src})`, { ecmaVersion: 2020 });
  } catch {
    return out;
  }
  const visit = (n) => {
    if (!n || typeof n !== 'object') return;
    if (Array.isArray(n)) return n.forEach(visit);
    if (!n.type) return;
    if (n.type === 'CallExpression') {
      const attrs = n.arguments.find((a) => a && a.type === 'ObjectExpression' && getProp(a, 'attrs'));
      if (attrs) {
        const attrsObj = getProp(attrs, 'attrs');
        const id = nodeIdOf(attrsObj);
        if (id !== null) {
          const keep = [];
          for (const [k, v] of objectProps(attrsObj)) {
            if (k === '_i') continue;
            const lit = literalOf(v);
            if (lit !== undefined) keep.push([k, lit]);
          }
          if (keep.length && !out.has(id)) out.set(id, keep);
        }
      }
    }
    for (const k of Object.keys(n)) {
      if (k === 'type' || k === 'start' || k === 'end') continue;
      visit(n[k]);
    }
  };
  visit(ast);
  return out;
}

/** Node id encoded in a marker's first argument (`43` or `"8-"+n`). */
function idFromExpr(node) {
  if (!node) return null;
  if (node.type === 'Literal') return String(node.value);
  let n = node;
  while (n.type === 'BinaryExpression') n = n.left;
  if (n.type === 'Literal' && typeof n.value === 'string') {
    const m = /^(\d+)/.exec(n.value);
    if (m) return m[1];
  }
  return null;
}

/** Flatten a `a + b + c` chain into its operands. */
function flattenConcat(node, out = []) {
  if (node && node.type === 'BinaryExpression' && node.operator === '+') {
    flattenConcat(node.left, out);
    flattenConcat(node.right, out);
  } else if (node) {
    out.push(node);
  }
  return out;
}

/**
 * Harvest static text fragments from a *view-layer* render function.
 *
 * A template like `<view>{{ a }} of {{ b }}</view>` compiles to a view-layer
 * `_v(_$g(7,'t0-0') + ' of ' + _$g(7,'t0-1'))`: the literal " of " survives
 * only here, while the service layer holds the expressions behind the matching
 * `t0-0` / `t0-1` markers.
 *
 * @returns Map<`${nodeId}|${markerKey}`, Array<{lit}|{key}>>
 */
function viewStaticText(src) {
  const out = new Map();
  if (!src) return out;
  let ast;
  try {
    ast = acorn.parse(`(function()${src})`, { ecmaVersion: 2020 });
  } catch {
    return out;
  }
  const visit = (n) => {
    if (!n || typeof n !== 'object') return;
    if (Array.isArray(n)) return n.forEach(visit);
    if (!n.type) return;
    if (isCall(n, '_v') && n.arguments.length === 1) {
      const parts = [];
      const keys = [];
      let id = null;
      for (const p of flattenConcat(n.arguments[0])) {
        if (isCall(p, '_$g') && p.arguments.length >= 2) {
          const key = literalOf(p.arguments[1]);
          id = id || idFromExpr(p.arguments[0]);
          if (typeof key === 'string' && key.startsWith('t')) {
            parts.push({ key });
            keys.push(key);
            continue;
          }
        }
        const lit = literalOf(p);
        if (typeof lit === 'string') parts.push({ lit });
      }
      // only useful when it mixes literal text with at least one placeholder
      if (id && keys.length && parts.some((p) => p.lit !== undefined)) {
        for (const k of keys) {
          const mapKey = `${id}|${k}`;
          if (!out.has(mapKey)) out.set(mapKey, parts);
        }
      }
    }
    for (const k of Object.keys(n)) {
      if (k === 'type' || k === 'start' || k === 'end') continue;
      visit(n[k]);
    }
  };
  visit(ast);
  return out;
}

const el = (tag) => ({
  type: 'element',
  tag,
  attrs: [],      // [name, value|null]  (null = bare attribute)
  children: [],
  slot: null,     // named-slot wrapper
});

// ------------------------------------------------------------------ converter

class Transpiler {
  constructor(opts = {}) {
    this.asset = opts.asset || (() => null);
    // static attributes / text recovered from the view-layer render, by node id
    this.viewAttrs = opts.viewAttrs || new Map();
    this.viewText = opts.viewText || new Map();
    // the component's own props: Vue 2 tolerated `v-model="someProp"`, Vue 3
    // rejects writing to a prop, so those become value + forwarded input
    this.props = opts.props || new Set();
    this.warnings = [];
  }

  transpile(src) {
    const { root, creator } = parseRender(src);
    if (!root) return { template: '', warnings: ['no render return statement'] };
    this.ctx = {
      creator,
      asset: this.asset,
      names: new Map(),
      vmAliases: new Set(),
      loopDepth: 0,
      slotDepth: 0,
    };
    const nodes = this.nodes(root);
    const template = nodes.map((n) => this.emit(n, 1)).filter(Boolean).join('\n');
    return { template, warnings: this.warnings };
  }

  warn(msg) {
    if (!this.warnings.includes(msg)) this.warnings.push(msg);
  }

  /** Convert an expression that yields one or more vnodes into IR nodes. */
  nodes(node) {
    if (!node) return [];

    if (node.type === 'ArrayExpression') {
      return node.elements.flatMap((e) => this.nodes(e));
    }
    if (isCall(node, '_e')) return [];
    if (isCall(node, '_v')) {
      const t = this.text(node.arguments[0]);
      return t ? [{ type: 'text', value: t }] : [];
    }
    if (isCall(node, '_l')) return this.forLoop(node);
    if (isCall(node, '_t')) return this.slot(node);
    if (node.type === 'ConditionalExpression') return this.conditional(node);

    // element creation: s("view", data?, children?, normalizationType?)
    if (node.type === 'CallExpression' && node.callee.type === 'Identifier' && node.callee.name === this.ctx.creator) {
      const e = this.element(node);
      return e ? [e] : [];
    }

    // numeric normalization flags and stray literals carry no markup
    if (node.type === 'Literal') return [];

    this.warn(`unhandled node ${node.type}: ${expr(node, this.ctx).slice(0, 80)}`);
    return [];
  }

  /** `cond ? A : B` chains -> v-if / v-else-if / v-else */
  conditional(node) {
    const out = [];
    let cur = node;
    let first = true;
    for (;;) {
      const m = marker(cur.test);
      const cond = m ? expr(m.value, this.ctx) : expr(cur.test, this.ctx);
      const branch = this.branch(cur.consequent);
      if (branch) {
        branch.attrs.unshift([first ? 'v-if' : 'v-else-if', cond]);
        out.push(branch);
      }
      first = false;

      const alt = cur.alternate;
      if (!alt || isCall(alt, '_e')) break;
      if (alt.type === 'ConditionalExpression' && marker(alt.test)) {
        cur = alt;
        continue;
      }
      const other = this.branch(alt);
      if (other) {
        other.attrs.unshift(['v-else', null]);
        out.push(other);
      }
      break;
    }
    return out;
  }

  /** A conditional branch: a single element, or a list wrapped in <template>. */
  branch(node) {
    const nodes = this.nodes(node);
    if (nodes.length === 0) return null;
    if (nodes.length === 1 && nodes[0].type === 'element' && !nodes[0].attrs.some(([k]) => k.startsWith('v-if') || k === 'v-else')) {
      return nodes[0];
    }
    const wrap = el('template');
    wrap.children = nodes;
    return wrap;
  }

  /** `_l(_$s(id,'f',{forItems:LIST}), function(item,key,index,gen){...})` */
  forLoop(node) {
    const [listArg, fnArg] = node.arguments;
    const m = marker(listArg);
    const items = m ? getProp(m.value, 'forItems') : listArg;
    const listSrc = expr(items, this.ctx);

    const fn = fnArg && (fnArg.type === 'FunctionExpression' || fnArg.type === 'ArrowFunctionExpression') ? fnArg : null;
    if (!fn) {
      this.warn('v-for without a render callback');
      return [];
    }

    const depth = this.ctx.loopDepth;
    const itemName = depth === 0 ? 'item' : `item${depth + 1}`;
    const indexName = depth === 0 ? 'index' : `index${depth + 1}`;

    const saved = new Map(this.ctx.names);
    const p = fn.params.map((x) => (x && x.name) || null);
    // uni-app calls back with (item, key, index, genIndex); key === index for
    // arrays, and genIndex only feeds the internal `_i` ids we drop.
    if (p[0]) this.ctx.names.set(p[0], itemName);
    if (p[1]) this.ctx.names.set(p[1], indexName);
    if (p[2]) this.ctx.names.set(p[2], indexName);
    if (p[3]) this.ctx.names.set(p[3], '__gen');
    this.ctx.loopDepth = depth + 1;

    const body =
      fn.body.type === 'BlockStatement'
        ? (fn.body.body.find((s) => s.type === 'ReturnStatement') || {}).argument
        : fn.body;
    const produced = this.nodes(body);

    this.ctx.loopDepth = depth;
    this.ctx.names = saved;

    const target = produced.length === 1 ? produced[0] : null;
    if (target && target.type === 'element') {
      target.attrs.unshift(['v-for', `(${itemName}, ${indexName}) in ${listSrc}`]);
      if (!target.attrs.some(([k]) => k === ':key' || k === 'key')) {
        target.attrs.splice(1, 0, [':key', indexName]);
      }
      return [target];
    }
    const wrap = el('template');
    wrap.attrs.push(['v-for', `(${itemName}, ${indexName}) in ${listSrc}`]);
    wrap.attrs.push([':key', indexName]);
    wrap.children = produced;
    return [wrap];
  }

  /**
   * `_t(name, fallbackChildren, props)` -> `<slot name="x">fallback</slot>`.
   * The trailing `{_i: N}` is the compiler's node id and is dropped.
   */
  slot(node) {
    const [nameNode, fallback, props] = node.arguments;
    const name = literalOf(nameNode);
    const e = el('slot');
    if (name && name !== 'default') e.attrs.push(['name', String(name)]);

    // slot props are what a scoped slot consumer receives
    if (props && props.type === 'ObjectExpression') {
      for (const [key, value] of objectProps(props)) {
        if (key === '_i') continue;
        const m = marker(value);
        const src = expr(m ? m.value : value, this.ctx);
        if (src) e.attrs.push([`:${key}`, src]);
      }
    }
    if (fallback && fallback.type !== 'Literal') e.children = this.nodes(fallback);
    return [e];
  }

  /**
   * Text payload of `_v(...)` -> static text and/or `{{ }}` interpolations.
   *
   * The service layer supplies the expressions (as `tN-M` markers) and the view
   * layer supplies the literal text around them; when a view pattern is known
   * for this node the two are interleaved to rebuild the original text.
   */
  text(node) {
    if (!node) return '';

    const parts = flattenConcat(node);
    const byKey = new Map();
    let nodeId = null;
    for (const p of parts) {
      const m = marker(p);
      if (m && m.kind.startsWith('t')) {
        nodeId = nodeId || idFromExpr(p.arguments[0]);
        byKey.set(m.kind, this.textValue(m.value));
      }
    }

    if (nodeId && byKey.size) {
      for (const key of byKey.keys()) {
        const pattern = this.viewText.get(`${nodeId}|${key}`);
        if (!pattern) continue;
        return pattern
          .map((p) => (p.lit !== undefined ? p.lit : byKey.get(p.key) || ''))
          .join('');
      }
    }

    return parts.map((p) => this.textValue(marker(p) ? marker(p).value : p)).join('');
  }

  /** A single text fragment: `_s(expr)` -> `{{ expr }}`, literals verbatim. */
  textValue(node) {
    if (!node) return '';
    const m = marker(node);
    if (m) return this.textValue(m.value);
    if (node.type === 'Literal') return String(node.value);
    if (isCall(node, '_s')) {
      const e = expr(node.arguments[0], this.ctx);
      return e ? `{{ ${e} }}` : '';
    }
    if (node.type === 'BinaryExpression' && node.operator === '+') {
      return this.textValue(node.left) + this.textValue(node.right);
    }
    const e = expr(node, this.ctx);
    return e ? `{{ ${e} }}` : '';
  }

  /** s(tag, data, children, normalization) -> element IR */
  element(node) {
    const [tagNode, ...rest] = node.arguments;
    const tag = literalOf(tagNode);
    if (typeof tag !== 'string') {
      this.warn(`dynamic tag: ${expr(tagNode, this.ctx)}`);
      return null;
    }
    const e = el(tag);

    // The vnode data may be wrapped in the spread helpers:
    //   _g(_b(DATA, tag, attrsObj, asProp), listenersObj)
    // which is how `v-bind="$attrs"` / `v-on="$listeners"` compile. Unwrapping
    // is what makes the inner data object reachable - without it every prop on
    // the element is silently dropped.
    const spreads = [];
    const unwrapData = (n) => {
      if (isCall(n, '_b')) {
        const value = n.arguments[2];
        if (value) spreads.push(['v-bind', value]);
        return unwrapData(n.arguments[0]);
      }
      if (isCall(n, '_g')) {
        // Vue 3 removed `$listeners`; listeners arrive through `$attrs`, which
        // the accompanying v-bind already forwards.
        return unwrapData(n.arguments[0]);
      }
      return n;
    };

    let data = null;
    let children = null;
    for (const raw of rest) {
      if (!raw) continue;
      const r = unwrapData(raw);
      if (r.type === 'ObjectExpression' && !data) data = r;
      else if (r.type === 'ArrayExpression' || isCall(r, '_l') || isCall(r, '_v') || r.type === 'ConditionalExpression' || (r.type === 'CallExpression' && r.callee.name === this.ctx.creator)) {
        if (!children) children = r;
      }
    }

    if (data) this.applyData(e, data);

    for (const [name, value] of spreads) {
      const m = marker(value);
      const src = expr(m ? m.value : value, this.ctx);
      if (src) e.attrs.push([name, src]);
    }

    // merge the static attributes that only the view layer retained
    const id = data ? nodeIdOf(getProp(data, 'attrs')) : null;
    if (id !== null && this.viewAttrs.has(id)) {
      const present = new Set(e.attrs.map(([k]) => k.replace(/^[:@]/, '')));
      for (const [name, value] of this.viewAttrs.get(id)) {
        if (present.has(name)) continue;
        if (typeof value === 'string') e.attrs.push([name, value]);
        else e.attrs.push([`:${name}`, String(value)]);
      }
    }

    if (children) e.children = this.nodes(children);
    return e;
  }

  applyData(e, data) {
    const props = objectProps(data);
    const has = (k) => props.some(([key]) => key === k);
    const directiveNames = new Set();

    // directives first: they decide whether domProps/on entries are sugar
    const dirs = getProp(data, 'directives');
    if (dirs && dirs.type === 'ArrayExpression') {
      for (const d of dirs.elements) {
        const name = literalOf(getProp(d, 'name'));
        const valueNode = getProp(d, 'value');
        const m = marker(valueNode);
        const value = expr(m ? m.value : valueNode, this.ctx);
        if (name === 'model') {
          directiveNames.add('model');
          this.pushVModel(e, value);
        } else if (name === 'show') {
          e.attrs.push(['v-show', value]);
        } else if (name) {
          e.attrs.push([`v-${name}`, value]);
        }
      }
    }

    for (const [key, value] of props) {
      switch (key) {
        case 'staticClass': {
          const m = marker(value);
          const cls = m ? literalOf(m.value) : literalOf(value);
          if (cls !== undefined) e.attrs.push(['class', String(cls)]);
          else e.attrs.push([':class', expr(m ? m.value : value, this.ctx)]);
          break;
        }
        case 'class': {
          const m = marker(value);
          e.attrs.push([':class', expr(m ? m.value : value, this.ctx)]);
          break;
        }
        case 'staticStyle': {
          const parts = objectProps(value)
            .map(([k, v]) => `${k.replace(/[A-Z]/g, (c) => '-' + c.toLowerCase())}: ${literalOf(v)}`)
            .join('; ');
          if (parts) e.attrs.push(['style', parts]);
          break;
        }
        case 'style': {
          const m = marker(value);
          e.attrs.push([':style', expr(m ? m.value : value, this.ctx)]);
          break;
        }
        case 'attrs':
          this.applyAttrs(e, value);
          break;
        case 'on':
        case 'nativeOn':
          this.applyEvents(e, value, key === 'nativeOn', directiveNames);
          break;
        case 'model': {
          const v = getProp(value, 'value');
          const m = marker(v);
          this.pushVModel(e, expr(m ? m.value : v, this.ctx));
          break;
        }
        case 'domProps': {
          for (const [dk, dv] of objectProps(value)) {
            if (dk === 'innerHTML') {
              const inner = isCall(dv, '_s') ? dv.arguments[0] : dv;
              const m = marker(inner);
              e.attrs.push(['v-html', expr(m ? m.value : inner, this.ctx)]);
            } else if (dk === 'value' && directiveNames.has('model')) {
              // v-model sugar on native inputs - already emitted
            } else if (dk === 'textContent') {
              const m = marker(dv);
              e.attrs.push(['v-text', expr(m ? m.value : dv, this.ctx)]);
            }
          }
          break;
        }
        case 'ref': {
          const r = literalOf(value);
          if (r !== undefined) e.attrs.push(['ref', String(r)]);
          break;
        }
        case 'key': {
          const m = marker(value);
          if (m && m.kind === 'f') {
            const k = getProp(m.value, 'key');
            const src = expr(k, this.ctx);
            if (src) e.attrs.push([':key', src]);
          } else {
            const src = expr(m ? m.value : value, this.ctx);
            if (src) e.attrs.push([':key', src]);
          }
          break;
        }
        case 'slot': {
          const s = literalOf(value);
          if (s !== undefined) e.slot = String(s);
          break;
        }
        case 'scopedSlots':
          this.applyScopedSlots(e, value);
          break;
        case 'directives':
          break; // handled above
        case 'wxsProps':
        case 'refInFor':
        case 'attrsMap':
          break; // mini-program / compiler bookkeeping, no template equivalent
        default:
          this.warn(`unhandled vnode data key: ${key}`);
      }
    }
  }

  /**
   * Emit a v-model binding. Vue 2 allowed `v-model="someProp"`; in Vue 3 a prop
   * is read-only, so bind the value and forward the update to the parent -
   * which is what the two-way binding effectively did.
   */
  pushVModel(e, source) {
    if (source && this.props.has(source.trim())) {
      e.attrs.push([':value', source]);
      e.attrs.push(['@input', `$emit('input', $event)`]);
      return;
    }
    e.attrs.push(['v-model', source]);
  }

  applyAttrs(e, obj) {
    for (const [name, value] of objectProps(obj)) {
      if (name === '_i') continue; // compiler-internal node id
      const m = marker(value);
      if (m) {
        if (m.kind.startsWith('a-')) {
          const attr = m.kind.slice(2);
          const lit = literalOf(m.value);
          if (typeof lit === 'string') e.attrs.push([attr, lit]);
          else if (lit !== undefined) e.attrs.push([`:${attr}`, String(lit)]);
          else e.attrs.push([`:${attr}`, expr(m.value, this.ctx)]);
        } else if (m.kind === 'v-html') {
          e.attrs.push(['v-html', expr(m.value, this.ctx)]);
        } else {
          e.attrs.push([`:${name}`, expr(m.value, this.ctx)]);
        }
        continue;
      }
      const lit = literalOf(value);
      if (typeof lit === 'string') e.attrs.push([name, lit]);
      else if (typeof lit === 'boolean' || typeof lit === 'number') e.attrs.push([`:${name}`, String(lit)]);
      else e.attrs.push([`:${name}`, expr(value, this.ctx)]);
    }
  }

  applyEvents(e, obj, isNative, directiveNames) {
    for (const [rawName, handler] of objectProps(obj)) {
      let name = rawName;
      const mods = [];
      if (isNative) mods.push('native');

      // v-model desugaring on native inputs: skip the generated input handler
      if (directiveNames.has('model') && (name === 'input' || name === 'change')) {
        const src = generate(handler);
        if (src.includes('composing') || src.includes('target.value')) continue;
      }

      let body = handler;
      if (handler.type === 'FunctionExpression' || handler.type === 'ArrowFunctionExpression') {
        const stmts =
          handler.body.type === 'BlockStatement'
            ? handler.body.body
            : [{ type: 'ExpressionStatement', expression: handler.body }];
        const pieces = [];
        for (const st of stmts) {
          let ex = st.type === 'ReturnStatement' ? st.argument : st.expression;
          if (!ex) continue;
          // `return e.stopPropagation(), t.foo()` -> .stop modifier
          const seq = ex.type === 'SequenceExpression' ? ex.expressions : [ex];
          const kept = [];
          for (const s of seq) {
            const src = expr(s, this.ctx);
            if (/^\w+\.stopPropagation\(\)$/.test(src)) { mods.push('stop'); continue; }
            if (/^\w+\.preventDefault\(\)$/.test(src)) { mods.push('prevent'); continue; }
            kept.push(src);
          }
          if (kept.length) pieces.push(kept.join(', '));
        }
        const param = handler.params[0] && handler.params[0].name;
        let code = pieces.join('; ');
        if (param) {
          // the callback parameter is the DOM event
          code = code.replace(new RegExp(`\\b${param}\\b`, 'g'), '$event');
        }
        body = null;
        e.attrs.push([`@${name}${mods.map((m) => '.' + m).join('')}`, code]);
        continue;
      }
      e.attrs.push([`@${name}${mods.map((m) => '.' + m).join('')}`, expr(body, this.ctx)]);
    }
  }

  /** `scopedSlots: _u([{key:'right', fn:function(props, vm, gen){ return [...] }}])` */
  applyScopedSlots(e, value) {
    const arr = isCall(value, '_u') ? value.arguments[0] : value;
    if (!arr || arr.type !== 'ArrayExpression') return;
    for (const slot of arr.elements) {
      const name = literalOf(getProp(slot, 'key')) || 'default';
      const fn = getProp(slot, 'fn');
      if (!fn) continue;

      const saved = new Map(this.ctx.names);
      const savedAliases = new Set(this.ctx.vmAliases);
      const p = fn.params.map((x) => (x && x.name) || null);
      let propsName = null;
      if (p[0]) { propsName = 'slotProps'; this.ctx.names.set(p[0], propsName); }
      if (p[1]) this.ctx.vmAliases.add(p[1]); // vm alias used as `_$s` receiver
      if (p[2]) this.ctx.names.set(p[2], '__gen');

      const body =
        fn.body.type === 'BlockStatement'
          ? (fn.body.body.find((s) => s.type === 'ReturnStatement') || {}).argument
          : fn.body;
      const children = this.nodes(body);

      this.ctx.names = saved;
      this.ctx.vmAliases = savedAliases;

      const usesProps = children.length > 0 && JSON.stringify(children).includes('slotProps');
      const tpl = el('template');
      tpl.attrs.push([`#${name}${usesProps ? `="${propsName}"` : ''}`, null]);
      tpl.children = children;
      e.children.push(tpl);
    }
  }

  // --------------------------------------------------------------- emit HTML
  emit(node, depth) {
    const pad = '  '.repeat(depth);
    if (node.type === 'text') {
      return node.value.trim() ? pad + node.value.trim() : '';
    }
    if (node.type !== 'element') return '';

    // a named-slot child becomes a <template #name> wrapper
    if (node.slot) {
      const slot = node.slot;
      const inner = { ...node, slot: null };
      const wrap = el('template');
      wrap.attrs.push([`#${slot}`, null]);
      wrap.children = [inner];
      return this.emit(wrap, depth);
    }

    // The reference templates occasionally repeat an attribute (the compiled
    // `attrs` object had a duplicate key, so the last value is what actually
    // ran). Keep the first position and the last value, and emit it once.
    const order = [];
    const values = new Map();
    for (const [k, v] of node.attrs) {
      if (!values.has(k)) order.push(k);
      values.set(k, v);
    }
    // An empty value is kept: `back-text=""` and `mode=""` deliberately override
    // a component's non-empty prop default in the reference.
    const attrs = order.map((k) =>
      values.get(k) === null ? k : `${k}="${attrQuote(values.get(k))}"`
    );

    let open = node.tag;
    if (attrs.length) {
      const oneLine = `<${node.tag} ${attrs.join(' ')}>`;
      if (oneLine.length + pad.length <= 110) {
        open = `${node.tag} ${attrs.join(' ')}`;
      } else {
        const apad = pad + '  ';
        open = `${node.tag}\n${attrs.map((a) => apad + a).join('\n')}\n${pad}`;
      }
    }

    const kids = node.children.map((c) => this.emit(c, depth + 1)).filter(Boolean);
    if (kids.length === 0) {
      if (VOID_LIKE.has(node.tag)) return `${pad}<${open} />`;
      return `${pad}<${open}></${node.tag}>`;
    }
    // keep a single short text child inline
    if (kids.length === 1 && node.children[0].type === 'text' && kids[0].trim().length < 60 && !open.includes('\n')) {
      return `${pad}<${open}>${kids[0].trim()}</${node.tag}>`;
    }
    return `${pad}<${open}>\n${kids.join('\n')}\n${pad}</${node.tag}>`;
  }
}

module.exports = { Transpiler, parseRender, viewStaticAttrs, viewStaticText };
