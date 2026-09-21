'use strict';
/**
 * Port compiled component options back into readable SFC scripts.
 *
 * The options modules are babel-compiled Vue 2 options objects, so the original
 * `data` / `computed` / `methods` / lifecycle hooks can be recovered as real
 * source. What changes is the plumbing:
 *
 *   (0, i.getTitle)()          ->  getTitle()           + import from @/api/orich
 *   s("23db")                  ->  '/static/image/...'  (asset requires folded)
 *   (i = {...}, C(i,'k',v), i) ->  a single object literal
 *   t('log', msg, ' at x.js')  ->  console.log(msg)
 *   beforeDestroy / destroyed  ->  beforeUnmount / unmounted
 *   this.$set(o, k, v)         ->  o[k] = v
 *   components: {...}          ->  dropped (easycom resolves the tags)
 */
const acorn = require('acorn');
const astring = require('astring');

const SCRIPT_GENERATOR = Object.assign({}, astring.baseGenerator, {
  Literal(node, state) {
    if (typeof node.value === 'string') {
      const s = node.value;
      const q = s.includes("'") && !s.includes('"') ? '"' : "'";
      state.write(
        q +
          s
            .replace(/\\/g, '\\\\')
            .replace(new RegExp(q, 'g'), '\\' + q)
            .replace(/\n/g, '\\n')
            .replace(/\r/g, '\\r') +
          q
      );
    } else if (node.value === null && node.raw === undefined) state.write('null');
    else state.write(node.raw !== undefined ? node.raw : String(node.value));
  },
});

const HOOK_RENAMES = { beforeDestroy: 'beforeUnmount', destroyed: 'unmounted' };

/** uni APIs Vue 2 exposed on the component instance, now `uni.x(this, ...)`. */
const INSTANCE_UNI_APIS = new Set(['createIntersectionObserver', 'createMediaQueryObserver']);

/** Config keys whose literal values are third-party credentials. */
const SECRET_KEYS = new Set([
  'devKey', 'apiKey', 'appKey', 'appSecret', 'secret', 'clientSecret', 'accessKey', 'signKey',
]);
const LOG_LEVELS = new Set(['log', 'info', 'warn', 'error', 'debug']);

/** Walk every node, calling `fn(node, parent, key)`. Replacements are honoured. */
function walk(node, fn, parent = null, key = null) {
  if (!node || typeof node !== 'object') return;
  if (Array.isArray(node)) {
    for (let i = 0; i < node.length; i++) walk(node[i], fn, node, i);
    return;
  }
  if (!node.type) return;
  fn(node, parent, key);
  const current = parent && key !== null ? parent[key] : node;
  if (!current || typeof current !== 'object' || !current.type) return;
  for (const k of Object.keys(current)) {
    if (k === 'type' || k === 'start' || k === 'end') continue;
    walk(current[k], fn, current, k);
  }
}

const propName = (p) =>
  p && p.key ? (p.key.type === 'Literal' ? String(p.key.value) : p.key.name) : null;

/**
 * Collect `s("id")` require bindings, including babel's interop wrappers.
 * @returns Map<localName, {id}>
 */
function requireBindings(ast) {
  const out = new Map();
  walk(ast, (n) => {
    const isDecl = n.type === 'VariableDeclarator';
    if (!isDecl && n.type !== 'AssignmentExpression') return;
    const target = isDecl ? n.id : n.left;
    const init = isDecl ? n.init : n.right;
    if (!target || target.type !== 'Identifier' || !init || init.type !== 'CallExpression') return;

    // var i = s("16bf")
    if (
      init.callee.type === 'Identifier' &&
      init.callee.name === 's' &&
      init.arguments.length === 1 &&
      init.arguments[0].type === 'Literal'
    ) {
      out.set(target.name, { id: String(init.arguments[0].value), interop: false });
      return;
    }
    // var i = interop(s("52a9"))
    const inner = init.arguments[0];
    if (
      init.arguments.length === 1 &&
      inner &&
      inner.type === 'CallExpression' &&
      inner.callee.type === 'Identifier' &&
      inner.callee.name === 's' &&
      inner.arguments[0] &&
      inner.arguments[0].type === 'Literal'
    ) {
      out.set(target.name, { id: String(inner.arguments[0].value), interop: true });
    }
  });
  return out;
}

