<script setup lang="ts">
import { ref } from 'vue';
import { onShow } from '@dcloudio/uni-app';
import { api } from '@/api/request';
import { formatMinor } from '@/utils/money';

const tabs = [
  { k: '', t: 'All' },
  { k: 'paid', t: 'Ongoing' },
  { k: 'won', t: 'Won' },
  { k: 'lost', t: 'Ended' },
];
const active = ref('');
const orders = ref<any[]>([]);

async function load() {
  const res = await api.get(`/api/orders${active.value ? '?status=' + active.value : ''}`);
  if (res.ok) orders.value = res.orders;
}
onShow(load);
function switchTab(k: string) {
  active.value = k;
  load();
}
function open(o: any) {
  uni.navigateTo({ url: `/pages/order/detail?id=${o.id}` });
}
const statusText: Record<string, string> = { paid: 'Ongoing', won: 'Won 🎉', lost: 'Not won', pending: 'Pending', shipped: 'Shipped', delivered: 'Delivered' };
</script>
<template>
  <view class="page">
    <view class="tabs">
      <view v-for="t in tabs" :key="t.k" class="tab" :class="{ on: active === t.k }" @click="switchTab(t.k)">{{ t.t }}</view>
    </view>
    <view v-for="o in orders" :key="o.id" class="ocard card" @click="open(o)">
      <image class="oimg" :src="o.image" mode="aspectFill" />
      <view class="oi">
        <text class="ot">{{ o.title }}</text>
        <text class="muted">{{ o.slots }} slots · {{ formatMinor(o.amount_minor) }}</text>
        <text class="st" :class="o.status">{{ statusText[o.status] || o.status }}</text>
      </view>
    </view>
    <view v-if="!orders.length" class="nodata">No orders</view>
  </view>
</template>
<style scoped>
.page { min-height: 100vh; padding: 20rpx; }
.tabs { display: flex; background: #fff; border-radius: 12rpx; margin-bottom: 20rpx; }
.tab { flex: 1; text-align: center; padding: 24rpx 0; font-size: 28rpx; color: #666; }
.tab.on { color: #ee5016; font-weight: 700; border-bottom: 4rpx solid #ee5016; }
.ocard { display: flex; padding: 20rpx; margin-bottom: 16rpx; }
.oimg { width: 140rpx; height: 140rpx; border-radius: 8rpx; margin-right: 20rpx; }
.oi { flex: 1; display: flex; flex-direction: column; justify-content: space-between; }
.ot { font-size: 30rpx; font-weight: 700; }
.muted { color: #b9b9b9; font-size: 24rpx; }
.st { font-size: 26rpx; color: #999; }
.st.won { color: #ee5016; font-weight: 700; }
.st.paid { color: #fea326; }
</style>
