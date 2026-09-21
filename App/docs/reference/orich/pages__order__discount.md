# pages/order/discount

- page module: `5b38`
- render module: `a5cc`
- options module: `7dc7`
- css scope: `data-v-700f9b3f`

## Scoped CSS (23 rules)

```css
.discount[data-v-700f9b3f]{background:#fe995d;min-height:100vh}
.discount .discount_main[data-v-700f9b3f]{margin-top:82rpx;padding:0 28rpx 0 32rpx}
.discount .discount_main .discount_main_item[data-v-700f9b3f]{margin-bottom:58rpx;height:100%;width:100%;border-radius:16rpx;position:relative}
.discount .discount_main .discount_main_item .discount_main_item_ranking[data-v-700f9b3f]{height:66rpx;background:linear-gradient(103deg,#ffe44b,#fea326);border-radius:8rpx;box-shadow:0rpx -4rpx 8rpx 0rpx rgba(255,125,0,.5) inset;position:absolute;top:-34rpx;left:50%;-webkit-transform:translateX(-50%);transform:translateX(-50%);font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:500;text-align:CENTER;color:#fff;line-height:66rpx;white-space:nowrap}
.discount .discount_main .discount_main_item .discount_main_item_bg_1[data-v-700f9b3f]{width:691rpx}
.discount .discount_main .discount_main_item .discount_main_item_bg_1 uni-image[data-v-700f9b3f]{width:100%;height:100%}
.discount .discount_main .discount_main_item .discount_main_item_name[data-v-700f9b3f]{position:absolute;top:8rpx;left:36rpx;font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#fff}
.discount .discount_main .discount_main_item .discount_main_item_second[data-v-700f9b3f]{position:absolute;top:80rpx;left:0;height:220rpx;width:100%;padding-left:60rpx;padding-top:16rpx;display:flex;flex-wrap:wrap;overflow-y:auto}
.discount .discount_main .discount_main_item .discount_main_item_second .discount_main_item_second_box[data-v-700f9b3f]{width:50%}
.discount .discount_main .discount_main_item .discount_main_item_second .second_name[data-v-700f9b3f]{font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#ee5016;line-height:48rpx}
.discount .discount_main .discount_main_item .discount_main_item_second .second_code[data-v-700f9b3f]{margin-left:22rpx;font-size:24rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#ee5016;line-height:48rpx}
.discount .discount_main .discount_main_item .discount_main_item_info[data-v-700f9b3f]{display:flex;align-items:center;justify-content:space-between;position:absolute;left:50%;top:98rpx;-webkit-transform:translateX(-50%);transform:translateX(-50%)}
.discount .discount_main .discount_main_item .discount_main_item_info .discount_main_item_info_avatar[data-v-700f9b3f]{width:72rpx;display:flex;align-items:center;flex-direction:column}
.discount .discount_main .discount_main_item .discount_main_item_info .discount_main_item_info_avatar .avatar_king[data-v-700f9b3f]{width:28rpx;height:28rpx}
.discount .discount_main .discount_main_item .discount_main_item_info .discount_main_item_info_avatar .avatar_king uni-image[data-v-700f9b3f]{width:100%;height:100%}
.discount .discount_main .discount_main_item .discount_main_item_info .discount_main_item_info_avatar .avatar_main[data-v-700f9b3f]{width:72rpx;height:72rpx;border:4rpx solid #ffcf5c;border-radius:50%;overflow:hidden}
.discount .discount_main .discount_main_item .discount_main_item_info .discount_main_item_info_avatar .avatar_main uni-image[data-v-700f9b3f]{width:100%;height:100%}
.discount .discount_main .discount_main_item .discount_main_item_info .discount_main_item_info_code[data-v-700f9b3f]{margin-left:14rpx;margin-top:22rpx}
.discount .discount_main .discount_main_item .discount_main_item_info .discount_main_item_info_code .winner[data-v-700f9b3f]{font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#ee5016}
.discount .discount_main .discount_main_item .discount_main_item_info .discount_main_item_info_code .code[data-v-700f9b3f]{font-size:24rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#ee5016;margin-top:10rpx}
.discount .discount_main .discount_main_item .discount_main_item_info .right[data-v-700f9b3f]{margin-left:4rpx;font-weight:500;text-align:left}
.discount .discount_main .discount_main_item .discount_main_item_info .discount_main_item_info_name[data-v-700f9b3f]{display:flex;font-size:28rpx;font-family:Roboto,Roboto-Bold;font-weight:700;text-align:CENTER;color:#fff;line-height:48rpx}
.discount .discount_main .discount_main_item .discount_main_item_info .discount_main_item_info_name uni-text[data-v-700f9b3f]{white-space:nowrap}
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
    "discount"
  ),
  attrs:{_i:0}},
  [
    i(
      "navbar",
      {attrs:{title:t.$t(
        "discount.navtitle"
      ),
      background:"transparent",
      titleColor:"#fff",
      backColor:"#FFF",
      _i:1}}
    ),
    i(
      "view",
      {staticClass:t._$s(
        2,
        "sc",
        "discount_main"
      ),
      attrs:{_i:2}},
      t._l(
        t._$s(
          3,
          "f",
          {forItems:t.rankList}
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
              "discount_main_item"
            ),
            attrs:{_i:"3-"+r}},
            [
              i(
                "view",
                {staticClass:t._$s(
                  "4-"+r,
                  "sc",
                  "discount_main_item_bg_1"
                ),
                style:t._$s(
                  "4-"+r,
                  "s",
                  {height:+a>0?"300rpx":"240rpx"}
                ),
                attrs:{_i:"4-"+r}},
                [
                  i(
                    "image",
                    {attrs:{src:t._$s(
                      "5-"+r,
                      "a-src",
                      t.bgList[
                        a
                      ]
                    ),
                    _i:"5-"+r}}
                  )
                ]
              ),
              i(
                "view",
                {staticClass:t._$s(
                  "6-"+r,
                  "sc",
                  "discount_main_item_name"
                ),
                attrs:{_i:"6-"+r}},
                [
                  i(
                    "view",
                    [
                      t._v(
                        t._$s(
                          "7-"+r,
                          "t0-0",
                          t._s(
                            t.toRank(
                              a
                            )
                          )
                        )
                      )
                    ]
                  ),
                  i(
                    "view",
                    [
                      t._v(
                        t._$s(
                          "8-"+r,
                          "t0-0",
                          t._s(
                            e[
                              a
                            ].winnerprice
                          )
                        )
                      )
                    ]
                  )
                ]
              ),
              t._$s(
                "9-"+r,
                "i",
                0==a
              )?i(
                "view",
                {staticClass:t._$s(
                  "9-"+r,
                  "sc",
                  "discount_main_item_info"
                ),
                attrs:{_i:"9-"+r}},
                [
                  i(
                    "view",
                    {staticClass:t._$s(
                      "10-"+r,
                      "sc",
                      "discount_main_item_info_avatar"
                    ),
                    attrs:{_i:"10-"+r}},
                    [
                      i(
                        "view",
                        {staticClass:t._$s(
                          "11-"+r,
                          "sc",
                          "avatar_king"
                        ),
                        attrs:{_i:"11-"+r}},
                        [
                          i(
                            "image",
                            {attrs:{src:t._$s(
                              "12-"+r,
                              "a-src",
                              s(
                                "3ec1"
                              )
                            ),
                            _i:"12-"+r}}
                          )
                        ]
                      ),
                      i(
                        "view",
                        {staticClass:t._$s(
                          "13-"+r,
                          "sc",
                          "avatar_main"
                        ),
                        attrs:{_i:"13-"+r}},
                        [
                          i(
                            "image",
                            {attrs:{src:t._$s(
                              "14-"+r,
                              "a-src",
                              e[
                                0
                              ].headimg
                            ),
                            _i:"14-"+r}}
                          )
                        ]
                      )
                    ]
                  ),
                  i(
                    "view",
                    {staticClass:t._$s(
                      "15-"+r,
                      "sc",
                      "discount_main_item_info_code"
                    ),
                    attrs:{_i:"15-"+r}},
                    [
                      i(
                        "view",
                        {staticClass:t._$s(
                          "16-"+r,
                          "sc",
                          "winner"
                        ),
                        attrs:{_i:"16-"+r}},
                        [
                          t._v(
                            t._$s(
                              "16-"+r,
                              "t0-0",
                              t._s(
                                e[
                                  a
                                ].winner
                              )
                            )
                          )
                        ]
                      ),
                      i(
                        "view",
                        {staticClass:t._$s(
                          "17-"+r,
                          "sc",
                          "code"
                        ),
                        attrs:{_i:"17-"+r}},
                        [
                          t._v(
                            t._$s(
                              "17-"+r,
                              "t0-0",
                              t._s(
                                e[
                                  a
                                ].winnercode
                              )
                            )
                          )
                        ]
                      )
                    ]
                  )
                ]
              ):i(
                "view",
                {staticClass:t._$s(
                  "18-"+r,
                  "sc",
                  "discount_main_item_second"
                ),
                attrs:{_i:"18-"+r}},
                t._l(
                  t._$s(
                    "19-"+r,
                    "f",
                    {forItems:e}
                  ),
                  (
                    function(
                      e,
                      s,
                      a,
                      n
                    ){return i(
                      "view",
                      {key:t._$s(
                        "19-"+r,
                        "f",
                        {forIndex:a,
                        key:s}
                      ),
                      staticClass:t._$s(
                        "19-"+r+"-"+n,
                        "sc",
                        "discount_main_item_second_box"
                      ),
                      attrs:{_i:"19-"+r+"-"+n}},
                      [
                        i(
                          "text",
                          {staticClass:t._$s(
                            "20-"+r+"-"+n,
                            "sc",
                            "second_name"
                          ),
                          attrs:{_i:"20-"+r+"-"+n}},
                          [
                            t._v(
                              t._$s(
                                "20-"+r+"-"+n,
                                "t0-0",
                                t._s(
                                  e.winner
                                )
                              )
                            )
                          ]
                        ),
                        i(
                          "text",
                          {staticClass:t._$s(
                            "21-"+r+"-"+n,
                            "sc",
                            "second_code"
                          ),
                          attrs:{_i:"21-"+r+"-"+n}},
                          [
                            t._v(
                              t._$s(
                                "21-"+r+"-"+n,
                                "t0-0",
                                t._s(
                                  e.winnercode
                                )
                              )
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
{"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var i=s("f78c"),a={data:function(){return{rankList:[],bgList:["../../static/image/discount/bg_red.png","../../static/image/discount/bg_Yellow.png","../../static/image/discount/bg_Cyan.png","../../static/image/discount/bg_Purple.png","../../static/image/discount/bg_Green.png"],disId:""}},onLoad:function(t){this.disId=t.id,this.getData()},methods:{getData:function(){var t=this;(0,i.GetLottery)({id:this.disId}).then((function(e){t.rankList=e.win}))},toRank:function(t){var e=["First","Second","Third","Fourth","Fifth","Sixth","Seventh","Eighth","Ninth","Tenth"],s=parseInt(t)+1;if(s<=10)return e[s-1]}}};e.default=a}
```