/**
 * Fold babel's `_defineProperty` construction of an options object:
 *   var o = (i = {a: 1}, C(i, "onHide", fn), C(i, "destroyed", fn), i);
 * back into a single object literal.
 */
function foldDefineProperty(node) {
  if (!node || node.type !== 'SequenceExpression') return null;
  const parts = node.expressions;
  const first = parts[0];
  const last = parts[parts.length - 1];
  if (
    !first ||
    first.type !== 'AssignmentExpression' ||
    first.left.type !== 'Identifier' ||
    first.right.type !== 'ObjectExpression' ||
    !last ||
    last.type !== 'Identifier' ||
    last.name !== first.left.name
  ) {
    return null;
  }
  const obj = JSON.parse(JSON.stringify(first.right));
  for (const call of parts.slice(1, -1)) {
    if (
      call.type !== 'CallExpression' ||
      call.arguments.length !== 3 ||
      call.arguments[0].type !== 'Identifier' ||
      call.arguments[0].name !== first.left.name ||
      call.arguments[1].type !== 'Literal'
    ) {
      return null;
    }
    obj.properties.push({
      type: 'Property',
      kind: 'init',
      method: false,
      shorthand: false,
      computed: false,
      key: { type: 'Identifier', name: String(call.arguments[1].value) },
      value: call.arguments[2],
    });
  }
  return obj;
}

/**
 * Unwrap the object literal out of an initialiser, covering the three shapes
 * the compiler emits:
 *   {...}                                  plain
 *   (s("f16a"), {...})                     side-effect require kept alive
 *   (i = {...}, C(i,"k",v), i)             babel's _defineProperty build-up
 */
function objectOf(init) {
  if (!init) return null;
  if (init.type === 'ObjectExpression') return init;
  const folded = foldDefineProperty(init);
  if (folded) return folded;
  if (init.type === 'SequenceExpression') {
    const last = init.expressions[init.expressions.length - 1];
    return objectOf(last);
  }
  return null;
}

/** Resolve an identifier to the object literal it was initialised with. */
function objectFor(ast, name) {
  let found = null;
  walk(ast, (n) => {
    if (found) return;
    const isDecl = n.type === 'VariableDeclarator';
    if (!isDecl && n.type !== 'AssignmentExpression') return;
    const target = isDecl ? n.id : n.left;
    const init = isDecl ? n.init : n.right;
    if (!target || target.type !== 'Identifier' || target.name !== name || !init) return;
    found = objectOf(init);
  });
  return found;
}

/**
 * Names declared by a statement list (module scope), so helper functions the
 * options object relies on (async/generator machinery, small utilities) can be
 * carried across with it.
 */
function topLevelDeclarations(ast) {
  const out = new Map();
  const fn = ast.body[0].expression;
  const collect = (stmts) => {
    for (const st of stmts) {
      if (st.type === 'FunctionDeclaration' && st.id) {
        out.set(st.id.name, { kind: 'function', node: st });
      } else if (st.type === 'VariableDeclaration') {
        for (const decl of st.declarations) {
          if (decl.id.type === 'Identifier') {
            out.set(decl.id.name, { kind: 'var', node: decl, declKind: st.kind });
          }
        }
      } else if (st.type === 'ExpressionStatement') {
        // the whole module may be wrapped in `(function(t){...}).call(this, x)`
        let e = st.expression;
        if (e.type === 'CallExpression' && e.callee.type === 'MemberExpression') e = e.callee.object;
        if (e && (e.type === 'FunctionExpression' || e.type === 'ArrowFunctionExpression') && e.body.body) {
          collect(e.body.body);
        }
      }
    }
  };
  collect(fn.body.body);
  return out;
}

