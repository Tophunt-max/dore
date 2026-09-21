<script setup lang="ts">
// Faithful port of ORich pages/task/member (VIP membership).
import { ref, computed } from 'vue';
import { onShow } from '@dcloudio/uni-app';
import { AccountData } from '@/api/orich';
import { formatMinor } from '@/utils/money';

const M = '/static/image/member';
const balanceMinor = ref(0);
const username = ref('-');

const levels = [
  { name: 'Bronze', min: 0, icon: '/static/image/account/icon_bronze.png' },
  { name: 'Silver', min: 200000, icon: '/static/image/account/icon_bronze.png' },
  { name: 'Gold', min: 1000000, icon: '/static/image/account/icon_gold.png' },
  { name: 'Diamond', min: 5000000, icon: '/static/image/account/icon_gold.png' },
];
const levelIndex = computed(() => {
  let idx = 0;
  levels.forEach((l, i) => {
    if (balanceMinor.value >= l.min) idx = i;
  });
  return idx;
});
const current = computed(() => levels[levelIndex.value]);
const next = computed(() => levels[levelIndex.value + 1] || null);
const progress = computed(() => {
  if (!next.value) return 100;
  const base = current.value.min;
  const span = next.value.min - base || 1;
  return Math.max(0, Math.min(100, Math.round(((balanceMinor.value - base) / span) * 100)));
});

const perks = [
  { icon: `${M}/icon_benefits.png`, title: 'Not Win Full Refund' },
  { icon: `${M}/icon_Cash.png`, title: 'Invite Rebate' },
  { icon: `${M}/icon_goldcoins.png`, title: 'Higher task rewards' },
  { icon: `${M}/icon_problem.png`, title: 'Priority withdrawals' },
];

onShow(async () => {
  const r: any = await AccountData();
  if (r && r.ok !== false) {
    balanceMinor.value = Math.round(Number(r.money || 0) * 100);
    username.value = r.nickname || '-';
  }
});
</script>

<template>
  <view class="member">
    <navbar :title="$t('member.openvip')" background="transparent" titleColor="#ffffff" backColor="#ffffff" />

    <view class="member_card">
      <view class="member_card_top">
        <image class="member_card_icon" :src="current.icon" mode="aspectFit" />
        <view class="member_card_info">
          <view class="member_card_level">{{ current.name }} Member</view>
          <view class="member_card_name">{{ username }}</view>
        </view>
      </view>
      <view class="member_card_balance">{{ formatMinor(balanceMinor) }}</view>
      <view class="member_card_progress">
        <lineprogress :percent="progress" activeColor="#ffd24d" inactiveColor="rgba(255,255,255,0.25)" :height="14" />
      </view>
      <view class="member_card_next">
        <text v-if="next">{{ formatMinor(next.min - balanceMinor) }} more to reach {{ next.name }}</text>
        <text v-else>Top level reached 🎉</text>
      </view>
    </view>

    <view class="member_levels">
      <view v-for="(l, i) in levels" :key="i" class="member_level" :class="{ on: i === levelIndex }">
        <image :src="l.icon" mode="aspectFit" />
        <text class="member_level_name">{{ l.name }}</text>
      </view>
    </view>

    <view class="member_perks">
      <view class="member_perks_title">{{ $t('member.benefits') }}</view>
      <view v-for="(p, i) in perks" :key="i" class="member_perk">
        <image class="member_perk_icon" :src="p.icon" mode="aspectFit" />
        <view class="member_perk_title">{{ p.title }}</view>
      </view>
    </view>

    <tabbar page="/pages/task/member" />
  </view>
</template>

<style>
@import './member.css';
</style>

<style scoped>
.member { min-height: 100vh; background: #f9f9f9; padding-bottom: 140rpx; background-image: linear-gradient(180deg, #2b2140 0, #2b2140 420rpx, #f9f9f9 420rpx); }
.member_card { margin: 20rpx 24rpx 0; padding: 36rpx; border-radius: 20rpx; background: linear-gradient(120deg, #4a3a6b, #6d4a9c); color: #fff; }
.member_card_top { display: flex; align-items: center; }
.member_card_icon { width: 72rpx; height: 72rpx; margin-right: 20rpx; }
.member_card_level { font-size: 34rpx; font-weight: 700; }
.member_card_name { margin-top: 6rpx; font-size: 24rpx; opacity: 0.85; }
.member_card_balance { margin-top: 26rpx; font-size: 56rpx; font-weight: 900; color: #ffd24d; }
.member_card_progress { margin-top: 20rpx; }
.member_card_next { margin-top: 14rpx; font-size: 24rpx; opacity: 0.9; }
.member_levels { display: flex; justify-content: space-between; margin: 24rpx; padding: 26rpx; background: #fff; border-radius: 20rpx; }
.member_level { display: flex; flex-direction: column; align-items: center; opacity: 0.45; }
.member_level.on { opacity: 1; }
.member_level uni-image { width: 56rpx; height: 56rpx; }
.member_level_name { margin-top: 10rpx; font-size: 24rpx; color: #17273a; }
.member_perks { margin: 0 24rpx; padding: 30rpx; background: #fff; border-radius: 20rpx; }
.member_perks_title { font-size: 32rpx; font-weight: 700; color: #17273a; margin-bottom: 10rpx; }
.member_perk { display: flex; align-items: center; padding: 24rpx 0; border-bottom: 2rpx solid #f5f5f5; }
.member_perk:last-child { border-bottom: none; }
.member_perk_icon { width: 48rpx; height: 48rpx; margin-right: 20rpx; }
.member_perk_title { font-size: 28rpx; color: #17273a; }
</style>
