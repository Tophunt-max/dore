<script setup lang="ts">
import { ref } from 'vue';
import { api } from '@/api/request';
const form = ref({ name: '', phone: '', pincode: '', line: '', city: '', state: '', is_default: true });
async function save() {
  const f = form.value;
  if (!f.name || !f.phone || !f.pincode || !f.line) return uni.showToast({ title: 'Fill required fields', icon: 'none' });
  const res = await api.post('/api/addresses', f);
  if (res.ok) {
    uni.showToast({ title: 'Saved', icon: 'success' });
    setTimeout(() => uni.navigateBack(), 500);
  } else uni.showToast({ title: res.error || 'Failed', icon: 'none' });
}
</script>
<template>
  <view class="page">
    <view class="card">
      <view class="f"><text class="l">Name</text><input v-model="form.name" class="i" /></view>
      <view class="f"><text class="l">Phone</text><input v-model="form.phone" class="i" type="number" /></view>
      <view class="f"><text class="l">Pincode</text><input v-model="form.pincode" class="i" type="number" /></view>
      <view class="f"><text class="l">Address</text><input v-model="form.line" class="i" /></view>
      <view class="f"><text class="l">City</text><input v-model="form.city" class="i" /></view>
      <view class="f"><text class="l">State</text><input v-model="form.state" class="i" /></view>
    </view>
    <view class="primary-btn save" @click="save">Save Address</view>
  </view>
</template>
<style scoped>
.page { min-height: 100vh; padding: 20rpx; }
.card { background: #fff; border-radius: 16rpx; padding: 10rpx 30rpx; }
.f { display: flex; align-items: center; height: 100rpx; border-bottom: 2rpx solid #f5f5f5; }
.l { width: 180rpx; color: #666; font-size: 28rpx; }
.i { flex: 1; font-size: 30rpx; }
.save { height: 88rpx; line-height: 88rpx; margin-top: 40rpx; font-size: 30rpx; }
</style>