/** Add every name a binding pattern introduces to `scope`. */
function collectPattern(p, scope) {
  if (!p) return;
  if (p.type === 'Identifier') scope.add(p.name);
  else if (p.type === 'ObjectPattern') p.properties.forEach((x) => collectPattern(x.value || x.argument, scope));
  else if (p.type === 'ArrayPattern') p.elements.forEach((x) => collectPattern(x, scope));
  else if (p.type === 'AssignmentPattern') collectPattern(p.left, scope);
  else if (p.type === 'RestElement') collectPattern(p.argument, scope);
}

const IS_FUNCTION = (t) => /Function(Declaration|Expression)$/.test(t) || t === 'ArrowFunctionExpression';

/** Does a subtree drive the remote WGT hot-update? */
const HOT_UPDATE = new Set(['install', 'restart', 'getProperty', 'appid']);
function usesHotUpdate(node) {
  let hit = false;
  const visit = (n) => {
    if (hit || !n || typeof n !== 'object') return;
    if (Array.isArray(n)) return n.forEach(visit);
    if (!n.type) return;
    if (
      n.type === 'MemberExpression' &&
      !n.computed &&
      HOT_UPDATE.has(n.property.name) &&
      n.object.type === 'MemberExpression' &&
      !n.object.computed &&
      n.object.property.name === 'runtime' &&
      n.object.object.type === 'Identifier' &&
      n.object.object.name === 'plus'
    ) {
      hit = true;
      return;
    }
    for (const k of Object.keys(n)) {
      if (k === 'type' || k === 'start' || k === 'end') continue;
      visit(n[k]);
    }
  };
  visit(node);
  return hit;
}

/**
 * Declarations visible in a scope.
 *
 * `var` is function-scoped, so when building a *function* scope its declarations
 * have to be hoisted out of any nested blocks (try/if/for/...) - without that,
 * a `var o` inside a `try` block leaves `o` looking like a module-level import
 * further down the function.
 */
function declaredIn(stmts, scope, { hoistVars }) {
  const visit = (node) => {
    if (!node || typeof node !== 'object') return;
    if (Array.isArray(node)) return node.forEach(visit);
    if (!node.type || IS_FUNCTION(node.type)) return; // a nested function owns its vars
    if (node.type === 'FunctionDeclaration' && node.id) {
      scope.add(node.id.name);
      return;
    }
    if (node.type === 'VariableDeclaration') {
      for (const d of node.declarations) collectPattern(d.id, scope);
      return;
    }
    if (node.type === 'ClassDeclaration' && node.id) {
      scope.add(node.id.name);
      return;
    }
    if (!hoistVars) return;
    for (const k of Object.keys(node)) {
      if (k === 'type' || k === 'start' || k === 'end') continue;
      visit(node[k]);
    }
  };
  for (const st of stmts || []) {
    if (st.type === 'FunctionDeclaration' && st.id) scope.add(st.id.name);
    else visit(st);
  }
}

/** The scope a node introduces for its children, or the parent scope. */
function childScope(node, scope) {
  if (IS_FUNCTION(node.type)) {
    const inner = new Set(scope);
    if (node.id && node.id.name) inner.add(node.id.name);
    for (const p of node.params || []) collectPattern(p, inner);
    if (node.body && Array.isArray(node.body.body)) {
      declaredIn(node.body.body, inner, { hoistVars: true });
    }
    return inner;
  }
  if (node.type === 'BlockStatement') {
    const inner = new Set(scope);
    declaredIn(node.body, inner, { hoistVars: false });
    return inner;
  }
  if (node.type === 'CatchClause' && node.param) {
    const inner = new Set(scope);
    collectPattern(node.param, inner);
    return inner;
  }
  return scope;
}

