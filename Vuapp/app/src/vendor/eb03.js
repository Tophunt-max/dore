// Verbatim from the ORich reference bundle (webpack module "eb03").

// Library internals - regenerate with tools/orich instead of editing.
/* eslint-disable */
import { webpackModule, interop } from './runtime.js';

const deps = {
};

const mod = webpackModule(function (t, e, s) {"use strict";function i(t){return/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/.test(t)}function a(t){return/^1[23456789]\d{9}$/.test(t)}function n(t){return/http(s)?:\/\/([\w-]+\.)+[\w-]+(\/[\w-.\/?%&=]*)?/.test(t)}function r(t){return!/Invalid|NaN/.test(new Date(t).toString())}function o(t){return/^\d{4}[\/\-](0?[1-9]|1[012])[\/\-](0?[1-9]|[12][0-9]|3[01])$/.test(t)}function c(t){return/^(?:-?\d+|-?\d{1,3}(?:,\d{3})+)?(?:\.\d+)?$/.test(t)}function l(t){return/^\d+$/.test(t)}function u(t){return/^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X)$/.test(t)}function d(t){var e=/^[\u4eac\u6d25\u6caa\u6e1d\u5180\u8c6b\u4e91\u8fbd\u9ed1\u6e58\u7696\u9c81\u65b0\u82cf\u6d59\u8d63\u9102\u6842\u7518\u664b\u8499\u9655\u5409\u95fd\u8d35\u7ca4\u9752\u85cf\u5ddd\u5b81\u743c\u4f7f\u9886A-Z]{1}[A-Z]{1}(([0-9]{5}[DF]$)|([DF][A-HJ-NP-Z0-9][0-9]{4}$))/,s=/^[\u4eac\u6d25\u6caa\u6e1d\u5180\u8c6b\u4e91\u8fbd\u9ed1\u6e58\u7696\u9c81\u65b0\u82cf\u6d59\u8d63\u9102\u6842\u7518\u664b\u8499\u9655\u5409\u95fd\u8d35\u7ca4\u9752\u85cf\u5ddd\u5b81\u743c\u4f7f\u9886A-Z]{1}[A-Z]{1}[A-HJ-NP-Z0-9]{4}[A-HJ-NP-Z0-9\u6302\u5b66\u8b66\u6e2f\u6fb3]{1}$/;return 7===t.length?s.test(t):8===t.length&&e.test(t)}function f(t){return/^[1-9]\d*(,\d{3})*(\.\d{1,2})?$|^0\.\d{1,2}$/.test(t)}function _(t){var e=/^[\u4e00-\u9fa5]+$/gi;return e.test(t)}function p(t){return/^[a-zA-Z]*$/.test(t)}function h(t){var e=/^[0-9a-zA-Z]*$/g;return e.test(t)}function m(t,e){return t.indexOf(e)>=0}function v(t,e){return t>=e[0]&&t<=e[1]}function g(t,e){return t.length>=e[0]&&t.length<=e[1]}function b(t){var e=/^\d{3,4}-\d{7,8}(-\d{3,4})?$/;return e.test(t)}function $(t){switch(typeof t){case"undefined":return!0;case"string":if(0==t.replace(/(^[ \t\n\r]*)|([ \t\n\r]*$)/g,"").length)return!0;break;case"boolean":if(!t)return!0;break;case"number":if(0===t||isNaN(t))return!0;break;case"object":if(null===t||0===t.length)return!0;for(var e in t)return!1;return!0}return!1}function w(t){if("string"==typeof t)try{var e=JSON.parse(t);return!("object"!=typeof e||!e)}catch(s){return!1}return!1}function y(t){return"function"===typeof Array.isArray?Array.isArray(t):"[object Array]"===Object.prototype.toString.call(t)}function C(t){return"[object Object]"===Object.prototype.toString.call(t)}function x(t){var e=arguments.length>1&&void 0!==arguments[1]?arguments[1]:6;return new RegExp("^\\d{".concat(e,"}$")).test(t)}Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var k={email:i,mobile:a,url:n,date:r,dateISO:o,number:c,digits:l,idCard:u,carNo:d,amount:f,chinese:_,letter:p,enOrNum:h,contains:m,range:v,rangeLength:g,empty:$,isEmpty:$,jsonString:w,landline:b,object:C,array:y,code:x};e.default=k}, deps);

/** The module's exports object. */
export default mod;

/** What babel's interop helper resolved this require to. */
export const interopDefault = interop(mod);
