<script setup lang="ts">
function start() {
  uni.reLaunch({ url: '/pages/home/home' });
}
</script>

<template>
  <view class="intro">
    <image class="hero" src="/static/image/home/banner.png" mode="widthFix" />
    <view class="content">
      <image class="logo" src="/static/logo.png" mode="heightFix" />
      <text class="title">Group buy. Play. Win.</text>
      <text class="desc">Join campaigns for a chance to win, earn from tasks and referrals, and grow with finance plans.</text>
      <view class="primary-btn btn" @click="start">Get Started</view>
    </view>
  </view>
</template>

<style scoped>
.intro {
  min-height: 100vh;
  background: #fff;
}
.hero {
  width: 100%;
}
.content {
  padding: 60rpx 50rpx;
  display: flex;
  flex-direction: column;
  align-items: center;
}
.logo {
  height: 80rpx;
}
.title {
  margin-top: 30rpx;
  font-size: 40rpx;
  font-weight: 700;
}
.desc {
  margin-top: 24rpx;
  font-size: 28rpx;
  color: #b9b9b9;
  text-align: center;
  line-height: 44rpx;
}
.btn {
  margin-top: 60rpx;
  width: 100%;
  height: 92rpx;
  line-height: 92rpx;
}
</style>
