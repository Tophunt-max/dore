# pages/payment/payment

- page module: `e124`
- render module: `7f88`
- options module: `d8f4`
- css scope: `data-v-3c7234d5`

## Scoped CSS (17 rules)

```css
.payment[data-v-3c7234d5]{min-height:100vh;background:#f8f8f8}
.payment .nav_right[data-v-3c7234d5]{position:absolute;right:20rpx}
.payment .img[data-v-3c7234d5]{width:100%}
.payment .payment_top[data-v-3c7234d5]{padding-left:38rpx;padding-bottom:20rpx;margin-top:112rpx;background:#fff;border-bottom:1rpx solid #f8f8f8}
.payment .payment_top .payment_top_title[data-v-3c7234d5]{display:inline-block;margin-left:238rpx;ont-size:32rpx;font-family:Roboto,Roboto-Bold;font-weight:700;color:#000}
.payment .payment_main[data-v-3c7234d5]{margin-left:2rpx;padding:30rpx 25rpx 0 34rpx}
.payment .payment_main .payment_card[data-v-3c7234d5]{width:686rpx;height:220rpx;margin-bottom:16rpx;border-radius:16rpx}
.payment .payment_main .payment_card[data-v-3c7234d5]:nth-child(odd){background:linear-gradient(75deg,#8cdcff,#10c7ff)}
.payment .payment_main .payment_card[data-v-3c7234d5]:nth-child(even){background:linear-gradient(82deg,#f76955,#ffb44e)}
.payment .payment_main .payment_card .payment_card_top[data-v-3c7234d5]{padding:30rpx 0 0 40rpx;display:flex;align-items:center}
.payment .payment_main .payment_card .payment_card_top .payment_card_top_img[data-v-3c7234d5]{width:74rpx;height:74rpx;border-radius:50%;overflow:hidden}
.payment .payment_main .payment_card .payment_card_top .payment_card_top_name[data-v-3c7234d5]{color:#fff;margin-left:20rpx;font-size:40rpx}
.payment .payment_main .payment_card .payment_card_number[data-v-3c7234d5]{display:flex;align-items:center;margin-left:69rpx;margin-top:38rpx}
.payment .payment_main .payment_card .payment_card_number .payment_card_number_circular[data-v-3c7234d5]{width:18rpx;height:18rpx;opacity:.5;background:#fff;border-radius:50%;margin-right:12rpx}
.payment .payment_main .payment_card .payment_card_number .payment_card_number_circular[data-v-3c7234d5]:nth-child(4n){margin-right:40rpx}
.payment .payment_main .payment_card .payment_card_number .payment_card_number_item[data-v-3c7234d5]{font-size:40rpx;font-family:Roboto,Roboto-Medium;font-weight:700;color:#fff;letter-spacing:0rpx}
.payment .payment_add[data-v-3c7234d5]{width:600rpx;height:90rpx;border-radius:8rpx;position:fixed;left:74rpx;bottom:40rpx}
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
    "payment"
  ),
  attrs:{_i:0}},
  [
    s(
      "navbar",
      {attrs:{title:t.isEdit?t.$t(
        "common.mancard"
      ):t.$t(
        "payment.cards"
      ),
      background:"#ffffff",
      isComfirm:!0,
      _i:1},
      on:{beforeBack:t.handleBack}},
      [
        t._$s(
          2,
          "i",
          !t.isEdit&&+t.cardList.length
        )?s(
          "view",
          {staticClass:t._$s(
            2,
            "sc",
            "nav_right"
          ),
          attrs:{_i:2},
          on:{click:t.changeOper},
          slot:"right"},
          [
            t._v(
              t._$s(
                2,
                "t0-0",
                t._s(
                  t.$t(
                    "common.manage"
                  )
                )
              )
            )
          ]
        ):t._e(
        )
      ]
    ),
    s(
      "view",
      {staticClass:t._$s(
        3,
        "sc",
        "payment_main"
      ),
      attrs:{_i:3}},
      [
        s(
          "mescroll-body",
          {ref:"mescrollRef",
          attrs:{down:t.downOption,
          up:t.upOption,
          _i:4},
          on:{init:t.mescrollInit,
          down:t.downCallback,
          up:t.upCallback}},
          [
            t._$s(
              5,
              "i",
              t.cardList.length
            )?t._l(
              t._$s(
                6,
                "f",
                {forItems:t.cardList}
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
                    6,
                    "f",
                    {forIndex:a,
                    key:i}
                  ),
                  staticClass:t._$s(
                    "6-"+n,
                    "sc",
                    "payment_card"
                  ),
                  attrs:{_i:"6-"+n},
                  on:{click:function(
                    s
                  ){return t.handleCard(
                    e.id
                  )}}},
                  [
                    s(
                      "view",
                      {staticClass:t._$s(
                        "7-"+n,
                        "sc",
                        "payment_card_top"
                      ),
                      attrs:{_i:"7-"+n}},
                      [
                        s(
                          "view",
                          {staticClass:t._$s(
                            "8-"+n,
                            "sc",
                            "payment_card_top_img"
                          ),
                          attrs:{_i:"8-"+n}},
                          [
                            s(
                              "image",
                              {staticClass:t._$s(
                                "9-"+n,
                                "sc",
                                "img"
                              ),
                              attrs:{src:t._$s(
                                "9-"+n,
                                "a-src",
                                e.imageurl
                              ),
                              _i:"9-"+n}}
                            )
                          ]
                        ),
                        s(
                          "view",
                          {staticClass:t._$s(
                            "10-"+n,
                            "sc",
                            "payment_card_top_name"
                          ),
                          attrs:{_i:"10-"+n}},
                          [
                            t._v(
                              t._$s(
                                "10-"+n,
                                "t0-0",
                                t._s(
                                  e.name
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
                        "11-"+n,
                        "sc",
                        "payment_card_number"
                      ),
                      attrs:{_i:"11-"+n}},
                      [
                        s(
                          "view",
                          {staticClass:t._$s(
                            "12-"+n,
                            "sc",
                            "payment_card_number_item"
                          ),
                          attrs:{_i:"12-"+n}},
                          [
                            t._v(
                              t._$s(
                                "12-"+n,
                                "t0-0",
                                t._s(
                                  t.bankNum(
                                    e.bankno
                                  )
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
            ):t._e(
            )
          ],
          2
        )
      ],
      1
    ),
    t._$s(
      13,
      "i",
      !t.isEdit
    )?s(
      "view",
      {staticClass:t._$s(
        13,
        "sc",
        "payment_add"
      ),
      attrs:{_i:13}},
      [
        s(
          "overbtn",
          {attrs:{btnText:t.$t(
            "payment.add"
          ),
          _i:14},
          on:{btnAction:t.btnAdd}}
        )
      ],
      1
    ):t._e(
    )
  ],
  1
)}
```

