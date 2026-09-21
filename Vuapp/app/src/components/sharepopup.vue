<template>
  <view class="share">
    <u-popup border-radius="32" mode="bottom" :height="popHeight" v-model="show">
      <view class="main">
        <view v-if="posterShow" class="main_tip">{{ $t('sharepop.sharetip') }}</view>
        <view class="main_app">
          <view class="main_app_item" @click="share(1)">
            <view class="main_app_item_icon">
              <image :src="shareList[1].icon" />
            </view>
            <view class="main_app_item_name">{{ shareList[1].name }}</view>
          </view>
          <view v-if="!posterShow" class="main_app_item" @click="share(2)">
            <view class="main_app_item_icon">
              <image :src="shareList[2].icon" />
            </view>
            <view class="main_app_item_name">{{ shareList[2].name }}</view>
          </view>
          <view v-if="!posterShow" class="main_app_item" @click="share(3)">
            <view class="main_app_item_icon">
              <image :src="shareList[3].icon" />
            </view>
            <view class="main_app_item_name">{{ shareList[3].name }}</view>
          </view>
          <view v-if="posterShow" class="main_app_item" @click="share(4)">
            <view class="main_app_item_icon">
              <image :src="shareList[4].icon" />
            </view>
            <view class="main_app_item_name">{{ shareList[4].name }}</view>
          </view>
        </view>
        <view class="main_line"></view>
        <view class="main_btn" @click="close">{{ $t('sharepop.cancel') }}</view>
      </view>
    </u-popup>
    <view v-show="posterShow && imgVal" class="poster_pop">
      <view class="poster">
        <image v-if="2 == shareType" :src="whatsappImg" @load="imgVal = true" />
        <image v-else :src="posterImg" @load="imgVal = true" />
      </view>
    </view>
  </view>
</template>

<script>
import { systemService, userShare } from '@/api/orich';
import { GetUrlParam, copyString } from '@/utils/orich';
import { interopDefault as d_a34a } from '@/vendor/a34a';
import { nativePlus } from '@/utils/native';

// Helpers the reference bundle hoisted out of the component.
function u(t, e, s, i, a, n, r) {
  try {
    var o = t[n](r), c = o.value;
  } catch (l) {
    return void s(l);
  }
  o.done ? e(c) : Promise.resolve(c).then(i, a);
}
function d(t) {
  return function () {
    var e = this, s = arguments;
    return new Promise(function (i, a) {
      var n = t.apply(e, s);
      function r(t) {
        u(n, i, a, r, o, 'next', t);
      }
      function o(t) {
        u(n, i, a, r, o, 'throw', t);
      }
      r(void 0);
    });
  };
}
function l(t, e, s) {
  return ((e in t) ? Object.defineProperty(t, e, {
    value: s,
    enumerable: true,
    configurable: true,
    writable: true
  }) : t[e] = s, t);
}
var i;

