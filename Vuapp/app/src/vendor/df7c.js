// Verbatim from the ORich reference bundle (webpack modules "df7c", "4362").
// They require each other, so they share one registry.

// Library internals - regenerate with tools/orich instead of editing.
/* eslint-disable */
import { webpackRegistry, interop } from './runtime.js';

const deps = {
};

const factories = {
  "df7c": function (t, e, s) {(function(t){function s(t,e){for(var s=0,i=t.length-1;i>=0;i--){var a=t[i];"."===a?t.splice(i,1):".."===a?(t.splice(i,1),s++):s&&(t.splice(i,1),s--)}if(e)for(;s--;s)t.unshift("..");return t}function i(t){"string"!==typeof t&&(t+="");var e,s=0,i=-1,a=!0;for(e=t.length-1;e>=0;--e)if(47===t.charCodeAt(e)){if(!a){s=e+1;break}}else-1===i&&(a=!1,i=e+1);return-1===i?"":t.slice(s,i)}function a(t,e){if(t.filter)return t.filter(e);for(var s=[],i=0;i<t.length;i++)e(t[i],i,t)&&s.push(t[i]);return s}e.resolve=function(){for(var e="",i=!1,n=arguments.length-1;n>=-1&&!i;n--){var r=n>=0?arguments[n]:t.cwd();if("string"!==typeof r)throw new TypeError("Arguments to path.resolve must be strings");r&&(e=r+"/"+e,i="/"===r.charAt(0))}return e=s(a(e.split("/"),(function(t){return!!t})),!i).join("/"),(i?"/":"")+e||"."},e.normalize=function(t){var i=e.isAbsolute(t),r="/"===n(t,-1);return t=s(a(t.split("/"),(function(t){return!!t})),!i).join("/"),t||i||(t="."),t&&r&&(t+="/"),(i?"/":"")+t},e.isAbsolute=function(t){return"/"===t.charAt(0)},e.join=function(){var t=Array.prototype.slice.call(arguments,0);return e.normalize(a(t,(function(t,e){if("string"!==typeof t)throw new TypeError("Arguments to path.join must be strings");return t})).join("/"))},e.relative=function(t,s){function i(t){for(var e=0;e<t.length;e++)if(""!==t[e])break;for(var s=t.length-1;s>=0;s--)if(""!==t[s])break;return e>s?[]:t.slice(e,s-e+1)}t=e.resolve(t).substr(1),s=e.resolve(s).substr(1);for(var a=i(t.split("/")),n=i(s.split("/")),r=Math.min(a.length,n.length),o=r,c=0;c<r;c++)if(a[c]!==n[c]){o=c;break}var l=[];for(c=o;c<a.length;c++)l.push("..");return l=l.concat(n.slice(o)),l.join("/")},e.sep="/",e.delimiter=":",e.dirname=function(t){if("string"!==typeof t&&(t+=""),0===t.length)return".";for(var e=t.charCodeAt(0),s=47===e,i=-1,a=!0,n=t.length-1;n>=1;--n)if(e=t.charCodeAt(n),47===e){if(!a){i=n;break}}else a=!1;return-1===i?s?"/":".":s&&1===i?"/":t.slice(0,i)},e.basename=function(t,e){var s=i(t);return e&&s.substr(-1*e.length)===e&&(s=s.substr(0,s.length-e.length)),s},e.extname=function(t){"string"!==typeof t&&(t+="");for(var e=-1,s=0,i=-1,a=!0,n=0,r=t.length-1;r>=0;--r){var o=t.charCodeAt(r);if(47!==o)-1===i&&(a=!1,i=r+1),46===o?-1===e?e=r:1!==n&&(n=1):-1!==e&&(n=-1);else if(!a){s=r+1;break}}return-1===e||-1===i||0===n||1===n&&e===i-1&&e===s+1?"":t.slice(e,i)};var n="b"==="ab".substr(-1)?function(t,e,s){return t.substr(e,s)}:function(t,e,s){return e<0&&(e=t.length+e),t.substr(e,s)}}).call(this,s("4362"))},
  "4362": function (t, e, s) {e.nextTick=function(t){var e=Array.prototype.slice.call(arguments);e.shift(),setTimeout((function(){t.apply(null,e)}),0)},e.platform=e.arch=e.execPath=e.title="browser",e.pid=1,e.browser=!0,e.env={},e.argv=[],e.binding=function(t){throw new Error("No such module. (Possibly not yet loaded)")},function(){var t,i="/";e.cwd=function(){return i},e.chdir=function(e){t||(t=s("df7c")),i=t.resolve(e,i)}}(),e.exit=e.kill=e.umask=e.dlopen=e.uptime=e.memoryUsage=e.uvCounters=function(){},e.features={}},
};

const require_ = webpackRegistry(factories, deps);

export const m_df7c = require_("df7c");
export const interop_df7c = interop(m_df7c);
export const m_4362 = require_("4362");
export const interop_4362 = interop(m_4362);

export default m_df7c;
export const interopDefault = interop_df7c;
