# pages/help/help

- page module: `58bf`
- render module: `b0fa`
- options module: `db7d`
- css scope: `data-v-1d9015e4`

## Scoped CSS (17 rules)

```css
.iconb[data-v-1d9015e4]{display:flex;align-items:center}
.icon_qr[data-v-1d9015e4]{display:inline-block;width:10rpx;height:10rpx;background:#a9a9a9;border-radius:50%;margin-right:8rpx;opacity:.4}
.u-collapse-item[data-v-1d9015e4]{border-bottom:2rpx solid #e9ecef}
.u-collapse-item[data-v-1d9015e4]:last-child{border-bottom:none}
.help[data-v-1d9015e4]{padding-bottom:30rpx;min-height:100vh}
.help .help_top[data-v-1d9015e4]{width:748rpx;height:392rpx;background:url('+o+");background-size:100%}
.help .help_main[data-v-1d9015e4]{background:#fff;margin-top:-46rpx;border-radius:60rpx 60rpx 0rpx 0rpx;height:400rpx;width:100%;padding-top:40rpx}
.help .help_main .help_main_title[data-v-1d9015e4]{width:100%;padding:30rpx 30rpx 20rpx 30rpx;display:flex;align-items:center;justify-content:space-between;border-bottom:2rpx solid #e9ecef}
.help .help_main .help_main_title .help_main_title_name[data-v-1d9015e4]{font-weight:700;font-size:32rpx;height:20rpx}
.help .help_main .help_main_title .help_main_title_url[data-v-1d9015e4]{font-size:24rpx;color:#dcdcdc}
.help .help_main .help_main_item[data-v-1d9015e4]{display:flex;align-items:center;justify-content:flex-start;width:100%;border-bottom:2rpx solid #e9ecef;padding:20rpx}
.help .help_main .help_main_item .help_main_item_icon[data-v-1d9015e4]{width:35%;display:flex;flex-direction:column;align-items:center;justify-content:center;padding:0 20rpx}
.help .help_main .help_main_item .help_main_item_icon .help_main_item_icon_url[data-v-1d9015e4]{width:60rpx;height:60rpx}
.help .help_main .help_main_item .help_main_item_icon .help_main_item_icon_url uni-image[data-v-1d9015e4]{width:100%;height:100%}
.help .help_main .help_main_item .help_main_item_icon .help_main_item_icon_title[data-v-1d9015e4]{text-align:center;color:#a9a9a9}
.help .help_main .help_main_item .help_main_item_content[data-v-1d9015e4]{width:65%}
.help .mar_bottom[data-v-1d9015e4]{margin-bottom:50rpx}
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
    "help"
  ),
  attrs:{_i:0}},
  [
    s(
      "navbar",
      {attrs:{title:t.$t(
        "help.navtitle"
      ),
      background:"#ffffff",
      _i:1}}
    ),
    s(
      "view",
      {staticClass:t._$s(
        2,
        "sc",
        "help_top"
      ),
      attrs:{_i:2}}
    ),
    s(
      "view",
      {staticClass:t._$s(
        3,
        "sc",
        "help_main"
      ),
      attrs:{_i:3}},
      t._l(
        t._$s(
          4,
          "f",
          {forItems:t.itemList}
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
              4,
              "f",
              {forIndex:a,
              key:i}
            ),
            staticClass:t._$s(
              "4-"+n,
              "sc",
              "help_main_item"
            ),
            attrs:{_i:"4-"+n}},
            [
              s(
                "view",
                {staticClass:t._$s(
                  "5-"+n,
                  "sc",
                  "help_main_item_icon"
                ),
                attrs:{_i:"5-"+n}},
                [
                  s(
                    "view",
                    {staticClass:t._$s(
                      "6-"+n,
                      "sc",
                      "help_main_item_icon_url"
                    ),
                    attrs:{_i:"6-"+n}},
                    [
                      s(
                        "image",
                        {attrs:{src:t._$s(
                          "7-"+n,
                          "a-src",
                          e.image_url
                        ),
                        _i:"7-"+n}}
                      )
                    ]
                  ),
                  s(
                    "view",
                    {staticClass:t._$s(
                      "8-"+n,
                      "sc",
                      "help_main_item_icon_title"
                    ),
                    attrs:{_i:"8-"+n}},
                    [
                      t._v(
                        t._$s(
                          "8-"+n,
                          "t0-0",
                          t._s(
                            e.category
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
                  "9-"+n,
                  "sc",
                  "help_main_item_content"
                ),
                attrs:{_i:"9-"+n}},
                [
                  s(
                    "u-collapse",
                    {attrs:{arrow:!1,
                    _i:"10-"+n}},
                    t._l(
                      t._$s(
                        "11-"+n,
                        "f",
                        {forItems:e.chr}
                      ),
                      (
                        function(
                          e,
                          i,
                          a,
                          r
                        ){return s(
                          "u-collapse-item",
                          {key:t._$s(
                            "11-"+n,
                            "f",
                            {forIndex:a,
                            key:i}
                          ),
                          attrs:{_i:"11-"+n+"-"+r},
                          on:{change:function(
                            s
                          ){return t.clickCollapse(
                            e.que_id
                          )}}},
                          [
                            s(
                              "view",
                              {staticClass:t._$s(
                                "12-"+n+"-"+r,
                                "sc",
                                "iconb"
                              ),
                              attrs:{_i:"12-"+n+"-"+r},
                              slot:"title"},
                              [
                                s(
                                  "view",
                                  {staticClass:t._$s(
                                    "13-"+n+"-"+r,
                                    "sc",
                                    "icon_qr"
                                  ),
                                  attrs:{_i:"13-"+n+"-"+r}}
                                ),
                                t._v(
                                  t._$s(
                                    "12-"+n+"-"+r,
                                    "t1-0",
                                    t._s(
                                      e.title
                                    )
                                  )
                                )
                              ]
                            )
                          ]
                        )}
                      )
                    ),
                    1
                  )
                ],
                1
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
{"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var i=s("16bf"),a={data:function(){return{itemList:[]}},onLoad:function(){this.questionList()},mounted:function(){},methods:{show:function(t){this.question[t].val=!this.question[t].val},clickCollapse:function(t){uni.navigateTo({url:"./help_detail?id=".concat(t)})},questionList:function(){var t=this;uni.showLoading({mask:!0}),(0,i.getTitle)().then((function(e){t.itemList=e,uni.hideLoading()})).catch((function(){uni.hideLoading()}))}}};e.default=a}
```
