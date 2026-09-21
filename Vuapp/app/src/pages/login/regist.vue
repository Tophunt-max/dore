<template>
  <view class="login">
    <u-icon class="backicon" name="arrow-left" color="#919191" size="32" @click="back"></u-icon>
    <view class="title">
      {{ $t('login.titlefront') }}
      <text>{{ webname }}</text>
    </view>
    <view class="input-title">{{ $t('login.mphone') }}</view>
    <view class="inputview">
      <image src="/static/image/login/icon_iphone.png" mode="widthFix" />
      <view class="inputview-num"></view>
      <view class="inputview-op"></view>
      <input
        v-model="mobile"
        class="inputview-input"
        :placeholder="$t('login.mphone_pla')"
        type="number"
        placeholder-class="pla"
       />
    </view>
    <view class="input-title">{{ $t('login.vcode') }}</view>
    <view class="send">
      <view class="send-input">
        <input v-model="code" :placeholder="$t('login.vcode_pla')" type="number" placeholder-class="pla" />
      </view>
      <view class="wrap">
        <u-verification-code
          ref="uCode"
          :seconds="seconds"
          :start-text="$t('login.get')"
          :end-text="$t('login.get')"
          change-text="xs"
          @end="end"
          @start="start"
          @change="codeChange"
        ></u-verification-code>
        <u-button @click="getCode">{{ tips }}</u-button>
      </view>
    </view>
    <view class="invitation">
      <view class="code_people">{{ $t('login.icode') }}</view>
      <view class="code_ipu">
        <image src="/static/image/login/icon_invitation.png" />
        <input v-model="invitation" placeholder-class="inv" />
      </view>
    </view>
    <view class="nextbtn">
      <overbtn
        :canSubmit="!canNext"
        :loading="loading"
        :btnText="$t('login.rbtn')"
        :fontSize="32"
        btnType="submit"
        @btnAction="submit"
      ></overbtn>
    </view>
    <template v-if="popup_suc">
      <view class="popup"></view>
      <view class="pop_suc">
        <view class="content_suc">{{ $t('login.red') }}</view>
      </view>
      <view class="round_suc">
        <image :src="'/static/image/invite/Group251.png'" mode="widthFix" />
      </view>
    </template>
  </view>
</template>

<script>
import { Index, Login, SendVerify } from '@/api/orich';

export default {
  computed: {},
  data: function () {
    return {
      webname: '',
      seconds: 60,
      tips: '',
      mobile: '',
      code: '',
      canNext: false,
      loading: false,
      invitation: '',
      popup_suc: false
    };
  },
  watch: {
    code: function () {
      this.code.length > 5 ? this.canNext = true : this.canNext = false;
    }
  },
  onLoad: function (t) {
    var e = this;
    t.icode && uni.setStorageSync('icode', t.icode);
    this.invitation = uni.getStorageSync('icode');
    Index().then(function (t) {
      e.webname = t.title;
    });
  },
  methods: {
    back: function () {
      var e = getCurrentPages();
      console.log(e, e.length);
      var s = e[e.length - 2];
      if ((console.log(s), 1 == e.length || 2 == e.length)) uni.navigateTo({
        url: '/pages/home/home'
      }); else {
        var i = s.route;
        console.log(i);
        var a = ['pages/account/account', 'pages/goods/comfirm', 'pages/payment/recharge', 'pages/payment/cashOut', 'pages/account/setting', 'pages/order/record', 'pages/order/detail', 'pages/order/record', 'pages/bask/index', 'pages/account/funding'];
        -1 == a.indexOf(i) ? uni.navigateBack({}) : uni.navigateBack({
          delta: 2
        });
      }
    },
    next: function () {},
    codeChange: function (t) {
      this.tips = t;
    },
    getCode: function () {
      var t = this;
      this.$refs.uCode.canGetCode ? (uni.showLoading(), SendVerify({
        mobile: this.mobile
      }).then(function () {
        uni.hideLoading();
        uni.showToast({
          icon: 'none',
          title: t.$t('login.send_success'),
          mask: true
        });
        t.$refs.uCode.start();
      }).catch(function () {}), setTimeout(function () {}, 2e3)) : uni.showToast({
        icon: 'none',
        title: this.$t('login.send_error'),
        mask: true
      });
    },
    end: function () {},
    start: function () {},
    inputCode: function (t) {
      this.code = t;
      this.submit();
    },
    submit: function () {
      var t = this;
      uni.showLoading();
      Login({
        mobile: this.mobile,
        code: this.code,
        invitecode: this.invitation,
        channel: uni.getStorageSync('channel') || ''
      }).then(function (e) {
        uni.hideLoading();
        t.popup_suc = true;
        setTimeout(function () {
          uni.navigateTo({
            url: '../home/home'
          });
        }, 2e3);
      }).catch(function () {
        uni.hideLoading();
        t.code = '';
        t.$forceUpdate();
      });
    },
    download: function () {
      uni.reLaunch({
        url: '../dl/dl'
      });
    }
  }
};
</script>

