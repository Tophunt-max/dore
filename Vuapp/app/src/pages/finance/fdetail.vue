<script setup lang="ts">
// Faithful port of ORich pages/finance/fdetail (finance product detail + buy-in).
import { ref, computed } from 'vue';
import { onLoad, onShow } from '@dcloudio/uni-app';
import { FinanceDetail, FinanceOrder, Wallet } from '@/api/orich';
import { formatMinor, toMinor } from '@/utils/money';

const product = ref<any>(null);
const amount = ref('');
const balanceMinor = ref(0);
const loading = ref(false);
const tab = ref(0);

const rate = computed(() => (product.value ? (product.value.rate_bps / 100).toFixed(1) : '0.0'));
const estIncome = computed(() => {
  if (!product.value || !amount.value) return 0;
  const p = toMinor(Number(amount.value));
  return Math.round((p * product.value.rate_bps * product.value.term_days) / (10000 * 365));
});

onLoad((q: any) => {
  FinanceDetail({ id: q?.id }).then((r: any) => {
    if (r.ok) product.value = r.product;
  });
});
onShow(async () => {
  const w: any = await Wallet();
  if (w.ok) balanceMinor.value = w.balance_minor;
});

async function buyin() {
  if (!product.value) return;
  const minor = toMinor(Number(amount.value));
  if (!minor) {
    uni.showToast({ title: 'Enter amount', icon: 'none' });
    return;
  }
  loading.value = true;
  const r: any = await FinanceOrder({ product_id: product.value.id, amount_minor: minor });
  loading.value = false;
  if (r.ok) uni.redirectTo({ url: './order' });
  else uni.showToast({ title: r.error === 'insufficient_balance' ? 'Insufficient balance' : r.error || 'Failed', icon: 'none' });
}
</script>

<template>
  <view v-if="product" class="fdetail">
    <navbar :title="$t('finance.htitle')" background="transparent" titleColor="#ffffff" backColor="#ffffff" />

    <view class="fdetail_hero">
      <view class="fdetail_hero_rate">{{ rate }}<text class="pct">%</text></view>
      <view class="fdetail_hero_label">{{ $t('finance.rate') }}</view>
      <view class="fdetail_hero_title">{{ product.title }}</view>
      <view class="fdetail_hero_meta">
        <view class="fdetail_hero_meta_item">
          <view class="v">{{ product.term_days }}</view>
          <view class="l">{{ $t('finance.day') }}</view>
        </view>
        <view class="fdetail_hero_meta_item">
          <view class="v">{{ formatMinor(product.min_minor) }}</view>
          <view class="l">{{ $t('finance.buyin2') }}</view>
        </view>
      </view>
    </view>

    <view class="fdetail_card">
      <view class="fdetail_card_title">{{ $t('finance.amount') }}</view>
      <view class="fdetail_input">
        <text class="rs">₹</text>
        <input v-model="amount" type="digit" :placeholder="(product.min_minor / 100).toFixed(0)" />
      </view>
      <view class="fdetail_row">
        <text class="l">{{ $t('finance.eTitle') }}</text>
        <text class="v">{{ formatMinor(estIncome) }}</text>
      </view>
      <view class="fdetail_row">
        <text class="l">{{ $t('finance.padni') }}</text>
        <text class="v">{{ formatMinor(toMinor(Number(amount) || 0) + estIncome) }}</text>
      </view>
      <view class="fdetail_row">
        <text class="l">Wallet</text>
        <text class="v muted">{{ formatMinor(balanceMinor) }}</text>
      </view>
    </view>

    <view class="fdetail_tabs">
      <view class="fdetail_tab" :class="{ on: tab === 0 }" @click="tab = 0">{{ $t('finance.tab2') }}</view>
      <view class="fdetail_tab" :class="{ on: tab === 1 }" @click="tab = 1">{{ $t('finance.income') }}</view>
    </view>
    <view class="fdetail_body">
      <view v-if="tab === 0" class="fdetail_steps">
        <view class="fdetail_step"><text class="n">1</text><text>{{ $t('finance.step1') }}</text></view>
        <view class="fdetail_step"><text class="n">2</text><text>{{ $t('finance.step2') }}</text></view>
        <view class="fdetail_step"><text class="n">3</text><text>{{ $t('finance.step3') }}</text></view>
      </view>
      <view v-else class="fdetail_note">{{ $t('finance.paytips') }}</view>
    </view>

    <view class="fdetail_btn">
      <overbtn :loading="loading" :btnText="$t('finance.buyin')" :fontSize="30" btnType="submit" @btnAction="buyin" />
    </view>
  </view>
