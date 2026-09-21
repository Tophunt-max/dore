<script setup lang="ts">
// ORich finance-list: cards of finance products. Emits buy(item).
import { formatMinor } from '@/utils/money';
const props = defineProps<{ list?: any[] }>();
const emit = defineEmits<{ (e: 'buy', item: any): void }>();
</script>
<template>
  <view class="finance-list">
    <view v-for="(f, i) in list || []" :key="i" class="fl-card">
      <view class="fl-head">
        <text class="fl-title">{{ f.title }}</text>
        <text class="fl-term">{{ f.term_days }} days</text>
      </view>
      <view class="fl-body">
        <view class="fl-rate">
          <text class="fl-rate-num">{{ (f.rate_bps / 100).toFixed(1) }}</text><text class="fl-rate-unit">% APR</text>
        </view>
        <view class="fl-min">Min {{ formatMinor(f.min_minor) }}</view>
      </view>
      <view class="fl-buy" @click="emit('buy', f)">Invest</view>
    </view>
  </view>
</template>
<style scoped>
.finance-list { padding: 0 28rpx; }
.fl-card { background: #fff; border-radius: 16rpx; padding: 30rpx; margin-bottom: 20rpx; box-shadow: 0 0 22rpx rgba(0, 0, 0, 0.04); position: relative; }
.fl-head { display: flex; justify-content: space-between; align-items: center; }
.fl-title { font-size: 32rpx; font-weight: 700; color: #17273a; }
.fl-term { font-size: 24rpx; color: #b9b9b9; }
.fl-body { display: flex; align-items: baseline; margin-top: 20rpx; }
.fl-rate-num { font-size: 56rpx; font-weight: 900; color: #ee5016; }
.fl-rate-unit { font-size: 24rpx; color: #ee5016; margin-left: 6rpx; }
.fl-min { margin-left: auto; font-size: 26rpx; color: #b9b9b9; }
.fl-buy { position: absolute; right: 30rpx; bottom: 30rpx; width: 150rpx; height: 60rpx; line-height: 60rpx; text-align: center; border-radius: 40rpx; background: linear-gradient(115deg, #ffe44b, #fea326); color: #ad6701; font-size: 26rpx; font-weight: 700; }
</style>
