<script setup lang="ts">
// Faithful port of ORich pages/account/funding (wallet ledger).
import { ref } from 'vue';
import { onShow } from '@dcloudio/uni-app';
import { Funding } from '@/api/orich';
import { formatMinor } from '@/utils/money';

const list = ref<any[]>([]);
const labels: Record<string, string> = {
  recharge: 'Recharge',
  withdraw: 'Withdrawal',
  order: 'Order',
  refund: 'Refund',
  reward: 'Reward',
  task: 'Task reward',
  referral: 'Referral',
  finance: 'Finance',
  game: 'Game',
};

onShow(async () => {
  const r: any = await Funding();
  if (r.ok) list.value = r.transactions || [];
});
</script>

<template>
  <view class="funding">
    <navbar :title="$t('account.fundingrecords')" background="#ffffff" />
    <view class="funding_main">
      <view v-for="t in list" :key="t.id" class="funding_item">
        <view class="funding_item_left">
          <view class="funding_item_title">{{ labels[t.type] || t.type }}</view>
          <view class="funding_item_time">{{ new Date(t.created_at * 1000).toLocaleString() }}</view>
        </view>
        <view class="funding_item_right">
          <view class="funding_item_amount" :class="{ neg: t.amount_minor < 0 }">
            {{ t.amount_minor >= 0 ? '+' : '' }}{{ formatMinor(t.amount_minor) }}
          </view>
          <view class="funding_item_balance">{{ formatMinor(t.balance_after) }}</view>
        </view>
      </view>
      <view v-if="!list.length" class="nodata">{{ $t('common.nodata') }}</view>
    </view>
  </view>
</template>

<style>
@import './funding.css';
</style>

<style scoped>
.funding { min-height: 100vh; background: #f9f9f9; }
.funding_main { background: #fff; margin-top: 16rpx; padding: 0 30rpx; }
.funding_item { display: flex; align-items: center; justify-content: space-between; padding: 26rpx 0; border-bottom: 2rpx solid #f5f5f5; }
.funding_item_title { font-size: 30rpx; color: #17273a; font-weight: 700; }
.funding_item_time { margin-top: 8rpx; font-size: 24rpx; color: #b9b9b9; }
.funding_item_right { text-align: right; }
.funding_item_amount { font-size: 30rpx; font-weight: 700; color: #2bbf6a; }
.funding_item_amount.neg { color: #ff5c5c; }
.funding_item_balance { margin-top: 8rpx; font-size: 24rpx; color: #b9b9b9; }
</style>
