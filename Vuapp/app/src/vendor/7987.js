// Verbatim from the ORich reference bundle (webpack module "7987").

// Library internals - regenerate with tools/orich instead of editing.
/* eslint-disable */
import { webpackModule, interop } from './runtime.js';
import m_a34a from './a34a.js';

const deps = {
  "a34a": m_a34a,
};

const mod = webpackModule(function (t, e, s) {"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var i=a(s("a34a"));function a(t){return t&&t.__esModule?t:{default:t}}function n(t,e,s,i,a,n,r){try{var o=t[n](r),c=o.value}catch(l){return void s(l)}o.done?e(c):Promise.resolve(c).then(i,a)}function r(t){return function(){var e=this,s=arguments;return new Promise((function(i,a){var r=t.apply(e,s);function o(t){n(r,i,a,o,c,"next",t)}function c(t){n(r,i,a,o,c,"throw",t)}o(void 0)}))}}function o(t,e){if(!(t instanceof e))throw new TypeError("Cannot call a class as a function")}function c(t,e){for(var s=0;s<e.length;s++){var i=e[s];i.enumerable=i.enumerable||!1,i.configurable=!0,"value"in i&&(i.writable=!0),Object.defineProperty(t,i.key,i)}}function l(t,e,s){return e&&c(t.prototype,e),s&&c(t,s),t}var u=function(){function t(){o(this,t),this.config={type:"navigateTo",url:"",delta:1,params:{},animationType:"pop-in",animationDuration:300,intercept:!1},this.route=this.route.bind(this)}return l(t,[{key:"addRootPath",value:function(t){return"/"===t[0]?t:"/".concat(t)}},{key:"mixinParam",value:function(t,e){t=t&&this.addRootPath(t);var s="";return/.*\/.*\?.*=.*/.test(t)?(s=uni.$u.queryParams(e,!1),t+"&"+s):(s=uni.$u.queryParams(e),t+s)}},{key:"route",value:function(){var t=r(i.default.mark((function t(){var e,s,a,n,r=arguments;return i.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(e=r.length>0&&void 0!==r[0]?r[0]:{},s=r.length>1&&void 0!==r[1]?r[1]:{},a={},"string"===typeof e?(a.url=this.mixinParam(e,s),a.type="navigateTo"):(a=uni.$u.deepClone(e,this.config),a.url=this.mixinParam(e.url,e.params)),s.intercept&&(this.config.intercept=s.intercept),a.params=s,a=uni.$u.deepMerge(this.config,a),"function"!==typeof uni.$u.routeIntercept){t.next=14;break}return t.next=10,new Promise((function(t,e){uni.$u.routeIntercept(a,t)}));case 10:n=t.sent,n&&this.openPage(a),t.next=15;break;case 14:this.openPage(a);case 15:case"end":return t.stop()}}),t,this)})));function e(){return t.apply(this,arguments)}return e}()},{key:"openPage",value:function(t){var e=t.url,s=(t.type,t.delta),i=t.animationType,a=t.animationDuration;"navigateTo"!=t.type&&"to"!=t.type||uni.navigateTo({url:e,animationType:i,animationDuration:a}),"redirectTo"!=t.type&&"redirect"!=t.type||uni.redirectTo({url:e}),"switchTab"!=t.type&&"tab"!=t.type||uni.switchTab({url:e}),"reLaunch"!=t.type&&"launch"!=t.type||uni.reLaunch({url:e}),"navigateBack"!=t.type&&"back"!=t.type||uni.navigateBack({delta:s})}}]),t}(),d=(new u).route;e.default=d}, deps);

/** The module's exports object. */
export default mod;

/** What babel's interop helper resolved this require to. */
export const interopDefault = interop(mod);
