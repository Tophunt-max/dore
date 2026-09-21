'use strict';
/**
 * Emit the library-internal modules (uView helpers, the mescroll core, the
 * u-parse html parser, the async-validator schema, ...) that the ported
 * component scripts depend on.
 *
 * These are third-party internals nobody hand-edits, so rather than rewriting
 * them they are kept verbatim behind a small webpack-runtime shim, with their
 * own `s("id")` requires resolved to static ESM imports.
 *
 * Dependency cycles are grouped into a single file. The reference bundle has at
 * least one (the `path` and `process` polyfills require each other), and a cycle
 * spread across ES modules deadlocks on the `const` temporal dead zone - which
 * is why webpack resolves requires through a registry instead. Each cycle gets
 * one file with a local registry that publishes a module's exports object
 * *before* running its factory, so a re-entrant require sees partial exports
 * exactly as it did originally.
 */

/** Ids required by a module body (textual - these modules are plain ES5). */
function requiredIds(body) {
  const out = new Set();
  for (const m of body.matchAll(/\bs\(\s*"([^"]+)"\s*\)/g)) out.add(m[1]);
  for (const m of body.matchAll(/\bs\.e\(\s*"([^"]+)"\s*\)/g)) out.delete(m[1]);
  return out;
}

const RUNTIME = `// Minimal webpack runtime shim.
//
// The vendor modules alongside this file are kept verbatim from the ORich
// reference bundle; this provides the handful of module-system helpers they were
// compiled against so they can be consumed as plain ES modules.

/** Attach the \`__webpack_require__\` helpers the modules were compiled against. */
function withHelpers(req) {
  req.d = (exports, name, getter) => {
    if (name && typeof name === 'object') {
      for (const key of Object.keys(name)) req.d(exports, key, name[key]);
      return;
    }
    if (!Object.prototype.hasOwnProperty.call(exports, name)) {
      Object.defineProperty(exports, name, { enumerable: true, get: getter });
    }
  };
  req.r = (exports) => {
    Object.defineProperty(exports, '__esModule', { value: true });
  };
  req.n = (mod) => {
    const getter = mod && mod.__esModule ? () => mod.default : () => mod;
    getter.a = getter();
    return getter;
  };
  req.o = (obj, key) => Object.prototype.hasOwnProperty.call(obj, key);
  req.e = () => Promise.resolve();
  req.p = '/';
  return req;
}

/**
 * Instantiate one standalone module.
 * @param factory the compiled \`function (module, exports, require)\`
 * @param deps    id -> already-resolved dependency
 */
export function webpackModule(factory, deps) {
  const module = { exports: {} };
  const req = withHelpers((id) => {
    if (!(id in deps)) throw new Error('vendor dependency not bundled: ' + id);
    return deps[id];
  });
  factory(module, module.exports, req);
  return module.exports;
}

/**
 * Instantiate a group of mutually dependent modules.
 *
 * @param factories id -> compiled factory
 * @param externals id -> already-resolved dependency from outside the group
 * @returns (id) => module exports
 */
export function webpackRegistry(factories, externals) {
  const registry = {};
  const req = withHelpers((id) => {
    if (Object.prototype.hasOwnProperty.call(registry, id)) return registry[id].exports;
    if (id in externals) return externals[id];
    if (!(id in factories)) throw new Error('vendor dependency not bundled: ' + id);
    // publish before running so a cycle sees partial exports, as webpack does
    const module = { exports: {} };
    registry[id] = module;
    factories[id](module, module.exports, req);
    return module.exports;
  });
  return req;
}

/** What babel's interop helper resolved a require to. */
export const interop = (mod) => (mod && mod.__esModule ? mod.default : mod);
`;

const safe = (id) => String(id).replace(/[^\w$]/g, '_');
const fileName = (id) => `${safe(id)}.js`;

/** Tarjan strongly-connected components over the vendor dependency graph. */
function stronglyConnected(nodes, edgesOf) {
  const index = new Map();
  const low = new Map();
  const onStack = new Set();
  const stack = [];
  const groups = [];
  let counter = 0;

  const connect = (v) => {
    index.set(v, counter);
    low.set(v, counter);
    counter++;
    stack.push(v);
    onStack.add(v);

    for (const w of edgesOf(v)) {
      if (!nodes.has(w)) continue;
      if (!index.has(w)) {
        connect(w);
        low.set(v, Math.min(low.get(v), low.get(w)));
      } else if (onStack.has(w)) {
        low.set(v, Math.min(low.get(v), index.get(w)));
      }
    }

    if (low.get(v) === index.get(v)) {
      const group = [];
      for (;;) {
        const w = stack.pop();
        onStack.delete(w);
        group.push(w);
        if (w === v) break;
      }
      groups.push(group);
    }
  };

  for (const v of nodes) if (!index.has(v)) connect(v);
  return groups;
}

/**
 * Walk the dependency graph from a set of seed module ids and emit the files.
 *
 * @param opts.classify (id) => 'vendor' | 'asset' | 'external' | 'skip'
 * @returns {{vendor:Set, files:Map, dropped:Map}}
 */
function collectVendor(bundle, seeds, { classify, assetOf, externalSpecifier }) {
  const bodyOf = (id) => bundle.module(id) || bundle.module(id, 'view');

  // 1. reachable vendor modules
  const vendor = new Set();
  const queue = [...seeds];
  while (queue.length) {
    const id = queue.shift();
    if (vendor.has(id) || classify(id) !== 'vendor') continue;
    const body = bodyOf(id);
    if (!body) continue;
    vendor.add(id);
    for (const dep of requiredIds(body)) if (classify(dep) === 'vendor') queue.push(dep);
  }

  const depsOf = (id) => [...requiredIds(bodyOf(id))];

  // 2. group cycles together; a module's "home" is its group's file
  const groups = stronglyConnected(vendor, depsOf);
  const home = new Map(); // moduleId -> group file name
  for (const group of groups) {
    const file = fileName(group[0]);
    for (const id of group) home.set(id, file);
  }

  const files = new Map();
  files.set('runtime.js', RUNTIME);
  const dropped = new Map();

  const externalsFor = (ids, groupIds) => {
    const imports = [];
    const entries = [];
    const seen = new Set();
    for (const dep of ids) {
      if (groupIds.has(dep) || seen.has(dep)) continue;
      seen.add(dep);
      const kind = classify(dep);
      if (kind === 'vendor') {
        const local = `m_${safe(dep)}`;
        imports.push(`import ${local} from './${home.get(dep) || fileName(dep)}';`);
        entries.push(`  ${JSON.stringify(dep)}: ${local},`);
      } else if (kind === 'asset') {
        entries.push(`  ${JSON.stringify(dep)}: ${JSON.stringify(assetOf(dep))},`);
      } else if (kind === 'external') {
        const local = `x_${safe(dep)}`;
        imports.push(`import ${local} from '${externalSpecifier(dep)}';`);
        entries.push(`  ${JSON.stringify(dep)}: ${local},`);
      }
    }
    return { imports, entries };
  };

  for (const group of groups) {
    const groupIds = new Set(group);
    const file = fileName(group[0]);
    const allDeps = group.flatMap(depsOf);

    // report requires nothing provides - they would only surface as a runtime throw
    for (const id of group) {
      const body = bodyOf(id);
      for (const dep of requiredIds(body)) {
        if (classify(dep) === 'skip' && bodyOf(dep) && new RegExp(`\\bs\\("${dep}"\\)`).test(body)) {
          if (!dropped.has(id)) dropped.set(id, new Set());
          dropped.get(id).add(dep);
        }
      }
    }

    const { imports, entries } = externalsFor(allDeps, groupIds);
    const header =
      group.length === 1
        ? `// Verbatim from the ORich reference bundle (webpack module "${group[0]}").\n`
        : `// Verbatim from the ORich reference bundle (webpack modules ${group
            .map((g) => `"${g}"`)
            .join(', ')}).\n// They require each other, so they share one registry.\n`;

    const lines = [
      header,
      `// Library internals - regenerate with tools/orich instead of editing.`,
      `/* eslint-disable */`,
      group.length === 1
        ? `import { webpackModule, interop } from './runtime.js';`
        : `import { webpackRegistry, interop } from './runtime.js';`,
      ...imports,
      ``,
      `const deps = {`,
      ...entries,
      `};`,
      ``,
    ];

    if (group.length === 1) {
      lines.push(`const mod = webpackModule(function (t, e, s) {${bodyOf(group[0]).slice(1, -1)}}, deps);`);
      lines.push(``, `/** The module's exports object. */`, `export default mod;`, ``);
      lines.push(`/** What babel's interop helper resolved this require to. */`);
      lines.push(`export const interopDefault = interop(mod);`);
    } else {
      lines.push(`const factories = {`);
      for (const id of group) {
        lines.push(`  ${JSON.stringify(id)}: function (t, e, s) {${bodyOf(id).slice(1, -1)}},`);
      }
      lines.push(`};`, ``, `const require_ = webpackRegistry(factories, deps);`, ``);
      for (const id of group) {
        lines.push(`export const m_${safe(id)} = require_(${JSON.stringify(id)});`);
        lines.push(`export const interop_${safe(id)} = interop(m_${safe(id)});`);
      }
      lines.push(``, `export default m_${safe(group[0])};`);
      lines.push(`export const interopDefault = interop_${safe(group[0])};`);
    }
    files.set(file, lines.join('\n') + '\n');

    // thin facades so every module keeps its own import path
    for (const id of group.slice(1)) {
      files.set(
        fileName(id),
        `// Facade for webpack module "${id}", which shares a registry with ` +
          `${group.filter((g) => g !== id).map((g) => `"${g}"`).join(', ')}.\n` +
          `/* eslint-disable */\n` +
          `export { m_${safe(id)} as default, interop_${safe(id)} as interopDefault } from './${file}';\n`
      );
    }
  }

  return { vendor, files, dropped };
}

module.exports = { collectVendor, requiredIds, fileName, safe, RUNTIME };