<style scoped>
.login { width:100%;min-height:100vh;padding:0 30rpx;background:url('/static/image/login/bg.png');background-size:100% auto }
.login .backicon { display:flex;align-items:center;width:100%;height:98rpx;margin:0 -14rpx }
.login .title { margin-top:160rpx;padding:0 20rpx;font-size:48rpx;font-family:Roboto,Roboto-Medium;font-weight:700;text-align:LEFT;color:#17273a }
.login .title uni-text { font-weight:700 }
.login .tips { font-size:36rpx;font-family:Roboto,Roboto-Regular;font-weight:400;text-align:LEFT;color:#b9b9b9 }
.login .input-title { padding:0 20rpx;margin-top:94rpx;margin-bottom:16rpx;font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;text-align:LEFT;color:#17273a }
.login .inputview { display:flex;flex-direction:row;align-items:center;justify-content:center;padding:20rpx 0;margin:0 20rpx;border-bottom:2rpx solid #ececec }
.login .inputview uni-image { width:40rpx;margin-right:10rpx;margin-left:-4rpx }
.login .inputview .inputview-num { font-size:32rpx;font-family:PingFang SC,PingFang SC-Medium;text-align:LEFT;color:silver }
.login .inputview .inputview-op { width:2rpx;height:26rpx;margin:0 16rpx;background-color:#b9b9b9 }
.login .inputview .inputview-input { flex:1;padding-left:4rpx;font-size:32rpx;font-family:PingFang SC,PingFang SC-Regular;font-weight:400;text-align:LEFT;color:#17273a }
.login .pla { color:silver }
.login .nextbtn { width:100%;height:92rpx;margin-top:134rpx }
.login .send { display:flex;flex-direction:row;align-items:flex-start;justify-content:center;width:100%;padding:0 20rpx }
.login .send .send-input { flex:1;padding:10rpx 0 18rpx 0;margin-right:0rpx;border-bottom:2rpx solid #ececec }
.login .send .send-input uni-input { font-size:32rpx;font-family:PingFang SC,PingFang SC-Regular;font-weight:400 }
.login .send .wrap { min-width:140rpx;padding:8rpx 0 20rpx 0;color:#ff5c5c;font-size:36rpx;font-weight:700;font-family:PingFang SC,PingFang SC-Bold!important }
.login .code { width:100%;margin-top:150rpx }
.invitation { margin-top:46rpx;padding:0 20rpx }
.invitation .code_people { font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#17273a }
.invitation .inv { font-size:32rpx;font-family:PingFang SC,PingFang SC-Medium;font-weight:500;color:#17273a }
.ipu { color:#17273a!important;font-weight:500!important }
.code_ipu { display:flex;align-items:center;margin-top:40rpx;padding-bottom:22rpx;border-bottom:2rpx solid #ececec }
.code_ipu uni-image { margin-right:32rpx;width:40rpx;height:40rpx }
.popup { position:absolute;top:0;left:0;z-index:1;width:100%;height:100%;opacity:.6;background:#000 }
.pop_suc { position:absolute;top:444rpx;left:104rpx;padding:124rpx 48rpx 70rpx 48rpx;width:552rpx;height:326rpx;z-index:2;background:#fff;border-radius:32rpx }
.content_suc { width:456rpx;font-size:32rpx;font-family:PingFang SC,PingFang SC-Medium;font-weight:500;text-align:CENTER;color:#17273a }
.round_suc { position:absolute;top:320rpx;left:250rpx;display:flex;justify-content:center;align-items:center;width:270rpx;height:220rpx;z-index:3;border-radius:50%;box-shadow:0rpx 8rpx 8rpx 0rpx rgba(238,80,22,.16) }
.round_suc uni-image { width:100% }
</style>
