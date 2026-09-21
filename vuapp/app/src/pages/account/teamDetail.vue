<script setup lang="ts">
import { ref } from 'vue';
import { onLoad } from '@dcloudio/uni-app';
import { api } from '@/api/request';
const member = ref<any>(null);
const orderCount = ref(0);
onLoad(async (q) => {
  const res = await api.get(`/api/team/${q?.id}`);
  if (res.ok) {
    member.value = res.member;
    orderCount.value = res.order_count;
  }
});
</script>
<template>
  <view v-if="member" class="page">
    <view class="head">
      <image class="av" :src="member.avatar || '/static/image/other.png'" mode="aspectFill" />
      <text class="n">{{ member.username }}</text>
      <text class="muted">Joined {{ new Date(member.created_at * 1000).toLocaleDateString() }}</text>
    </view>
    <view class="card">
      <view class="r"><text class="muted">Member ID</text><text>#{{ member.id }}</text></view>
      <view class="r"><text class="muted">Total Orders</text><text>{{ orderCount }}</text></view>
    </view>
  </view>
</template>
<style scoped>
.page { min-height: 100vh; padding: 20rpx; }
.head { display: flex; flex-direction: column; align-items: center; padding: 50rpx 0; }
.av { width: 130rpx; height: 130rpx; border-radius: 50%; }
.n { margin-top: 20rpx; font-size: 34rpx; font-weight: 700; }
.muted { color: #b9b9b9; font-size: 24rpx; margin-top: 8rpx; }
.card { background: #fff; border-radius: 16rpx; padding: 10rpx 30rpx; }
.r { display: flex; justify-content: space-between; padding: 24rpx 0; font-size: 28rpx; border-bottom: 2rpx solid #f5f5f5; }
</style>
