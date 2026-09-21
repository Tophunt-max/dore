<script setup lang="ts">
import { ref } from 'vue';
import { onLoad } from '@dcloudio/uni-app';
import { api } from '@/api/request';
const page = ref<any>({ title: 'About vuapp', body: '' });
onLoad(async () => {
  const res = await api.get('/api/pages/about');
  if (res.ok) page.value = res.page;
});
</script>
<template>
  <view class="page">
    <view class="head">
      <image class="logo" src="/static/logo.png" mode="heightFix" />
      <text class="ver">Version 1.0.0</text>
    </view>
    <view class="card">
      <text class="h">{{ page.title }}</text>
      <text class="body">{{ page.body }}</text>
    </view>
  </view>
</template>
<style scoped>
.page { min-height: 100vh; padding: 20rpx; }
.head { display: flex; flex-direction: column; align-items: center; padding: 60rpx 0; }
.logo { height: 90rpx; }
.ver { margin-top: 20rpx; color: #b9b9b9; font-size: 26rpx; }
.card { background: #fff; border-radius: 16rpx; padding: 40rpx; }
.h { font-size: 32rpx; font-weight: 700; }
.body { display: block; margin-top: 20rpx; font-size: 28rpx; color: #666; line-height: 46rpx; }
</style>
