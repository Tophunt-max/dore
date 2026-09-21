<script setup lang="ts">
import { ref } from 'vue';
import { onShow } from '@dcloudio/uni-app';
import { api } from '@/api/request';
const shares = ref<any[]>([]);
onShow(async () => {
  const res = await api.get('/api/my-shares');
  if (res.ok) shares.value = res.shares;
});
function share() {
  uni.showToast({ title: 'Share sheet', icon: 'none' });
}
</script>
<template>
  <view class="page">
    <view class="hero"><text class="h">Show off your wins 🎉</text></view>
    <view v-for="s in shares" :key="s.id" class="card sc">
      <image class="si" :src="s.image" mode="aspectFill" />
      <view class="sd">
        <text class="st">{{ s.title }}</text>
        <text class="muted">Issue {{ s.issue }} · No. {{ s.winning_no }}</text>
        <view class="sb primary-btn" @click="share">Share</view>
      </view>
    </view>
    <view v-if="!shares.length" class="nodata">No wins to show yet</view>
  </view>
</template>
<style scoped>
.page { min-height: 100vh; padding: 20rpx; }
.hero { padding: 20rpx 10rpx; }
.h { font-size: 36rpx; font-weight: 700; }
.sc { display: flex; padding: 20rpx; margin-bottom: 16rpx; }
.si { width: 160rpx; height: 160rpx; border-radius: 8rpx; margin-right: 20rpx; }
.sd { flex: 1; display: flex; flex-direction: column; justify-content: space-between; }
.st { font-size: 30rpx; font-weight: 700; }
.muted { color: #b9b9b9; font-size: 24rpx; }
.sb { width: 160rpx; height: 60rpx; line-height: 60rpx; font-size: 26rpx; align-self: flex-end; }
</style>
