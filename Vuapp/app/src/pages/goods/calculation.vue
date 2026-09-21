<script setup lang="ts">
// Lottery "calculation" detail page: shows how the winning number is derived (transparency).
import { onLoad } from '@dcloudio/uni-app';
import { ref } from 'vue';
import { api } from '@/api/request';
const goods = ref<any>(null);
onLoad(async (q) => {
  if (q?.id) {
    const res = await api.get(`/api/goods/${q.id}`);
    if (res.ok) goods.value = res.goods;
  }
});
</script>
<template>
  <view class="page">
    <view class="card">
      <text class="h">Winning Number Calculation</text>
      <text class="p">The winning number is computed transparently once all slots are filled, using a verifiable seed based on participation order and a server draw. Every participant can audit the result.</text>
      <view class="steps">
        <view class="step"><text class="sn">1</text><text>Collect all participation records for the issue.</text></view>
        <view class="step"><text class="sn">2</text><text>Combine the seed with total slot count.</text></view>
        <view class="step"><text class="sn">3</text><text>Derive the winning slot; the owner wins the prize.</text></view>
      </view>
      <text v-if="goods" class="muted">Issue {{ goods.issue }} · {{ goods.total_slots }} slots</text>
    </view>
  </view>
</template>
<style scoped>
.page { min-height: 100vh; padding: 20rpx; }
.card { background: #fff; border-radius: 16rpx; padding: 40rpx; }
.h { font-size: 34rpx; font-weight: 700; }
.p { display: block; margin: 20rpx 0; font-size: 28rpx; color: #666; line-height: 44rpx; }
.step { display: flex; align-items: center; padding: 16rpx 0; font-size: 28rpx; }
.sn { width: 44rpx; height: 44rpx; line-height: 44rpx; text-align: center; border-radius: 50%; background: #ee5016; color: #fff; margin-right: 16rpx; }
.muted { color: #b9b9b9; font-size: 24rpx; }
</style>
