# pages/order/record

- page module: `9527`
- render module: `cefc`
- options module: `55e6`
- css scope: `data-v-68668e97`

## Scoped CSS (4 rules)

```css
.record[data-v-68668e97]{min-height:100vh;background:#f9f9f9}
.record_loading[data-v-68668e97]{padding-top:20rpx;text-align:center;background:#f9f9f9}
.record_main[data-v-68668e97]{background:#f9f9f9}
.record_main_card[data-v-68668e97]{background:#f9f9f9;padding:16rpx 30rpx}
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
    "record"
  ),
  attrs:{_i:0}},
  [
    s(
      "navbar",
      {attrs:{title:t.$t(
        "order.records"
      ),
      background:"#ffffff",
      isComfirm:!0,
      _i:1},
      on:{beforeBack:t.handleBack}}
    ),
    s(
      "navtabs",
      {attrs:{list:t.list,
      activeIndex:t.current,
      _i:2},
      on:{active:t.change}}
    ),
    s(
      "mescroll-body",
      {ref:"mescrollRef",
      attrs:{down:t.downOption,
      up:t.upOption,
      _i:3},
      on:{init:t.mescrollInit,
      down:t.downCallback,
      up:t.upCallback}},
      [
        s(
          "view",
          {staticClass:t._$s(
            4,
            "sc",
            "record_main_card"
          ),
          attrs:{_i:4}},
          [
            s(
              "cardlist",
              {attrs:{cardList:t.cardList,
              _i:5},
              on:{navNext:t.navNext,
              navToDetail:t.toDetail,
              share:t.handleShare,
              handleSkip:t.handleSkip,
              navToDiscount:t.toDiscount}}
            )
          ],
          1
        )
      ]
    ),
    s(
      "sharepopup",
      {ref:"popup",
      attrs:{showPopup:t.showPopup,
      shareType:"2",
      orderID:t.orderID,
      _i:6}}
    )
  ],
  1
)}
```

## Component options (data / methods)

```js
{"use strict";(function(t){Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var i=o(s("4df3")),a=o(s("7142")),n=s("8522"),r=s("f16a");function o(t){return t&&t.__esModule?t:{default:t}}var c={mixins:[i.default],components:{MescrollBody:a.default},data:function(){return{mescroll:null,downOption:{use:!0,auto:!0},upOption:{use:!0,auto:!0,page:{num:0,size:20}},list:[{name:this.$t("account.all"),status:0},{name:this.$t("account.waiting"),status:1},{name:this.$t("account.todelivery"),status:3},{name:this.$t("account.indelivery"),status:4},{name:this.$t("account.completed"),status:5}],current:0,orderStatus:0,cardList:[],listTime:[],loading:!0,showPopup:!1,orderID:"",firstLoad:!0}},onShow:function(){var t=this;setTimeout((function(){t.firstLoad||t.mescroll.resetUpScroll()}))},onLoad:function(t){t.type&&this.change(t.type)},watch:{orderStatus:function(t){this.mescroll.resetUpScroll()}},methods:{handleBack:function(){uni.navigateTo({url:"../account/account"})},change:function(t){this.current=t,this.orderStatus=this.list[t].status},navNext:function(t){uni.navigateTo({url:"../../pages/order/detail?id=".concat(t)})},toDetail:function(t){uni.navigateTo({url:"/pages/order/detail?id=".concat(t)})},toDiscount:function(t,e){2==t?uni.navigateTo({url:"../../pages/order/discount?id=".concat(e)}):this.toDetail(e)},orderList:function(){var t=this;this.loading=!0,(0,n.userOrder)({status:this.orderStatus}).then((function(e){t.cardList=e.list,t.loading=!1})).catch((function(){t.loading=!1}))},handleShare:function(e){t("log",e," at pages/order/record.vue:150"),this.orderID=e.dumid,this.$refs.popup.open()},upCallback:function(t){var e=this,s=(t.num-1)*t.size,i=t.size;(0,n.userOrder)({status:this.orderStatus,start:s,limit:i}).then((function(s){e.firstLoad=!1;var i=s.list,a=i.length,n=+s.count;1==t.num&&(e.cardList=[]),e.cardList=e.cardList.concat(i),e.clearTimer(),e.cardList.forEach((function(t,s){e.listTime[s]="",t.countdown="",3==t.has_lottery&&(e.listTime[s]=setInterval((function(){t.nowtime++,t.countdown=(0,r.countDown)(t.endendtimein,t.nowtime),"00:00:00"==t.countdown&&(clearInterval(e.listTime[s]),e.mescroll.resetUpScroll()),e.$forceUpdate()}),1e3),t.countdown=(0,r.countDown)(t.endendtimein,t.nowtime),"00:00:00"==t.countdown&&clearInterval(e.listTime[s]),e.$forceUpdate()),2==t.has_lottery&&(e.listTime[s]=setInterval((function(){t.nowtime++,t.countdown=(0,r.countDown)(t.lottery_stamp,t.nowtime),"00:00:00"==t.countdown&&(clearInterval(e.listTime[s]),e.mescroll.resetUpScroll()),e.$forceUpdate()}),1e3),t.countdown=(0,r.countDown)(t.lottery_stamp,t.nowtime),"00:00:00"==t.countdown&&clearInterval(e.listTime[s]),e.$forceUpdate())})),e.mescroll.endBySize(a,n)})).catch((function(t){e.mescroll.endErr()}))},clearTimer:function(){this.listTime.forEach((function(t){return clearInterval(t)})),this.listTime=[]},handleSkip:function(e,s){t("log",e,"sss"," at pages/order/record.vue:219");var i="";switch(+e){case 1:uni.setStorageSync("page",2),i="../goods/goods?id=".concat(s);break;case 3:i="../order/detail?id=".concat(s);break;case 5:i="../bask/index?id=".concat(s);break;case 4:case 6:i="../order/detail?id=".concat(s);break}uni.navigateTo({url:i})}},destroyed:function(){this.clearTimer()}};e.default=c}).call(this,s("0de9")["default"])}
```
