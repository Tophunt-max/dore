# pages/account/aboutus

- page module: `6d1d`
- render module: `c02b`
- options module: `2249`
- css scope: `data-v-28953aca`

## Scoped CSS (11 rules)

```css
.about[data-v-28953aca]{min-height:100vh;background:#f8f8f8}
.about .img[data-v-28953aca]{width:100%}
.about .about_top[data-v-28953aca]{padding-bottom:20rpx;padding-left:38rpx;margin-top:112rpx;background:#fff;border-bottom:1rpx solid #ececec}
.about .about_top .about_top_title[data-v-28953aca]{display:inline-block;margin-left:214rpx;font-size:32rpx;font-weight:700;font-family:Roboto,Roboto-Bold;color:#000}
.about .about_main[data-v-28953aca]{background:#fff;margin-left:2rpx;padding:0 24rpx 0 30rpx}
.about .about_main .border_bottom[data-v-28953aca]{border-bottom:1rpx solid #ececec}
.about .about_main .about_main_item[data-v-28953aca]{display:flex;align-items:center;justify-content:space-between;padding:37rpx 0}
.about .about_main .about_main_item .about_main_item_title[data-v-28953aca]{font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#444;letter-spacing:0rpx}
.about .about_main .about_main_item .about_main_item_right[data-v-28953aca]{display:flex;align-items:center}
.about .about_main .about_main_item .about_main_item_right uni-text[data-v-28953aca]{margin-right:16rpx;opacity:1;font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#b9b9b9;letter-spacing:0rpx}
.about .about_main .about_main_item .about_main_item_right .about_main_item_icon[data-v-28953aca]{width:32rpx;height:32rpx}
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
    "about"
  ),
  attrs:{_i:0}},
  [
    s(
      "navbar",
      {attrs:{title:t.$t(
        "account.aboutus"
      ),
      background:"#ffffff",
      _i:1}}
    ),
    s(
      "view",
      {staticClass:t._$s(
        2,
        "sc",
        "about_main"
      ),
      attrs:{_i:2}},
      [
        s(
          "view",
          {staticClass:t._$s(
            3,
            "sc",
            "about_main_item border_bottom"
          ),
          attrs:{_i:3},
          on:{click:t.toRich}},
          [
            s(
              "view",
              {staticClass:t._$s(
                4,
                "sc",
                "about_main_item_title"
              ),
              attrs:{_i:4}},
              [
                t._v(
                  t._$s(
                    4,
                    "t0-0",
                    t._s(
                      t.$t(
                        "account.user"
                      )
                    )
                  )
                )
              ]
            ),
            s(
              "view",
              {staticClass:t._$s(
                5,
                "sc",
                "about_main_item_right"
              ),
              attrs:{_i:5}},
              [
                s(
                  "view",
                  {staticClass:t._$s(
                    6,
                    "sc",
                    "about_main_item_icon"
                  ),
                  attrs:{_i:6}},
                  [
                    s(
                      "image",
                      {staticClass:t._$s(
                        7,
                        "sc",
                        "img"
                      ),
                      attrs:{src:t._$s(
                        7,
                        "a-src",
                        t.iconRight
                      ),
                      _i:7}}
                    )
                  ]
                )
              ]
            )
          ]
        ),
        s(
          "view",
          {staticClass:t._$s(
            8,
            "sc",
            "about_main_item"
          ),
          attrs:{_i:8},
          on:{click:t.checkVersion}},
          [
            s(
              "view",
              {staticClass:t._$s(
                9,
                "sc",
                "about_main_item_title"
              ),
              attrs:{_i:9}},
              [
                t._v(
                  t._$s(
                    9,
                    "t0-0",
                    t._s(
                      t.$t(
                        "account.update"
                      )
                    )
                  )
                )
              ]
            ),
            s(
              "view",
              {staticClass:t._$s(
                10,
                "sc",
                "about_main_item_right"
              ),
              attrs:{_i:10}},
              [
                s(
                  "text",
                  [
                    t._v(
                      t._$s(
                        11,
                        "t0-0",
                        t._s(
                          t.$t(
                            "account.version"
                          )
                        )
                      )+t._$s(
                        11,
                        "t0-1",
                        t._s(
                          t.version
                        )
                      )
                    )
                  ]
                ),
                s(
                  "view",
                  {staticClass:t._$s(
                    12,
                    "sc",
                    "about_main_item_icon"
                  ),
                  attrs:{_i:12}},
                  [
                    s(
                      "image",
                      {staticClass:t._$s(
                        13,
                        "sc",
                        "img"
                      ),
                      attrs:{src:t._$s(
                        13,
                        "a-src",
                        t.iconRight
                      ),
                      _i:13}}
                    )
                  ]
                )
              ]
            )
          ]
        )
      ]
    )
  ],
  1
)}
```

## Component options (data / methods)

```js
{"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var i={data:function(){return{version:"-",iconRight:"../../static/image/icon_CaretRight.png"}},onShow:function(){this.version=uni.getStorageSync("ORichVersion")||"-"},methods:{toRich:function(){uni.navigateTo({url:"/pages/richtext/rule?type=1"})},checkVersion:function(){var t=this,e=this;uni.showToast({title:e.$apiAddr+"upload/"+appInfo.update_url_wgt}),this.$store.dispatch("getSystemInfo").then((function(e){var s={};e.version.forEach((function(t){1==t.system&&1==t.channel&&(s=t)}));var i=s.version_number||"000";uni.setStorageSync("ORichVersion","");var a=t;plus.runtime.getProperty(plus.runtime.appid,(function(t){var e=t.version;uni.setStorageSync("ORichVersion",e);var n=!1,r=i.replace(/[^0-9]/gi,""),o=e.replace(/[^0-9]/gi,"");r>o&&(n=!0),n?uni.showModal({title:"Version updating",content:"If there is a new version of the app, please click the button of automatic update in the background below. The app will be restarted automatically after the update",showCancel:!1,confirmText:"Background to automatically update",confirmColor:"#151e2e",success:function(){uni.downloadFile({url:a.$apiAddr+"upload/"+s.update_url_wgt,success:function(t){200===t.statusCode&&plus.runtime.install(t.tempFilePath,{force:!0},(function(){plus.runtime.restart(),n=!1}),(function(t){}))}})}}):uni.showToast({icon:"none",title:this.$t("account.cur")})}))}))}}};e.default=i}
```
