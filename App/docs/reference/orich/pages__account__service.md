# pages/account/service

- page module: `72c5`
- render module: `bf02`
- options module: `82b9`
- css scope: `data-v-31665c9a`

## Scoped CSS (6 rules)

```css
.setting[data-v-31665c9a]{min-height:100vh;background-color:#f8f8f8}
.middle[data-v-31665c9a]{border-top:2rpx solid #f8f8f8;background-color:#fff}
.name[data-v-31665c9a]{display:flex;flex-direction:row;align-items:center;justify-content:space-between;position:relative;width:100%;padding:37rpx 30rpx 37rpx 30rpx}
.name .name_title[data-v-31665c9a]{font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#444}
.name .name_info[data-v-31665c9a]{font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#b9b9b9}
.name[data-v-31665c9a]:not(:last-child){border-bottom:2rpx solid #ececec}
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
    "setting"
  ),
  attrs:{_i:0}},
  [
    s(
      "navbar",
      {attrs:{title:t.$t(
        "account.utitle"
      ),
      background:"#ffffff",
      _i:1}}
    ),
    s(
      "view",
      {staticClass:t._$s(
        2,
        "sc",
        "middle"
      ),
      attrs:{_i:2}},
      [
        t._$s(
          3,
          "i",
          t.data.whatsapp
        )?s(
          "view",
          {staticClass:t._$s(
            3,
            "sc",
            "name"
          ),
          attrs:{_i:3},
          on:{click:function(
            e
          ){return t.copyText(
            ".copyText1",
            t.data.whatsapp
          )}}},
          [
            s(
              "span",
              {staticClass:t._$s(
                4,
                "sc",
                "name_title"
              ),
              attrs:{_i:4}},
              [
                t._v(
                  t._$s(
                    4,
                    "t0-0",
                    t._s(
                      t.$t(
                        "account.whatsapp"
                      )
                    )
                  )
                )
              ]
            ),
            s(
              "span",
              {staticClass:t._$s(
                5,
                "sc",
                "name_info copyText1"
              ),
              attrs:{_i:5}},
              [
                t._v(
                  t._$s(
                    5,
                    "t0-0",
                    t._s(
                      t.data.whatsapp
                    )
                  )
                )
              ]
            )
          ]
        ):t._e(
        ),
        t._$s(
          6,
          "i",
          t.data.facebook
        )?s(
          "view",
          {staticClass:t._$s(
            6,
            "sc",
            "name"
          ),
          attrs:{_i:6},
          on:{click:function(
            e
          ){return t.copyText(
            ".copyText2",
            t.data.facebook
          )}}},
          [
            s(
              "span",
              {staticClass:t._$s(
                7,
                "sc",
                "name_title"
              ),
              attrs:{_i:7}},
              [
                t._v(
                  t._$s(
                    7,
                    "t0-0",
                    t._s(
                      t.$t(
                        "account.facebook"
                      )
                    )
                  )
                )
              ]
            ),
            s(
              "span",
              {staticClass:t._$s(
                8,
                "sc",
                "name_info copyText2"
              ),
              attrs:{_i:8}},
              [
                t._v(
                  t._$s(
                    8,
                    "t0-0",
                    t._s(
                      t.data.facebook
                    )
                  )
                )
              ]
            )
          ]
        ):t._e(
        ),
        t._$s(
          9,
          "i",
          t.data.phone
        )?s(
          "view",
          {staticClass:t._$s(
            9,
            "sc",
            "name"
          ),
          attrs:{_i:9},
          on:{click:function(
            e
          ){return t.copyText(
            ".copyText3",
            t.data.phone
          )}}},
          [
            s(
              "span",
              {staticClass:t._$s(
                10,
                "sc",
                "name_title"
              ),
              attrs:{_i:10}},
              [
                t._v(
                  t._$s(
                    10,
                    "t0-0",
                    t._s(
                      t.$t(
                        "account.phone"
                      )
                    )
                  )
                )
              ]
            ),
            s(
              "span",
              {staticClass:t._$s(
                11,
                "sc",
                "name_info copyText3"
              ),
              attrs:{_i:11}},
              [
                t._v(
                  t._$s(
                    11,
                    "t0-0",
                    t._s(
                      t.data.phone
                    )
                  )
                )
              ]
            )
          ]
        ):t._e(
        ),
        t._$s(
          12,
          "i",
          t.data.email
        )?s(
          "view",
          {staticClass:t._$s(
            12,
            "sc",
            "name"
          ),
          attrs:{_i:12},
          on:{click:function(
            e
          ){return t.copyText(
            ".copyText4",
            t.data.email
          )}}},
          [
            s(
              "span",
              {staticClass:t._$s(
                13,
                "sc",
                "name_title"
              ),
              attrs:{_i:13}},
              [
                t._v(
                  t._$s(
                    13,
                    "t0-0",
                    t._s(
                      t.$t(
                        "account.mailbox"
                      )
                    )
                  )
                )
              ]
            ),
            s(
              "span",
              {staticClass:t._$s(
                14,
                "sc",
                "name_info copyText4"
              ),
              attrs:{_i:14}},
              [
                t._v(
                  t._$s(
                    14,
                    "t0-0",
                    t._s(
                      t.data.email
                    )
                  )
                )
              ]
            )
          ]
        ):t._e(
        )
      ]
    )
  ],
  1
)}
```

## Component options (data / methods)

```js
{"use strict";(function(t){Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;s("2f62");var i=s("16bf"),a=(s("f16a"),{onLoad:function(t){},computed:{},data:function(){return{data:{}}},mounted:function(){this.getData()},methods:{getData:function(){var t=this;(0,i.SystemInfo)().then((function(e){t.data=e})).catch((function(){}))},copyText:function(e,s){t("log",e," at pages/account/service.vue:61"),uni.setClipboardData({data:s,success:function(){uni.showToast({icon:"none",title:this.$t("account.copysuc")})}})}}});e.default=a}).call(this,s("0de9")["default"])}
```
