<script setup lang="ts">
// Faithful port of ORich pages/login/login (template + scoped CSS + logic).
import { ref, watch } from 'vue';
import { onLoad } from '@dcloudio/uni-app';
import { Index, SendVerify, Login } from '@/api/orich';
import { setTokens } from '@/api/request';
import { useUserStore } from '@/store/user';

const store = useUserStore();
const uCode = ref<any>(null);
const webname = ref('');
const seconds = ref(60);
const tips = ref('');
const mobile = ref('');
const code = ref('');
const canNext = ref(false);
const loading = ref(false);

watch(code, () => {
  canNext.value = code.value.length > 5;
});

onLoad(() => {
  Index().then((t: any) => {
    webname.value = t.title;
  });
});

function toRule() {
  uni.navigateTo({ url: '../richtext/rule?type=1' });
}
function back() {
  uni.navigateTo({ url: '/pages/home/home' });
}
function codeChange(t: string) {
  tips.value = t;
}
function getCode() {
  if (uCode.value && uCode.value.canGetCode) {
    uni.showLoading({});
    SendVerify({ mobile: mobile.value })
      .then((r: any) => {
        uni.hideLoading();
        if (r.devCode) tips.value = `OTP ${r.devCode}`;
        uni.showToast({ icon: 'none', title: r.devCode ? `OTP: ${r.devCode}` : '发送成功', mask: true });
        uCode.value.start();
      })
      .catch(() => uni.hideLoading());
  } else {
    uni.showToast({ icon: 'none', title: 'Send it after the countdown is over!', mask: true });
  }
}
function end() {}
function start() {}
function submit() {
  uni.showLoading({});
  loading.value = true;
  Login({
    mobile: mobile.value,
    code: code.value,
    invitecode: uni.getStorageSync('icode') || '',
    channel: uni.getStorageSync('channel') || '',
    cid: '',
  })
    .then((e: any) => {
      loading.value = false;
      uni.hideLoading();
      if (!e.ok) {
        uni.showToast({ title: e.error || 'Login failed', icon: 'none' });
        code.value = '';
        return;
      }
      uni.setStorageSync('icode', '');
      setTokens(e.access, e.refresh);
      store.user = e.user;
      uni.showToast({ title: 'Login success!', icon: 'none' });
      uni.reLaunch({ url: '../home/home' });
    })
    .catch(() => {
      loading.value = false;
      code.value = '';
    });
}
</script>

<template>
  <view class="login">
    <u-icon class="backicon" name="arrow-left" color="#919191" size="32" @click="back" />
    <view class="title">
      {{ $t('login.titlefront') }}<text>{{ webname }}</text>
    </view>
    <view class="input-title">{{ $t('login.mphone') }}</view>
    <view class="inputview">
      <image src="/static/image/login/icon_iphone.png" mode="widthFix" />
      <view class="inputview-num">+91</view>
      <view class="inputview-op" />
      <input class="inputview-input" v-model="mobile" type="number" :placeholder="$t('login.mphone_pla')" placeholder-class="pla" />
    </view>
    <view class="input-title">{{ $t('login.vcode') }}</view>
    <view class="send">
      <view class="send-input">
        <input v-model="code" type="number" :placeholder="$t('login.vcode_pla')" placeholder-class="pla" />
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
        />
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
      />
    </view>
    <view class="user-rule">
      <view class="user-rule-item">
        {{ $t('login.rule_l') }}<text @click="toRule">{{ $t('login.rule_r') }}</text>
      </view>
    </view>
  </view>
</template>

<style scoped>
/* Verbatim scoped CSS recovered from ORich pages/login/login (scope stripped) */
.login {
  width: 100%;
  min-height: 100vh;
  padding: 0 30rpx;
  background: url('/static/image/login/bg.png');
  background-size: 100% auto;
}
.login .backicon {
  display: flex;
  align-items: center;
  width: 100%;
  height: 98rpx;
  margin: 0 -14rpx;
}
.login .title {
  margin-top: 120rpx;
  padding: 0 20rpx;
  font-size: 48rpx;
  font-family: Roboto, Roboto-Medium;
  font-weight: 700;
  text-align: left;
  color: #17273a;
}
.login .title uni-text {
  font-weight: 700;
}
.login .tips {
  font-size: 36rpx;
  font-family: Roboto, Roboto-Regular;
  font-weight: 400;
  text-align: left;
  color: #b9b9b9;
}
.login .input-title {
  padding: 0 20rpx;
  margin-top: 104rpx;
  margin-bottom: 16rpx;
  font-size: 32rpx;
  font-family: Roboto, Roboto-Regular;
  font-weight: 400;
  text-align: left;
  color: #17273a;
}
.login .inputview {
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: center;
  padding: 20rpx 0;
  margin: 0 20rpx;
  border-bottom: 2rpx solid #ececec;
}
.login .inputview uni-image {
  width: 40rpx;
  margin-right: 10rpx;
  margin-left: -4rpx;
}
.login .inputview .inputview-num {
  font-size: 32rpx;
  font-family: PingFang SC, PingFang SC-Medium;
  text-align: left;
  color: silver;
}
.login .inputview .inputview-op {
  width: 2rpx;
  height: 26rpx;
  margin: 0 16rpx;
  background-color: #b9b9b9;
}
.login .inputview .inputview-input {
  flex: 1;
  padding-left: 4rpx;
  font-size: 32rpx;
  font-family: PingFang SC, PingFang SC-Regular;
  font-weight: 400;
  text-align: left;
  color: #17273a;
}
.login .pla {
  color: silver;
}
.login .nextbtn {
  width: 100%;
  height: 92rpx;
  margin-top: 134rpx;
}
.login .send {
  display: flex;
  flex-direction: row;
  align-items: flex-start;
  justify-content: center;
  width: 100%;
  padding: 0 20rpx;
}
.login .send .send-input {
  flex: 1;
  padding: 10rpx 0 18rpx 0;
  margin-right: 0rpx;
  border-bottom: 2rpx solid #ececec;
  font-size: 32rpx;
  font-family: PingFang SC, PingFang SC-Regular;
  font-weight: 400;
  text-align: left;
  color: #17273a;
}
.login .send .send-input uni-input {
  font-size: 32rpx;
  font-family: PingFang SC, PingFang SC-Regular;
  font-weight: 400;
}
.login .send .wrap {
  min-width: 140rpx;
  padding: 8rpx 0 20rpx 0;
  color: #ee5016;
  font-size: 36rpx;
  font-family: PingFang SC, PingFang SC-Bold !important;
}
.login .code {
  width: 100%;
  margin-top: 150rpx;
}
.user-rule {
  font-size: 26rpx;
  margin-top: 260rpx;
}
.user-rule .user-rule-item {
  font-family: Roboto, Roboto-Regular;
  font-weight: 400;
  letter-spacing: 0rpx;
  color: #b9b9b9;
}
.user-rule .user-rule-item uni-text {
  color: #ee5016;
}
</style>
