<script setup lang="ts">
import { ref } from 'vue';
import { onShow, onPullDownRefresh } from '@dcloudio/uni-app';
import { api } from '@/api/request';
import { formatMinor } from '@/utils/money';
const prizes = ref<any[]>([]);
async function load() {
  const res = await api.get('/api/prizes');
  if (res.ok) prizes.value = res.prizes;
}
onShow(load);
onPullDownRefresh(async () => {
  await load();
  uni.stopPullDownRefresh();
});
</script>
<template>
  <view class="page">
    <view class="hero"><text class="h">🎁 Prize Pool</text></view>
    <view class="grid">
      <view v-for="p in prizes" :key="p.id" class="pcard card">
        <image class="pi" :src="p.image" mode="aspectFill" />
        <text class="pt">{{ p.title }}</text>
        <text class="pv">{{ formatMinor(p.market_price_minor) }}</text>
        <text class="pw muted">{{ p.username ? 'Won by ' + p.username : 'Open' }}</text>
      </view>
    </view>
    <view v-if="!prizes.length" class="nodata">No prizes yet</view>
  </view>
</template>
<style scoped>
.page { min-height: 100vh; padding: 20rpx; }
.hero { padding: 20rpx 10rpx; }
.h { font-size: 40rpx; font-weight: 700; }
.grid { display: flex; flex-wrap: wrap; justify-content: space-between; }
.pcard { width: 48.5%; margin-bottom: 20rpx; padding: 20rpx; }
.pi { width: 100%; height: 260rpx; border-radius: 10rpx; }
.pt { display: block; margin-top: 14rpx; font-size: 28rpx; font-weight: 700; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; }
.pv { display: block; margin-top: 8rpx; color: #ee5016; font-weight: 700; }
.pw { font-size: 22rpx; }
</style>
