# pages/payform/payform

- page module: `2009`
- render module: `ed7a`
- options module: `259d`
- css scope: `data-v-303882f7`

## Scoped CSS (1 rules)

```css
.form[data-v-303882f7]{padding-top:200rpx}
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
    "form"
  ),
  attrs:{_i:0}},
  [
    s(
      "web-view",
      {attrs:{src:t._$s(
        1,
        "a-src",
        t.url
      ),
      _i:1}}
    ),
    s(
      "onepopup",
      {ref:"poptip",
      attrs:{_i:2}}
    )
  ],
  1
)}
```

## Component options (data / methods)

```js
{"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var i={data:function(){return{url:""}},onLoad:function(t){this.url=uni.getStorageSync("formurl")},onBackPress:function(){return uni.showModal({title:"",content:this.$t("payform.backtip"),cancelText:this.$t("payform.cancel"),confirmText:this.$t("payform.confirm"),success:function(t){t.confirm&&uni.redirectTo({url:"../payment/recharge"})}}),!0},methods:{toNavBack:function(){"http://orich.in"!=this.url&&"http://orich.in/#/pages/success/index?type=4"!=this.url||uni.redirectTo({url:"../payment/recharge"})}}};e.default=i}
```
