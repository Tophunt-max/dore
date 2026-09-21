# pages/richtext/rule

- page module: `f285`
- render module: `3861`
- options module: `7bdb`
- css scope: `data-v-9995e62a`

## Scoped CSS (3 rules)

```css
.detail[data-v-9995e62a]{width:100%;min-height:100vh;padding:16rpx 30rpx;background:#f8f8f8}
.detail .text[data-v-9995e62a]{background:#fff;padding:40rpx 58rpx;font-size:28rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#17273a;word-break:keep-all}
.loading[data-v-9995e62a]{display:flex;justify-content:center}
```

## Compiled template (literal classes/text)

```js
function(
){var t=this,
e=t.$createElement,
s=t._self._c||e;return s(
  "view",
  {staticClass:t._$s(
    0,
    "sc",
    "detail"
  ),
  attrs:{_i:0}},
  [
    s(
      "navbar",
      {attrs:{title:t.title,
      background:"#ffffff",
      _i:1}}
    ),
    s(
      "view",
      {staticClass:t._$s(
        2,
        "sc",
        "loading"
      ),
      attrs:{_i:2}},
      [
        s(
          "u-loading",
          {attrs:{mode:"circle",
          color:"#409eff",
          size:"40",
          show:t.loading,
          _i:3}}
        )
      ],
      1
    ),
    t._$s(
      4,
      "i",
      !t.loading
    )?s(
      "view",
      {staticClass:t._$s(
        4,
        "sc",
        "text"
      ),
      attrs:{_i:4},
      domProps:{innerHTML:t._s(
        t._$s(
          4,
          "v-html",
          t.content
        )
      )}}
    ):t._e(
    )
  ],
  1
)}
```

## Component options (data / methods)

```js
{"use strict";(function(t){Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var i=n(s("a34a")),a=s("2f62");function n(t){return t&&t.__esModule?t:{default:t}}function r(t,e,s,i,a,n,r){try{var o=t[n](r),c=o.value}catch(l){return void s(l)}o.done?e(c):Promise.resolve(c).then(i,a)}function o(t){return function(){var e=this,s=arguments;return new Promise((function(i,a){var n=t.apply(e,s);function o(t){r(n,i,a,o,c,"next",t)}function c(t){r(n,i,a,o,c,"throw",t)}o(void 0)}))}}function c(t,e){var s=Object.keys(t);if(Object.getOwnPropertySymbols){var i=Object.getOwnPropertySymbols(t);e&&(i=i.filter((function(e){return Object.getOwnPropertyDescriptor(t,e).enumerable}))),s.push.apply(s,i)}return s}function l(t){for(var e=1;e<arguments.length;e++){var s=null!=arguments[e]?arguments[e]:{};e%2?c(Object(s),!0).forEach((function(e){u(t,e,s[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(s)):c(Object(s)).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(s,e))}))}return t}function u(t,e,s){return e in t?Object.defineProperty(t,e,{value:s,enumerable:!0,configurable:!0,writable:!0}):t[e]=s,t}var d={computed:l({},(0,a.mapGetters)(["systemInfo"])),onLoad:function(e){var s=this;return o(i.default.mark((function a(){var n;return i.default.wrap((function(i){while(1)switch(i.prev=i.next){case 0:return i.next=2,s.$store.dispatch("getSystemInfo");case 2:s.loading=!1,n=e.type,i.t0=+n,i.next=1===i.t0?7:2===i.t0?11:3===i.t0?14:17;break;case 7:return s.title="User Agreement",s.content=s.systemInfo.agreement,t("log",s.content,"this.content"," at pages/richtext/rule.vue:26"),i.abrupt("break",17);case 11:return s.title="Help Center",s.content=s.systemInfo.about,i.abrupt("break",17);case 14:return s.title="Invitation rules",s.content=s.systemInfo.inviteregular,i.abrupt("break",17);case 17:s.imgWidth(s.content);case 18:case"end":return i.stop()}}),a)})))()},data:function(){return{title:"",content:"",loading:!0}},methods:{imgWidth:function(t){var e=t.split("<img"),s=e.length-1;if(s)for(var i=0;i<s;i++)t=t.replace("<img src",'<img style="max-width: 100%;height:auto" src');this.content=t}}};e.default=d}).call(this,s("0de9")["default"])}
```
