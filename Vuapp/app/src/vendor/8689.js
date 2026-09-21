// Verbatim from the ORich reference bundle (webpack module "8689").

// Library internals - regenerate with tools/orich instead of editing.
/* eslint-disable */
import { webpackModule, interop } from './runtime.js';

const deps = {
};

const mod = webpackModule(function (t, e, s) {"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var i={data:function(){return{wxsProp:{optDown:{},scrollTop:0,bodyHeight:0,isDownScrolling:!1,isUpScrolling:!1,isScrollBody:!0,isUpBoth:!0,t:0},callProp:{callType:"",t:0}}},methods:{wxsCall:function(t){"setWxsProp"===t.type?this.wxsProp={optDown:this.mescroll.optDown,scrollTop:this.mescroll.getScrollTop(),bodyHeight:this.mescroll.getBodyHeight(),isDownScrolling:this.mescroll.isDownScrolling,isUpScrolling:this.mescroll.isUpScrolling,isUpBoth:this.mescroll.optUp.isBoth,isScrollBody:this.mescroll.isScrollBody,t:Date.now()}:"setLoadType"===t.type?(this.downLoadType=t.downLoadType,this.$set(this.mescroll,"downLoadType",this.downLoadType),this.$set(this.mescroll,"isDownEndSuccess",null)):"triggerDownScroll"===t.type?this.mescroll.triggerDownScroll():"endDownScroll"===t.type?this.mescroll.endDownScroll():"triggerUpScroll"===t.type&&this.mescroll.triggerUpScroll(!0)}},mounted:function(){var t=this;this.mescroll.optDown.afterLoading=function(){t.callProp={callType:"showLoading",t:Date.now()}},this.mescroll.optDown.afterEndDownScroll=function(){t.callProp={callType:"endDownScroll",t:Date.now()};var e=300+(t.mescroll.optDown.beforeEndDelay||0);setTimeout((function(){4!==t.downLoadType&&0!==t.downLoadType||(t.callProp={callType:"clearTransform",t:Date.now()}),t.$set(t.mescroll,"downLoadType",t.downLoadType)}),e)},this.wxsCall({type:"setWxsProp"})}},a=i;e.default=a}, deps);

/** The module's exports object. */
export default mod;

/** What babel's interop helper resolved this require to. */
export const interopDefault = interop(mod);
