// Verbatim from the ORich reference bundle (webpack module "0de9").

// Library internals - regenerate with tools/orich instead of editing.
/* eslint-disable */
import { webpackModule, interop } from './runtime.js';

const deps = {
};

const mod = webpackModule(function (t, e, s) {"use strict";function i(t){var e=Object.prototype.toString.call(t);return e.substring(8,e.length-1)}function a(){return"string"===typeof __channelId__&&__channelId__}function n(t,e){switch(i(e)){case"Function":return"function() { [native code] }";default:return e}}function r(t){for(var e=arguments.length,s=new Array(e>1?e-1:0),i=1;i<e;i++)s[i-1]=arguments[i];console[t].apply(console,s)}function o(){for(var t=arguments.length,e=new Array(t),s=0;s<t;s++)e[s]=arguments[s];var r=e.shift();if(a())return e.push(e.pop().replace("at ","uni-app:///")),console[r].apply(console,e);var o=e.map((function(t){var e=Object.prototype.toString.call(t).toLowerCase();if("[object object]"===e||"[object array]"===e)try{t="---BEGIN:JSON---"+JSON.stringify(t,n)+"---END:JSON---"}catch(a){t=e}else if(null===t)t="---NULL---";else if(void 0===t)t="---UNDEFINED---";else{var s=i(t).toUpperCase();t="NUMBER"===s||"BOOLEAN"===s?"---BEGIN:"+s+"---"+t+"---END:"+s+"---":String(t)}return t})),c="";if(o.length>1){var l=o.pop();c=o.join("---COMMA---"),0===l.indexOf(" at ")?c+=l:c+="---COMMA---"+l}else c=o[0];console[r](c)}s.r(e),s.d(e,"log",(function(){return r})),s.d(e,"default",(function(){return o}))}, deps);

/** The module's exports object. */
export default mod;

/** What babel's interop helper resolved this require to. */
export const interopDefault = interop(mod);
