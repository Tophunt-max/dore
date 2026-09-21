# pages/address/address

- page module: `a82d`
- render module: `8aa9`
- options module: `bffd`
- css scope: `data-v-3cc08b87`

## Scoped CSS (17 rules)

```css
.address[data-v-3cc08b87]{min-height:100vh;padding-bottom:150rpx;background-color:#f8f8f8}
.address_title[data-v-3cc08b87]{margin-top:112rpx;padding-left:38rpx;background-color:#fff}
.address_title .title-right[data-v-3cc08b87]{display:inline-block;margin-left:226rpx;margin-bottom:20rpx;vertical-align:middle;color:#000;font-family:Roboto,Roboto-Bold;font-weight:700;font-size:32rpx;line-height:48rpx}
.content[data-v-3cc08b87]{box-sizing:border-box;margin:22rpx 28rpx 16rpx 30rpx;width:690rpx;padding:0 0 20rpx 0;background:#fff;border-radius:16rpx}
.top[data-v-3cc08b87]{position:relative;padding:24rpx 30rpx 0 34rpx}
.top .top_name[data-v-3cc08b87]{width:90rpx;height:48rpx;font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:700;text-align:CENTER;color:#17273a;line-height:48rpx}
.top .top_number[data-v-3cc08b87]{margin-left:16rpx;margin-bottom:6rpx;width:190rpx;height:48rpx;font-size:28rpx;font-family:Roboto,Roboto-Regular;font-weight:400;text-align:CENTER;color:#b9b9b9;line-height:48rpx}
.top uni-image[data-v-3cc08b87]{position:absolute;right:29rpx;width:40rpx}
.middle[data-v-3cc08b87]{margin:6rpx 30rpx 0 34rpx;margin-bottom:34rpx}
.middle .middle_content[data-v-3cc08b87]{width:610rpx;font-size:24rpx;font-family:Roboto,Roboto-Regular;font-weight:400;text-align:left;color:#b9b9b9}
.bottom[data-v-3cc08b87]{display:flex;flex-direction:row;align-items:center;justify-content:space-between;padding:0 34rpx;padding-top:20rpx;border-top:1rpx solid #ececec}
.bottom-radio[data-v-3cc08b87]{display:flex;flex-direction:row;align-items:center;justify-content:flex-start;font-size:28rpx;font-family:Roboto,Roboto-Regular;color:#b9b9b9}
.bottom-radio .bottom-circle[data-v-3cc08b87]{width:34rpx;height:34rpx;margin-right:12rpx;border:2rpx solid #b9b9b9;border-radius:50%}
.bottom-select[data-v-3cc08b87]{color:#ee5016}
.bottom-select .bottom-circle[data-v-3cc08b87]{background:#ee5016;border:2rpx solid #ee5016;border-radius:50%}
.delete[data-v-3cc08b87]{font-size:28rpx;font-weight:400;color:#17273a}
.addbtn[data-v-3cc08b87]{position:fixed;bottom:40rpx;left:50%;-webkit-transform:translate(-50%);transform:translate(-50%);width:600rpx;height:90rpx}
```

## Compiled template (literal classes/text)

