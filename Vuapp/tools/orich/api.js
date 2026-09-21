'use strict';
/**
 * Recover the ORich HTTP API surface from the decompiled bundle.
 *
 * Every api module follows the same shape:
 *
 *   e.Login = a; ... var i = s("8226");
 *   function a(t){ return i.http.post("/index/login", t) }
 *
 * so each exported name can be paired with the endpoint it called. The ported
 * pages keep calling these names, and the generated client maps them onto the
 * vuapp Worker backend.
 */
const { Bundle } = require('./bundle');

/** @returns Map<exportedName, {module, method, path}> */
function apiSurface(bundle) {
  const out = new Map();
  for (const [modId, body] of bundle.mods.service) {
    if (!/\.http\.(post|get|put|delete)\(/.test(body)) continue;

    // exported name -> local function name:  e.Login=a
    const exports = new Map();
    for (const m of body.matchAll(/\be\.([A-Za-z_$][\w$]*)\s*=\s*([\w$]+)\b/g)) {
      exports.set(m[2], m[1]);
    }
    // local function -> endpoint:  function a(t){return i.http.post("/index/login",t)}
    for (const m of body.matchAll(
      /function\s+([\w$]+)\s*\([^)]*\)\s*\{\s*return\s+[\w$]+\.http\.(post|get|put|delete)\(\s*"([^"]+)"/g
    )) {
      const name = exports.get(m[1]);
      if (name && !out.has(name)) {
        out.set(name, { module: modId, method: m[2].toUpperCase(), path: m[3] });
      }
    }
  }
  return out;
}

/**
 * The names each SFC's options module actually imports from an api module,
 * so the generated pages can import exactly what they use.
 * @returns Map<sfcName, Set<functionName>>
 */
function usedNames(bundle, sfcs, surface) {
  const out = new Map();
  for (const d of sfcs) {
    const o = bundle.resolveOptions(d.options);
    const locals = new Map();
    for (const m of o.body.matchAll(/([\w$]+)\s*=\s*s\("([^"]+)"\)/g)) locals.set(m[1], m[2]);
    const names = new Set();
    for (const m of o.body.matchAll(/\(0,\s*([\w$]+)\.([\w$]+)\)/g)) {
      if (surface.has(m[2])) names.add(m[2]);
    }
    out.set(d.name, names);
  }
  return out;
}

module.exports = { apiSurface, usedNames };

if (require.main === module) {
  const b = new Bundle();
  const surface = apiSurface(b);
  console.log('ORich API functions:', surface.size);
  const rows = [...surface].sort((a, b) => a[0].localeCompare(b[0]));
  for (const [name, info] of rows) {
    console.log(`  ${name.padEnd(26)} ${info.method.padEnd(5)} ${info.path}`);
  }
}
