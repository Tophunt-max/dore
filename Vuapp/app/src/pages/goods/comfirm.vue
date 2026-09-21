<script setup lang="ts">
// Faithful port of ORich pages/goods/comfirm (confirm order).
import { ref, computed } from 'vue';
import { onLoad, onShow } from '@dcloudio/uni-app';
import { GoodsDetail, AddressList, AddOrder, Wallet } from '@/api/orich';
import { formatMinor } from '@/utils/money';

const goods = ref<any>(null);
const slots = ref(1);
const address = ref<any>(null);
const balanceMinor = ref(0);
const loading = ref(false);

const total = computed(() => (goods.value ? goods.value.price_minor * slots.value : 0));

onLoad((q: any) => {
  GoodsDetail({ id: q?.id }).then((r: any) => {
    if (r.ok) goods.value = r.goods;
  });
});
onShow(async () => {
  const a: any = await AddressList();
  if (a.ok && (a.addresses || []).length) {
    address.value = a.addresses.find((x: any) => x.is_default) || a.addresses[0];
  }
  const w: any = await Wallet();
  if (w.ok) balanceMinor.value = w.balance_minor;
});

function toAddress() {
  uni.navigateTo({ url: '../address/address?pick=1' });
}
function dec() {
  if (slots.value > 1) slots.value--;
}
function inc() {
  slots.value++;
}
async function paynow() {
  if (!goods.value) return;
  if (total.value > balanceMinor.value) {
    uni.showModal({
      title: '',
      content: 'Insufficient balance, please recharge',
      confirmText: 'Recharge',
      success: (r) => r.confirm && uni.navigateTo({ url: '../payment/recharge' }),
    });
    return;
  }
  loading.value = true;
  const r: any = await AddOrder({ goods_id: goods.value.id, slots: slots.value, address_id: address.value?.id });
  loading.value = false;
  if (r.ok) uni.redirectTo({ url: `../success/index?type=1&id=${goods.value.id}` });
  else uni.showToast({ title: r.error || 'Failed', icon: 'none' });
}
</script>

<template>
  <view v-if="goods" class="comfirm">
    <navbar :title="$t('goods.otitle')" background="#ffffff" />

    <view class="addr" @click="toAddress">
      <template v-if="address">
        <view class="addr-name">{{ address.name }} · {{ address.phone }}</view>
        <view class="addr-line">{{ address.line }}, {{ address.city }} - {{ address.pincode }}</view>
      </template>
      <view v-else class="addr-line">+ {{ $t('order.addrTip') }}</view>
    </view>

    <view class="comfirm-title"><view class="comfirm-op" />{{ $t('goods.det') }}</view>
    <view class="detail">
      <view class="goods">
        <image :src="goods.image" mode="aspectFill" />
        <view class="goods-desc">
          <view class="goods-title">
            <view class="goods-title-text otw">{{ goods.title }}</view>
            <view class="goods-num">x{{ slots }}</view>
          </view>
          <view class="goods-price">
            <view class="goods-price-old">{{ formatMinor(goods.market_price_minor) }}</view>
            <view class="goods-price-new">{{ formatMinor(goods.price_minor) }}</view>
          </view>
        </view>
      </view>
    </view>

    <image class="c-divider" src="/static/image/goods/img_Dividingline.png" mode="widthFix" />

    <view class="qty">
      <view class="qty-label">Quantity</view>
      <view class="qty-box">
        <view class="qty-btn" @click="dec">−</view>
        <view class="qty-val">{{ slots }}</view>
        <view class="qty-btn" @click="inc">+</view>
      </view>
    </view>

    <view class="pay">
      <view class="comfirm-title"><view class="comfirm-op" />{{ $t('goods.paym') }}</view>
      <view class="pay-wallet">
        <view class="pay-wallet-name">Wallet</view>
        <view class="pay-wallet-bal">{{ formatMinor(balanceMinor) }}</view>
      </view>
    </view>

    <view class="btn">
      <view class="btn-buy">
        <view class="btn-price">
          <view class="btn-price-new">{{ formatMinor(total) }}</view>
        </view>
        <view class="btn-btn">
          <overbtn :loading="loading" :btnText="$t('goods.payn')" :fontSize="28" btnType="submit" @btnAction="paynow" />
        </view>
      </view>
    </view>
  </view>
</template>

<style>
@import './comfirm.css';
</style>

<style scoped>
.comfirm { min-height: 100vh; background: #fff; padding-bottom: 140rpx; }
.addr { padding: 30rpx; border-bottom: 2rpx solid #f5f5f5; }
.addr-name { font-size: 30rpx; font-weight: 700; color: #17273a; }
.addr-line { margin-top: 10rpx; font-size: 26rpx; color: #666; }
.qty { display: flex; align-items: center; justify-content: space-between; padding: 24rpx 30rpx; }
.qty-label { font-size: 30rpx; color: #17273a; }
.qty-box { display: flex; align-items: center; }
.qty-btn { width: 62rpx; height: 62rpx; line-height: 58rpx; text-align: center; border: 2rpx solid #eee; border-radius: 8rpx; font-size: 36rpx; }
.qty-val { width: 90rpx; text-align: center; font-size: 32rpx; }
.pay-wallet { display: flex; align-items: center; justify-content: space-between; padding: 20rpx 0; }
.pay-wallet-name { font-size: 28rpx; color: #17273a; }
.pay-wallet-bal { font-size: 28rpx; color: #ee5016; font-weight: 700; }
.btn { position: fixed; left: 0; right: 0; bottom: 0; height: 98rpx; background: #fff; box-shadow: 0 -4rpx 20rpx rgba(0, 0, 0, 0.06); }
</style>
