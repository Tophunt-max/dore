<script setup lang="ts">
function whatsapp() {
  uni.setClipboardData({ data: 'support@vuapp.example', success: () => uni.showToast({ title: 'Copied', icon: 'none' }) });
}
</script>
<template>
  <view class="page">
    <view class="card">
      <text class="h">Customer Support</text>
      <text class="p">We're here to help. Reach us through any channel below.</text>
      <view class="ch" @click="whatsapp"><text class="ci">💬</text><text>Live Chat / WhatsApp</text></view>
      <view class="ch" @click="whatsapp"><text class="ci">✉️</text><text>support@vuapp.example</text></view>
      <view class="ch"><text class="ci">🕑</text><text>Mon–Sat, 9:00–18:00</text></view>
    </view>
  </view>
</template>
<style scoped>
.page { min-height: 100vh; padding: 20rpx; }
.card { background: #fff; border-radius: 16rpx; padding: 40rpx; }
.h { font-size: 34rpx; font-weight: 700; }
.p { display: block; margin: 16rpx 0 30rpx; color: #666; font-size: 28rpx; }
.ch { display: flex; align-items: center; padding: 28rpx 0; border-top: 2rpx solid #f5f5f5; font-size: 30rpx; }
.ci { font-size: 40rpx; margin-right: 20rpx; }
</style>
