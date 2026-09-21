<script setup lang="ts">
import { ref } from 'vue';
import { onShow } from '@dcloudio/uni-app';
import { api } from '@/api/request';
import { formatMinor } from '@/utils/money';
const txns = ref<any[]>([]);
onShow(async () => {
  const res = await api.get('/api/wallet/transactions');
  if (res.ok) txns.value = res.transactions;
});
const label: Record<string, string> = {
  recharge: 'Recharge', withdraw: 'Withdrawal', order: 'Order', refund: 'Refund', reward: 'Reward', task: 'Task reward', referral: 'Referral', finance: 'Finance', game: 'Game',
};
</script>
<template>
  <view class="page">
    <view v-for="t in txns" :key="t.id" class="row card">
      <view class="l">
        <text class="t">{{ label[t.type] || t.type }}</text>
        <text class="muted">{{ new Date(t.created_at * 1000).toLocaleString() }}</text>
      </view>
      <view class="r">
        <text class="amt" :class="{ neg: t.amount_minor < 0 }">{{ t.amount_minor >= 0 ? '+' : '' }}{{ formatMinor(t.amount_minor) }}</text>
        <text class="muted">Bal {{ formatMinor(t.balance_after) }}</text>
      </view>
    </view>
    <view v-if="!txns.length" class="nodata">No transactions</view>
  </view>
</template>
<style scoped>
.page { min-height: 100vh; padding: 20rpx; }
.row { display: flex; justify-content: space-between; padding: 24rpx; margin-bottom: 12rpx; }
.t { font-size: 28rpx; font-weight: 700; }
.muted { display: block; margin-top: 6rpx; font-size: 22rpx; color: #b9b9b9; }
.r { text-align: right; }
.amt { font-size: 30rpx; font-weight: 700; color: #2bbf6a; }
.amt.neg { color: #ff5c5c; }
</style>
