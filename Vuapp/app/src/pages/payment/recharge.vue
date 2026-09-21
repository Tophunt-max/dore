<script setup lang="ts">
// Faithful port of ORich pages/payment/recharge (manual-verify recharge instead
// of the original external QArt gateway, for security).
import { ref } from 'vue';
import { onLoad } from '@dcloudio/uni-app';
import { Recharge, systemService } from '@/api/orich';

const payList = [
  { num: 10, gift: 0, type: 6 },
  { num: 100, gift: 2, type: 1 },
  { num: 500, gift: 4, type: 2 },
  { num: 1000, gift: 6, type: 3 },
  { num: 5000, gift: 8, type: 4 },
  { num: 10000, gift: 10, type: 5 },
];
const activeIndex = ref(0);
const value = ref('');
const price = ref(payList[0].num);
const loading = ref(false);
const onepopup = ref<any>(null);
const sendMes = ref<any>({ phone: '', content: '' });

onLoad(() => {
  systemService({ type: 1 }).then((r: any) => (sendMes.value = r));
});

function changePay(i: number, item?: any) {
  activeIndex.value = i;
  price.value = i === 7 ? Number(value.value) : item.num;
}
function toRecord() {
  uni.navigateTo({ url: './payrecord' });
}
function openWhatsapp() {
  uni.showToast({ title: 'WhatsApp support', icon: 'none' });
}
function paynow() {
  const amt = activeIndex.value === 7 ? Number(value.value) : payList[activeIndex.value].num;
  if (!amt || amt < 1) {
    uni.showToast({ title: 'Enter amount', icon: 'none' });
    return;
  }
  loading.value = true;
  Recharge({ amount_minor: Math.round(amt * 100), method: 'upi' })
    .then((r: any) => {
      loading.value = false;
      if (r.ok) {
        uni.showModal({
          title: 'Submitted',
          content: 'Your recharge is pending admin verification. Balance updates once approved.',
          showCancel: false,
          success: () => uni.navigateTo({ url: './payrecord' }),
        });
      } else uni.showToast({ title: r.error || 'Failed', icon: 'none' });
    })
    .catch(() => (loading.value = false));
}
</script>

<template>
  <view class="comfirm">
    <navbar :title="$t('payment.recharge')" background="#ffffff">
      <template #right>
        <view class="recharge_record" @click="toRecord">{{ $t('payment.navrecord') }}</view>
      </template>
    </navbar>

    <view class="comfirm-tips">{{ $t('payment.tips') }}</view>

    <view class="comfirm_pay">
      <view
        v-for="(e, i) in payList"
        :key="i"
        class="comfirm_pay_item"
        :class="{ active: activeIndex == i }"
        @click="changePay(i, e)"
      >
        {{ e.num }}
      </view>
      <view class="comfirm_pay_item width_input">
        <u-input v-model="value" placeholder="Enter amount" input-align="center" :height="78" @focus="changePay(7)" @blur="changePay(7)" />
      </view>
    </view>

    <view class="btn">
      <view class="btn-buy">
        <view class="btn-price"><view class="btn-price-old" /></view>
        <view class="btn-btn">
          <overbtn :loading="loading" :btnText="$t('payment.pnow')" :fontSize="28" btnType="submit" @btnAction="paynow" />
        </view>
      </view>
    </view>

    <image class="c-divider" src="/static/image/goods/img_Dividingline.png" mode="widthFix" />
    <view class="pay-tips">{{ $t('finance.paytips') }}</view>
    <view class="pay-whatsapp" @click="openWhatsapp">{{ $t('payment.contact') }}</view>

    <onepopup ref="onepopup" popType="2" />
  </view>
</template>

<style scoped>
/* Verbatim scoped CSS from ORich pages/payment/recharge (scope stripped) */
.comfirm { position: relative; background: #fff; min-height: 100vh; padding-bottom: 100rpx; }
.comfirm .comfirm-tips { width: 100%; padding: 0 30rpx; text-align: left; font-size: 26rpx; font-family: Roboto, Roboto-Regular; font-weight: 400; color: #17273a; }
.comfirm .comfirm_pay { margin-top: 24rpx; display: flex; align-items: center; flex-wrap: wrap; }
.comfirm .comfirm_pay .width_input { margin-right: 30rpx !important; width: 100% !important; }
.comfirm .comfirm_pay .comfirm_pay_item { width: 208rpx; height: 78rpx; margin-left: 32rpx; line-height: 78rpx; text-align: center; border: 1rpx solid hsla(0, 0%, 72.5%, 0.6); border-radius: 9rpx; position: relative; }
.comfirm .comfirm_pay .comfirm_pay_item:nth-child(n + 4) { margin-top: 32rpx; }
.comfirm .comfirm_pay .active { background: #ee5016; border: 1rpx solid #ee5016; color: #fff; }
.comfirm .comfirm-title { display: flex; align-items: center; justify-content: flex-start; margin: 30rpx 0; font-size: 32rpx; font-weight: 700; color: #17273a; }
.comfirm .comfirm-title .comfirm-op { width: 10rpx; height: 20rpx; margin-right: 10rpx; background: #ee5016; }
.comfirm .detail { padding: 0 30rpx; }
.comfirm .c-divider { width: calc(100% - 60rpx); margin: 45rpx 30rpx 0 30rpx; }
.comfirm .pay { padding: 0 30rpx; }
.comfirm .pay-tips { margin-top: 30rpx; text-align: center; padding: 0 30rpx; font-size: 26rpx; color: grey; }
.comfirm .pay-whatsapp { margin-top: 50rpx; text-align: center; font-weight: 700; text-decoration: underline; }
.comfirm .btn { display: flex; flex-direction: row; align-items: center; justify-content: center; margin-top: 30rpx; width: 100%; height: 98rpx; background: #fff; }
.comfirm .btn .btn-buy { display: flex; flex-direction: row; align-items: center; justify-content: center; width: 100%; height: 100%; margin-right: 30rpx; }
.comfirm .btn .btn-buy .btn-price { flex: 1; display: flex; flex-direction: column; align-items: flex-start; justify-content: center; padding-left: 30rpx; }
.comfirm .btn .btn-buy .btn-price .btn-price-new { font-size: 32rpx; font-weight: 700; color: #ee5016; }
.comfirm .btn .btn-buy .btn-price .btn-price-old { text-decoration: line-through; font-size: 28rpx; color: #b9b9b9; }
.comfirm .btn .btn-buy .btn-num { margin: 0 28rpx; }
.comfirm .btn .btn-buy .btn-btn { width: 100%; height: 78rpx; }
.comfirm .btn .btn-latest { width: 598rpx; height: 78rpx; }
.recharge_record { position: absolute; right: 50rpx; font-size: 26rpx; color: #17273a; }
</style>
