<template>
  <view class="download">
    <web-view></web-view>
  </view>
</template>

<script>
import { SystemInfo, chlWhatsApp } from '@/api/orich';

export default {
  watch: {
    serviceID: function (t) {
      t && this.servicePhone();
    }
  },
  data: function () {
    return {
      systemInfo: {
        appdowmios: '',
        appdowmapk: ''
      },
      showBg: false,
      serviceID: '',
      phone: ''
    };
  },
  onLoad: function (t) {
    this.serviceID = t.id;
  },
  onShow: function () {
    SystemInfo().then(function (t) {});
  },
  methods: {
    isWeiXin: function () {
      var e = window.navigator.userAgent.toLowerCase();
      return (console.log(e), 'micromessenger' == e.match(/MicroMessenger/i));
    },
    toIos: function () {
      var e = this.isWeiXin();
      e ? (this.showBg = true, console.log(e)) : window.location = this.systemInfo.appdowmios;
    },
    toHome: function () {
      var e = this.isWeiXin();
      e ? (this.showBg = true, console.log(e)) : window.location = this.systemInfo.appdowmapk;
    },
    servicePhone: function () {
      var t = this;
      chlWhatsApp({
        id: this.serviceID
      }).then(function (e) {
        t.phone = e.whatsapp;
        t.systemInfo.appdowmapk = 'whatsapp://send?phone=' + t.phone;
        uni.setStorageSync('appdowmapk', t.systemInfo.appdowmapk);
      });
    }
  }
};
</script>

<style scoped>
.download { display:flex;flex-direction:column;align-items:center;justify-content:flex-start;min-height:100vh }
.download .bg { display:flex;flex-direction:column;align-items:center;justify-content:flex-start;position:fixed;width:100vw;height:100vh;z-index:99;font-size:30rpx;color:#fff;background-color:rgba(0,0,0,.6) }
.download .bg uni-image { width:160rpx;margin-top:300rpx;margin-bottom:50rpx }
.download .suc-btn { display:flex;flex-direction:column;align-items:center;justify-content:space-around;width:100%;margin-top:1060rpx;padding:0 64rpx;font-size:28rpx }
.download .suc-btn .suc-btn-home { display:flex;flex-direction:row;align-items:center;justify-content:center;width:526rpx;height:158rpx;opacity:1;background:#fff;border-radius:8rpx }
.download .suc-btn .suc-btn-home uni-image { width:92rpx;height:92rpx;margin-right:36rpx }
.download .suc-btn .suc-btn-detail { display:flex;flex-direction:row;align-items:center;justify-content:center;width:276rpx;height:80rpx;border-radius:40rpx;background:#e2b87f;color:#fff }
.download .suc-btn .android { font-size:36rpx;font-family:PingFang SC,PingFang SC-Bold;font-weight:700;text-align:LEFT;color:#a4c937 }
.download .suc-btn .ios { margin-top:36rpx;margin-bottom:100rpx;font-size:36rpx;font-family:PingFang SC,PingFang SC-Bold;font-weight:700;text-align:LEFT;color:#1179f8 }
</style>
