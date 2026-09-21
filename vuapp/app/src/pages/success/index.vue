<script setup lang="ts">
import { onLoad } from '@dcloudio/uni-app';
import { ref } from 'vue';
const orderId = ref('');
onLoad((q) => (orderId.value = q?.order || ''));
function viewOrder() {
  uni.redirectTo({ url: `/pages/order/detail?id=${orderId.value}` });
}
function home() {
  uni.reLaunch({ url: '/pages/home/home' });
}
</script>
<template>
  <view class="page">
    <image class="ok" src="/static/image/icon_Select.png" mode="aspectFit" />
    <text class="t">Order Successful!</text>
    <text class="d">You have joined the campaign. Good luck! 🍀</text>
    <view class="btns">
      <view class="b out" @click="viewOrder">View Order</view>
      <view class="b primary-btn" @click="home">Back Home</view>
    </view>
  </view>
</template>
<style scoped>
.page { min-height: 100vh; display: flex; flex-direction: column; align-items: center; padding-top: 160rpx; background: #fff; }
.ok { width: 140rpx; height: 140rpx; }
.t { margin-top: 30rpx; font-size: 40rpx; font-weight: 700; }
.d { margin-top: 16rpx; font-size: 28rpx; color: #b9b9b9; }
.btns { display: flex; margin-top: 80rpx; }
.b { width: 260rpx; height: 84rpx; line-height: 84rpx; text-align: center; border-radius: 44rpx; margin: 0 16rpx; font-size: 30rpx; }
.b.out { border: 2rpx solid #ee5016; color: #ee5016; }
</style>
