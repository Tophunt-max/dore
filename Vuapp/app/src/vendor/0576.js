// Verbatim from the ORich reference bundle (webpack module "0576").

// Library internals - regenerate with tools/orich instead of editing.
/* eslint-disable */
import { webpackModule, interop } from './runtime.js';

const deps = {
};

const mod = webpackModule(function (t, e, s) {"use strict";function i(t){return"[object Array]"===Object.prototype.toString.call(t)}function a(t){if([null,void 0,NaN,!1].includes(t))return t;if("object"!==typeof t&&"function"!==typeof t)return t;var e=i(t)?[]:{};for(var s in t)t.hasOwnProperty(s)&&(e[s]="object"===typeof t[s]?a(t[s]):t[s]);return e}Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var n=a;e.default=n}, deps);

/** The module's exports object. */
export default mod;

/** What babel's interop helper resolved this require to. */
export const interopDefault = interop(mod);