```js
function(
){var t=this,
e=t.$createElement,
i=t._self._c||e;return i(
  "view",
  {staticClass:t._$s(
    0,
    "sc",
    "address"
  ),
  attrs:{_i:0}},
  [
    i(
      "navbar",
      {attrs:{title:t.$t(
        "address.title"
      ),
      background:"#ffffff",
      isComfirm:!0,
      _i:1},
      on:{beforeBack:t.handleBack}}
    ),
    i(
      "mescroll-body",
      {ref:"mescrollRef",
      attrs:{down:t.downOption,
      up:t.upOption,
      _i:2},
      on:{init:t.mescrollInit,
      down:t.downCallback,
      up:t.upCallback}},
      t._l(
        t._$s(
          3,
          "f",
          {forItems:t.addressList}
        ),
        (
          function(
            e,
            a,
            n,
            r
          ){return i(
            "view",
            {key:t._$s(
              3,
              "f",
              {forIndex:n,
              key:a}
            ),
            staticClass:t._$s(
              "3-"+r,
              "sc",
              "content"
            ),
            attrs:{_i:"3-"+r},
            on:{click:function(
              s
            ){return t.toAction(
              e
            )}}},
            [
              i(
                "view",
                {staticClass:t._$s(
                  "4-"+r,
                  "sc",
                  "top"
                ),
                attrs:{_i:"4-"+r}},
                [
                  i(
                    "span",
                    {staticClass:t._$s(
                      "5-"+r,
                      "sc",
                      "top_name"
                    ),
                    attrs:{_i:"5-"+r}},
                    [
                      t._v(
                        t._$s(
                          "5-"+r,
                          "t0-0",
                          t._s(
                            e.name
                          )
                        )
                      )
                    ]
                  ),
                  i(
                    "span",
                    {staticClass:t._$s(
                      "6-"+r,
                      "sc",
                      "top_number"
                    ),
                    attrs:{_i:"6-"+r}},
                    [
                      t._v(
                        t._$s(
                          "6-"+r,
                          "t0-0",
                          t._s(
                            e.mobile
                          )
                        )
                      )
                    ]
                  ),
                  i(
                    "image",
                    {attrs:{src:t._$s(
                      "7-"+r,
                      "a-src",
                      s(
                        "120f"
                      )
                    ),
                    _i:"7-"+r},
                    on:{click:function(
                      s
                    ){return s.stopPropagation(
                    ),
                    t.toEdit(
                      e
                    )}}}
                  )
                ]
              ),
              i(
                "view",
                {staticClass:t._$s(
                  "8-"+r,
                  "sc",
                  "middle"
                ),
                attrs:{_i:"8-"+r}},
                [
                  i(
                    "view",
                    {staticClass:t._$s(
                      "9-"+r,
                      "sc",
                      "middle_content"
                    ),
                    attrs:{_i:"9-"+r}},
                    [
                      t._v(
                        t._$s(
                          "9-"+r,
                          "t0-0",
                          t._s(
                            e.address
                          )
                        )
                      )
                    ]
                  )
                ]
              ),
              i(
                "view",
                {staticClass:t._$s(
                  "10-"+r,
                  "sc",
                  "bottom"
                ),
                attrs:{_i:"10-"+r}},
                [
                  i(
                    "view",
                    {staticClass:t._$s(
                      "11-"+r,
                      "sc",
                      "bottom-radio"
                    ),
                    class:t._$s(
                      "11-"+r,
                      "c",
                      1==e.isdefault?"bottom-select":""
                    ),
                    attrs:{_i:"11-"+r},
                    on:{click:function(
                      s
                    ){return t.setDefault(
                      e
                    )}}},
                    [
                      i(
                        "view",
                        {staticClass:t._$s(
                          "12-"+r,
                          "sc",
                          "bottom-circle"
                        ),
                        attrs:{_i:"12-"+r}}
                      ),
                      i(
                        "view",
                        [
                          t._v(
                            t._$s(
                              "13-"+r,
                              "t0-0",
                              t._s(
                                t.$t(
                                  "address.round"
                                )
                              )
                            )
                          )
                        ]
                      )
                    ]
                  ),
                  i(
                    "view",
                    {staticClass:t._$s(
                      "14-"+r,
                      "sc",
                      "delete"
                    ),
                    attrs:{_i:"14-"+r},
                    on:{click:function(
                      s
                    ){return s.stopPropagation(
                    ),
                    t.del(
                      e.id
                    )}}},
                    [
                      t._v(
                        t._$s(
                          "14-"+r,
                          "t0-0",
                          t._s(
                            t.$t(
                              "address.deletes"
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
      ),
      0
    ),
    i(
      "view",
      {staticClass:t._$s(
        15,
        "sc",
        "addbtn"
      ),
      attrs:{_i:15}},
      [
        i(
          "overbtn",
          {attrs:{btnText:t.$t(
            "address.btntitle"
          ),
          _i:16},
          on:{btnAction:t.btnAdd}}
        )
      ],
      1
    ),
    i(
      "onepopup",
      {ref:"onepopup",
      attrs:{popType:"1",
      conetnt:t.contentText,
      confirmText:"Delete",
      _i:17},
      on:{cancel:t.closePopup,
      confirm:t.confirm}}
    )
  ],
  1
)}
```

## Component options (data / methods)

```js
{"use strict";(function(t){Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var i=r(s("4df3")),a=r(s("7142")),n=(s("0765"),s("9fda"));function r(t){return t&&t.__esModule?t:{default:t}}var o={mixins:[i.default],components:{MescrollBody:a.default},onLoad:function(t){this.fromType=t.type,this.orderId=t.id},onShow:function(){this.mescroll.resetUpScroll()},computed:{contentText:function(){return this.$t("address.deltip")}},data:function(){return{mescroll:null,downOption:{use:!0,auto:!0},upOption:{use:!0,auto:!0,page:{num:0,size:20}},fromType:1,loading:!1,addressList:[],delId:"",orderId:""}},mounted:function(){},methods:{handleBack:function(){2==this.fromType?uni.navigateTo({url:"../order/detail?id=".concat(this.orderId)}):uni.navigateTo({url:"../account/setting"})},btnAdd:function(){uni.navigateTo({url:"./add"})},closePopup:function(){this.$refs.onepopup.close()},del:function(t){this.delId=t,this.$refs.onepopup.open()},confirm:function(){var t=this;(0,n.DelAddress)({id:this.delId}).then((function(e){t.$refs.onepopup.close(),uni.showToast({icon:"none",mask:!0,title:t.$t("address.successD")}),t.mescroll.resetUpScroll()}))},toEdit:function(t){uni.setStorageSync("OneAddress",JSON.stringify(t)),uni.navigateTo({url:"./add?id=".concat(t.id)})},setDefault:function(t){var e=this;1!=t.isdefault&&(0,n.EditAccount)({id:t.id}).then((function(t){uni.showToast({icon:"none",mask:!0,title:e.$t("address.successS")}),e.mescroll.resetUpScroll()}))},toAction:function(e){t("log",e," at pages/address/address.vue:161"),2==this.fromType&&uni.navigateTo({url:"../order/detail?id=".concat(this.orderId,"&addrId=").concat(e.id)})},upCallback:function(t){var e=this,s=(t.num-1)*t.size,i=t.size;(0,n.AddressList)({start:s,limit:i}).then((function(s){var i=s.list,a=i.length,n=+s.count;1==t.num&&(e.addressList=[]),e.addressList=e.addressList.concat(i),e.mescroll.endBySize(a,n)})).catch((function(t){e.mescroll.endErr()}))}}};e.default=o}).call(this,s("0de9")["default"])}
```
