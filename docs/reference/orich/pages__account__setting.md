# pages/account/setting

- page module: `f4be`
- render module: `8ef0`
- options module: `969b`
- css scope: `data-v-5ede36b2`

## Scoped CSS (28 rules)

```css
.setting[data-v-5ede36b2]{position:relative;min-height:100vh;background-color:#f8f8f8}
.img[data-v-5ede36b2]{width:100%;height:100%}
.top[data-v-5ede36b2]{padding-bottom:20rpx;margin-top:112rpx;background-color:#fff}
.top .title_top[data-v-5ede36b2]{display:inline-block;margin-left:258rpx;font-size:32rpx;font-family:Roboto,Roboto-Bold;font-weight:700;color:#000}
.top .icon_top[data-v-5ede36b2]{margin-left:30rpx;vertical-align:bottom}
.middle[data-v-5ede36b2]{border-top:2rpx solid #f8f8f8;background-color:#fff}
.avatar[data-v-5ede36b2]{display:flex;align-items:center;position:relative;padding:20rpx 0 20rpx 30rpx}
.avatar .avatar_title[data-v-5ede36b2]{font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#444;display:block}
.avatar .avatar_img[data-v-5ede36b2]{margin-left:452rpx;font-size:32rpx;width:90rpx;height:90rpx;display:inline-block;border-radius:50%;overflow:hidden}
.avatar .avatar_icon[data-v-5ede36b2]{position:absolute;right:33rpx}
.name[data-v-5ede36b2]{position:relative;margin:0 28rpx 0 30rpx;padding:33rpx 0 34rpx 0;border-top:2rpx solid #ececec}
.name .name_title[data-v-5ede36b2]{font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#444}
.name .name_info[data-v-5ede36b2]{float:right;margin-right:60rpx;font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#b9b9b9;letter-spacing:0rpx}
.name .name_icon[data-v-5ede36b2]{position:absolute;top:40rpx;right:5rpx}
.phone[data-v-5ede36b2]{position:relative;margin:0 28rpx 0 30rpx;padding:33rpx 0 34rpx 0;border-top:2rpx solid #ececec}
.phone .phone_name[data-v-5ede36b2]{font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#444}
.phone .phone_number[data-v-5ede36b2]{position:absolute;top:40rpx;right:5rpx;font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#b9b9b9;letter-spacing:0rpx}
.phone .phone_icon[data-v-5ede36b2]{position:absolute;top:40rpx;right:5rpx}
.check[data-v-5ede36b2]{position:relative;margin:0 28rpx 0 30rpx;padding:33rpx 0 34rpx 0;border-top:2rpx solid #ececec}
.check .check_updates[data-v-5ede36b2]{padding-top:33rpx;font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;text-align:CENTER;color:#444;letter-spacing:0rpx}
.check .check_icon[data-v-5ede36b2]{position:absolute;top:40rpx;right:5rpx}
.user[data-v-5ede36b2]{position:relative;margin:0 28rpx 0 30rpx;padding:33rpx 0 34rpx 0;border-top:2rpx solid #ececec}
.user .user_updates[data-v-5ede36b2]{padding-top:33rpx;font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;text-align:CENTER;color:#444;letter-spacing:0rpx}
.user .user_icon[data-v-5ede36b2]{position:absolute;top:40rpx;right:5rpx}
.about[data-v-5ede36b2]{position:relative;margin:0 28rpx 0 30rpx;padding:33rpx 0 34rpx 0;border-top:2rpx solid #ececec}
.about .about_updates[data-v-5ede36b2]{padding-top:33rpx;font-size:32rpx;font-family:PingFang SC,PingFang SC-Medium;font-weight:700;text-align:CENTER;color:#444;letter-spacing:0rpx}
.about .about_icon[data-v-5ede36b2]{position:absolute;top:40rpx;right:5rpx}
.logout[data-v-5ede36b2]{position:fixed;bottom:38rpx;left:74rpx;width:600rpx;height:90rpx}
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
        "account.settitle"
      ),
      background:"#ffffff",
      isComfirm:!0,
      _i:1},
      on:{beforeBack:t.handleBack}}
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
        s(
          "view",
          {staticClass:t._$s(
            3,
            "sc",
            "avatar"
          ),
          attrs:{_i:3},
          on:{click:t.changeHead}},
          [
            s(
              "span",
              {staticClass:t._$s(
                4,
                "sc",
                "avatar_title"
              ),
              attrs:{_i:4}},
              [
                t._v(
                  t._$s(
                    4,
                    "t0-0",
                    t._s(
                      t.$t(
                        "common.avatar"
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
                "avatar_img"
              ),
              attrs:{_i:5}},
              [
                s(
                  "image",
                  {staticClass:t._$s(
                    6,
                    "sc",
                    "img"
                  ),
                  attrs:{src:t._$s(
                    6,
                    "a-src",
                    t.headImg
                  ),
                  _i:6}}
                )
              ]
            ),
            s(
              "u-icon",
              {staticClass:t._$s(
                7,
                "sc",
                "avatar_icon"
              ),
              attrs:{name:"arrow-right",
              color:"#B9B9B9",
              size:"30",
              _i:7}}
            )
          ],
          1
        ),
        s(
          "view",
          {staticClass:t._$s(
            8,
            "sc",
            "name"
          ),
          attrs:{_i:8},
          on:{click:t.toUser}},
          [
            s(
              "span",
              {staticClass:t._$s(
                9,
                "sc",
                "name_title"
              ),
              attrs:{_i:9}},
              [
                t._v(
                  t._$s(
                    9,
                    "t0-0",
                    t._s(
                      t.$t(
                        "common.name"
                      )
                    )
                  )
                )
              ]
            ),
            s(
              "span",
              {staticClass:t._$s(
                10,
                "sc",
                "name_info"
              ),
              attrs:{_i:10}},
              [
                t._v(
                  t._$s(
                    10,
                    "t0-0",
                    t._s(
                      t.userName
                    )
                  )
                )
              ]
            ),
            s(
              "u-icon",
              {staticClass:t._$s(
                11,
                "sc",
                "name_icon"
              ),
              attrs:{name:"arrow-right",
              color:"#B9B9B9",
              size:"30",
              _i:11}}
            )
          ],
          1
        ),
        s(
          "view",
          {staticClass:t._$s(
            12,
            "sc",
            "phone"
          ),
          attrs:{_i:12}},
          [
            s(
              "span",
              {staticClass:t._$s(
                13,
                "sc",
                "phone_name"
              ),
              attrs:{_i:13}},
              [
                t._v(
                  t._$s(
                    13,
                    "t0-0",
                    t._s(
                      t.$t(
                        "common.phone"
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
                "phone_number"
              ),
              attrs:{_i:14}},
              [
                t._v(
                  t._$s(
                    14,
                    "t0-0",
                    t._s(
                      t.numDeal
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
            15,
            "sc",
            "check"
          ),
          attrs:{_i:15},
          on:{click:t.toAddress}},
          [
            s(
              "span",
              {staticClass:t._$s(
                16,
                "sc",
                "check_updates"
              ),
              attrs:{_i:16}},
              [
                t._v(
                  t._$s(
                    16,
                    "t0-0",
                    t._s(
                      t.$t(
                        "common.address"
                      )
                    )
                  )
                )
              ]
            ),
            s(
              "u-icon",
              {staticClass:t._$s(
                17,
                "sc",
                "check_icon"
              ),
              attrs:{name:"arrow-right",
              color:"#B9B9B9",
              size:"30",
              _i:17}}
            )
          ],
          1
        ),
        s(
          "view",
          {staticClass:t._$s(
            18,
            "sc",
            "user"
          ),
          attrs:{_i:18},
          on:{click:t.toBank}},
          [
            s(
              "span",
              {staticClass:t._$s(
                19,
                "sc",
                "user_updates"
              ),
              attrs:{_i:19}},
              [
                t._v(
                  t._$s(
                    19,
                    "t0-0",
                    t._s(
                      t.$t(
                        "account.bank"
                      )
                    )
                  )
                )
              ]
            ),
            s(
              "u-icon",
              {staticClass:t._$s(
                20,
                "sc",
                "user_icon"
              ),
              attrs:{name:"arrow-right",
              color:"#B9B9B9",
              size:"30",
              _i:20}}
            )
          ],
          1
        )
      ]
    ),
    s(
      "view",
      {staticClass:t._$s(
        21,
        "sc",
        "logout"
      ),
      attrs:{_i:21}},
      [
        s(
          "overbtn",
          {attrs:{btnText:t.$t(
            "account.logout"
          ),
          fontSize:28,
          btnType:"submit",
          loading:t.loading,
          _i:22},
          on:{btnAction:t.logout}}
        )
      ],
      1
    )
  ],
  1
)}
```