const JS_GLOBALS = new Set([
  'undefined', 'NaN', 'Infinity', 'null', 'true', 'false', 'this', 'arguments',
  'Object', 'Array', 'String', 'Number', 'Boolean', 'Date', 'Math', 'JSON', 'RegExp',
  'Error', 'TypeError', 'Promise', 'Symbol', 'Map', 'Set', 'WeakMap', 'WeakSet',
  'parseInt', 'parseFloat', 'isNaN', 'isFinite', 'encodeURIComponent', 'decodeURIComponent',
  'encodeURI', 'decodeURI', 'setTimeout', 'clearTimeout', 'setInterval', 'clearInterval',
  'console', 'uni', 'plus', 'weex', 'wx', 'globalThis', 'window', 'document', 'navigator',
  'Function', 'Reflect', 'Proxy', 'BigInt', 'ArrayBuffer', 'Uint8Array', 'TextDecoder',
  'requestAnimationFrame', 'cancelAnimationFrame', 'getApp', 'getCurrentPages', 'process',
]);

/** Free (unbound) identifiers of a subtree, honouring nested function scopes. */
function freeIdentifiers(node) {
  const free = new Set();
  const visit = (n, scope) => {
    if (!n || typeof n !== 'object') return;
    if (Array.isArray(n)) return n.forEach((c) => visit(c, scope));
    if (!n.type) return;

    if (n.type === 'Identifier') {
      if (!scope.has(n.name) && !JS_GLOBALS.has(n.name)) free.add(n.name);
      return;
    }

    const inner = childScope(n, scope);

    // a non-computed property name is not a reference
    if (n.type === 'MemberExpression') {
      visit(n.object, inner);
      if (n.computed) visit(n.property, inner);
      return;
    }
    if (n.type === 'Property') {
      if (n.computed) visit(n.key, inner);
      visit(n.value, inner);
      return;
    }
    for (const k of Object.keys(n)) {
      if (k === 'type' || k === 'start' || k === 'end') continue;
      visit(n[k], inner);
    }
  };
  visit(node, new Set());
  return free;
}

/** Locate the options object exported as `e.default`. */
function findOptions(ast) {
  let direct = null;
  let ref = null;
  walk(ast, (n) => {
    if (
      n.type !== 'AssignmentExpression' ||
      n.left.type !== 'MemberExpression' ||
      n.left.computed ||
      n.left.object.type !== 'Identifier' ||
      n.left.object.name !== 'e' ||
      n.left.property.name !== 'default' ||
      !n.right
    ) {
      return;
    }
    const obj = objectOf(n.right);
    if (obj) direct = direct || obj;
    else if (n.right.type === 'Identifier') ref = ref || n.right.name;
    else if (n.right.type === 'MemberExpression' && n.right.object.type === 'Identifier') {
      ref = ref || n.right.object.name;
    }
  });
  if (direct) return direct;
  if (ref) return objectFor(ast, ref);
  return null;
}

/**
 * Rewrite a compiled options/config object into portable source.
 * @returns {{tree, named:Map, defaults:Map, warnings:string[]}}
 */
