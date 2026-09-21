<script setup lang="ts">
import { ref } from 'vue';
import { onLoad } from '@dcloudio/uni-app';
import { api } from '@/api/request';
const articles = ref<any[]>([]);
onLoad(async (q) => {
  const res = await api.get(`/api/help/${q?.topic || 'general'}`);
  if (res.ok) articles.value = res.articles;
});
</script>
<template>
  <view class="page">
    <view v-for="a in articles" :key="a.id" class="card">
      <text class="q">{{ a.title }}</text>
      <text class="b">{{ a.body }}</text>
    </view>
    <view v-if="!articles.length" class="nodata">No content</view>
  </view>
</template>
<style scoped>
.page { min-height: 100vh; padding: 20rpx; }
.card { background: #fff; border-radius: 16rpx; padding: 30rpx; margin-bottom: 16rpx; }
.q { font-size: 30rpx; font-weight: 700; }
.b { display: block; margin-top: 14rpx; font-size: 28rpx; color: #666; line-height: 46rpx; }
</style>
