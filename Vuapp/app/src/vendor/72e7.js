// Verbatim from the ORich reference bundle (webpack module "72e7").

// Library internals - regenerate with tools/orich instead of editing.
/* eslint-disable */
import { webpackModule, interop } from './runtime.js';
import m_eb03 from './eb03.js';

const deps = {
  "eb03": m_eb03,
};

const mod = webpackModule(function (t, e, s) {"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e.default=n;var i=a(s("eb03"));function a(t){return t&&t.__esModule?t:{default:t}}function n(){var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:"auto",e=arguments.length>1&&void 0!==arguments[1]?arguments[1]:"rpx";return t=String(t),i.default.number(t)?"".concat(t).concat(e):t}}, deps);

/** The module's exports object. */
export default mod;

/** What babel's interop helper resolved this require to. */
export const interopDefault = interop(mod);
