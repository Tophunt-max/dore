<script setup lang="ts">
import { ref } from 'vue';
import { onShow } from '@dcloudio/uni-app';
import { api } from '@/api/request';

const winners = ref<any[]>([]);
const loading = ref(true);
async function load() {
  const res = await api.get('/api/winners');
  if (res.ok) winners.value = res.winners;
  loading.value = false;
}
onShow(load);
</script>

<template>
  <view class="page">
    <view class="hero">
      <text class="hero-t">🏆 Recent Winners</text>
    </view>
    <view v-for="w in winners" :key="w.id" class="wcard card">
      <image class="wimg" :src="w.image" mode="aspectFill" />
      <view class="winfo">
        <text class="wtitle">{{ w.title }}</text>
        <text class="muted">Issue {{ w.issue }} · No. {{ w.winning_no }}</text>
        <view class="wuser">
          <image class="wav" :src="w.avatar || '/static/image/other.png'" mode="aspectFill" />
          <text class="wname">{{ w.username || 'Lucky user' }}</text>
        </view>
      </view>
    </view>
    <view v-if="!loading && !winners.length" class="nodata">No winners yet</view>
  </view>
</template>

<style scoped>
.page {
  min-height: 100vh;
  padding: 20rpx;
  background: #f6f6f6;
}
.hero {
  padding: 30rpx 10rpx;
}
.hero-t {
  font-size: 40rpx;
  font-weight: 700;
  color: #17273a;
}
.wcard {
  display: flex;
  padding: 20rpx;
  margin-bottom: 16rpx;
}
.wimg {
  width: 140rpx;
  height: 140rpx;
  border-radius: 8rpx;
  margin-right: 20rpx;
}
.winfo {
  flex: 1;
}
.wtitle {
  font-size: 30rpx;
  font-weight: 700;
}
.muted {
  display: block;
  margin: 10rpx 0;
  font-size: 24rpx;
  color: #b9b9b9;
}
.wuser {
  display: flex;
  align-items: center;
}
.wav {
  width: 44rpx;
  height: 44rpx;
  border-radius: 50%;
  margin-right: 12rpx;
}
.wname {
  font-size: 26rpx;
  color: #ee5016;
}
</style>
