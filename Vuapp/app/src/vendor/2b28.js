// Verbatim from the ORich reference bundle (webpack module "2b28").

// Library internals - regenerate with tools/orich instead of editing.
/* eslint-disable */
import { webpackModule, interop } from './runtime.js';

const deps = {
};

const mod = webpackModule(function (t, e, s) {"use strict";function i(t,e){var s=this.$parent;while(s)if(s.$options.name!==t)s=s.$parent;else{var i=function(){var t={};if(Array.isArray(e))e.map((function(e){t[e]=s[e]?s[e]:""}));else for(var i in e)Array.isArray(e[i])?e[i].length?t[i]=e[i]:t[i]=s[i]:e[i].constructor===Object?Object.keys(e[i]).length?t[i]=e[i]:t[i]=s[i]:t[i]=e[i]||!1===e[i]?e[i]:s[i];return{v:t}}();if("object"===typeof i)return i.v}return{}}Object.defineProperty(e,"__esModule",{value:!0}),e.default=i}, deps);

/** The module's exports object. */
export default mod;

/** What babel's interop helper resolved this require to. */
export const interopDefault = interop(mod);
