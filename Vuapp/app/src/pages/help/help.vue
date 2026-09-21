<script setup lang="ts">
import { ref } from 'vue';
import { onShow } from '@dcloudio/uni-app';
import { api } from '@/api/request';
const articles = ref<any[]>([]);
onShow(async () => {
  const res = await api.get('/api/help');
  if (res.ok) articles.value = res.articles;
});
function open(topic: string) {
  uni.navigateTo({ url: `/pages/help/help_detail?topic=${topic}` });
}
</script>
<template>
  <view class="page">
    <view class="card">
      <view v-for="a in articles" :key="a.id" class="row" @click="open(a.topic)">
        <image class="qi" src="/static/image/icon_faq.png" mode="aspectFit" />
        <text class="t">{{ a.title }}</text>
        <text class="arrow">›</text>
      </view>
      <view v-if="!articles.length" class="nodata">No help articles</view>
    </view>
  </view>
</template>
<style scoped>
.page { min-height: 100vh; padding: 20rpx; }
.card { background: #fff; border-radius: 16rpx; padding: 0 30rpx; }
.row { display: flex; align-items: center; height: 110rpx; border-bottom: 2rpx solid #f5f5f5; }
.qi { width: 40rpx; height: 40rpx; margin-right: 20rpx; }
.t { flex: 1; font-size: 28rpx; }
.arrow { color: #ccc; font-size: 40rpx; }
</style>
