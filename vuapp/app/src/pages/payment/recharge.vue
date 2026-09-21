<script setup lang="ts">
import { ref } from 'vue';
import { api } from '@/api/request';
import { toMinor, formatMinor } from '@/utils/money';
const presets = [100, 500, 1000, 2000, 5000, 10000];
const amount = ref<number | ''>('');
const method = ref<'upi' | 'bank'>('upi');
const utr = ref('');
const proofKey = ref('');

function pick(v: number) {
  amount.value = v;
}
function uploadProof() {
  uni.chooseImage({
    count: 1,
    success: (r) => {
      const path = r.tempFilePaths[0];
      uni.uploadFile({
        url: `${api.base}/api/upload`,
        filePath: path,
        name: 'file',
        header: { Authorization: `Bearer ${uni.getStorageSync('access_token')}`, 'Content-Type': 'image/jpeg' },
        success: (up) => {
          try {
            const d = JSON.parse(up.data);
            if (d.ok) {
              proofKey.value = d.key;
              uni.showToast({ title: 'Uploaded', icon: 'success' });
            }
          } catch { /* ignore */ }
        },
      });
    },
  });
}
async function submit() {
  if (!amount.value || Number(amount.value) < 1) return uni.showToast({ title: 'Enter amount', icon: 'none' });
  const res = await api.post('/api/recharge', {
    amount_minor: toMinor(Number(amount.value)),
    method: method.value,
    utr: utr.value,
    proof_key: proofKey.value,
  });
  if (res.ok) {
    uni.showModal({
      title: 'Submitted',
      content: 'Your recharge is pending admin verification. Balance will update once approved.',
      showCancel: false,
      success: () => uni.navigateBack(),
    });
  } else uni.showToast({ title: res.error || 'Failed', icon: 'none' });
}
</script>
<template>
  <view class="page">
    <view class="card">
      <text class="h">Select Amount</text>
      <view class="presets">
        <view v-for="p in presets" :key="p" class="preset" :class="{ on: amount === p }" @click="pick(p)">₹{{ p }}</view>
      </view>
      <input v-model="amount" class="amt" type="number" placeholder="Custom amount" />
    </view>

    <view class="card">
      <text class="h">Payment Method</text>
      <view class="seg">
        <text class="s" :class="{ on: method === 'upi' }" @click="method = 'upi'">UPI</text>
        <text class="s" :class="{ on: method === 'bank' }" @click="method = 'bank'">Bank Transfer</text>
      </view>
      <view class="paybox">
        <text class="pb-t">Pay to: <text class="strong">vuapp@upi</text></text>
        <text class="pb-d">After paying, enter the reference/UTR number and upload the screenshot for verification.</text>
      </view>
      <view class="f"><text class="l">Reference / UTR</text><input v-model="utr" class="i" /></view>
      <view class="proof" @click="uploadProof">{{ proofKey ? '✓ Proof uploaded' : '+ Upload payment proof' }}</view>
    </view>

    <view class="primary-btn submit" @click="submit">Submit for Verification</view>
    <text class="note">Manual verification keeps payments secure — no card data is stored.</text>
  </view>
</template>
<style scoped>
.page { min-height: 100vh; padding: 20rpx; }
.card { background: #fff; border-radius: 16rpx; padding: 30rpx; margin-bottom: 20rpx; }
.h { font-size: 30rpx; font-weight: 700; }
.presets { display: flex; flex-wrap: wrap; margin-top: 20rpx; }
.preset { width: 30%; margin: 1.5%; text-align: center; padding: 24rpx 0; border: 2rpx solid #eee; border-radius: 12rpx; font-size: 30rpx; }
.preset.on { border-color: #ee5016; color: #ee5016; background: #fff5f2; }
.amt { margin-top: 20rpx; height: 90rpx; border: 2rpx solid #eee; border-radius: 12rpx; padding: 0 24rpx; font-size: 32rpx; }
.seg { display: flex; margin: 20rpx 0; }
.s { flex: 1; text-align: center; padding: 20rpx 0; border: 2rpx solid #eee; font-size: 28rpx; }
.s:first-child { border-radius: 10rpx 0 0 10rpx; }
.s:last-child { border-radius: 0 10rpx 10rpx 0; }
.s.on { background: #ee5016; color: #fff; border-color: #ee5016; }
.paybox { background: #fff5f2; border-radius: 12rpx; padding: 24rpx; }
.pb-t { font-size: 28rpx; }
.strong { color: #ee5016; font-weight: 700; }
.pb-d { display: block; margin-top: 10rpx; font-size: 24rpx; color: #999; }
.f { display: flex; align-items: center; height: 100rpx; border-bottom: 2rpx solid #f5f5f5; }
.l { width: 220rpx; color: #666; font-size: 28rpx; }
.i { flex: 1; font-size: 30rpx; }
.proof { margin-top: 20rpx; text-align: center; padding: 30rpx; border: 2rpx dashed #ee5016; border-radius: 12rpx; color: #ee5016; font-size: 28rpx; }
.submit { height: 92rpx; line-height: 92rpx; font-size: 32rpx; }
.note { display: block; margin-top: 20rpx; text-align: center; font-size: 24rpx; color: #b9b9b9; }
</style>
