// Verbatim from the ORich reference bundle (webpack module "99e7").

// Library internals - regenerate with tools/orich instead of editing.
/* eslint-disable */
import { webpackModule, interop } from './runtime.js';

const deps = {
};

const mod = webpackModule(function (t, e, s) {t.exports={data:function(){return{}},onLoad:function(){this.$u.getRect=this.$uGetRect},methods:{$uGetRect:function(t,e){var s=this;return new Promise((function(i){uni.createSelectorQuery().in(s)[e?"selectAll":"select"](t).boundingClientRect((function(t){e&&Array.isArray(t)&&t.length&&i(t),!e&&t&&i(t)})).exec()}))},getParentData:function(){var t=this,e=arguments.length>0&&void 0!==arguments[0]?arguments[0]:"";this.parent||(this.parent=!1),this.parent=this.$u.$parent.call(this,e),this.parent&&Object.keys(this.parentData).map((function(e){t.parentData[e]=t.parent[e]}))},preventEvent:function(t){t&&t.stopPropagation&&t.stopPropagation()}},onReachBottom:function(){uni.$emit("uOnReachBottom")}}}, deps);

/** The module's exports object. */
export default mod;

/** What babel's interop helper resolved this require to. */
export const interopDefault = interop(mod);
