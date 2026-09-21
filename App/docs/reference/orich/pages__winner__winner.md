# pages/winner/winner

- page module: `1a82`
- render module: `7d8c`
- options module: `4b12`
- css scope: `data-v-034dd157`

## Scoped CSS (15 rules)

```css
.winner[data-v-034dd157]{background:#f9f9f9;min-height:100vh;padding-bottom:98rpx}
.main[data-v-034dd157]{position:relative;width:100%;margin-top:16rpx;padding:30rpx 26rpx;background:#fff}
.main .header[data-v-034dd157]{display:flex;flex-direction:row;align-items:center;justify-content:center}
.main .header uni-image[data-v-034dd157]{width:56rpx;height:56rpx;margin-right:18rpx;border-radius:50%;border:2rpx solid #fff}
.main .header .header-name[data-v-034dd157]{flex:1;margin-right:18rpx;font-size:26rpx;font-family:Roboto,Roboto-Regular;font-weight:600;color:#17273a}
.main .header .header-time[data-v-034dd157]{font-size:26rpx;font-family:Roboto,Roboto-Regular;color:#b9b9b9}
.main .title[data-v-034dd157]{margin-top:30rpx;font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:700;color:#17273a}
.main .content[data-v-034dd157]{margin-top:20rpx;margin-bottom:20rpx;font-size:28rpx;font-family:Roboto,Roboto-Regular;color:#686868}
.main .imgArr[data-v-034dd157]{display:flex;flex-direction:row;flex-wrap:wrap;align-items:center;justify-content:flex-start;margin:16rpx 0}
.main .imgArr uni-image[data-v-034dd157]{width:88rpx;height:88rpx;margin-top:10rpx;border-radius:8rpx;margin-right:16rpx}
.main .goods[data-v-034dd157]{display:flex;flex-direction:row;align-items:center;justify-content:center}
.main .goods uni-image[data-v-034dd157]{width:116rpx;height:116rpx;margin-right:14rpx;border-radius:8px}
.main .goods .goods-desc[data-v-034dd157]{display:flex;flex-direction:column;align-items:flex-start;justify-content:space-between;flex:1;height:134rpx;padding:24rpx 32rpx 26rpx 32rpx;background:#f7f8f9;border-radius:24rpx}
.main .goods .goods-desc .goods-name[data-v-034dd157]{width:504rpx;font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:700;color:#17273a}
.main .goods .goods-desc .goods-issue[data-v-034dd157]{font-size:26rpx;font-family:Roboto,Roboto-Regular;color:#b9b9b9}
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
    "winner"
  ),
  attrs:{_i:0}},
  [
    s(
      "navbar",
      {attrs:{backIcon:"",
      title:t.$t(
        "common.winnerTitle"
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
      t._l(
        t._$s(
          3,
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
              3,
              "f",
              {forIndex:a,
              key:i}
            ),
            staticClass:t._$s(
              "3-"+n,
              "sc",
              "main"
            ),
            attrs:{_i:"3-"+n}},
            [
              s(
                "view",
                {staticClass:t._$s(
                  "4-"+n,
                  "sc",
                  "header"
                ),
                attrs:{_i:"4-"+n}},
                [
                  s(
                    "image",
                    {attrs:{src:t._$s(
                      "5-"+n,
                      "a-src",
                      e.userheadimgurl
                    ),
                    _i:"5-"+n}}
                  ),
                  s(
                    "view",
                    {staticClass:t._$s(
                      "6-"+n,
                      "sc",
                      "header-name"
                    ),
                    attrs:{_i:"6-"+n}},
                    [
                      t._v(
                        t._$s(
                          "6-"+n,
                          "t0-0",
                          t._s(
                            e.username
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
                      "header-time"
                    ),
                    attrs:{_i:"7-"+n}},
                    [
                      t._v(
                        t._$s(
                          "7-"+n,
                          "t0-0",
                          t._s(
                            e.time
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
                  "content"
                ),
                attrs:{_i:"8-"+n}},
                [
                  t._v(
                    t._$s(
                      "8-"+n,
                      "t0-0",
                      t._s(
                        e.content
                      )
                    )
                  )
                ]
              ),
              s(
                "view",
                {staticClass:t._$s(
                  "9-"+n,
                  "sc",
                  "imgArr"
                ),
                attrs:{_i:"9-"+n}},
                t._l(
                  t._$s(
                    "10-"+n,
                    "f",
                    {forItems:e.imagesurl}
                  ),
                  (
                    function(
                      i,
                      a,
                      r,
                      o
                    ){return s(
                      "image",
                      {key:t._$s(
                        "10-"+n,
                        "f",
                        {forIndex:r,
                        key:a}
                      ),
                      attrs:{src:t._$s(
                        "10-"+n+"-"+o,
                        "a-src",
                        i
                      ),
                      _i:"10-"+n+"-"+o},
                      on:{click:function(
                        s
                      ){return t.enlargeImg(
                        e.imagesurl,
                        a
                      )}}}
                    )}
                  )
                ),
                0
              ),
              s(
                "view",
                {staticClass:t._$s(
                  "11-"+n,
                  "sc",
                  "goods"
                ),
                attrs:{_i:"11-"+n},
                on:{click:function(
                  s
                ){return t.toDetail(
                  e.dumid
                )}}},
                [
                  s(
                    "image",
                    {attrs:{src:t._$s(
                      "12-"+n,
                      "a-src",
                      e.iconurl
                    ),
                    _i:"12-"+n}}
                  ),
                  s(
                    "view",
                    {staticClass:t._$s(
                      "13-"+n,
                      "sc",
                      "goods-desc"
                    ),
                    attrs:{_i:"13-"+n}},
                    [
                      s(
                        "view",
                        {staticClass:t._$s(
                          "14-"+n,
                          "sc",
                          "goods-name otw"
                        ),
                        attrs:{_i:"14-"+n}},
                        [
                          t._v(
                            t._$s(
                              "14-"+n,
                              "t0-0",
                              t._s(
                                e.delname
                              )
                            )
                          )
                        ]
                      ),
                      s(
                        "view",
                        {staticClass:t._$s(
                          "15-"+n,
                          "sc",
                          "goods-issue"
                        ),
                        attrs:{_i:"15-"+n}},
                        [
                          t._v(
                            t._$s(
                              "15-"+n,
                              "t0-0",
                              t._s(
                                e.issue
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
  ],
  1
)}
```

## Component options (data / methods)

```js
{"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var i=r(s("4df3")),a=r(s("7142")),n=s("8522");s("2f62");function r(t){return t&&t.__esModule?t:{default:t}}var o={mixins:[i.default],components:{MescrollBody:a.default},onLoad:function(t){},onShow:function(){var t=this;setTimeout((function(){t.mescroll.resetUpScroll()}),500)},computed:{},data:function(){return{mescroll:null,downOption:{use:!0,auto:!0},upOption:{use:!0,auto:!0,page:{num:0,size:20}},dataList:[]}},methods:{enlargeImg:function(t,e){uni.previewImage({current:e,urls:t})},toDetail:function(t){uni.navigateTo({url:"../goods/goods?id=".concat(t)})},upCallback:function(t){var e=this,s=(t.num-1)*t.size,i=t.size;(0,n.WinnerList)({start:s,limit:i}).then((function(s){var i=s.list,a=i.length,n=+s.count;1==t.num&&(e.dataList=[]),e.dataList=e.dataList.concat(i),e.mescroll.endBySize(a,n)})).catch((function(t){e.mescroll.endErr()}))}}};e.default=o}
```
