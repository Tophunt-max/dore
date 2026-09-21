// Minimal webpack runtime shim.
//
// The vendor modules alongside this file are kept verbatim from the ORich
// reference bundle; this provides the handful of module-system helpers they were
// compiled against so they can be consumed as plain ES modules.

/** Attach the `__webpack_require__` helpers the modules were compiled against. */
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
 * @param factory the compiled `function (module, exports, require)`
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
