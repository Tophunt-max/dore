<script setup lang="ts">
// Faithful port of ORich pages/payment/cashOut (withdraw).
import { ref, computed } from 'vue';
import { onLoad, onShow } from '@dcloudio/uni-app';
import { Beneficiaries, Withdraw, Wallet } from '@/api/orich';
import { formatMinor, toMinor } from '@/utils/money';

const tab = ref(0); // 0 = bank card, 1 = UPI
const amount = ref<string>('');
const balanceMinor = ref(0);
const beneficiaries = ref<any[]>([]);
const selected = ref<any>(null);

const filtered = computed(() => beneficiaries.value.filter((b) => (tab.value === 1 ? b.type === 'upi' : b.type === 'bank')));

onLoad((q: any) => {
  if (q?.money) balanceMinor.value = Math.round(Number(q.money) * 100);
});
onShow(async () => {
  const w: any = await Wallet();
  if (w.ok) balanceMinor.value = w.balance_minor;
  const r: any = await Beneficiaries();
  if (r.ok) {
    beneficiaries.value = r.beneficiaries || [];
    selected.value = filtered.value[0] || null;
  }
});

function changeTab(i: number) {
  tab.value = i;
  selected.value = filtered.value[0] || null;
}
function withdrawAll() {
  amount.value = (balanceMinor.value / 100).toFixed(2);
}
function toRecord() {
  uni.navigateTo({ url: './cashrecord' });
}
function toAddCard() {
  uni.navigateTo({ url: './add' });
}
async function submit() {
  if (!selected.value) {
    uni.showToast({ title: 'Please add bank card first', icon: 'none' });
    return;
  }
  const minor = toMinor(Number(amount.value));
  if (!minor || minor < 100) {
    uni.showToast({ title: 'Enter amount', icon: 'none' });
    return;
  }
  const r: any = await Withdraw({ amount_minor: minor, beneficiary_id: selected.value.id });
  if (r.ok) {
    uni.showModal({
      title: '',
      content: 'Withdrawal submitted and pending approval.',
      showCancel: false,
      success: () => uni.navigateBack(),
    });
  } else uni.showToast({ title: r.error || 'Failed', icon: 'none' });
}
</script>

<template>
  <view class="cashout">
    <navbar :title="$t('payment.wtitle')" background="#ffffff">
      <template #right>
        <view class="nav_right" @click="toRecord">{{ $t('payment.navrecord') }}</view>
      </template>
    </navbar>

    <view class="cashout_main">
      <view class="cashout_main_title">
        <view>{{ $t('payment.receiving') }}</view>
        <view class="cashout_main_title_right" @click="toAddCard">
          <view class="cashout_main_title_right_item">+ {{ $t('payment.add') }}</view>
        </view>
      </view>

      <view class="cashout_main_tab">
        <view class="cashout_main_tab_item" :class="{ tabactive: tab === 0 }" @click="changeTab(0)">
          <view class="title">{{ $t('payment.cashtab1') }}</view>
        </view>
        <view class="cashout_main_tab_item" :class="{ tabactive: tab === 1 }" @click="changeTab(1)">
          <view class="title">{{ $t('payment.cashtab2') }}</view>
        </view>
      </view>

      <view v-for="b in filtered" :key="b.id" class="cashout_card" :class="{ on: selected && selected.id === b.id }" @click="selected = b">
        <view class="cashout_card_name">{{ b.holder_name }}</view>
        <view class="cashout_card_no">{{ b.type === 'upi' ? b.upi_id : b.account_no }}</view>
      </view>
      <view v-if="!filtered.length" class="cashout_nocard">{{ $t('payment.noCardTips') }}</view>

      <view class="cashout_main_amount">{{ $t('payment.amount') }}</view>
      <view class="cashout_main_money">
        <text class="rs">₹</text>
        <input v-model="amount" type="digit" placeholder="0.00" />
        <view class="viptip" @click="withdrawAll">{{ $t('payment.withdrawall') }}</view>
      </view>
      <view class="cashout_main_balance">
        <view class="cashout_main_balance_left">{{ formatMinor(balanceMinor) }}</view>
        <view class="cashout_main_balance_right">{{ $t('payment.balancetip') }}</view>
      </view>

      <view class="cashout_main_tips">
        <view class="cashout_main_tips_title">{{ $t('payment.noticetitle') }}</view>
        <view class="cashout_main_tips_text">{{ $t('payment.notice1') }}</view>
        <view class="cashout_main_tips_text">{{ $t('payment.notice2') }}100</view>
      </view>
    </view>

    <view class="cashout_btn">
      <overbtn :btnText="$t('payment.wtitle')" :fontSize="30" btnType="submit" @btnAction="submit" />
    </view>
  </view>
</template>

<style>
@import './cashOut.css';
</style>

<style scoped>
.cashout { min-height: 100vh; background: #f9f9f9; padding-bottom: 200rpx; }
.nav_right { font-size: 26rpx; color: #17273a; padding-right: 20rpx; }
.cashout_main { background: #fff; margin: 16rpx 0; padding: 30rpx; }
.cashout_main_title { display: flex; align-items: center; justify-content: space-between; font-size: 30rpx; font-weight: 700; color: #17273a; }
.cashout_main_title_right_item { font-size: 26rpx; color: #ee5016; }
.cashout_main_tab { display: flex; margin: 24rpx 0; }
.cashout_main_tab_item { flex: 1; text-align: center; padding: 20rpx 0; border: 2rpx solid #eee; }
.cashout_main_tab_item:first-child { border-radius: 10rpx 0 0 10rpx; }
.cashout_main_tab_item:last-child { border-radius: 0 10rpx 10rpx 0; }
.cashout_main_tab_item.tabactive { background: #ee5016; border-color: #ee5016; color: #fff; }
.cashout_card { padding: 24rpx; border: 2rpx solid #eee; border-radius: 12rpx; margin-bottom: 16rpx; }
.cashout_card.on { border-color: #ee5016; background: #fff5f2; }
.cashout_card_name { font-size: 30rpx; font-weight: 700; }
.cashout_card_no { margin-top: 8rpx; font-size: 26rpx; color: #666; }
.cashout_nocard { padding: 20rpx 0; color: #b9b9b9; font-size: 26rpx; }
.cashout_main_amount { margin-top: 30rpx; font-size: 30rpx; font-weight: 700; color: #17273a; }
.cashout_main_money { display: flex; align-items: center; border-bottom: 2rpx solid #eee; padding: 20rpx 0; }
.cashout_main_money .rs { font-size: 40rpx; font-weight: 700; margin-right: 12rpx; }
.cashout_main_money input { flex: 1; font-size: 40rpx; }
.cashout_main_money .viptip { color: #ee5016; font-size: 26rpx; }
.cashout_main_balance { display: flex; align-items: center; margin-top: 16rpx; }
.cashout_main_balance_left { font-size: 30rpx; font-weight: 700; color: #ee5016; margin-right: 12rpx; }
.cashout_main_balance_right { font-size: 24rpx; color: #b9b9b9; }
.cashout_main_tips { margin-top: 40rpx; }
.cashout_main_tips_title { font-size: 28rpx; font-weight: 700; color: #17273a; margin-bottom: 12rpx; }
.cashout_main_tips_text { font-size: 24rpx; color: #b9b9b9; line-height: 40rpx; }
.cashout_btn { position: fixed; left: 30rpx; right: 30rpx; bottom: 40rpx; height: 92rpx; }
</style>
