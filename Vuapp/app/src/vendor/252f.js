// Verbatim from the ORich reference bundle (webpack module "252f").

// Library internals - regenerate with tools/orich instead of editing.
/* eslint-disable */
import { webpackModule, interop } from './runtime.js';
import m_0576 from './0576.js';

const deps = {
  "0576": m_0576,
};

const mod = webpackModule(function (t, e, s) {"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var i=a(s("0576"));function a(t){return t&&t.__esModule?t:{default:t}}function n(){var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{},e=arguments.length>1&&void 0!==arguments[1]?arguments[1]:{};if(t=(0,i.default)(t),"object"!==typeof t||"object"!==typeof e)return!1;for(var s in e)e.hasOwnProperty(s)&&(s in t?"object"!==typeof t[s]||"object"!==typeof e[s]?t[s]=e[s]:t[s].concat&&e[s].concat?t[s]=t[s].concat(e[s]):t[s]=n(t[s],e[s]):t[s]=e[s]);return t}var r=n;e.default=r}, deps);

/** The module's exports object. */
export default mod;

/** What babel's interop helper resolved this require to. */
export const interopDefault = interop(mod);
