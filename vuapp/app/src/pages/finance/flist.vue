<script setup lang="ts">
import { ref } from 'vue';
import { onShow } from '@dcloudio/uni-app';
import { api } from '@/api/request';
import { formatMinor } from '@/utils/money';
const products = ref<any[]>([]);
onShow(async () => {
  const res = await api.get('/api/finance');
  if (res.ok) products.value = res.products;
});
function open(id: number) {
  uni.navigateTo({ url: `/pages/finance/fdetail?id=${id}` });
}
function rate(bps: number) {
  return (bps / 100).toFixed(1) + '%';
}
</script>
<template>
  <view class="page">
    <view class="hero"><text class="h">Finance Plans</text><text class="hd">Grow your balance with fixed-term plans</text></view>
    <view v-for="p in products" :key="p.id" class="card fc" @click="open(p.id)">
      <view class="ft">
        <text class="fn">{{ p.title }}</text>
        <text class="rate">{{ rate(p.rate_bps) }} <text class="rl">APR</text></text>
      </view>
      <view class="frow">
        <text class="muted">Term {{ p.term_days }} days</text>
        <text class="muted">Min {{ formatMinor(p.min_minor) }}</text>
      </view>
    </view>
    <view v-if="!products.length" class="nodata">No plans available</view>
  </view>
</template>
<style scoped>
.page { min-height: 100vh; padding: 20rpx; }
.hero { padding: 20rpx 10rpx; }
.h { font-size: 40rpx; font-weight: 700; }
.hd { display: block; margin-top: 8rpx; color: #b9b9b9; font-size: 26rpx; }
.fc { padding: 30rpx; margin-bottom: 16rpx; }
.ft { display: flex; align-items: center; justify-content: space-between; }
.fn { font-size: 32rpx; font-weight: 700; }
.rate { font-size: 40rpx; font-weight: 900; color: #ee5016; }
.rl { font-size: 22rpx; color: #b9b9b9; font-weight: 400; }
.frow { display: flex; justify-content: space-between; margin-top: 20rpx; }
.muted { color: #b9b9b9; font-size: 26rpx; }
</style>
