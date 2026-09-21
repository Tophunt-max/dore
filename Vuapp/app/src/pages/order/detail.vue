<script setup lang="ts">
// Faithful port of ORich pages/order/detail.
import { ref, computed } from 'vue';
import { onLoad } from '@dcloudio/uni-app';
import { OrderDetail } from '@/api/orich';
import { formatMinor } from '@/utils/money';

const order = ref<any>(null);
const statusText = computed(() => {
  const s = order.value?.status;
  if (s === 'won') return 'You won';
  if (s === 'lost') return 'Not winning';
  return 'Waiting for draw';
});

onLoad((q: any) => {
  OrderDetail({ id: q?.id }).then((r: any) => {
    if (r.ok) order.value = r.order;
  });
});

function toGoods() {
  if (order.value) uni.navigateTo({ url: `../goods/goods?id=${order.value.goods_id}` });
}
function toRanking() {
  if (order.value) uni.navigateTo({ url: `../order/discount?id=${order.value.id}` });
}
</script>

<template>
  <view v-if="order" class="detail">
    <navbar :title="$t('order.dtitle')" background="#ffffff" />

    <view class="detail_main">
      <view class="detail_main_item">
        <view class="detail_main_title">
          <view class="detail_main_title_font">{{ $t('order.status') }}</view>
          <view class="detail_main_status">{{ statusText }}</view>
        </view>
      </view>
      <view class="border" />

      <view class="detail_main_item item_list" @click="toGoods">
        <view class="detail_main_info">
          <view class="detail_main_info_icon"><image :src="order.image" mode="aspectFill" /></view>
          <view class="detail_main_info_mation">
            <view class="detail_main_info_mation_name">{{ order.title }}</view>
            <view class="detail_main_info_mation_phone">{{ $t('order.numbers') }} {{ order.slots }}</view>
            <view class="detail_main_info_mation_address">{{ $t('goods.issue') }}{{ order.issue }}</view>
          </view>
        </view>
      </view>
      <view class="border" />

      <view class="detail_main_order">
        <view class="detail_main_title">
          <view class="detail_main_title_font">{{ $t('order.order') }}</view>
        </view>
        <view class="detail_main_info_mation_line">
          <view class="line">{{ $t('common.price') }}: {{ formatMinor(order.amount_minor) }}</view>
          <view class="line">{{ $t('order.numbers') }} {{ order.slots }}</view>
          <view class="line">{{ $t('order.time') }} {{ new Date(order.created_at * 1000).toLocaleString() }}</view>
          <view class="line">#{{ order.id }}</view>
        </view>
      </view>
    </view>

    <view class="detail_share" @click="toRanking">
      <view class="detail_share_left">
        <view class="detail_share_left_title">{{ $t('order.productDetail') }}</view>
      </view>
      <u-icon name="arrow-right" color="#b9b9b9" size="14" />
    </view>
  </view>
</template>

<style>
@import './detail.css';
</style>

<style scoped>
.detail { min-height: 100vh; background: #f9f9f9; }
.detail_main { background: #fff; margin-bottom: 16rpx; }
.detail_main_item,
.detail_main_order { padding: 26rpx 30rpx; }
.detail_main_title { display: flex; align-items: center; justify-content: space-between; }
.detail_main_title_font { font-size: 30rpx; font-weight: 700; color: #17273a; }
.detail_main_status { font-size: 28rpx; color: #ee5016; }
.border { height: 2rpx; background: #f5f5f5; }
.detail_main_info { display: flex; }
.detail_main_info_icon { width: 150rpx; height: 150rpx; margin-right: 22rpx; }
.detail_main_info_icon uni-image { width: 100%; height: 100%; border-radius: 10rpx; }
.detail_main_info_mation_name { font-size: 30rpx; font-weight: 700; color: #17273a; }
.detail_main_info_mation_phone,
.detail_main_info_mation_address { margin-top: 10rpx; font-size: 26rpx; color: #b9b9b9; }
.detail_main_info_mation_line { margin-top: 16rpx; }
.detail_main_info_mation_line .line { padding: 10rpx 0; font-size: 28rpx; color: #666; }
.detail_share { display: flex; align-items: center; justify-content: space-between; padding: 30rpx; background: #fff; }
.detail_share_left_title { font-size: 30rpx; color: #17273a; }
</style>
