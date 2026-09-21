<script setup lang="ts">
import { ref } from 'vue';
import { onLoad } from '@dcloudio/uni-app';
import { api } from '@/api/request';
import { formatMinor } from '@/utils/money';
const order = ref<any>(null);
onLoad(async (q) => {
  const res = await api.get(`/api/orders/${q?.id}`);
  if (res.ok) order.value = res.order;
});
function ranking() {
  uni.navigateTo({ url: `/pages/order/discount?id=${order.value.id}` });
}
</script>
<template>
  <view v-if="order" class="page">
    <view class="card top">
      <image class="img" :src="order.image" mode="aspectFill" />
      <view class="i">
        <text class="t">{{ order.title }}</text>
        <text class="muted">Issue {{ order.issue }}</text>
        <text class="st" :class="order.status">{{ order.status }}</text>
      </view>
    </view>
    <view class="card rows">
      <view class="r"><text class="muted">Order ID</text><text>#{{ order.id }}</text></view>
      <view class="r"><text class="muted">Slots</text><text>{{ order.slots }}</text></view>
      <view class="r"><text class="muted">Amount</text><text class="price">{{ formatMinor(order.amount_minor) }}</text></view>
      <view class="r"><text class="muted">Date</text><text>{{ new Date(order.created_at * 1000).toLocaleString() }}</text></view>
    </view>
    <view class="rankbtn card" @click="ranking">View participation ranking ›</view>
  </view>
</template>
<style scoped>
.page { min-height: 100vh; padding: 20rpx; }
.card { background: #fff; border-radius: 16rpx; margin-bottom: 20rpx; padding: 30rpx; }
.top { display: flex; }
.img { width: 160rpx; height: 160rpx; border-radius: 8rpx; margin-right: 24rpx; }
.i { flex: 1; display: flex; flex-direction: column; justify-content: space-between; }
.t { font-size: 32rpx; font-weight: 700; }
.muted { color: #b9b9b9; font-size: 24rpx; }
.st { font-size: 26rpx; color: #fea326; }
.st.won { color: #ee5016; font-weight: 700; }
.r { display: flex; justify-content: space-between; padding: 16rpx 0; font-size: 28rpx; }
.price { color: #ee5016; font-weight: 700; }
.rankbtn { text-align: center; color: #ee5016; font-size: 28rpx; }
</style>
