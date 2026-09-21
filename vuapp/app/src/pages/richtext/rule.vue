<script setup lang="ts">
import { ref } from 'vue';
import { onLoad } from '@dcloudio/uni-app';
import { api } from '@/api/request';
const page = ref<any>({ title: 'Rules', body: '' });
onLoad(async () => {
  const res = await api.get('/api/pages/rule');
  if (res.ok) page.value = res.page;
});
</script>
<template>
  <view class="page">
    <view class="card">
      <text class="h">{{ page.title }}</text>
      <text class="body">{{ page.body }}</text>
    </view>
  </view>
</template>
<style scoped>
.page { min-height: 100vh; padding: 20rpx; }
.card { background: #fff; border-radius: 16rpx; padding: 40rpx; }
.h { font-size: 34rpx; font-weight: 700; }
.body { display: block; margin-top: 20rpx; font-size: 28rpx; color: #666; line-height: 48rpx; }
</style>
