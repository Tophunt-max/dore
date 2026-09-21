<script setup lang="ts">
import { ref } from 'vue';
import { useUserStore } from '@/store/user';
import { api } from '@/api/request';
const store = useUserStore();
const username = ref(store.user?.username || '');
async function save() {
  const res = await api.put('/api/account/username', { username: username.value });
  if (res.ok) {
    if (store.user) store.user.username = username.value;
    uni.showToast({ title: 'Saved', icon: 'success' });
    setTimeout(() => uni.navigateBack(), 500);
  } else uni.showToast({ title: res.error || 'Failed', icon: 'none' });
}
</script>
<template>
  <view class="page">
    <view class="card"><input v-model="username" class="i" placeholder="Enter username" /></view>
    <view class="primary-btn save" @click="save">Save</view>
  </view>
</template>
<style scoped>
.page { min-height: 100vh; padding: 20rpx; }
.card { background: #fff; border-radius: 16rpx; padding: 10rpx 30rpx; }
.i { height: 100rpx; font-size: 32rpx; }
.save { height: 88rpx; line-height: 88rpx; margin-top: 30rpx; font-size: 30rpx; }
</style>
