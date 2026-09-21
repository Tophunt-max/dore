<script setup lang="ts">
import { ref, computed } from 'vue';
import { onLoad } from '@dcloudio/uni-app';
import { api } from '@/api/request';
import { formatMinor } from '@/utils/money';

const goods = ref<any>(null);
const participants = ref<any[]>([]);
const id = ref('');

onLoad(async (q) => {
  id.value = q?.id;
  const res = await api.get(`/api/goods/${q?.id}`);
  if (res.ok) {
    goods.value = res.goods;
    participants.value = res.participants || [];
  }
});

const progress = computed(() =>
  goods.value ? Math.min(100, Math.round((goods.value.filled_slots / goods.value.total_slots) * 100)) : 0,
);

function join() {
  uni.navigateTo({ url: `/pages/goods/comfirm?id=${id.value}` });
}
</script>

<template>
  <view v-if="goods" class="page">
    <nav-bar :title="goods.title" bg="#fff" back />
    <image class="cover" :src="goods.image" mode="aspectFill" />
    <view class="info card">
      <view class="prow">
        <text class="price">{{ formatMinor(goods.price_minor) }}</text>
        <text class="market">{{ formatMinor(goods.market_price_minor) }}</text>
        <text class="issue">Issue {{ goods.issue }}</text>
      </view>
      <text class="title">{{ goods.title }}</text>
      <view class="prog">
        <view class="prog-bar"><view class="prog-fill" :style="{ width: progress + '%' }" /></view>
        <text class="prog-text">{{ goods.filled_slots }}/{{ goods.total_slots }} ({{ progress }}%)</text>
      </view>
    </view>

    <view class="desc card">
      <text class="dh">Description</text>
      <text class="dt">{{ goods.description }}</text>
    </view>

    <view class="parts card">
      <text class="dh">Recent Participants</text>
      <view v-for="(p, i) in participants" :key="i" class="part">
        <image class="pav" :src="p.avatar || '/static/image/other.png'" mode="aspectFill" />
        <text class="pn">{{ p.username }}</text>
        <text class="ps muted">{{ p.slots }} slots</text>
      </view>
      <view v-if="!participants.length" class="nodata">Be the first to join!</view>
    </view>

    <view class="footer">
      <view class="join-btn brand-btn" @click="join">Join Now · {{ formatMinor(goods.price_minor) }}</view>
    </view>
  </view>
</template>

<style scoped>
.page {
  min-height: 100vh;
  padding-bottom: 140rpx;
  background: #f6f6f6;
}
.cover {
  width: 100%;
  height: 600rpx;
}
.info {
  margin: 20rpx;
  padding: 30rpx;
}
.prow {
  display: flex;
  align-items: baseline;
}
.price {
  font-size: 48rpx;
}
.market {
  margin-left: 20rpx;
  color: #b9b9b9;
  text-decoration: line-through;
}
.issue {
  margin-left: auto;
  font-size: 24rpx;
  color: #b9b9b9;
}
.title {
  display: block;
  margin: 20rpx 0;
  font-size: 34rpx;
  font-weight: 700;
}
.prog {
  display: flex;
  align-items: center;
}
.prog-bar {
  flex: 1;
  height: 16rpx;
  background: #f0f0f0;
  border-radius: 16rpx;
  overflow: hidden;
}
.prog-fill {
  height: 100%;
  background: linear-gradient(90deg, #ffe44b, #fea326);
}
.prog-text {
  margin-left: 16rpx;
  font-size: 24rpx;
  color: #b9b9b9;
}
.desc,
.parts {
  margin: 20rpx;
  padding: 30rpx;
}
.dh {
  font-size: 30rpx;
  font-weight: 700;
}
.dt {
  display: block;
  margin-top: 16rpx;
  font-size: 28rpx;
  color: #666;
  line-height: 44rpx;
}
.part {
  display: flex;
  align-items: center;
  padding: 16rpx 0;
}
.pav {
  width: 56rpx;
  height: 56rpx;
  border-radius: 50%;
  margin-right: 16rpx;
}
.pn {
  flex: 1;
  font-size: 28rpx;
}
.footer {
  position: fixed;
  bottom: 0;
  left: 0;
  right: 0;
  padding: 20rpx 30rpx;
  background: #fff;
  box-shadow: 0 -4rpx 20rpx rgba(0, 0, 0, 0.05);
}
.join-btn {
  height: 88rpx;
  line-height: 88rpx;
  font-size: 32rpx;
  font-weight: 700;
}
</style>
