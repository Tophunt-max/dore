// Verbatim from the ORich reference bundle (webpack module "6f19").

// Library internals - regenerate with tools/orich instead of editing.
/* eslint-disable */
import { webpackModule, interop } from './runtime.js';

const deps = {
};

const mod = webpackModule(function (t, e, s) {"use strict";function i(){var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{},e=!(arguments.length>1&&void 0!==arguments[1])||arguments[1],s=arguments.length>2&&void 0!==arguments[2]?arguments[2]:"brackets",i=e?"?":"",a=[];-1==["indices","brackets","repeat","comma"].indexOf(s)&&(s="brackets");var n=function(e){var i=t[e];if(["",void 0,null].indexOf(i)>=0)return"continue";if(i.constructor===Array)switch(s){case"indices":for(var n=0;n<i.length;n++)a.push(e+"["+n+"]="+i[n]);break;case"brackets":i.forEach((function(t){a.push(e+"[]="+t)}));break;case"repeat":i.forEach((function(t){a.push(e+"="+t)}));break;case"comma":var r="";i.forEach((function(t){r+=(r?",":"")+t})),a.push(e+"="+r);break;default:i.forEach((function(t){a.push(e+"[]="+t)}))}else a.push(e+"="+i)};for(var r in t)n(r);return a.length?i+a.join("&"):""}Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var a=i;e.default=a}, deps);

/** The module's exports object. */
export default mod;

/** What babel's interop helper resolved this require to. */
export const interopDefault = interop(mod);
