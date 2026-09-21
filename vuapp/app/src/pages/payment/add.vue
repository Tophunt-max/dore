<script setup lang="ts">
import { ref } from 'vue';
import { api } from '@/api/request';
const type = ref<'bank' | 'upi'>('upi');
const form = ref({ holder_name: '', account_no: '', ifsc: '', upi_id: '', is_default: true });
async function save() {
  const payload: any = { type: type.value, ...form.value };
  const res = await api.post('/api/beneficiaries', payload);
  if (res.ok) {
    uni.showToast({ title: 'Saved', icon: 'success' });
    setTimeout(() => uni.navigateBack(), 600);
  } else uni.showToast({ title: res.error || 'Failed', icon: 'none' });
}
</script>
<template>
  <view class="page">
    <view class="seg">
      <text class="s" :class="{ on: type === 'upi' }" @click="type = 'upi'">UPI</text>
      <text class="s" :class="{ on: type === 'bank' }" @click="type = 'bank'">Bank</text>
    </view>
    <view class="card form">
      <view class="f"><text class="l">Holder Name</text><input v-model="form.holder_name" class="i" /></view>
      <template v-if="type === 'upi'">
        <view class="f"><text class="l">UPI ID</text><input v-model="form.upi_id" class="i" placeholder="name@bank" /></view>
      </template>
      <template v-else>
        <view class="f"><text class="l">Account No.</text><input v-model="form.account_no" class="i" type="number" /></view>
        <view class="f"><text class="l">IFSC</text><input v-model="form.ifsc" class="i" /></view>
      </template>
    </view>
    <view class="primary-btn save" @click="save">Save Beneficiary</view>
  </view>
</template>
<style scoped>
.page { min-height: 100vh; padding: 20rpx; }
.seg { display: flex; background: #fff; border-radius: 12rpx; padding: 8rpx; margin-bottom: 20rpx; }
.s { flex: 1; text-align: center; padding: 20rpx 0; border-radius: 10rpx; font-size: 28rpx; }
.s.on { background: #ee5016; color: #fff; }
.form { padding: 10rpx 30rpx; }
.f { display: flex; align-items: center; height: 100rpx; border-bottom: 2rpx solid #f5f5f5; }
.l { width: 200rpx; color: #666; font-size: 28rpx; }
.i { flex: 1; font-size: 30rpx; }
.save { height: 88rpx; line-height: 88rpx; margin-top: 40rpx; font-size: 30rpx; }
</style>
