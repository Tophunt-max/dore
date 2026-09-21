<script setup lang="ts">
import { ref, computed } from 'vue';
import { onLoad } from '@dcloudio/uni-app';
import { api } from '@/api/request';
import { formatMinor, toMinor } from '@/utils/money';
import { useUserStore } from '@/store/user';
const store = useUserStore();
const product = ref<any>(null);
const amount = ref<number | ''>('');
onLoad(async (q) => {
  const res = await api.get(`/api/finance/${q?.id}`);
  if (res.ok) product.value = res.product;
  store.refreshBalance();
});
const estReturn = computed(() => {
  if (!product.value || !amount.value) return 0;
  const principal = toMinor(Number(amount.value));
  return Math.round((principal * product.value.rate_bps * product.value.term_days) / (10000 * 365));
});
async function invest() {
  if (!amount.value) return uni.showToast({ title: 'Enter amount', icon: 'none' });
  const res = await api.post('/api/finance/order', { product_id: product.value.id, amount_minor: toMinor(Number(amount.value)) });
  if (res.ok) {
    store.refreshBalance();
    uni.showModal({ title: 'Invested', content: 'Your finance plan is now active.', showCancel: false, success: () => uni.navigateBack() });
  } else uni.showToast({ title: res.error || 'Failed', icon: 'none' });
}
</script>
<template>
  <view v-if="product" class="page">
    <view class="hero">
      <text class="rate">{{ (product.rate_bps / 100).toFixed(1) }}%</text>
      <text class="rl">Annualised rate · {{ product.term_days }} days</text>
      <text class="fn">{{ product.title }}</text>
    </view>
    <view class="card">
      <text class="h">Investment Amount</text>
      <input v-model="amount" class="amt" type="number" :placeholder="`Min ${formatMinor(product.min_minor)}`" />
      <view class="est">
        <text class="muted">Estimated return</text>
        <text class="ev">{{ formatMinor(estReturn) }}</text>
      </view>
      <text class="muted">Wallet: {{ formatMinor(store.balanceMinor) }}</text>
    </view>
    <view class="primary-btn btn" @click="invest">Invest Now</view>
  </view>
</template>
<style scoped>
.page { min-height: 100vh; padding: 20rpx; }
.hero { background: linear-gradient(120deg, #ff7d4d, #ee5016); border-radius: 16rpx; padding: 40rpx; color: #fff; }
.rate { font-size: 72rpx; font-weight: 900; }
.rl { display: block; margin-top: 8rpx; opacity: 0.9; font-size: 26rpx; }
.fn { display: block; margin-top: 20rpx; font-size: 32rpx; font-weight: 700; }
.card { background: #fff; border-radius: 16rpx; padding: 30rpx; margin-top: 20rpx; }
.h { font-size: 30rpx; font-weight: 700; }
.amt { margin-top: 20rpx; height: 90rpx; border: 2rpx solid #eee; border-radius: 12rpx; padding: 0 24rpx; font-size: 34rpx; }
.est { display: flex; justify-content: space-between; align-items: center; margin: 24rpx 0; }
.ev { font-size: 36rpx; font-weight: 700; color: #ee5016; }
.muted { color: #b9b9b9; font-size: 26rpx; }
.btn { height: 92rpx; line-height: 92rpx; margin-top: 30rpx; font-size: 32rpx; }
</style>
