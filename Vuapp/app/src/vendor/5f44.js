// Verbatim from the ORich reference bundle (webpack module "5f44").

// Library internals - regenerate with tools/orich instead of editing.
/* eslint-disable */
import { webpackModule, interop } from './runtime.js';

const deps = {
};

const mod = webpackModule(function (t, e, s) {"use strict";function i(){var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:"success",e=arguments.length>1&&void 0!==arguments[1]&&arguments[1];-1==["primary","info","error","warning","success"].indexOf(t)&&(t="success");var s="";switch(t){case"primary":s="info-circle";break;case"info":s="info-circle";break;case"error":s="close-circle";break;case"warning":s="error-circle";break;case"success":s="checkmark-circle";break;default:s="checkmark-circle"}return e&&(s+="-fill"),s}Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var a=i;e.default=a}, deps);

/** The module's exports object. */
export default mod;

/** What babel's interop helper resolved this require to. */
export const interopDefault = interop(mod);
