// Verbatim from the ORich reference bundle (webpack module "cf5c").

// Library internals - regenerate with tools/orich instead of editing.
/* eslint-disable */
import { webpackModule, interop } from './runtime.js';

const deps = {
};

const mod = webpackModule(function (t, e, s) {"use strict";function i(){for(var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:"rgb(0, 0, 0)",e=arguments.length>1&&void 0!==arguments[1]?arguments[1]:"rgb(255, 255, 255)",s=arguments.length>2&&void 0!==arguments[2]?arguments[2]:10,i=a(t,!1),r=i[0],o=i[1],c=i[2],l=a(e,!1),u=l[0],d=l[1],f=l[2],_=(u-r)/s,p=(d-o)/s,h=(f-c)/s,m=[],v=0;v<s;v++){var g=n("rgb("+Math.round(_*v+r)+","+Math.round(p*v+o)+","+Math.round(h*v+c)+")");m.push(g)}return m}function a(t){var e=!(arguments.length>1&&void 0!==arguments[1])||arguments[1],s=/^#([0-9a-fA-f]{3}|[0-9a-fA-f]{6})$/;if(t=t.toLowerCase(),t&&s.test(t)){if(4===t.length){for(var i="#",a=1;a<4;a+=1)i+=t.slice(a,a+1).concat(t.slice(a,a+1));t=i}for(var n=[],r=1;r<7;r+=2)n.push(parseInt("0x"+t.slice(r,r+2)));return e?"rgb(".concat(n[0],",").concat(n[1],",").concat(n[2],")"):n}if(/^(rgb|RGB)/.test(t)){var o=t.replace(/(?:\(|\)|rgb|RGB)*/g,"").split(",");return o.map((function(t){return Number(t)}))}return t}function n(t){var e=t,s=/^#([0-9a-fA-f]{3}|[0-9a-fA-f]{6})$/;if(/^(rgb|RGB)/.test(e)){for(var i=e.replace(/(?:\(|\)|rgb|RGB)*/g,"").split(","),a="#",n=0;n<i.length;n++){var r=Number(i[n]).toString(16);r=1==String(r).length?"0"+r:r,"0"===r&&(r+=r),a+=r}return 7!==a.length&&(a=e),a}if(!s.test(e))return e;var o=e.replace(/#/,"").split("");if(6===o.length)return e;if(3===o.length){for(var c="#",l=0;l<o.length;l+=1)c+=o[l]+o[l];return c}}function r(t){var e=arguments.length>1&&void 0!==arguments[1]?arguments[1]:.3;t=n(t);var s=/^#([0-9a-fA-f]{3}|[0-9a-fA-f]{6})$/,i=t.toLowerCase();if(i&&s.test(i)){if(4===i.length){for(var a="#",r=1;r<4;r+=1)a+=i.slice(r,r+1).concat(i.slice(r,r+1));i=a}for(var o=[],c=1;c<7;c+=2)o.push(parseInt("0x"+i.slice(c,c+2)));return"rgba("+o.join(",")+","+e+")"}return i}Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var o={colorGradient:i,hexToRgb:a,rgbToHex:n,colorToRgba:r};e.default=o}, deps);

/** The module's exports object. */
export default mod;

/** What babel's interop helper resolved this require to. */
export const interopDefault = interop(mod);
