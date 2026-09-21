<script setup lang="ts">
import { ref, computed } from 'vue';
import { onShow } from '@dcloudio/uni-app';
import { useUserStore } from '@/store/user';
import { formatMinor } from '@/utils/money';

const store = useUserStore();
const level = computed(() => {
  const b = store.balanceMinor;
  if (b > 5000000) return { name: 'Diamond', n: 4 };
  if (b > 1000000) return { name: 'Gold', n: 3 };
  if (b > 200000) return { name: 'Silver', n: 2 };
  return { name: 'Bronze', n: 1 };
});
onShow(() => store.refreshBalance());

const perks = [
  { icon: '🎁', t: 'Higher task rewards' },
  { icon: '💸', t: 'Priority withdrawals' },
  { icon: '📈', t: 'Exclusive finance rates' },
  { icon: '🏆', t: 'VIP-only campaigns' },
];
</script>

<template>
  <view class="page">
    <view class="vipcard">
      <text class="lvl">{{ level.name }} Member</text>
      <text class="bal">{{ formatMinor(store.balanceMinor) }}</text>
      <view class="stars">
        <text v-for="i in 4" :key="i" class="star" :class="{ on: i <= level.n }">★</text>
      </view>
    </view>
    <view class="perks card">
      <text class="ph">Membership Perks</text>
      <view v-for="(p, i) in perks" :key="i" class="perk">
        <text class="pi">{{ p.icon }}</text>
        <text class="pt">{{ p.t }}</text>
      </view>
    </view>
  </view>
</template>

<style scoped>
.page {
  min-height: 100vh;
  padding: 20rpx;
}
.vipcard {
  margin: 20rpx 0;
  padding: 50rpx 40rpx;
  border-radius: 20rpx;
  background: linear-gradient(120deg, #2b2140, #6d4a9c);
  color: #fff;
}
.lvl {
  font-size: 36rpx;
  font-weight: 700;
}
.bal {
  display: block;
  margin-top: 20rpx;
  font-size: 52rpx;
  font-weight: 900;
  color: #ffd98a;
}
.stars {
  margin-top: 20rpx;
}
.star {
  font-size: 40rpx;
  color: rgba(255, 255, 255, 0.3);
}
.star.on {
  color: #ffd98a;
}
.perks {
  padding: 30rpx;
}
.ph {
  font-size: 32rpx;
  font-weight: 700;
}
.perk {
  display: flex;
  align-items: center;
  padding: 24rpx 0;
  border-bottom: 2rpx solid #f5f5f5;
}
.pi {
  font-size: 40rpx;
  margin-right: 20rpx;
}
.pt {
  font-size: 28rpx;
}
</style>
