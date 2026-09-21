<script setup lang="ts">
import { ref } from 'vue';
import { onLoad } from '@dcloudio/uni-app';
import { api } from '@/api/request';
const ranking = ref<any[]>([]);
onLoad(async (q) => {
  const res = await api.get(`/api/orders/${q?.id}/ranking`);
  if (res.ok) ranking.value = res.ranking;
});
</script>
<template>
  <view class="page">
    <view class="hero"><text class="h">Participation Ranking</text></view>
    <view v-for="(r, i) in ranking" :key="i" class="row card">
      <text class="rank" :class="{ top: i < 3 }">{{ i + 1 }}</text>
      <image class="av" :src="r.avatar || '/static/image/other.png'" mode="aspectFill" />
      <text class="name">{{ r.username }}</text>
      <text class="slots">{{ r.slots }} slots</text>
    </view>
    <view v-if="!ranking.length" class="nodata">No participants</view>
  </view>
</template>
<style scoped>
.page { min-height: 100vh; padding: 20rpx; }
.hero { padding: 20rpx 10rpx; }
.h { font-size: 36rpx; font-weight: 700; }
.row { display: flex; align-items: center; padding: 20rpx; margin-bottom: 12rpx; }
.rank { width: 50rpx; text-align: center; font-weight: 700; color: #b9b9b9; }
.rank.top { color: #ee5016; }
.av { width: 60rpx; height: 60rpx; border-radius: 50%; margin: 0 20rpx; }
.name { flex: 1; font-size: 28rpx; }
.slots { color: #ee5016; font-size: 26rpx; }
</style>