## Component options (data / methods)

```js
{"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var i=r(s("4df3")),a=r(s("7142")),n=s("48fd");function r(t){return t&&t.__esModule?t:{default:t}}var o={mixins:[i.default],components:{MescrollBody:a.default},data:function(){return{cardList:[],mescroll:null,downOption:{use:!0,auto:!0},upOption:{use:!0,auto:!0,page:{num:0,size:10}},type:1,money:0,firstLoad:!0,isEdit:!1}},onLoad:function(t){t.type&&(this.type=t.type),t.money&&(this.money=t.money)},onShow:function(){!this.firstLoad&&this.mescroll.resetUpScroll()},methods:{changeOper:function(){this.isEdit=!0},bankNum:function(t){return t.toString().replace(/(.{4})/g,"$1 ")},handleBack:function(){this.isEdit?this.isEdit=!1:2==this.type?uni.navigateTo({url:"./cashOut?money=".concat(this.money)}):uni.navigateTo({url:"../account/setting"})},btnAdd:function(){uni.navigateTo({url:"./add"})},upCallback:function(t){var e=this,s=(t.num-1)*t.size,i=t.size;(0,n.bankList)({start:s,limit:i}).then((function(s){e.firstLoad=!1;var i=s.list,a=i.length,n=+s.count;1==t.num&&(e.cardList=[]),e.cardList=e.cardList.concat(i),e.mescroll.endBySize(a,n)})).catch((function(t){e.mescroll.endErr()}))},handleCard:function(t){var e=this;this.$store.dispatch("checkLogin").then((function(){e.isEdit||1==e.type?uni.navigateTo({url:"./add?id=".concat(t)}):uni.navigateTo({url:"./cashOut?money=".concat(e.money,"&id=").concat(t)})})).catch((function(){}))}}};e.default=o}
```