function transformObject({ objectNode, binds, resolve }) {
  const warnings = [];
  const named = new Map();
  const defaults = new Map();
  const namespaces = new Map();
  const nativeImports = new Set();
  const scrubbed = new Set();
  const addNamed = (spec, name) => {
    if (!named.has(spec)) named.set(spec, new Set());
    named.get(spec).add(name);
  };
  const targetFor = (localName) => {
    const b = binds.get(localName);
    if (!b) return null;
    return { ...resolve(b.id), id: b.id, interop: b.interop };
  };
  const memberOf = (localName, property) => ({
    type: 'MemberExpression',
    computed: false,
    optional: false,
    object: { type: 'Identifier', name: localName },
    property: { type: 'Identifier', name: property },
  });

  const tree = JSON.parse(JSON.stringify(objectNode));

  /**
   * Rewrite a node. Only applied when the require binding it mentions is not
   * shadowed - babel reuses the module-scope single-letter names as locals, so
   * `o.value` inside a helper must stay put even though `o` also names a
   * required module at module scope.
   */
  const rewrite = (n, parent, key, scope) => {
    if (!parent || key === null) return;
    const visible = (name) => binds.has(name) && !scope.has(name);

    // (0, i.Foo)(...) -> Foo(...) | mod.Foo(...)
    if (
      n.type === 'SequenceExpression' &&
      n.expressions.length === 2 &&
      n.expressions[0].type === 'Literal' &&
      n.expressions[0].value === 0 &&
      n.expressions[1].type === 'MemberExpression' &&
      n.expressions[1].object.type === 'Identifier'
    ) {
      const m = n.expressions[1];
      const t = visible(m.object.name) ? targetFor(m.object.name) : null;
      if (t && t.kind === 'named') {
        addNamed(t.specifier, m.property.name);
        parent[key] = { type: 'Identifier', name: m.property.name };
        return;
      }
      if (t && t.kind === 'default') {
        if (m.property.name === 'default' && t.interop) {
          const alias = `d_${String(t.id).replace(/[^\w$]/g, '_')}`;
          addNamed(t.specifier, `interopDefault as ${alias}`);
          parent[key] = { type: 'Identifier', name: alias };
          return;
        }
        const local = t.localName || `mod_${t.id}`;
        defaults.set(t.specifier, local);
        parent[key] = memberOf(local, m.property.name);
        return;
      }
    }

    // console proxy installed by the uni runtime: t('log', a, b, ' at x.js:1')
    if (
      n.type === 'CallExpression' &&
      n.callee.type === 'Identifier' &&
      n.callee.name === 't' &&
      n.arguments.length >= 2 &&
      n.arguments[0].type === 'Literal' &&
      LOG_LEVELS.has(String(n.arguments[0].value))
    ) {
      const level = String(n.arguments[0].value);
      const args = n.arguments.slice(1).filter(
        (a) => !(a.type === 'Literal' && typeof a.value === 'string' && /^\s+at\s.+:\d+$/.test(a.value))
      );
      parent[key] = {
        type: 'CallExpression',
        optional: false,
        callee: memberOf('console', level),
        arguments: args,
      };
      return;
    }

    // An inline require: `s("23db")` for an asset, or `s("fb05").errorImg` for
    // a module used without a binding. Left alone these leak the webpack
    // require into the output ("s is not defined" at runtime).
    if (
      n.type === 'CallExpression' &&
      n.callee.type === 'Identifier' &&
      n.callee.name === 's' &&
      n.arguments.length === 1 &&
      n.arguments[0].type === 'Literal' &&
      !scope.has('s')
    ) {
      const id = String(n.arguments[0].value);
      const t = resolve(id);
      if (t.kind === 'inline') {
        parent[key] = { type: 'Literal', value: t.value };
        return;
      }
      if (t.kind === 'default') {
        const local = t.localName || `mod_${id}`;
        defaults.set(t.specifier, local);
        parent[key] = { type: 'Identifier', name: local };
        return;
      }
      if (t.kind === 'named') {
        const local = t.localName || `ns_${String(id).replace(/[^\w$]/g, '_')}`;
        namespaces.set(t.specifier, local);
        parent[key] = { type: 'Identifier', name: local };
        return;
      }
    }

    // i.Foo -> Foo ; i.default -> DefaultLocal
    if (
      n.type === 'MemberExpression' &&
      !n.computed &&
      n.object.type === 'Identifier' &&
      visible(n.object.name)
    ) {
      const t = targetFor(n.object.name);
      if (t && t.kind === 'named') {
        if (n.property.name === 'default') {
          const local = t.localName || `mod_${t.id}`;
          defaults.set(t.specifier, local);
          parent[key] = { type: 'Identifier', name: local };
        } else {
          addNamed(t.specifier, n.property.name);
          parent[key] = { type: 'Identifier', name: n.property.name };
        }
        return;
      }
      if (t && t.kind === 'default') {
        if (n.property.name === 'default' && t.interop) {
          const alias = `d_${String(t.id).replace(/[^\w$]/g, '_')}`;
          addNamed(t.specifier, `interopDefault as ${alias}`);
          parent[key] = { type: 'Identifier', name: alias };
          return;
        }
        const local = t.localName || `mod_${t.id}`;
        defaults.set(t.specifier, local);
        parent[key] =
          n.property.name === 'default' ? { type: 'Identifier', name: local } : memberOf(local, n.property.name);
        return;
      }
    }

    // --- native-only APIs -------------------------------------------------
    //
    // The reference app ships as a native App build; this one also runs on H5.
    // `plus` and the native analytics plugins go through a shim, and the remote
    // WGT hot-update is dropped (the project deliberately does not ship it).

    // drop statements driving the WGT hot-update
    if (Array.isArray(parent) && /Statement|Declaration/.test(n.type) && usesHotUpdate(n)) {
      parent.splice(key, 1);
      return;
    }

    // uni.requireNativePlugin('sn-appsflyer') -> the no-op analytics shim
    if (
      n.type === 'CallExpression' &&
      n.callee.type === 'MemberExpression' &&
      n.callee.property.name === 'requireNativePlugin'
    ) {
      nativeImports.add('analytics');
      parent[key] = { type: 'Identifier', name: 'analytics' };
      return;
    }

    // bare `plus` -> the shim (delegates to the real global on native builds)
    if (n.type === 'Identifier' && n.name === 'plus') {
      const isName =
        (parent.type === 'Property' && key === 'key' && !parent.computed) ||
        (parent.type === 'MemberExpression' && key === 'property' && !parent.computed);
      if (!isName) {
        nativeImports.add('nativePlus');
        parent[key] = { type: 'Identifier', name: 'nativePlus' };
        return;
      }
    }

    // a bare reference to a required module (e.g. `new c.Parser()` passed
    // around as `c`) becomes the imported module object
    if (n.type === 'Identifier' && visible(n.name)) {
      const isName =
        (parent.type === 'Property' && key === 'key' && !parent.computed) ||
        (parent.type === 'MemberExpression' && key === 'property' && !parent.computed) ||
        (parent.type === 'VariableDeclarator' && key === 'id') ||
        (parent.type === 'LabeledStatement' && key === 'label') ||
        (IS_FUNCTION(parent.type) && (key === 'id' || key === 'params')) ||
        key === 'params';
      if (!isName) {
        const t = targetFor(n.name);
        if (t && (t.kind === 'default' || t.kind === 'named')) {
          const local = t.localName || `mod_${t.id}`;
          if (t.kind === 'default') defaults.set(t.specifier, local);
          else namespaces.set(t.specifier, local);
          parent[key] = { type: 'Identifier', name: local };
          return;
        }
      }
    }

    // Vue 3 has no `$children`; the compat layer walks the render tree instead.
    if (n.type === 'MemberExpression' && !n.computed && n.property.name === '$children') {
      addNamed('@/utils/vue2-compat', 'childComponents');
      parent[key] = {
        type: 'CallExpression',
        optional: false,
        callee: { type: 'Identifier', name: 'childComponents' },
        arguments: [n.object],
      };
      return;
    }

    // Vue 2 exposed these uni APIs on the component instance; in Vue 3 they
    // live on `uni` and take the instance as their first argument.
    if (
      n.type === 'CallExpression' &&
      n.callee.type === 'MemberExpression' &&
      n.callee.object.type === 'ThisExpression' &&
      INSTANCE_UNI_APIS.has(n.callee.property.name)
    ) {
      const name = n.callee.property.name;
      parent[key] = {
        type: 'CallExpression',
        optional: false,
        callee: memberOf('uni', name),
        arguments: [{ type: 'ThisExpression' }, ...n.arguments],
      };
      return;
    }

    // this.$set(o, k, v) -> o[k] = v
    if (
      n.type === 'CallExpression' &&
      n.callee.type === 'MemberExpression' &&
      n.callee.property.name === '$set' &&
      n.arguments.length === 3
    ) {
      parent[key] = {
        type: 'AssignmentExpression',
        operator: '=',
        left: { type: 'MemberExpression', computed: true, optional: false, object: n.arguments[0], property: n.arguments[1] },
        right: n.arguments[2],
      };
      return;
    }

    // minified booleans
    if (
      n.type === 'UnaryExpression' &&
      n.operator === '!' &&
      n.argument.type === 'Literal' &&
      typeof n.argument.value === 'number'
    ) {
      parent[key] = { type: 'Literal', value: !n.argument.value, raw: n.argument.value ? 'false' : 'true' };
      return;
    }

    // `(a, b, c);` as a statement -> separate statements
    if (n.type === 'ExpressionStatement' && n.expression.type === 'SequenceExpression' && Array.isArray(parent)) {
      const stmts = n.expression.expressions.map((e) => ({ type: 'ExpressionStatement', expression: e }));
      parent.splice(key, 1, ...stmts);
      return;
    }

    // Never carry the reference app's third-party credentials into this
    // project - the shape is kept so the call site still reads clearly.
    if (
      n.type === 'Property' &&
      !n.computed &&
      SECRET_KEYS.has(propName(n)) &&
      n.value.type === 'Literal' &&
      typeof n.value.value === 'string' &&
      n.value.value.length >= 8
    ) {
      n.value = { type: 'Literal', value: '' };
      scrubbed.add(propName(n));
      return;
    }

    // Vue 3 lifecycle names
    if (n.type === 'Property' && n.key && !n.computed) {
      const name = propName(n);
      if (HOOK_RENAMES[name]) n.key = { type: 'Identifier', name: HOOK_RENAMES[name] };
    }
  };

  const traverse = (node, parent, key, scope) => {
    if (!node || typeof node !== 'object') return;
    if (Array.isArray(node)) {
      for (let i = 0; i < node.length; i++) traverse(node[i], node, i, scope);
      return;
    }
    if (!node.type) return;

    const inner = childScope(node, scope);
    rewrite(node, parent, key, inner);

    const current = parent && key !== null ? parent[key] : node;
    if (!current || typeof current !== 'object' || !current.type) return;
    for (const k of Object.keys(current)) {
      if (k === 'type' || k === 'start' || k === 'end') continue;
      traverse(current[k], current, k, inner);
    }
  };
  traverse(tree, { root: tree }, 'root', new Set());

  // Report require bindings that survived the rewrite. Babel reuses the
  // module-scope single-letter names as local temps, so only references that
  // are genuinely free (not shadowed by an inner declaration) count.
  for (const name of freeIdentifiers(tree)) {
    if (!binds.has(name)) continue;
    const t = resolve(binds.get(name).id);
    if (t.kind !== 'drop') warnings.push(`unresolved reference ${name} -> module ${binds.get(name).id}`);
  }

  return { tree, named, defaults, namespaces, nativeImports, scrubbed, warnings: [...new Set(warnings)] };
}

