<script setup lang="ts">
import { ref } from 'vue';
import { onShow } from '@dcloudio/uni-app';
import { api } from '@/api/request';
import { formatMinor } from '@/utils/money';
const orders = ref<any[]>([]);
onShow(async () => {
  const res = await api.get('/api/finance/orders/mine');
  if (res.ok) orders.value = res.orders;
});
</script>
<template>
  <view class="page">
    <view v-for="o in orders" :key="o.id" class="card row">
      <view class="l">
        <text class="t">{{ o.title }}</text>
        <text class="muted">{{ (o.rate_bps / 100).toFixed(1) }}% · {{ o.term_days }}d</text>
        <text class="muted">Matures {{ new Date(o.end_at * 1000).toLocaleDateString() }}</text>
      </view>
      <view class="r">
        <text class="amt">{{ formatMinor(o.amount_minor) }}</text>
        <text class="st" :class="o.status">{{ o.status }}</text>
      </view>
    </view>
    <view v-if="!orders.length" class="nodata">No finance orders</view>
  </view>
</template>
<style scoped>
.page { min-height: 100vh; padding: 20rpx; }
.row { display: flex; justify-content: space-between; padding: 24rpx; margin-bottom: 12rpx; }
.t { font-size: 30rpx; font-weight: 700; }
.muted { display: block; margin-top: 6rpx; color: #b9b9b9; font-size: 22rpx; }
.r { text-align: right; }
.amt { font-size: 30rpx; font-weight: 700; color: #ee5016; }
.st { display: block; margin-top: 6rpx; font-size: 24rpx; color: #2bbf6a; }
</style>
