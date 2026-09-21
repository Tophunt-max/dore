<script setup lang="ts">
import { ref } from 'vue';
import { onShow } from '@dcloudio/uni-app';
import { api } from '@/api/request';
const members = ref<any[]>([]);
onShow(async () => {
  const res = await api.get('/api/team');
  if (res.ok) members.value = res.members;
});
function open(id: number) {
  uni.navigateTo({ url: `/pages/account/teamDetail?id=${id}` });
}
</script>
<template>
  <view class="page">
    <view class="banner">
      <text class="bt">My Team</text>
      <text class="bn">{{ members.length }} members</text>
    </view>
    <view v-for="m in members" :key="m.id" class="row card" @click="open(m.id)">
      <image class="av" :src="m.avatar || '/static/image/other.png'" mode="aspectFill" />
      <view class="i">
        <text class="n">{{ m.username }}</text>
        <text class="muted">Joined {{ new Date(m.created_at * 1000).toLocaleDateString() }}</text>
      </view>
      <text class="arrow">›</text>
    </view>
    <view v-if="!members.length" class="nodata">Invite friends to build your team</view>
  </view>
</template>
<style scoped>
.page { min-height: 100vh; padding: 20rpx; }
.banner { background: linear-gradient(120deg, #ff7d4d, #ee5016); border-radius: 16rpx; padding: 40rpx; color: #fff; margin-bottom: 20rpx; }
.bt { font-size: 36rpx; font-weight: 700; }
.bn { display: block; margin-top: 10rpx; opacity: 0.9; }
.row { display: flex; align-items: center; padding: 24rpx; margin-bottom: 12rpx; }
.av { width: 76rpx; height: 76rpx; border-radius: 50%; margin-right: 20rpx; }
.i { flex: 1; }
.n { font-size: 30rpx; font-weight: 700; }
.muted { display: block; margin-top: 6rpx; color: #b9b9b9; font-size: 24rpx; }
.arrow { color: #ccc; font-size: 40rpx; }
</style>