/** Does this options object mix in the mescroll page mixin? */
function usesMescrollMixin(tree) {
  const mixins = tree.properties.find((p) => propName(p) === 'mixins');
  if (!mixins || mixins.value.type !== 'ArrayExpression') return false;
  return mixins.value.elements.some((e) => e && e.type === 'Identifier' && /4df3/.test(e.name));
}

/** Remove one property from the object returned by `data()`. */
function dropDataProperty(tree, name) {
  const data = tree.properties.find((p) => propName(p) === 'data');
  if (!data) return;
  const fn = data.value;
  if (!fn || !fn.body || !Array.isArray(fn.body.body)) return;
  const ret = fn.body.body.find((s) => s.type === 'ReturnStatement');
  if (!ret || !ret.argument || ret.argument.type !== 'ObjectExpression') return;
  ret.argument.properties = ret.argument.properties.filter((p) => propName(p) !== name);
}

function emitImports(named, defaults, namespaces = new Map()) {
  const lines = [];
  for (const [spec, local] of defaults) lines.push(`import ${local} from '${spec}';`);
  for (const [spec, local] of namespaces) {
    if (!defaults.has(spec)) lines.push(`import * as ${local} from '${spec}';`);
  }
  for (const [spec, names] of named) {
    if (names.size) lines.push(`import { ${[...names].sort().join(', ')} } from '${spec}';`);
  }
  return lines;
}