## Component options (data / methods)

```js
{"use strict";(function(t){Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;s("2f62");var i,a=s("769e"),n=s("9fda");function r(t,e,s){return e in t?Object.defineProperty(t,e,{value:s,enumerable:!0,configurable:!0,writable:!0}):t[e]=s,t}var o=(i={onLoad:function(t){},computed:{},data:function(){return{headImg:"",phoneNumber:"101****500",userName:"",loading:!1}},mounted:function(){this.userData()}},r(i,"computed",{numDeal:function(){if(void 0!=this.phoneNumber){var t=/(\d{2})\d*(\d{3})/;return this.phoneNumber.replace(t,"$1****$2")}return""}}),r(i,"methods",{handleBack:function(){uni.navigateTo({url:"../account/account"})},userData:function(){var t=this;(0,a.userAccount)().then((function(e){t.headImg=e.headimgurl,t.phoneNumber=e.mobile,t.userName=e.nickname}))},toUser:function(){uni.navigateTo({url:"./username"})},toAddress:function(){uni.navigateTo({url:"../address/address"})},toBank:function(){uni.navigateTo({url:"../payment/payment"})},changeHead:function(){var e=this;uni.chooseImage({count:1,success:function(t){var s=t.tempFilePaths;uni.showLoading({mask:!0,title:e.$t("common.loading")}),uni.uploadFile({url:e.$apiAddr+"/api/index/upload",name:"file",filePath:s[0],success:function(t){var s=JSON.parse(t.data),i=s.data.path;(0,n.AccountEdit)({headimg:i}).then((function(t){uni.hideLoading(),uni.showToast({icon:"none",title:e.$t("account.editS")}),e.userData()})).catch((function(){uni.showToast({icon:"none",title:e.$t("account.editF")}),uni.hideLoading()}))},fail:function(){uni.hideLoading()}})},fail:function(){uni.hideLoading()},complete:function(){t("log",123132," at pages/account/setting.vue:166")}})},logout:function(){var t=this;this.logout=!0,(0,n.Logout)().then((function(e){t.$store.dispatch("removeToken"),t.logout=!1,uni.reLaunch({url:"/pages/login/login"})})).catch((function(){t.logout=!1}))}}),i);e.default=o}).call(this,s("0de9")["default"])}
```
