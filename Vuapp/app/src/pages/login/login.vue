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
        :maxlength="10"
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
    <view class="nextbtn">
      <overbtn
        :canSubmit="!canNext"
        :loading="loading"
        :btnText="$t('login.submit')"
        :fontSize="32"
        :btnType="canNext ? 'submit' : 'disabled'"
        @btnAction="submit"
      ></overbtn>
    </view>
    <view class="user-rule">
      <view class="user-rule-item">
        {{ $t('login.rule_l') }}
        <text @click="toRule">{{ $t('login.rule_r') }}</text>
      </view>
    </view>
  </view>
</template>

<script>
import { Index, Login, SendVerify } from '@/api/orich';
import { analytics } from '@/utils/native';

// Helpers the reference bundle hoisted out of the component.
var n = analytics;

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
      loading: false
    };
  },
  watch: {
    code: function () {
      this.code.length > 5 ? this.canNext = true : this.canNext = false;
    }
  },
  onLoad: function (t) {
    var e = this;
    Index().then(function (t) {
      e.webname = t.title;
    });
  },
  methods: {
    toRule: function () {
      uni.navigateTo({
        url: '../richtext/rule?type=1'
      });
    },
    back: function () {
      var t = getCurrentPages();
      t[t.length - 2];
      uni.navigateTo({
        url: '/pages/home/home'
      });
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
        invitecode: uni.getStorageSync('icode') || '',
        channel: uni.getStorageSync('channel') || '',
        cid: this.$store.state.clientid
      }).then(function (e) {
        uni.setStorageSync('icode', '');
        uni.hideLoading();
        uni.showToast({
          title: t.$t('login.success'),
          icon: 'none'
        });
        t.$store.dispatch('setToken', e.token);
        uni.navigateTo({
          url: '../home/home'
        });
        1 == e.isreg && n.logEvent({
          eventName: 'af_login',
          eventValues: {}
        }, function (t) {});
      }).catch(function () {
        t.code = '';
        t.$forceUpdate();
      });
    }
  }
};
</script>

<style scoped>
.login { width:100%;min-height:100vh;padding:0 30rpx;background:url('/static/image/login/bg.png');background-size:100% auto }
.login .backicon { display:flex;align-items:center;width:100%;height:98rpx;margin:0 -14rpx }
.login .title { margin-top:120rpx;padding:0 20rpx;font-size:48rpx;font-family:Roboto,Roboto-Medium;font-weight:700;text-align:LEFT;color:#17273a }
.login .title uni-text { font-weight:700 }
.login .tips { font-size:36rpx;font-family:Roboto,Roboto-Regular;font-weight:400;text-align:LEFT;color:#b9b9b9 }
.login .input-title { padding:0 20rpx;margin-top:104rpx;margin-bottom:16rpx;font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;text-align:LEFT;color:#17273a }
.login .inputview { display:flex;flex-direction:row;align-items:center;justify-content:center;padding:20rpx 0;margin:0 20rpx;border-bottom:2rpx solid #ececec }
.login .inputview uni-image { width:40rpx;margin-right:10rpx;margin-left:-4rpx }
.login .inputview .inputview-num { font-size:32rpx;font-family:PingFang SC,PingFang SC-Medium;text-align:LEFT;color:silver }
.login .inputview .inputview-op { width:2rpx;height:26rpx;margin:0 16rpx;background-color:#b9b9b9 }
.login .inputview .inputview-input { flex:1;padding-left:4rpx;font-size:32rpx;font-family:PingFang SC,PingFang SC-Regular;font-weight:400;text-align:LEFT;color:#17273a }
.login .pla { color:silver }
.login .nextbtn { width:100%;height:92rpx;margin-top:134rpx }
.login .send { display:flex;flex-direction:row;align-items:flex-start;justify-content:center;width:100%;padding:0 20rpx }
.login .send .send-input { flex:1;padding:10rpx 0 18rpx 0;margin-right:0rpx;font-size:32rpx;border-bottom:2rpx solid #ececec;font-size:32rpx;font-family:PingFang SC,PingFang SC-Regular;font-weight:400;text-align:LEFT;color:#17273a }
.login .send .send-input uni-input { font-size:32rpx;font-family:PingFang SC,PingFang SC-Regular;font-weight:400 }
.login .send .wrap { min-width:140rpx;padding:8rpx 0 20rpx 0;color:#ee5016;font-size:36rpx;font-family:PingFang SC,PingFang SC-Bold!important }
.login .code { width:100%;margin-top:150rpx }
.user-rule { font-size:26rpx;margin-top:260rpx }
.user-rule .user-rule-item { font-family:Roboto,Roboto-Regular;font-weight:400;letter-spacing:0rpx;color:#b9b9b9 }
.user-rule .user-rule-item uni-text { color:#ee5016 }
</style>
