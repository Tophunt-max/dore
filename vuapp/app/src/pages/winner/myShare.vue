<script setup lang="ts">
import { ref } from 'vue';
import { onShow } from '@dcloudio/uni-app';
import { api } from '@/api/request';
const shares = ref<any[]>([]);
onShow(async () => {
  const res = await api.get('/api/my-shares');
  if (res.ok) shares.value = res.shares;
});
</script>
<template>
  <view class="page">
    <view v-for="s in shares" :key="s.id" class="card row">
      <image class="img" :src="s.image" mode="aspectFill" />
      <view class="i">
        <text class="t">{{ s.title }}</text>
        <text class="muted">Won · Issue {{ s.issue }}</text>
        <text class="muted">{{ new Date(s.drawn_at * 1000).toLocaleDateString() }}</text>
      </view>
      <text class="badge">🏆</text>
    </view>
    <view v-if="!shares.length" class="nodata">No wins yet</view>
  </view>
</template>
<style scoped>
.page { min-height: 100vh; padding: 20rpx; }
.row { display: flex; align-items: center; padding: 20rpx; margin-bottom: 12rpx; }
.img { width: 130rpx; height: 130rpx; border-radius: 8rpx; margin-right: 20rpx; }
.i { flex: 1; }
.t { font-size: 30rpx; font-weight: 700; }
.muted { display: block; margin-top: 6rpx; color: #b9b9b9; font-size: 24rpx; }
.badge { font-size: 48rpx; }
</style>
