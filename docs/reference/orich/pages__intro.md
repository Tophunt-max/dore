# pages/intro

- page module: `0ab3`
- render module: `7331`
- options module: `0421`
- css scope: `data-v-80ea6436`

## Scoped CSS (9 rules)

```css
.download[data-v-80ea6436]{display:flex;flex-direction:column;align-items:center;justify-content:flex-start;min-height:100vh}
.download .bg[data-v-80ea6436]{display:flex;flex-direction:column;align-items:center;justify-content:flex-start;position:fixed;width:100vw;height:100vh;z-index:99;font-size:30rpx;color:#fff;background-color:rgba(0,0,0,.6)}
.download .bg uni-image[data-v-80ea6436]{width:160rpx;margin-top:300rpx;margin-bottom:50rpx}
.download .suc-btn[data-v-80ea6436]{display:flex;flex-direction:column;align-items:center;justify-content:space-around;width:100%;margin-top:1060rpx;padding:0 64rpx;font-size:28rpx}
.download .suc-btn .suc-btn-home[data-v-80ea6436]{display:flex;flex-direction:row;align-items:center;justify-content:center;width:526rpx;height:158rpx;opacity:1;background:#fff;border-radius:8rpx}
.download .suc-btn .suc-btn-home uni-image[data-v-80ea6436]{width:92rpx;height:92rpx;margin-right:36rpx}
.download .suc-btn .suc-btn-detail[data-v-80ea6436]{display:flex;flex-direction:row;align-items:center;justify-content:center;width:276rpx;height:80rpx;border-radius:40rpx;background:#e2b87f;color:#fff}
.download .suc-btn .android[data-v-80ea6436]{font-size:36rpx;font-family:PingFang SC,PingFang SC-Bold;font-weight:700;text-align:LEFT;color:#a4c937}
.download .suc-btn .ios[data-v-80ea6436]{margin-top:36rpx;margin-bottom:100rpx;font-size:36rpx;font-family:PingFang SC,PingFang SC-Bold;font-weight:700;text-align:LEFT;color:#1179f8}
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
    "download"
  ),
  attrs:{_i:0}},
  [
    s(
      "web-view",
      {}
    )
  ]
)}
```

## Component options (data / methods)

```js
{"use strict";(function(t){Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var i=s("16bf"),a={watch:{serviceID:function(t){t&&this.servicePhone()}},data:function(){return{systemInfo:{appdowmios:"",appdowmapk:""},showBg:!1,serviceID:"",phone:""}},onLoad:function(t){this.serviceID=t.id},onShow:function(){(0,i.SystemInfo)().then((function(t){}))},methods:{isWeiXin:function(){var e=window.navigator.userAgent.toLowerCase();return t("log",e," at pages/intro.vue:68"),"micromessenger"==e.match(/MicroMessenger/i)},toIos:function(){var e=this.isWeiXin();e?(this.showBg=!0,t("log",e," at pages/intro.vue:79")):window.location=this.systemInfo.appdowmios},toHome:function(){var e=this.isWeiXin();e?(this.showBg=!0,t("log",e," at pages/intro.vue:88")):window.location=this.systemInfo.appdowmapk},servicePhone:function(){var t=this;(0,i.chlWhatsApp)({id:this.serviceID}).then((function(e){t.phone=e.whatsapp,t.systemInfo.appdowmapk="whatsapp://send?phone="+t.phone,uni.setStorageSync("appdowmapk",t.systemInfo.appdowmapk)}))}}};e.default=a}).call(this,s("0de9")["default"])}
```
