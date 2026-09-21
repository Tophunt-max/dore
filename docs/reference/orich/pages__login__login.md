# pages/login/login

- page module: `cc1b`
- render module: `2668`
- options module: `fb29`
- css scope: `data-v-6f534c1f`

## Scoped CSS (21 rules)

```css
.login[data-v-6f534c1f]{width:100%;min-height:100vh;padding:0 30rpx;background:url('+o+");background-size:100% auto}
.login .backicon[data-v-6f534c1f]{display:flex;align-items:center;width:100%;height:98rpx;margin:0 -14rpx}
.login .title[data-v-6f534c1f]{margin-top:120rpx;padding:0 20rpx;font-size:48rpx;font-family:Roboto,Roboto-Medium;font-weight:700;text-align:LEFT;color:#17273a}
.login .title uni-text[data-v-6f534c1f]{font-weight:700}
.login .tips[data-v-6f534c1f]{font-size:36rpx;font-family:Roboto,Roboto-Regular;font-weight:400;text-align:LEFT;color:#b9b9b9}
.login .input-title[data-v-6f534c1f]{padding:0 20rpx;margin-top:104rpx;margin-bottom:16rpx;font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;text-align:LEFT;color:#17273a}
.login .inputview[data-v-6f534c1f]{display:flex;flex-direction:row;align-items:center;justify-content:center;padding:20rpx 0;margin:0 20rpx;border-bottom:2rpx solid #ececec}
.login .inputview uni-image[data-v-6f534c1f]{width:40rpx;margin-right:10rpx;margin-left:-4rpx}
.login .inputview .inputview-num[data-v-6f534c1f]{font-size:32rpx;font-family:PingFang SC,PingFang SC-Medium;text-align:LEFT;color:silver}
.login .inputview .inputview-op[data-v-6f534c1f]{width:2rpx;height:26rpx;margin:0 16rpx;background-color:#b9b9b9}
.login .inputview .inputview-input[data-v-6f534c1f]{flex:1;padding-left:4rpx;font-size:32rpx;font-family:PingFang SC,PingFang SC-Regular;font-weight:400;text-align:LEFT;color:#17273a}
.login .pla[data-v-6f534c1f]{color:silver}
.login .nextbtn[data-v-6f534c1f]{width:100%;height:92rpx;margin-top:134rpx}
.login .send[data-v-6f534c1f]{display:flex;flex-direction:row;align-items:flex-start;justify-content:center;width:100%;padding:0 20rpx}
.login .send .send-input[data-v-6f534c1f]{flex:1;padding:10rpx 0 18rpx 0;margin-right:0rpx;font-size:32rpx;border-bottom:2rpx solid #ececec;font-size:32rpx;font-family:PingFang SC,PingFang SC-Regular;font-weight:400;text-align:LEFT;color:#17273a}
.login .send .send-input uni-input[data-v-6f534c1f]{font-size:32rpx;font-family:PingFang SC,PingFang SC-Regular;font-weight:400}
.login .send .wrap[data-v-6f534c1f]{min-width:140rpx;padding:8rpx 0 20rpx 0;color:#ee5016;font-size:36rpx;font-family:PingFang SC,PingFang SC-Bold!important}
.login .code[data-v-6f534c1f]{width:100%;margin-top:150rpx}
.user-rule[data-v-6f534c1f]{font-size:26rpx;margin-top:260rpx}
.user-rule .user-rule-item[data-v-6f534c1f]{font-family:Roboto,Roboto-Regular;font-weight:400;letter-spacing:0rpx;color:#b9b9b9}
.user-rule .user-rule-item uni-text[data-v-6f534c1f]{color:#ee5016}
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
    "login"
  ),
  attrs:{_i:0}},
  [
    s(
      "u-icon",
      {staticClass:t._$s(
        1,
        "sc",
        "backicon"
      ),
      attrs:{name:"arrow-left",
      color:"#919191",
      size:"32",
      _i:1},
      on:{click:t.back}}
    ),
    s(
      "view",
      {staticClass:t._$s(
        2,
        "sc",
        "title"
      ),
      attrs:{_i:2}},
      [
        t._v(
          t._$s(
            2,
            "t0-0",
            t._s(
              t.$t(
                "login.titlefront"
              )
            )
          )
        ),
        s(
          "text",
          [
            t._v(
              t._$s(
                3,
                "t0-0",
                t._s(
                  t.webname
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
        4,
        "sc",
        "input-title"
      ),
      attrs:{_i:4}},
      [
        t._v(
          t._$s(
            4,
            "t0-0",
            t._s(
              t.$t(
                "login.mphone"
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
        "inputview"
      ),
      attrs:{_i:5}},
      [
        s(
          "image",
          {attrs:{_i:6}}
        ),
        s(
          "view",
          {staticClass:t._$s(
            7,
            "sc",
            "inputview-num"
          ),
          attrs:{_i:7}}
        ),
        s(
          "view",
          {staticClass:t._$s(
            8,
            "sc",
            "inputview-op"
          ),
          attrs:{_i:8}}
        ),
        s(
          "input",
          {directives:[
            {name:"model",
            rawName:"v-model",
            value:t.mobile,
            expression:"mobile"}
          ],
          staticClass:t._$s(
            9,
            "sc",
            "inputview-input"
          ),
          attrs:{placeholder:t._$s(
            9,
            "a-placeholder",
            t.$t(
              "login.mphone_pla"
            )
          ),
          _i:9},
          domProps:{value:t._$s(
            9,
            "v-model",
            t.mobile
          )},
          on:{input:function(
            e
          ){e.target.composing||(
            t.mobile=e.target.value
          )}}}
        )
      ]
    ),
    s(
      "view",
      {staticClass:t._$s(
        10,
        "sc",
        "input-title"
      ),
      attrs:{_i:10}},
      [
        t._v(
          t._$s(
            10,
            "t0-0",
            t._s(
              t.$t(
                "login.vcode"
              )
            )
          )
        )
      ]
    ),
    s(
      "view",
      {staticClass:t._$s(
        11,
        "sc",
        "send"
      ),
      attrs:{_i:11}},
      [
        s(
          "view",
          {staticClass:t._$s(
            12,
            "sc",
            "send-input"
          ),
          attrs:{_i:12}},
          [
            s(
              "input",
              {directives:[
                {name:"model",
                rawName:"v-model",
                value:t.code,
                expression:"code"}
              ],
              attrs:{placeholder:t._$s(
                13,
                "a-placeholder",
                t.$t(
                  "login.vcode_pla"
                )
              ),
              _i:13},
              domProps:{value:t._$s(
                13,
                "v-model",
                t.code
              )},
              on:{input:function(
                e
              ){e.target.composing||(
                t.code=e.target.value
              )}}}
            )
          ]
        ),
        s(
          "view",
          {staticClass:t._$s(
            14,
            "sc",
            "wrap"
          ),
          attrs:{_i:14}},
          [
            s(
              "u-verification-code",
              {ref:"uCode",
              attrs:{seconds:t.seconds,
              "start-text":t.$t(
                "login.get"
              ),
              "end-text":t.$t(
                "login.get"
              ),
              "change-text":"xs",
              _i:15},
              on:{end:t.end,
              start:t.start,
              change:t.codeChange}}
            ),
            s(
              "u-button",
              {attrs:{_i:16},
              on:{click:t.getCode}},
              [
                t._v(
                  t._$s(
                    16,
                    "t0-0",
                    t._s(
                      t.tips
                    )
                  )
                )
              ]
            )
          ],
          1
        )
      ]
    ),
    s(
      "view",
      {staticClass:t._$s(
        17,
        "sc",
        "nextbtn"
      ),
      attrs:{_i:17}},
      [
        s(
          "overbtn",
          {attrs:{canSubmit:!t.canNext,
          loading:t.loading,
          btnText:t.$t(
            "login.submit"
          ),
          fontSize:32,
          btnType:t.canNext?"submit":"disabled",
          _i:18},
          on:{btnAction:t.submit}}
        )
      ],
      1
    ),
    s(
      "view",
      {staticClass:t._$s(
        19,
        "sc",
        "user-rule"
      ),
      attrs:{_i:19}},
      [
        s(
          "view",
          {staticClass:t._$s(
            20,
            "sc",
            "user-rule-item"
          ),
          attrs:{_i:20}},
          [
            t._v(
              t._$s(
                20,
                "t0-0",
                t._s(
                  t.$t(
                    "login.rule_l"
                  )
                )
              )
            ),
            s(
              "text",
              {attrs:{_i:21},
              on:{click:t.toRule}},
              [
                t._v(
                  t._$s(
                    21,
                    "t0-0",
                    t._s(
                      t.$t(
                        "login.rule_r"
                      )
                    )
                  )
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
{"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;s("2f62");var i=s("9fda"),a=s("16bf"),n=uni.requireNativePlugin("sn-appsflyer"),r={computed:{},data:function(){return{webname:"",seconds:60,tips:"",mobile:"",code:"",canNext:!1,loading:!1}},watch:{code:function(){this.code.length>5?this.canNext=!0:this.canNext=!1}},onLoad:function(t){var e=this;(0,a.Index)().then((function(t){e.webname=t.title}))},methods:{toRule:function(){uni.navigateTo({url:"../richtext/rule?type=1"})},back:function(){var t=getCurrentPages();t[t.length-2];uni.navigateTo({url:"/pages/home/home"})},next:function(){},codeChange:function(t){this.tips=t},getCode:function(){var t=this;this.$refs.uCode.canGetCode?(uni.showLoading(),(0,a.SendVerify)({mobile:this.mobile}).then((function(){uni.hideLoading(),uni.showToast({icon:"none",title:t.$t("login.send_success"),mask:!0}),t.$refs.uCode.start()})).catch((function(){})),setTimeout((function(){}),2e3)):uni.showToast({icon:"none",title:this.$t("login.send_error"),mask:!0})},end:function(){},start:function(){},inputCode:function(t){this.code=t,this.submit()},submit:function(){var t=this;uni.showLoading(),(0,i.Login)({mobile:this.mobile,code:this.code,invitecode:uni.getStorageSync("icode")||"",channel:uni.getStorageSync("channel")||"",cid:this.$store.state.clientid}).then((function(e){uni.setStorageSync("icode",""),uni.hideLoading(),uni.showToast({title:t.$t("login.success"),icon:"none"}),t.$store.dispatch("setToken",e.token),uni.navigateTo({url:"../home/home"}),1==e.isreg&&n.logEvent({eventName:"af_login",eventValues:{}},(function(t){}))})).catch((function(){t.code="",t.$forceUpdate()}))}}};e.default=r}
```
