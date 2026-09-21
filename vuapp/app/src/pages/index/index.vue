<script setup lang="ts">
// Legacy ORich splash/redirect page. Kept for route parity; forwards to home.
import { onLoad } from '@dcloudio/uni-app';
onLoad(() => uni.reLaunch({ url: '/pages/home/home' }));
</script>
<template>
  <view class="splash"><image class="logo" src="/static/logo.png" mode="heightFix" /></view>
</template>
<style scoped>
.splash { min-height: 100vh; display: flex; align-items: center; justify-content: center; background: #fff; }
.logo { height: 90rpx; }
</style>
