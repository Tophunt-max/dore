// Verbatim from the ORich reference bundle (webpack module "ad83").

// Library internals - regenerate with tools/orich instead of editing.
/* eslint-disable */
import { webpackModule, interop } from './runtime.js';

const deps = {
};

const mod = webpackModule(function (t, e, s) {"use strict";function i(){var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:32,e=!(arguments.length>1&&void 0!==arguments[1])||arguments[1],s=arguments.length>2&&void 0!==arguments[2]?arguments[2]:null,i="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz".split(""),a=[];if(s=s||i.length,t)for(var n=0;n<t;n++)a[n]=i[0|Math.random()*s];else{var r;a[8]=a[13]=a[18]=a[23]="-",a[14]="4";for(var o=0;o<36;o++)a[o]||(r=0|16*Math.random(),a[o]=i[19==o?3&r|8:r])}return e?(a.shift(),"u"+a.join("")):a.join("")}Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var a=i;e.default=a}, deps);

/** The module's exports object. */
export default mod;

/** What babel's interop helper resolved this require to. */
export const interopDefault = interop(mod);
