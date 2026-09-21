<script setup lang="ts">
// ORich order card list. Renders order cards from userOrder() results.
import { formatMinor } from '@/utils/money';
const props = defineProps<{ cardList?: any[] }>();
const emit = defineEmits<{
  (e: 'navNext', id: any): void;
  (e: 'navToDetail', id: any): void;
  (e: 'share', item: any): void;
  (e: 'handleSkip', code: number, id: any): void;
  (e: 'navToDiscount', code: number, id: any): void;
}>();

const statusText: Record<string, string> = {
  paid: 'Ongoing',
  won: 'Won',
  lost: 'Not won',
  pending: 'Pending',
  shipped: 'Shipped',
  delivered: 'Delivered',
};
</script>
<template>
  <view class="cardlist">
    <view v-for="(c, i) in cardList || []" :key="i" class="cl-card" @click="emit('navToDetail', c.id || c.dumid)">
      <view class="cl-top">
        <text class="cl-issue">{{ c.issue ? 'Issue ' + c.issue : '' }}</text>
        <text class="cl-status" :class="c.status">{{ statusText[c.status] || c.status }}</text>
      </view>
      <view class="cl-main">
        <image class="cl-img" :src="c.image || c.iconurl" mode="aspectFill" />
        <view class="cl-info">
          <text class="cl-title otw">{{ c.title || c.delname }}</text>
          <text class="cl-sub">{{ (c.slots || 1) + ' slots' }}</text>
          <text class="cl-price">{{ formatMinor(c.amount_minor) }}</text>
        </view>
      </view>
      <view class="cl-actions">
        <view class="cl-btn ghost" @click.stop="emit('navToDetail', c.id || c.dumid)">Detail</view>
        <view v-if="c.status === 'won'" class="cl-btn" @click.stop="emit('share', c)">Share</view>
      </view>
    </view>
  </view>
</template>
<style scoped>
.cardlist { width: 100%; }
.cl-card { background: #fff; border-radius: 16rpx; padding: 24rpx; margin-bottom: 16rpx; }
.cl-top { display: flex; justify-content: space-between; align-items: center; margin-bottom: 16rpx; }
.cl-issue { font-size: 24rpx; color: #b9b9b9; }
.cl-status { font-size: 26rpx; color: #fea326; }
.cl-status.won { color: #ee5016; font-weight: 700; }
.cl-status.lost { color: #b9b9b9; }
.cl-main { display: flex; }
.cl-img { width: 150rpx; height: 150rpx; border-radius: 10rpx; margin-right: 20rpx; }
.cl-info { flex: 1; display: flex; flex-direction: column; justify-content: space-between; }
.cl-title { font-size: 30rpx; font-weight: 700; color: #17273a; }
.cl-sub { font-size: 24rpx; color: #b9b9b9; }
.cl-price { font-size: 30rpx; font-weight: 700; color: #ee5016; }
.cl-actions { display: flex; justify-content: flex-end; margin-top: 16rpx; }
.cl-btn { min-width: 140rpx; height: 60rpx; line-height: 60rpx; text-align: center; border-radius: 40rpx; font-size: 26rpx; margin-left: 16rpx; background: #ee5016; color: #fff; padding: 0 20rpx; }
.cl-btn.ghost { background: #fff; color: #ee5016; border: 2rpx solid #ee5016; }
</style>
