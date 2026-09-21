<script setup lang="ts">
// Registration in ORich shares the OTP flow; here it forwards to login with invite prefilled.
import { ref } from 'vue';
import { onLoad } from '@dcloudio/uni-app';

const invite = ref('');
onLoad((q) => {
  if (q?.invite) invite.value = q.invite;
});
function go() {
  uni.redirectTo({ url: `/pages/login/login${invite.value ? '?invite=' + invite.value : ''}` });
}
</script>

<template>
  <view class="reg">
    <nav-bar :back="true" bg="transparent" />
    <view class="box">
      <image class="logo" src="/static/logo.png" mode="heightFix" />
      <text class="t">Create your vuapp account</text>
      <text class="d">Registration uses OTP verification. Continue to get started.</text>
      <view class="primary-btn btn" @click="go">Continue</view>
    </view>
  </view>
</template>

<style scoped>
.reg {
  min-height: 100vh;
  background: linear-gradient(180deg, #ff7d4d, #f6f6f6 40%);
}
.box {
  margin: 80rpx 40rpx;
  background: #fff;
  border-radius: 24rpx;
  padding: 60rpx 40rpx;
  display: flex;
  flex-direction: column;
  align-items: center;
}
.logo {
  height: 88rpx;
}
.t {
  margin-top: 30rpx;
  font-size: 34rpx;
  font-weight: 700;
}
.d {
  margin-top: 20rpx;
  font-size: 26rpx;
  color: #b9b9b9;
  text-align: center;
}
.btn {
  margin-top: 50rpx;
  width: 100%;
  height: 88rpx;
  line-height: 88rpx;
}
</style>
