<script setup lang="ts">
import { ref } from 'vue';
import { onShow } from '@dcloudio/uni-app';
import { api } from '@/api/request';
import { toMinor, formatMinor } from '@/utils/money';
import { useUserStore } from '@/store/user';

const store = useUserStore();
const amount = ref<number | ''>('');
const beneficiaries = ref<any[]>([]);
const selected = ref<number | null>(null);

async function load() {
  store.refreshBalance();
  const res = await api.get('/api/beneficiaries');
  if (res.ok) {
    beneficiaries.value = res.beneficiaries;
    if (res.beneficiaries.length) selected.value = res.beneficiaries[0].id;
  }
}
onShow(load);

function addBenef() {
  uni.navigateTo({ url: '/pages/payment/add' });
}
async function submit() {
  if (!selected.value) return uni.showToast({ title: 'Add a beneficiary', icon: 'none' });
  if (!amount.value || Number(amount.value) < 1) return uni.showToast({ title: 'Enter amount', icon: 'none' });
  const res = await api.post('/api/withdraw', { amount_minor: toMinor(Number(amount.value)), beneficiary_id: selected.value });
  if (res.ok) {
    store.refreshBalance();
    uni.showModal({ title: 'Requested', content: 'Withdrawal is pending approval.', showCancel: false, success: () => uni.navigateBack() });
  } else uni.showToast({ title: res.error || 'Failed', icon: 'none' });
}
</script>
<template>
  <view class="page">
    <view class="balcard">
      <text class="bl">Available Balance</text>
      <text class="bv">{{ formatMinor(store.balanceMinor) }}</text>
    </view>
    <view class="card">
      <text class="h">Withdraw To</text>
      <view v-for="b in beneficiaries" :key="b.id" class="ben" :class="{ on: selected === b.id }" @click="selected = b.id">
        <view class="dot" :class="{ on: selected === b.id }" />
        <text>{{ b.holder_name }} · {{ b.type === 'upi' ? b.upi_id : b.account_no }}</text>
      </view>
      <view class="addben" @click="addBenef">+ Add beneficiary</view>
    </view>
    <view class="card">
      <text class="h">Amount</text>
      <input v-model="amount" class="amt" type="number" placeholder="Enter amount" />
    </view>
    <view class="primary-btn submit" @click="submit">Request Withdrawal</view>
  </view>
</template>
<style scoped>
.page { min-height: 100vh; padding: 20rpx; }
.balcard { background: linear-gradient(120deg, #ff7d4d, #ee5016); border-radius: 16rpx; padding: 40rpx; color: #fff; }
.bl { font-size: 26rpx; opacity: 0.9; }
.bv { display: block; margin-top: 10rpx; font-size: 52rpx; font-weight: 900; }
.card { background: #fff; border-radius: 16rpx; padding: 30rpx; margin-top: 20rpx; }
.h { font-size: 30rpx; font-weight: 700; }
.ben { display: flex; align-items: center; padding: 24rpx 0; font-size: 28rpx; border-bottom: 2rpx solid #f5f5f5; }
.dot { width: 32rpx; height: 32rpx; border-radius: 50%; border: 2rpx solid #ccc; margin-right: 16rpx; }
.dot.on { background: #ee5016; border-color: #ee5016; }
.addben { padding-top: 24rpx; color: #ee5016; font-size: 28rpx; }
.amt { margin-top: 20rpx; height: 90rpx; border: 2rpx solid #eee; border-radius: 12rpx; padding: 0 24rpx; font-size: 34rpx; }
.submit { height: 92rpx; line-height: 92rpx; margin-top: 40rpx; font-size: 32rpx; }
</style>
