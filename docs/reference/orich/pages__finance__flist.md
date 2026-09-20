# pages/finance/flist

- page module: `39de`
- render module: `bbe4`
- options module: `b819`
- css scope: `data-v-dc8a9dd8`

## Scoped CSS (12 rules)

```css
.flist[data-v-dc8a9dd8]{width:100%}
.flist .bar-help[data-v-dc8a9dd8]{position:absolute;right:30rpx}
.flist .bar-help uni-image[data-v-dc8a9dd8]{width:36rpx;height:36rpx}
.flist .flist-step[data-v-dc8a9dd8]{margin-top:-88rpx;padding-top:66rpx;padding:66rpx 38rpx 0 36rpx;height:288rpx;background-image:url('+o+");background-size:100% 100%;position:relative}
.flist .toast[data-v-dc8a9dd8]{padding-top:22rpx;padding-left:30rpx;padding-bottom:12rpx;background-color:#fff;border-bottom:2rpx solid #f5f5f5;margin:0 28rpx}
.flist .toast .toast-swiper[data-v-dc8a9dd8]{height:70rpx}
.flist .toast .toast-swiper .toast-swiper-item[data-v-dc8a9dd8]{display:flex;align-items:center;justify-content:flex-end}
.flist .toast .toast-swiper .toast-swiper-item .toast-swiper-item-img[data-v-dc8a9dd8]{width:60rpx;height:60rpx;border-radius:50%;overflow:hidden}
.flist .toast .toast-swiper .toast-swiper-item .toast-swiper-item-img uni-image[data-v-dc8a9dd8]{width:100%;height:100%}
.flist .toast .toast-swiper .toast-swiper-item .toast-swiper-item-main[data-v-dc8a9dd8]{width:80%;margin-left:36rpx;margin-right:18rpx;white-space:nowrap;overflow:hidden;text-overflow:ellipsis}
.flist .toast .toast-swiper .toast-swiper-item .toast-swiper-item-main .arrival[data-v-dc8a9dd8]{margin-left:10rpx}
.flist .toast .toast-swiper .toast-swiper-item .toast-swiper-item-main .name[data-v-dc8a9dd8]{color:#ee5016;margin:0 10rpx}
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
    "flist"
  ),
  attrs:{_i:0}},
  [
    s(
      "navbar",
      {attrs:{backColor:"#f5f5f5",
      title:t.$t(
        "finance.ltitle"
      ),
      titleColor:"#f5f5f5",
      _i:1}}
    ),
    s(
      "view",
      {staticClass:t._$s(
        2,
        "sc",
        "flist-step"
      ),
      attrs:{_i:2}},
      [
        s(
          "buystep",
          {attrs:{type:3,
          page:"flist",
          _i:3}}
        )
      ],
      1
    ),
    t._$s(
      4,
      "i",
      t.swiperList.length&&t.swiperToast
    )?s(
      "view",
      {staticClass:t._$s(
        4,
        "sc",
        "toast"
      ),
      attrs:{_i:4}},
      [
        s(
          "swiper",
          {staticClass:t._$s(
            5,
            "sc",
            "toast-swiper"
          ),
          attrs:{interval:t._$s(
            5,
            "a-interval",
            t.interval
          ),
          _i:5}},
          t._l(
            t._$s(
              6,
              "f",
              {forItems:t.swiperList}
            ),
            (
              function(
                e,
                i,
                a,
                n
              ){return s(
                "swiper-item",
                {key:t._$s(
                  6,
                  "f",
                  {forIndex:a,
                  key:i}
                )},
                [
                  s(
                    "view",
                    {staticClass:t._$s(
                      "7-"+n,
                      "sc",
                      "toast-swiper-item"
                    ),
                    attrs:{_i:"7-"+n},
                    on:{click:function(
                      s
                    ){return t.toGoods(
                      e.id
                    )}}},
                    [
                      s(
                        "view",
                        {staticClass:t._$s(
                          "8-"+n,
                          "sc",
                          "toast-swiper-item-img"
                        ),
                        attrs:{_i:"8-"+n}},
                        [
                          s(
                            "image",
                            {attrs:{src:t._$s(
                              "9-"+n,
                              "a-src",
                              e.user_headimg
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
                          "toast-swiper-item-main"
                        ),
                        attrs:{_i:"10-"+n}},
                        [
                          s(
                            "text",
                            [
                              t._v(
                                t._$s(
                                  "11-"+n,
                                  "t0-0",
                                  t._s(
                                    e.user_name
                                  )
                                )
                              )
                            ]
                          ),
                          s(
                            "text",
                            {staticClass:t._$s(
                              "12-"+n,
                              "sc",
                              "arrival"
                            ),
                            attrs:{_i:"12-"+n}},
                            [
                              t._v(
                                t._$s(
                                  "12-"+n,
                                  "t0-0",
                                  t._s(
                                    t.$t(
                                      "finance.arrival"
                                    )
                                  )
                                )
                              )
                            ]
                          ),
                          s(
                            "text",
                            {staticClass:t._$s(
                              "13-"+n,
                              "sc",
                              "name"
                            ),
                            attrs:{_i:"13-"+n}},
                            [
                              t._v(
                                t._$s(
                                  "13-"+n,
                                  "t0-0",
                                  t._s(
                                    e.amount
                                  )
                                )
                              )
                            ]
                          ),
                          s(
                            "text",
                            [
                              t._v(
                                t._$s(
                                  "14-"+n,
                                  "t0-0",
                                  t._s(
                                    t.$t(
                                      "finance.earn"
                                    ).toLowerCase(
                                    )
                                  )
                                )
                              )
                            ]
                          ),
                          s(
                            "text",
                            {staticClass:t._$s(
                              "15-"+n,
                              "sc",
                              "name"
                            ),
                            attrs:{_i:"15-"+n}},
                            [
                              t._v(
                                t._$s(
                                  "15-"+n,
                                  "t0-0",
                                  t._s(
                                    e.rate_income
                                  )
                                )
                              )
                            ]
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
    ):t._e(
    ),
    s(
      "mescroll-body",
      {ref:"mescrollRef",
      attrs:{down:t.downOption,
      up:t.upOption,
      height:400,
      _i:16},
      on:{init:t.mescrollInit,
      down:t.downCallback,
      up:t.upCallback}},
      [
        s(
          "finance-list",
          {attrs:{list:t.fList,
          _i:17},
          on:{buy:t.toBuy}}
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
{"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var i=s("4bc5"),a=o(s("4df3")),n=o(s("7142")),r=s("f16a");function o(t){return t&&t.__esModule?t:{default:t}}var c={mixins:[a.default],components:{MescrollBody:n.default},data:function(){return{fList:[],listTime:[],downOption:{use:!0,auto:!0},upOption:{use:!0,auto:!0,page:{num:0,size:20}},firstLoad:!0,swiperToast:!1,swiperList:[],interval:5e3}},onLoad:function(){this.getRecent()},onShow:function(){var t=this;setTimeout((function(){t.firstLoad||t.mescroll.resetUpScroll()}))},methods:{toBuy:function(t){uni.navigateTo({url:"./fdetail?id=".concat(t.id)})},getRecent:function(){var t=this;(0,i.financeOrderRecent)().then((function(e){t.swiperToast=!0,t.swiperList=e.list}))},upCallback:function(t){var e=this,s=(t.num-1)*t.size,a=t.size;(0,i.financeList)({start:s,limit:a}).then((function(s){e.firstLoad=!1;var i=s.list,a=i.length,n=+s.count;1==t.num&&(e.fList=[]),e.fList=e.fList.concat(i),e.clearTimer(),e.fList.forEach((function(t,s){e.listTime[s]="",t.countdown="",e.listTime[s]=setInterval((function(){t.server_time++,t.countdown=(0,r.countDown)(t.end_in,t.server_time),"00:00:00"==t.countdown&&(clearInterval(e.listTime[s]),e.mescroll.resetUpScroll())}),1e3),t.countdown=(0,r.countDown)(t.end_in,t.server_time),"00:00:00"==t.countdown&&clearInterval(e.listTime[s])})),e.mescroll.endBySize(a,n)})).catch((function(t){e.mescroll.endErr()}))},clearTimer:function(){this.listTime.forEach((function(t){return clearInterval(t)})),this.listTime=[]}},destroyed:function(){this.clearTimer()}};e.default=c}
```
