<script setup lang="ts">
// Faithful port of ORich pages/prize/prize (prize pool / dividing the prize).
import { ref } from 'vue';
import { onShow, onPullDownRefresh } from '@dcloudio/uni-app';
import { Prizes, Referrals } from '@/api/orich';
import { formatMinor } from '@/utils/money';

const prizes = ref<any[]>([]);
const inviteCount = ref(0);
const poolMinor = ref(0);

async function load() {
  const r: any = await Prizes();
  if (r.ok) {
    prizes.value = r.prizes || [];
    poolMinor.value = (r.prizes || []).reduce((s: number, p: any) => s + (p.market_price_minor || 0), 0);
  }
  const t: any = await Referrals();
  if (t.ok) inviteCount.value = (t.stats && t.stats.total) || 0;
}
onShow(load);
onPullDownRefresh(async () => {
  await load();
  uni.stopPullDownRefresh();
});

function toInvite() {
  uni.navigateTo({ url: '../invitation/invitation' });
}
function toRules() {
  uni.navigateTo({ url: '../richtext/rule?type=3' });
}
</script>

<template>
  <view class="prize">
    <navbar :title="$t('prize.navtitle')" background="transparent" titleColor="#ffffff" backColor="#ffffff" />

    <view class="prize_hero">
      <view class="prize_hero_label">{{ $t('prize.amountTitle') }}</view>
      <view class="prize_hero_amount">{{ formatMinor(poolMinor) }}</view>
      <view class="prize_hero_tip">{{ $t('prize.inviteTip') }}</view>
      <view class="prize_hero_progress">
        <view class="prize_hero_progress_text">{{ inviteCount }}/3 {{ $t('prize.users') }}</view>
        <lineprogress :percent="Math.min(100, (inviteCount / 3) * 100)" :height="16" />
      </view>
      <view class="prize_hero_btn" @click="toInvite">{{ $t('prize.btnTitle') }}</view>
      <view class="prize_hero_rules" @click="toRules">{{ $t('prize.rules') }} ›</view>
    </view>

    <view class="prize_list">
      <view v-for="p in prizes" :key="p.id" class="prize_item">
        <image class="prize_item_img" :src="p.image" mode="aspectFill" />
        <view class="prize_item_info">
          <view class="prize_item_title otw">{{ p.title }}</view>
          <view class="prize_item_value">{{ formatMinor(p.market_price_minor) }}</view>
          <view class="prize_item_winner">{{ p.username ? 'Won by ' + p.username : $t('prize.btnTitle3') }}</view>
        </view>
      </view>
      <view v-if="!prizes.length" class="nodata">{{ $t('common.nodata') }}</view>
    </view>
  </view>
</template>

<style>
@import './prize.css';
</style>

<style scoped>
.prize { min-height: 100vh; background: #f9f9f9; background-image: linear-gradient(180deg, #ff6a3d 0, #ee5016 400rpx, #f9f9f9 400rpx); padding-bottom: 60rpx; }
.prize_hero { margin: 10rpx 24rpx 0; padding: 36rpx; border-radius: 20rpx; background: rgba(255, 255, 255, 0.14); color: #fff; }
.prize_hero_label { font-size: 26rpx; opacity: 0.9; }
.prize_hero_amount { margin-top: 10rpx; font-size: 64rpx; font-weight: 900; color: #ffd24d; }
.prize_hero_tip { margin-top: 10rpx; font-size: 26rpx; opacity: 0.9; }
.prize_hero_progress { margin-top: 24rpx; }
.prize_hero_progress_text { font-size: 24rpx; margin-bottom: 10rpx; }
.prize_hero_btn { margin-top: 26rpx; height: 80rpx; line-height: 80rpx; text-align: center; border-radius: 44rpx; background: linear-gradient(115deg, #ffe44b, #fea326); color: #ad6701; font-weight: 700; font-size: 30rpx; }
.prize_hero_rules { margin-top: 18rpx; text-align: center; font-size: 24rpx; opacity: 0.9; }
.prize_list { margin: 24rpx; }
.prize_item { display: flex; align-items: center; background: #fff; border-radius: 16rpx; padding: 20rpx; margin-bottom: 16rpx; }
.prize_item_img { width: 140rpx; height: 140rpx; border-radius: 10rpx; margin-right: 20rpx; }
.prize_item_info { flex: 1; }
.prize_item_title { font-size: 30rpx; font-weight: 700; color: #17273a; }
.prize_item_value { margin-top: 8rpx; font-size: 30rpx; font-weight: 700; color: #ee5016; }
.prize_item_winner { margin-top: 8rpx; font-size: 24rpx; color: #b9b9b9; }
</style>
