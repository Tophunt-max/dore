// Verbatim from the ORich reference bundle (webpack module "a34a").

// Library internals - regenerate with tools/orich instead of editing.
/* eslint-disable */
import { webpackModule, interop } from './runtime.js';
import m_bbdd from './bbdd.js';

const deps = {
  "bbdd": m_bbdd,
};

const mod = webpackModule(function (t, e, s) {t.exports=s("bbdd")}, deps);

/** The module's exports object. */
export default mod;

/** What babel's interop helper resolved this require to. */
export const interopDefault = interop(mod);
