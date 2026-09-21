// Verbatim from the ORich reference bundle (webpack module "bbdd").

// Library internals - regenerate with tools/orich instead of editing.
/* eslint-disable */
import { webpackModule, interop } from './runtime.js';
import m_96cf from './96cf.js';

const deps = {
  "96cf": m_96cf,
};

const mod = webpackModule(function (t, e, s) {var i=function(){return this||"object"===typeof self&&self}()||Function("return this")(),a=i.regeneratorRuntime&&Object.getOwnPropertyNames(i).indexOf("regeneratorRuntime")>=0,n=a&&i.regeneratorRuntime;if(i.regeneratorRuntime=void 0,t.exports=s("96cf"),a)i.regeneratorRuntime=n;else try{delete i.regeneratorRuntime}catch(r){i.regeneratorRuntime=void 0}}, deps);

/** The module's exports object. */
export default mod;

/** What babel's interop helper resolved this require to. */
export const interopDefault = interop(mod);
