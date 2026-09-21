<script setup lang="ts">
// Faithful port of ORich pages/finance/order (my finance orders).
import { ref, computed } from 'vue';
import { onShow } from '@dcloudio/uni-app';
import { FinanceOrders } from '@/api/orich';
import { formatMinor } from '@/utils/money';

const orders = ref<any[]>([]);
const totalInvested = computed(() => orders.value.reduce((s, o) => s + (o.amount_minor || 0), 0));
const totalIncome = computed(() =>
  orders.value.reduce((s, o) => s + Math.round((o.amount_minor * o.rate_bps * o.term_days) / (10000 * 365)), 0),
);

onShow(async () => {
  const r: any = await FinanceOrders();
  if (r.ok) orders.value = r.orders || [];
});

function toList() {
  uni.navigateTo({ url: './flist' });
}
</script>

<template>
  <view class="forder">
    <navbar :title="$t('finance.htitle')" background="transparent" titleColor="#ffffff" backColor="#ffffff" />

    <view class="forder_head">
      <view class="forder_head_item">
        <view class="v">{{ formatMinor(totalInvested) }}</view>
        <view class="l">{{ $t('finance.iTitle') }}</view>
      </view>
      <view class="forder_head_item">
        <view class="v">{{ formatMinor(totalIncome) }}</view>
        <view class="l">{{ $t('finance.inincome') }}</view>
      </view>
    </view>

    <view class="forder_list">
      <view v-for="o in orders" :key="o.id" class="forder_card">
        <view class="forder_card_top">
          <view class="forder_card_title">{{ o.title }}</view>
          <view class="forder_card_status" :class="o.status">{{ o.status === 'active' ? $t('finance.progressrate') : $t('finance.completed') }}</view>
        </view>
        <view class="forder_card_rows">
          <view class="forder_card_row">
            <text class="l">{{ $t('finance.amount') }}</text><text class="v">{{ formatMinor(o.amount_minor) }}</text>
          </view>
          <view class="forder_card_row">
            <text class="l">{{ $t('finance.rate') }}</text><text class="v">{{ (o.rate_bps / 100).toFixed(1) }}%</text>
          </view>
          <view class="forder_card_row">
            <text class="l">{{ $t('finance.endtime') }}</text>
            <text class="v">{{ new Date(o.end_at * 1000).toLocaleDateString() }}</text>
          </view>
        </view>
      </view>
      <view v-if="!orders.length" class="forder_empty">
        <view class="nodata">{{ $t('common.nodata') }}</view>
        <view class="forder_empty_btn" @click="toList">{{ $t('finance.buyin') }}</view>
      </view>
    </view>
  </view>
</template>

<style>
@import './order.css';
</style>

<style scoped>
.forder { min-height: 100vh; background: #f9f9f9; background-image: linear-gradient(180deg, #ff7d4d 0, #ee5016 320rpx, #f9f9f9 320rpx); padding-bottom: 60rpx; }
.forder_head { display: flex; margin: 10rpx 24rpx 0; padding: 30rpx; border-radius: 20rpx; background: rgba(255, 255, 255, 0.16); color: #fff; }
.forder_head_item { flex: 1; text-align: center; }
.forder_head_item .v { font-size: 40rpx; font-weight: 900; color: #ffd24d; }
.forder_head_item .l { margin-top: 8rpx; font-size: 24rpx; opacity: 0.9; }
.forder_list { margin: 24rpx; }
.forder_card { background: #fff; border-radius: 16rpx; padding: 26rpx 30rpx; margin-bottom: 16rpx; }
.forder_card_top { display: flex; align-items: center; justify-content: space-between; }
.forder_card_title { font-size: 30rpx; font-weight: 700; color: #17273a; }
.forder_card_status { font-size: 24rpx; color: #2bbf6a; }
.forder_card_rows { margin-top: 16rpx; }
.forder_card_row { display: flex; justify-content: space-between; padding: 8rpx 0; }
.forder_card_row .l { font-size: 26rpx; color: #b9b9b9; }
.forder_card_row .v { font-size: 26rpx; color: #17273a; }
.forder_empty { background: #fff; border-radius: 16rpx; padding: 40rpx; text-align: center; }
.forder_empty_btn { margin: 20rpx auto 0; width: 260rpx; height: 76rpx; line-height: 76rpx; border-radius: 40rpx; background: #ee5016; color: #fff; font-size: 28rpx; }
</style>