const printObject = (tree) => astring.generate(tree, { generator: SCRIPT_GENERATOR, indent: '  ' });

/** Port one component options module into SFC script source. */
function portOptions({ body, resolve }) {
  let ast;
  try {
    ast = acorn.parse(`(function(t, e, s){${body.slice(1, -1)}})`, { ecmaVersion: 2020 });
  } catch (err) {
    return { code: 'export default {};', warnings: [`parse failed: ${err.message}`] };
  }

  const binds = requireBindings(ast);
  const options = findOptions(ast);
  if (!options) return { code: 'export default {};', warnings: ['no options object found'] };

  const { tree, named, defaults, namespaces, nativeImports, scrubbed, warnings } = transformObject({
    objectNode: options,
    binds,
    resolve,
  });

  // easycom resolves every generated component tag
  tree.properties = tree.properties.filter((p) => propName(p) !== 'components');

  // Several pages redeclare `mescroll: null` in their own data even though the
  // mescroll mixin already provides it. A component's data wins over a mixin's,
  // which would shadow the mixin's call-queueing stub, so drop the redundant
  // declaration and let the mixin own the field.
  if (usesMescrollMixin(tree)) dropDataProperty(tree, 'mescroll');

  // Carry across the module-scope helpers the options object relies on - the
  // async/generator machinery babel hoisted out of the component.
  const decls = topLevelDeclarations(ast);
  const hoisted = [];
  const includedNames = new Set();
  const pending = [...freeIdentifiers(tree)];
  while (pending.length) {
    const name = pending.shift();
    if (includedNames.has(name) || binds.has(name) || !decls.has(name)) continue;
    const decl = decls.get(name);
    const ported = transformObject({ objectNode: decl.node, binds, resolve });
    for (const [spec, set] of ported.named) {
      if (!named.has(spec)) named.set(spec, new Set());
      for (const x of set) named.get(spec).add(x);
    }
    for (const [spec, local] of ported.defaults) defaults.set(spec, local);
    for (const [spec, local] of ported.namespaces) namespaces.set(spec, local);
    for (const x of ported.nativeImports) nativeImports.add(x);
    includedNames.add(name);
    hoisted.push({ name, kind: decl.kind, declKind: decl.declKind, node: ported.tree });
    for (const f of freeIdentifiers(ported.tree)) {
      if (!includedNames.has(f)) pending.push(f);
    }
  }

  const lines = emitImports(named, defaults, namespaces);
  if (scrubbed.size) {
    warnings.push(`scrubbed third-party credential literal(s): ${[...scrubbed].join(', ')}`);
  }
  if (nativeImports.size) {
    lines.push(`import { ${[...nativeImports].sort().join(', ')} } from '@/utils/native';`);
  }
  if (lines.length) lines.push('');
  if (hoisted.length) {
    lines.push('// Helpers the reference bundle hoisted out of the component.');
    for (const h of hoisted.reverse()) {
      if (h.kind === 'function') lines.push(printObject(h.node));
      else lines.push(`${h.declKind || 'var'} ${printObject(h.node)};`);
    }
    lines.push('');
  }
  lines.push(`export default ${printObject(tree)};`);
  return { code: lines.join('\n'), warnings };
}

module.exports = {
  portOptions,
  transformObject,
  requireBindings,
  emitImports,
  printObject,
  findOptions,
  objectFor,
  walk,
  SCRIPT_GENERATOR,
};
