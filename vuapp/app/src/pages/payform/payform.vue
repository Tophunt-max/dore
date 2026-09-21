<script setup lang="ts">
// In-app payment instructions page (replaces ORich's external hosted WebView form).
// No PII is placed in the URL; the recharge flow handles verification securely.
import { onLoad } from '@dcloudio/uni-app';
import { ref } from 'vue';
const amount = ref('');
onLoad((q) => (amount.value = q?.amount || ''));
function toRecharge() {
  uni.redirectTo({ url: '/pages/payment/recharge' });
}
</script>
<template>
  <view class="page">
    <view class="card">
      <text class="h">Secure Payment</text>
      <text class="p">vuapp uses manual verification instead of an external hosted form. This avoids exposing your details in a browser URL.</text>
      <view class="steps">
        <text class="step">1. Pay to <text class="strong">vuapp@upi</text></text>
        <text class="step">2. Copy the UTR/reference number</text>
        <text class="step">3. Submit it for admin verification</text>
      </view>
      <view class="primary-btn btn" @click="toRecharge">Continue to Recharge</view>
    </view>
  </view>
</template>
<style scoped>
.page { min-height: 100vh; padding: 20rpx; }
.card { background: #fff; border-radius: 16rpx; padding: 40rpx; }
.h { font-size: 34rpx; font-weight: 700; }
.p { display: block; margin: 20rpx 0; font-size: 28rpx; color: #666; line-height: 44rpx; }
.step { display: block; padding: 14rpx 0; font-size: 28rpx; }
.strong { color: #ee5016; font-weight: 700; }
.btn { margin-top: 30rpx; height: 88rpx; line-height: 88rpx; font-size: 30rpx; }
</style>
