// Verbatim from the ORich reference bundle (webpack module "610a").

// Library internals - regenerate with tools/orich instead of editing.
/* eslint-disable */
import { webpackModule, interop } from './runtime.js';
import m_1773 from './1773.js';

const deps = {
  "1773": m_1773,
};

const mod = webpackModule(function (t, e, s) {"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var i=a(s("1773"));function a(t){return t&&t.__esModule?t:{default:t}}function n(){var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:null,e=arguments.length>1&&void 0!==arguments[1]?arguments[1]:"yyyy-mm-dd";t||(t=Number(new Date)),10==t.toString().length&&(t*=1e3);var s=+new Date(Number(t)),a=(Number(new Date)-s)/1e3,n="";switch(!0){case a<300:n="\u521a\u521a";break;case a>=300&&a<3600:n=parseInt(a/60)+"\u5206\u949f\u524d";break;case a>=3600&&a<86400:n=parseInt(a/3600)+"\u5c0f\u65f6\u524d";break;case a>=86400&&a<2592e3:n=parseInt(a/86400)+"\u5929\u524d";break;default:n=!1===e?a>=2592e3&&a<31536e3?parseInt(a/2592e3)+"\u4e2a\u6708\u524d":parseInt(a/31536e3)+"\u5e74\u524d":(0,i.default)(s,e)}return n}var r=n;e.default=r}, deps);

/** The module's exports object. */
export default mod;

/** What babel's interop helper resolved this require to. */
export const interopDefault = interop(mod);
