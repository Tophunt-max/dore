<script setup lang="ts">
// Faithful port of ORich pages/payment/payment (bank account / UPI list).
import { ref } from 'vue';
import { onShow } from '@dcloudio/uni-app';
import { Beneficiaries, BeneficiaryDelete } from '@/api/orich';

const list = ref<any[]>([]);
onShow(load);

async function load() {
  const r: any = await Beneficiaries();
  if (r.ok) list.value = r.beneficiaries || [];
}
function add() {
  uni.navigateTo({ url: './add' });
}
function del(b: any) {
  uni.showModal({
    title: '',
    content: 'Remove this bank card?',
    success: async (r) => {
      if (r.confirm) {
        await BeneficiaryDelete(b.id);
        load();
      }
    },
  });
}
function groups(no: string) {
  const s = (no || '').replace(/\s+/g, '');
  const out: string[] = [];
  for (let i = 0; i < s.length; i += 4) out.push(s.slice(i, i + 4));
  return out;
}
</script>

<template>
  <view class="payment">
    <navbar :title="$t('payment.cards')" background="#ffffff">
      <template #right>
        <view class="nav_right" @click="add">+</view>
      </template>
    </navbar>

    <view class="payment_top">
      <view class="payment_top_title">{{ $t('common.mancard') }}</view>
    </view>

    <view class="payment_main">
      <view v-for="(b, i) in list" :key="b.id" class="payment_card" @longpress="del(b)">
        <view class="payment_card_top">
          <view class="payment_card_top_img">
            <image :src="b.type === 'upi' ? '/static/image/pay/icon_identification.png' : '/static/image/account/icon_Fundingrecords.png'" mode="aspectFit" />
          </view>
          <view class="payment_card_top_name">{{ b.holder_name }}</view>
        </view>
        <view class="payment_card_number">
          <template v-if="b.type === 'upi'">
            <view class="payment_card_number_item">{{ b.upi_id }}</view>
          </template>
          <template v-else>
            <view v-for="(g, k) in groups(b.account_no)" :key="k" class="payment_card_number_item">{{ g }}</view>
          </template>
        </view>
      </view>
      <view v-if="!list.length" class="nodata">{{ $t('payment.noCardTips') }}</view>
    </view>

    <view class="payment_add">
      <overbtn :btnText="$t('payment.add')" :fontSize="30" btnType="submit" @btnAction="add" />
    </view>
  </view>
</template>

<style>
@import './payment.css';
</style>

<style scoped>
.payment { min-height: 100vh; background: #f9f9f9; padding-bottom: 180rpx; }
.nav_right { font-size: 44rpx; color: #17273a; padding-right: 20rpx; }
.payment_top { padding: 24rpx 30rpx 10rpx; }
.payment_top_title { font-size: 26rpx; color: #b9b9b9; }
.payment_main { padding: 0 30rpx; }
.payment_card { border-radius: 20rpx; padding: 30rpx; margin-bottom: 20rpx; background: linear-gradient(120deg, #ff8a3d, #ee5016); color: #fff; }
.payment_card:nth-child(even) { background: linear-gradient(120deg, #5b7cfa, #2b4bd8); }
.payment_card_top { display: flex; align-items: center; }
.payment_card_top_img { width: 56rpx; height: 56rpx; margin-right: 16rpx; background: rgba(255, 255, 255, 0.25); border-radius: 50%; display: flex; align-items: center; justify-content: center; }
.payment_card_top_img uni-image { width: 36rpx; height: 36rpx; }
.payment_card_top_name { font-size: 32rpx; font-weight: 700; }
.payment_card_number { display: flex; align-items: center; margin-top: 30rpx; }
.payment_card_number_item { font-size: 34rpx; letter-spacing: 4rpx; margin-right: 20rpx; }
.payment_add { position: fixed; left: 30rpx; right: 30rpx; bottom: 40rpx; height: 92rpx; }
</style>
