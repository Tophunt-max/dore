# pages/help/help_detail

- page module: `1a1c`
- render module: `10d3`
- options module: `42a7`
- css scope: `data-v-bf0ee9ec`

## Scoped CSS (1 rules)

```css
i=a(!1),i.push([t.i,".detail[data-v-bf0ee9ec]{padding:30rpx 30rpx}
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
      {attrs:{title:t.$t(
        "help.detailTitle"
      ),
      background:"#ffffff",
      _i:1}}
    ),
    s(
      "u-parse",
      {attrs:{html:t.detail,
      _i:2}}
    )
  ],
  1
)}
```

## Component options (data / methods)

```js
{"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var i=s("16bf"),a={data:function(){return{detail:"",deId:""}},onLoad:function(t){this.deId=t.id,this.getDetail()},methods:{getDetail:function(){var t=this;uni.showLoading({mask:!0}),(0,i.getAnswer)({id:this.deId}).then((function(e){t.detail=e.que_info,uni.hideLoading()})).catch((function(){uni.hideLoading()}))}}};e.default=a}
```
