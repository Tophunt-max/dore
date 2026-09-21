// Verbatim from the ORich reference bundle (webpack module "1773").

// Library internals - regenerate with tools/orich instead of editing.
/* eslint-disable */
import { webpackModule, interop } from './runtime.js';

const deps = {
};

const mod = webpackModule(function (t, e, s) {"use strict";function i(){var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:null,e=arguments.length>1&&void 0!==arguments[1]?arguments[1]:"yyyy-mm-dd";t||(t=Number(new Date)),10==t.toString().length&&(t*=1e3);var s,i=new Date(Number(t)),a={"y+":i.getFullYear().toString(),"m+":(i.getMonth()+1).toString(),"d+":i.getDate().toString(),"h+":i.getHours().toString(),"M+":i.getMinutes().toString(),"s+":i.getSeconds().toString()};for(var n in a)s=new RegExp("("+n+")").exec(e),s&&(e=e.replace(s[1],1==s[1].length?a[n]:a[n].padStart(s[1].length,"0")));return e}Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0,String.prototype.padStart||(String.prototype.padStart=function(t){var e=arguments.length>1&&void 0!==arguments[1]?arguments[1]:" ";if("[object String]"!==Object.prototype.toString.call(e))throw new TypeError("fillString must be String");var s=this;if(s.length>=t)return String(s);var i=t-s.length,a=Math.ceil(i/e.length);while(a>>=1)e+=e,1===a&&(e+=e);return e.slice(0,i)+s});var a=i;e.default=a}, deps);

/** The module's exports object. */
export default mod;

/** What babel's interop helper resolved this require to. */
export const interopDefault = interop(mod);
