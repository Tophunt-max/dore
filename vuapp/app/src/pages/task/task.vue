<script setup lang="ts">
import { ref } from 'vue';
import { onShow } from '@dcloudio/uni-app';
import { api } from '@/api/request';
import { formatMinor } from '@/utils/money';
import { useUserStore } from '@/store/user';

const tasks = ref<any[]>([]);
const store = useUserStore();
async function load() {
  const res = await api.get('/api/tasks');
  if (res.ok) tasks.value = res.tasks;
}
onShow(load);

async function claim(t: any) {
  if (t.claimed) return;
  const res = await api.post(`/api/tasks/${t.id}/claim`);
  if (res.ok) {
    uni.showToast({ title: `+${formatMinor(res.reward_minor)}`, icon: 'none' });
    store.refreshBalance();
    load();
  } else {
    uni.showToast({ title: res.error || 'Not ready', icon: 'none' });
  }
}
</script>

<template>
  <view class="page">
    <view class="hero"><text class="hero-t">Daily Tasks</text></view>
    <view v-for="t in tasks" :key="t.id" class="tcard card">
      <view class="tinfo">
        <text class="tt">{{ t.title }}</text>
        <text class="td">{{ t.description }}</text>
        <text class="reward">Reward {{ formatMinor(t.reward_minor) }}</text>
      </view>
      <view class="tbtn" :class="{ done: t.claimed }" @click="claim(t)">
        {{ t.claimed ? 'Claimed' : t.progress >= t.target ? 'Claim' : 'Go' }}
      </view>
    </view>
    <view v-if="!tasks.length" class="nodata">No tasks</view>
  </view>
</template>

<style scoped>
.page {
  min-height: 100vh;
  padding: 20rpx;
}
.hero {
  padding: 30rpx 10rpx;
}
.hero-t {
  font-size: 40rpx;
  font-weight: 700;
}
.tcard {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 30rpx;
  margin-bottom: 16rpx;
}
.tinfo {
  flex: 1;
}
.tt {
  font-size: 30rpx;
  font-weight: 700;
}
.td {
  display: block;
  margin: 8rpx 0;
  font-size: 24rpx;
  color: #b9b9b9;
}
.reward {
  font-size: 26rpx;
  color: #ee5016;
}
.tbtn {
  width: 140rpx;
  height: 64rpx;
  line-height: 64rpx;
  text-align: center;
  border-radius: 40rpx;
  background: #ee5016;
  color: #fff;
  font-size: 28rpx;
}
.tbtn.done {
  background: #e0e0e0;
  color: #959595;
}
</style>