export default {
  props: {
    showPopup: {
      type: Boolean,
      default: false
    },
    height: {
      type: [Number, String],
      default: '282'
    },
    shareType: {
      type: [String, Number],
      default: ''
    },
    orderID: {
      type: [String, Number],
      default: ''
    },
    financeID: {
      type: [String, Number],
      default: ''
    }
  },
  data: function () {
    return {
      show: false,
      posterShow: false,
      popHeight: null,
      shareList: [{
        icon: '../../static/image/share/icon_app.png',
        name: 'APPs'
      }, {
        icon: '../../static/image/goods/icon_Whatsapp.png',
        name: 'WhatsApp'
      }, {
        icon: '../../static/image/share/icon_Shareposter.png',
        name: 'Share poster'
      }, {
        icon: '../../static/image/share/icon_Copylink.png',
        name: 'Copy link'
      }, {
        icon: '../../static/image/share/icon_Save.png',
        name: 'Save'
      }],
      posterImg: '',
      codeUrl: '',
      whatsappImg: '',
      whatsappUrl: '',
      financeurl: '',
      imgVal: false,
      SSDKPlatformID: void 0,
      sendMes: {}
    };
  },
  mounted: function () {
    this.popHeight = this.height;
  },
  watch: {
    showPopup: function () {
      this.show = this.showPopup;
    },
    posterShow: function (t) {
      this.popHeight = t ? '360' : this.height;
    },
    show: function (t) {
      t || (this.posterShow = this.show);
    },
    orderID: function (t) {
      var e = this;
      userShare({
        id: this.orderID,
        finance_id: this.financeID
      }).then(function (t) {
        e.posterImg = t.url;
        e.whatsappUrl = t.whatsappurl;
        e.whatsappImg = t.whatsapp;
        e.codeUrl = t.inviteurl;
        e.financeurl = t.whatsappfinanceurl;
        var s = GetUrlParam('icode', e.whatsappUrl);
        uni.setStorageSync('icode', s);
      });
    }
  },
  methods: (i = {
    open: function () {
      var t = this;
      this.show = true;
      userShare({
        id: this.orderID,
        finance_id: this.financeID
      }).then(function (e) {
        t.posterImg = e.url;
        t.codeUrl = e.inviteurl;
        t.whatsappUrl = e.whatsappurl;
        t.whatsappImg = e.whatsapp;
        t.financeurl = e.whatsappfinanceurl;
        var s = GetUrlParam('icode', t.whatsappUrl);
        uni.setStorageSync('icode', s);
      });
      this.getData();
    },
    close: function () {
      this.show = false;
    },
    mobShareText: function (e) {
      var s = this;
      console.log(e, 'platName');
      pluginMobShare.generalShare({
        platName: e,
        params: {
          text: 'text',
          title: 'title'
        },
        shareType: SSDKContentType.Text
      }, function (t) {
        var e = JSON.stringify(t);
        s.showAlertAndLog(e);
      });
    },
    share: function (t) {
      var e = this;
      if (Object.keys(this.sendMes).length) switch (+t) {
        case 0:
          this.$store.state.token ? nativePlus.runtime.openURL('whatsapp://send?phone=+电话&text=HelloHelloHelloHelloHelloHelloHello') : (uni.showToast({
            icon: 'none',
            title: 'Please log in first'
          }), setTimeout(function () {
            uni.navigateTo({
              url: '../../pages/login/login'
            });
          }, 1e3));
          break;
        case 1:
          var s = '';
          if (2 == this.shareType) {
            var i = encodeURIComponent(('').concat(this.sendMes.orderurl, '?id=').concat(this.orderID));
            s = ('whatsapp://send?text=').concat(i);
            ('https://wa.me/?text=').concat(i);
          } else if (3 == this.shareType) {
            var a = encodeURIComponent(this.codeUrl);
            s = ('whatsapp://send?text=').concat(a);
            ('https://wa.me/?text=').concat(a);
          } else if (4 == this.shareType) {
            var n = encodeURIComponent(this.financeurl);
            s = ('whatsapp://send?text=').concat(n);
            ('https://wa.me/?text=').concat(n);
          } else (s = ('whatsapp://send?phone=+').concat(this.sendMes.phone, '&text=').concat(this.sendMes.content), ('https://wa.me/').concat(this.sendMes.phone, '/?text=').concat(this.sendMes.content));
          nativePlus.runtime.openURL(s);
          break;
        case 2:
          this.posterShow = true;
          break;
        case 3:
          2 == this.shareType ? copyString(this.whatsappUrl) : 4 == this.shareType ? copyString(this.financeurl) : copyString(this.codeUrl);
          break;
        case 4:
          2 == this.shareType ? this.saveImg(this.whatsappImg) : this.saveImg(this.posterImg);
          break;
      } else setTimeout(function () {
        e.share(t);
      }, 500);
    },
    showAlertAndLog: function (e) {
      uni.showModal({
        title: '提示',
        content: e,
        showCancel: false,
        success: function (t) {}
      });
      console.log(e);
    },
    saveImg: function (t) {
      uni.showLoading({
        mask: true,
        title: 'downloading...'
      });
      var e = this;
      uni.downloadFile({
        url: t,
        success: function (t) {
          if (200 === t.statusCode) {
            var s = t.tempFilePath;
            e.save(s);
          }
        }
      });
    },
    save: function (t) {
      var e = this;
      uni.saveImageToPhotosAlbum({
        filePath: t,
        success: function () {
          uni.hideLoading();
          uni.showToast({
            icon: 'none',
            title: e.$t('sharepop.save')
          });
        },
        fail: function () {
          uni.hideLoading();
          uni.showToast({
            icon: 'none',
            title: 'fail'
          });
        },
        complete: function () {}
      });
    }
  }, l(i, 'mobShareText', function (t) {
    var e = this;
    pluginMobShare.generalShare({
      platName: t,
      params: {
        text: 'text',
        title: 'title'
      },
      shareType: SSDKContentType.Text
    }, function (t) {
      var s = JSON.stringify(t);
      e.showAlertAndLog(s);
    });
  }), l(i, 'getData', function () {
    var t = this;
    return d(d_a34a.mark(function e() {
      return d_a34a.wrap(function (e) {
        while (1) switch (e.prev = e.next) {
          case 0:
            return (e.next = 2, systemService({
              type: 1
            }).then(function (e) {
              t.sendMes = e;
            }));
          case 2:
          case 'end':
            return e.stop();
        }
      }, e);
    }))();
  }), i)
};
</script>

<style scoped>
.u-drawer { z-index:9999999!important }
.main { background-color:#fff;height:100%;width:100%;display:flex;flex-direction:column;align-items:center;padding-top:30rpx }
.main .main_tip { font-size:32rpx;font-family:PingFang SC,PingFang SC-Medium;font-weight:500;text-align:CENTER;color:#17273a;margin-bottom:30rpx }
.main .main_app { width:100%;display:flex;align-items:center;justify-content:space-around;padding:0 30rpx }
.main .main_app .main_app_item .main_app_item_icon { width:74rpx;height:74rpx;margin:0 auto }
.main .main_app .main_app_item .main_app_item_icon uni-image { width:100%;height:100% }
.main .main_app .main_app_item .main_app_item_name { font-family:PingFang SC,PingFang SC-Medium;font-weight:500;color:#17273a;font-size:28rpx }
.main .main_line { width:100%;height:20rpx;background-color:#f5f5f5;margin-top:24rpx }
.main .main_btn { width:100%;font-size:32rpx;font-weight:500;height:100rpx;line-height:100rpx;text-align:center;font-family:PingFang SC,PingFang SC-Medium;color:#ee5016 }
.poster_pop { position:fixed;left:50%;bottom:400rpx;-webkit-transform:translateX(-50%);transform:translateX(-50%);z-index:999999999!important;border-radius:30rpx;overflow:hidden }
.poster_pop .poster { height:836rpx;background:#fff }
.poster_pop .poster uni-image { height:100% }
</style>
