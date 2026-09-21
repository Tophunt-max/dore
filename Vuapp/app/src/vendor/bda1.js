// Verbatim from the ORich reference bundle (webpack module "bda1").

// Library internals - regenerate with tools/orich instead of editing.
/* eslint-disable */
import { webpackModule, interop } from './runtime.js';
import m_252f from './252f.js';
import m_eb03 from './eb03.js';

const deps = {
  "252f": m_252f,
  "eb03": m_eb03,
};

const mod = webpackModule(function (t, e, s) {"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var i=n(s("252f")),a=n(s("eb03"));function n(t){return t&&t.__esModule?t:{default:t}}function r(t,e){if(!(t instanceof e))throw new TypeError("Cannot call a class as a function")}function o(t,e){for(var s=0;s<e.length;s++){var i=e[s];i.enumerable=i.enumerable||!1,i.configurable=!0,"value"in i&&(i.writable=!0),Object.defineProperty(t,i.key,i)}}function c(t,e,s){return e&&o(t.prototype,e),s&&o(t,s),t}var l=function(){function t(){var e=this;r(this,t),this.config={baseUrl:"",header:{},method:"POST",dataType:"json",responseType:"text",showLoading:!0,loadingText:"\u8bf7\u6c42\u4e2d...",loadingTime:800,timer:null,originalData:!1,loadingMask:!0},this.interceptor={request:null,response:null},this.get=function(t){var s=arguments.length>1&&void 0!==arguments[1]?arguments[1]:{},i=arguments.length>2&&void 0!==arguments[2]?arguments[2]:{};return e.request({method:"GET",url:t,header:i,data:s})},this.post=function(t){var s=arguments.length>1&&void 0!==arguments[1]?arguments[1]:{},i=arguments.length>2&&void 0!==arguments[2]?arguments[2]:{};return e.request({url:t,method:"POST",header:i,data:s})},this.put=function(t){var s=arguments.length>1&&void 0!==arguments[1]?arguments[1]:{},i=arguments.length>2&&void 0!==arguments[2]?arguments[2]:{};return e.request({url:t,method:"PUT",header:i,data:s})},this.delete=function(t){var s=arguments.length>1&&void 0!==arguments[1]?arguments[1]:{},i=arguments.length>2&&void 0!==arguments[2]?arguments[2]:{};return e.request({url:t,method:"DELETE",header:i,data:s})}}return c(t,[{key:"setConfig",value:function(t){this.config=(0,i.default)(this.config,t)}},{key:"request",value:function(){var t=this,e=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{};if(this.interceptor.request&&"function"===typeof this.interceptor.request){var s=this.interceptor.request(e);if(!1===s)return new Promise((function(){}));this.options=s}return e.dataType=e.dataType||this.config.dataType,e.responseType=e.responseType||this.config.responseType,e.url=e.url||"",e.params=e.params||{},e.header=Object.assign(this.config.header,e.header),e.method=e.method||this.config.method,new Promise((function(s,i){e.complete=function(e){if(uni.hideLoading(),clearTimeout(t.config.timer),t.config.timer=null,t.config.originalData)if(t.interceptor.response&&"function"===typeof t.interceptor.response){var a=t.interceptor.response(e);!1!==a?s(a):i(e)}else s(e);else if(200==e.statusCode)if(t.interceptor.response&&"function"===typeof t.interceptor.response){var n=t.interceptor.response(e.data);!1!==n?s(n):i(e.data)}else s(e.data);else i(e)},e.url=a.default.url(e.url)?e.url:t.config.baseUrl+(0==e.url.indexOf("/")?e.url:"/"+e.url),t.config.showLoading&&!t.config.timer&&(t.config.timer=setTimeout((function(){uni.showLoading({title:t.config.loadingText,mask:t.config.loadingMask}),t.config.timer=null}),t.config.loadingTime)),uni.request(e)}))}}]),t}(),u=new l;e.default=u}, deps);

/** The module's exports object. */
export default mod;

/** What babel's interop helper resolved this require to. */
export const interopDefault = interop(mod);
