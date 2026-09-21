# pages/account/username

- page module: `15a2`
- render module: `5356`
- options module: `1fbb`
- css scope: `data-v-fefffb8c`

## Scoped CSS (6 rules)

```css
.username[data-v-fefffb8c]{position:relative;min-height:100vh;background:#f8f8f8}
.username .list[data-v-fefffb8c]{width:100%;padding:14rpx 30rpx;background:#fff}
.username .list .item[data-v-fefffb8c]{display:flex;flex-direction:row;align-items:center;justify-content:center;width:100%}
.username .list .item .item-key[data-v-fefffb8c]{width:136rpx;text-align:left;font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#444}
.username .list .item .item-name[data-v-fefffb8c]{flex:1;height:84rpx;padding:0 20rpx;border:1rpx solid #e0dfdf;border-radius:7rpx}
.username .logout[data-v-fefffb8c]{position:fixed;bottom:38rpx;left:74rpx;width:600rpx;height:90rpx}
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
    "username"
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
      "view",
      {staticClass:t._$s(
        2,
        "sc",
        "list"
      ),
      attrs:{_i:2}},
      [
        s(
          "view",
          {staticClass:t._$s(
            3,
            "sc",
            "item"
          ),
          attrs:{_i:3}},
          [
            s(
              "view",
              {staticClass:t._$s(
                4,
                "sc",
                "item-key"
              ),
              attrs:{_i:4}},
              [
                t._v(
                  t._$s(
                    4,
                    "t0-0",
                    t._s(
                      t.$t(
                        "account.name"
                      )
                    )
                  )
                )
              ]
            ),
            s(
              "input",
              {directives:[
                {name:"model",
                rawName:"v-model",
                value:t.userName,
                expression:"userName"}
              ],
              staticClass:t._$s(
                5,
                "sc",
                "item-name"
              ),
              attrs:{_i:5},
              domProps:{value:t._$s(
                5,
                "v-model",
                t.userName
              )},
              on:{input:function(
                e
              ){e.target.composing||(
                t.userName=e.target.value
              )}}}
            )
          ]
        )
      ]
    ),
    s(
      "view",
      {staticClass:t._$s(
        6,
        "sc",
        "logout"
      ),
      attrs:{_i:6}},
      [
        s(
          "overbtn",
          {attrs:{btnText:t.$t(
            "account.confirm"
          ),
          fontSize:28,
          btnType:"submit",
          loading:t.loading,
          _i:7},
          on:{btnAction:t.confirm}}
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
{"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var i=s("769e"),a=s("9fda"),n={data:function(){return{userName:"",loading:!1}},mounted:function(){this.userData()},methods:{userData:function(){var t=this;(0,i.userAccount)().then((function(e){t.userName=e.nickname}))},confirm:function(){var t=this;if(this.userName.length>16)return uni.showToast({icon:"none",title:this.$t("account.nametip")}),!1;this.loading=!0,(0,a.AccountEdit)({name:this.userName}).then((function(e){t.loading=!1,uni.showToast({icon:"none",title:t.$t("account.editS")}),uni.redirectTo({url:"./setting"})})).catch((function(){t.loading=!1,uni.showToast({icon:"none",title:t.$t("account.editF")})}))}}};e.default=n}
```
