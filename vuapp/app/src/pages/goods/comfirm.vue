<script setup lang="ts">
import { ref, computed } from 'vue';
import { onLoad, onShow } from '@dcloudio/uni-app';
import { api } from '@/api/request';
import { formatMinor } from '@/utils/money';
import { useUserStore } from '@/store/user';

const store = useUserStore();
const goods = ref<any>(null);
const slots = ref(1);
const address = ref<any>(null);

onLoad(async (q) => {
  const res = await api.get(`/api/goods/${q?.id}`);
  if (res.ok) goods.value = res.goods;
});
onShow(async () => {
  const res = await api.get('/api/addresses');
  if (res.ok && res.addresses.length) address.value = res.addresses.find((a: any) => a.is_default) || res.addresses[0];
  store.refreshBalance();
});

const total = computed(() => (goods.value ? goods.value.price_minor * slots.value : 0));

async function pay() {
  if (!goods.value) return;
  if (total.value > store.balanceMinor) {
    uni.showModal({
      title: 'Insufficient balance',
      content: 'Please recharge your wallet to continue.',
      confirmText: 'Recharge',
      success: (r) => r.confirm && uni.navigateTo({ url: '/pages/payment/recharge' }),
    });
    return;
  }
  uni.showLoading({ title: '...' });
  const res = await api.post('/api/orders', {
    goods_id: goods.value.id,
    slots: slots.value,
    address_id: address.value?.id,
  });
  uni.hideLoading();
  if (res.ok) {
    store.refreshBalance();
    uni.redirectTo({ url: `/pages/success/index?order=${res.order_id}` });
  } else {
    uni.showToast({ title: res.error || 'Failed', icon: 'none' });
  }
}
</script>

<template>
  <view v-if="goods" class="page">
    <view class="addr card" @click="() => uni.navigateTo({ url: '/pages/address/address' })">
      <block v-if="address">
        <text class="an">{{ address.name }} · {{ address.phone }}</text>
        <text class="al">{{ address.line }}, {{ address.city }} {{ address.pincode }}</text>
      </block>
      <text v-else class="al">+ Add delivery address</text>
    </view>

    <view class="g card">
      <image class="gimg" :src="goods.image" mode="aspectFill" />
      <view class="gi">
        <text class="gt">{{ goods.title }}</text>
        <text class="price">{{ formatMinor(goods.price_minor) }}/slot</text>
      </view>
    </view>

    <view class="qty card">
      <text>Slots</text>
      <view class="stepper">
        <text class="sbtn" @click="slots > 1 ? slots-- : null">−</text>
        <text class="sval">{{ slots }}</text>
        <text class="sbtn" @click="slots++">+</text>
      </view>
    </view>

    <view class="sum card">
      <view class="srow"><text>Total</text><text class="price">{{ formatMinor(total) }}</text></view>
      <view class="srow"><text class="muted">Wallet</text><text class="muted">{{ formatMinor(store.balanceMinor) }}</text></view>
    </view>

    <view class="footer">
      <text class="ftotal">{{ formatMinor(total) }}</text>
      <view class="pay brand-btn" @click="pay">Pay Now</view>
    </view>
  </view>
</template>

<style scoped>
.page { min-height: 100vh; padding-bottom: 140rpx; background: #f6f6f6; }
.card { margin: 20rpx; padding: 30rpx; }
.addr { display: flex; flex-direction: column; }
.an { font-size: 30rpx; font-weight: 700; }
.al { margin-top: 10rpx; font-size: 26rpx; color: #666; }
.g { display: flex; align-items: center; }
.gimg { width: 140rpx; height: 140rpx; border-radius: 8rpx; margin-right: 20rpx; }
.gt { font-size: 30rpx; font-weight: 700; }
.price { color: #ee5016; font-weight: 700; display: block; margin-top: 10rpx; }
.qty { display: flex; align-items: center; justify-content: space-between; }
.stepper { display: flex; align-items: center; }
.sbtn { width: 60rpx; height: 60rpx; line-height: 56rpx; text-align: center; border: 2rpx solid #eee; border-radius: 8rpx; font-size: 40rpx; }
.sval { width: 100rpx; text-align: center; font-size: 32rpx; }
.srow { display: flex; justify-content: space-between; padding: 12rpx 0; font-size: 30rpx; }
.footer { position: fixed; bottom: 0; left: 0; right: 0; display: flex; align-items: center; padding: 20rpx 30rpx; background: #fff; }
.ftotal { flex: 1; font-size: 40rpx; font-weight: 900; color: #ee5016; }
.pay { width: 260rpx; height: 88rpx; line-height: 88rpx; font-size: 32rpx; font-weight: 700; }
</style>