</template>

<style>
@import './fdetail.css';
</style>

<style scoped>
.fdetail { min-height: 100vh; background: #f9f9f9; padding-bottom: 200rpx; background-image: linear-gradient(180deg, #ff7d4d 0, #ee5016 430rpx, #f9f9f9 430rpx); }
.fdetail_hero { padding: 20rpx 40rpx 40rpx; color: #fff; }
.fdetail_hero_rate { font-size: 96rpx; font-weight: 900; line-height: 1; }
.fdetail_hero_rate .pct { font-size: 40rpx; margin-left: 8rpx; }
.fdetail_hero_label { margin-top: 10rpx; font-size: 26rpx; opacity: 0.9; }
.fdetail_hero_title { margin-top: 24rpx; font-size: 34rpx; font-weight: 700; }
.fdetail_hero_meta { display: flex; margin-top: 24rpx; }
.fdetail_hero_meta_item { margin-right: 70rpx; }
.fdetail_hero_meta_item .v { font-size: 32rpx; font-weight: 700; }
.fdetail_hero_meta_item .l { margin-top: 6rpx; font-size: 22rpx; opacity: 0.85; }
.fdetail_card { margin: 0 24rpx; padding: 30rpx; background: #fff; border-radius: 20rpx; }
.fdetail_card_title { font-size: 30rpx; font-weight: 700; color: #17273a; }
.fdetail_input { display: flex; align-items: center; border-bottom: 2rpx solid #eee; padding: 20rpx 0; margin-bottom: 10rpx; }
.fdetail_input .rs { font-size: 40rpx; font-weight: 700; margin-right: 12rpx; }
.fdetail_input input { flex: 1; font-size: 40rpx; }
.fdetail_row { display: flex; align-items: center; justify-content: space-between; padding: 14rpx 0; }
.fdetail_row .l { font-size: 26rpx; color: #b9b9b9; }
.fdetail_row .v { font-size: 30rpx; font-weight: 700; color: #ee5016; }
.fdetail_row .v.muted { color: #17273a; font-weight: 400; }
.fdetail_tabs { display: flex; margin: 24rpx 24rpx 0; background: #fff; border-radius: 16rpx 16rpx 0 0; }
.fdetail_tab { flex: 1; text-align: center; padding: 26rpx 0; font-size: 28rpx; color: #b9b9b9; }
.fdetail_tab.on { color: #17273a; font-weight: 700; border-bottom: 4rpx solid #ee5016; }
.fdetail_body { margin: 0 24rpx; padding: 26rpx 30rpx; background: #fff; border-radius: 0 0 16rpx 16rpx; }
.fdetail_step { display: flex; align-items: center; padding: 14rpx 0; font-size: 28rpx; color: #17273a; }
.fdetail_step .n { width: 44rpx; height: 44rpx; line-height: 44rpx; text-align: center; border-radius: 50%; background: #ee5016; color: #fff; margin-right: 16rpx; font-size: 24rpx; }
.fdetail_note { font-size: 26rpx; color: #b9b9b9; line-height: 42rpx; }
.fdetail_btn { position: fixed; left: 30rpx; right: 30rpx; bottom: 40rpx; height: 92rpx; }
</style>
