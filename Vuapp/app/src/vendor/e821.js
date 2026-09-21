// Verbatim from the ORich reference bundle (webpack module "e821").

// Library internals - regenerate with tools/orich instead of editing.
/* eslint-disable */
import { webpackModule, interop } from './runtime.js';

const deps = {
};

const mod = webpackModule(function (t, e, s) {"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var i=null;function a(t){var e=arguments.length>1&&void 0!==arguments[1]?arguments[1]:500,s=arguments.length>2&&void 0!==arguments[2]&&arguments[2];if(null!==i&&clearTimeout(i),s){var a=!i;i=setTimeout((function(){i=null}),e),a&&"function"===typeof t&&t()}else i=setTimeout((function(){"function"===typeof t&&t()}),e)}var n=a;e.default=n}, deps);

/** The module's exports object. */
export default mod;

/** What babel's interop helper resolved this require to. */
export const interopDefault = interop(mod);
