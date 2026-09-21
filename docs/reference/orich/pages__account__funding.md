# pages/account/funding

- page module: `c5a1`
- render module: `9084`
- options module: `7965`
- css scope: `data-v-c3e1170e`

## Scoped CSS (9 rules)

```css
.funding[data-v-c3e1170e]{position:relative;background:#f8f8f8}
.funding .list[data-v-c3e1170e]{background:#fff;padding:0 30rpx}
.funding .list .item[data-v-c3e1170e]{padding:20rpx 0}
.funding .list .item .item-menu[data-v-c3e1170e]{display:flex;flex-direction:row;align-items:center;justify-content:space-between;width:100%}
.funding .list .item .item-key[data-v-c3e1170e]{width:400rpx;font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:700;color:#444}
.funding .list .item .item-value[data-v-c3e1170e]{font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#ff5c5c;letter-spacing:0rpx}
.funding .list .item .item-text[data-v-c3e1170e]{font-size:32rpx;font-family:Roboto,Roboto-Regular;color:#ee5016}
.funding .list .item .item-text[data-v-c3e1170e]{margin-top:10rpx;font-size:26rpx;font-family:Roboto,Roboto-Regular;color:#b9b9b9}
.funding .list .item[data-v-c3e1170e]:not(:last-child){border-bottom:1rpx solid #ececec}
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
    "funding"
  ),
  attrs:{_i:0}},
  [
    s(
      "navbar",
      {attrs:{title:t.$t(
        "account.editname"
      ),
      background:"#ffffff",
      _i:1}}
    ),
    s(
      "mescroll-body",
      {ref:"mescrollRef",
      attrs:{down:t.downOption,
      up:t.upOption,
      _i:2},
      on:{init:t.mescrollInit,
      down:t.downCallback,
      up:t.upCallback}},
      [
        s(
          "view",
          {staticClass:t._$s(
            3,
            "sc",
            "list"
          ),
          attrs:{_i:3}},
          t._l(
            t._$s(
              4,
              "f",
              {forItems:t.dataList}
            ),
            (
              function(
                e,
                i,
                a,
                n
              ){return s(
                "view",
                {key:t._$s(
                  4,
                  "f",
                  {forIndex:a,
                  key:i}
                ),
                staticClass:t._$s(
                  "4-"+n,
                  "sc",
                  "item"
                ),
                attrs:{_i:"4-"+n}},
                [
                  s(
                    "view",
                    {staticClass:t._$s(
                      "5-"+n,
                      "sc",
                      "item-menu"
                    ),
                    attrs:{_i:"5-"+n}},
                    [
                      s(
                        "view",
                        {staticClass:t._$s(
                          "6-"+n,
                          "sc",
                          "item-key"
                        ),
                        attrs:{_i:"6-"+n}},
                        [
                          t._v(
                            t._$s(
                              "6-"+n,
                              "t0-0",
                              t._s(
                                e.typeshow
                              )
                            )
                          )
                        ]
                      ),
                      s(
                        "view",
                        {staticClass:t._$s(
                          "7-"+n,
                          "sc",
                          "item-value"
                        ),
                        attrs:{_i:"7-"+n}},
                        [
                          t._v(
                            t._$s(
                              "7-"+n,
                              "t0-0",
                              t._s(
                                e.price.slice(
                                  0,
                                  1
                                )
                              )
                            )+t._$s(
                              "7-"+n,
                              "t0-1",
                              t._s(
                                e.price.slice(
                                  1
                                )
                              )
                            )
                          )
                        ]
                      )
                    ]
                  ),
                  s(
                    "view",
                    {staticClass:t._$s(
                      "8-"+n,
                      "sc",
                      "item-menu"
                    ),
                    attrs:{_i:"8-"+n}},
                    [
                      s(
                        "view",
                        {staticClass:t._$s(
                          "9-"+n,
                          "sc",
                          "item-text"
                        ),
                        attrs:{_i:"9-"+n}},
                        [
                          t._v(
                            t._$s(
                              "9-"+n,
                              "t0-0",
                              t._s(
                                e.time
                              )
                            )
                          )
                        ]
                      ),
                      t._$s(
                        "10-"+n,
                        "i",
                        3==e.type
                      )?s(
                        "view",
                        {staticClass:t._$s(
                          "10-"+n,
                          "sc",
                          "item-text"
                        ),
                        attrs:{_i:"10-"+n}},
                        [
                          t._v(
                            t._$s(
                              "10-"+n,
                              "t0-0",
                              t._s(
                                e.balance
                              )
                            )
                          )
                        ]
                      ):s(
                        "view",
                        {staticClass:t._$s(
                          "11-"+n,
                          "sc",
                          "item-text"
                        ),
                        attrs:{_i:"11-"+n}},
                        [
                          t._v(
                            t._$s(
                              "11-"+n,
                              "t0-0",
                              t._s(
                                e.balance
                              )
                            )
                          )
                        ]
                      )
                    ]
                  )
                ]
              )}
            )
          ),
          0
        )
      ]
    )
  ],
  1
)}
```

## Component options (data / methods)

```js
{"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var i=r(s("4df3")),a=r(s("7142")),n=s("9fda");function r(t){return t&&t.__esModule?t:{default:t}}var o={mixins:[i.default],components:{MescrollBody:a.default},data:function(){return{mescroll:null,downOption:{use:!0,auto:!0},upOption:{use:!0,auto:!0,page:{num:0,size:20}},dataList:[]}},mounted:function(){},methods:{upCallback:function(t){var e=this,s=(t.num-1)*t.size,i=t.size;(0,n.UserBalance)({start:s,limit:i}).then((function(s){var i=s.list,a=i.length,n=+s.count;1==t.num&&(e.dataList=[]),e.dataList=e.dataList.concat(i),e.dataList.forEach((function(t){switch(+t.type){case 1:t.typename=e.$t("account.recharge");break;case 2:t.typename=e.$t("account.treasure");break;case 3:t.typename=e.$t("account.treasure");break;case 4:t.typename=e.$t("account.withdraw");break;case 5:t.typename=e.$t("account.wreturn");break;case 6:t.typename=e.$t("account.operation");break}})),e.mescroll.endBySize(a,n)})).catch((function(t){e.mescroll.endErr()}))}}};e.default=o}
```
