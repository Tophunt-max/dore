<script setup lang="ts">
import { ref } from 'vue';
import { onShow } from '@dcloudio/uni-app';
import { api } from '@/api/request';
import { formatMinor, toMinor } from '@/utils/money';
import { useUserStore } from '@/store/user';

const store = useUserStore();
const bet = ref<number | ''>('');
const lastRoll = ref<number | null>(null);
const lastResult = ref('');
const rolling = ref(false);

onShow(() => store.refreshBalance());

async function play(guess: 'high' | 'low') {
  if (rolling.value) return;
  rolling.value = true;
  const res = await api.post('/api/game/play', { bet_minor: bet.value ? toMinor(Number(bet.value)) : 0, guess });
  rolling.value = false;
  if (res.ok) {
    lastRoll.value = res.roll;
    lastResult.value = res.result;
    store.refreshBalance();
    uni.showToast({ title: res.result === 'win' ? `Win +${formatMinor(res.payout_minor)}` : 'Try again', icon: 'none' });
  } else uni.showToast({ title: res.error || 'Failed', icon: 'none' });
}
</script>
<template>
  <view class="page">
    <view class="board">
      <text class="title">High or Low</text>
      <text class="sub">Guess if the number (0–99) is high (≥50) or low (&lt;50)</text>
      <view class="dice" :class="lastResult">
        <text class="num">{{ lastRoll === null ? '?' : lastRoll }}</text>
      </view>
      <text v-if="lastResult" class="res" :class="lastResult">{{ lastResult === 'win' ? 'You win!' : 'You lose' }}</text>
    </view>
    <view class="card">
      <text class="bl">Bet (optional, uses wallet)</text>
      <input v-model="bet" class="bet" type="number" placeholder="0 = free play" />
      <text class="muted">Wallet: {{ formatMinor(store.balanceMinor) }}</text>
    </view>
    <view class="btns">
      <view class="gb low" @click="play('low')">LOW</view>
      <view class="gb high" @click="play('high')">HIGH</view>
    </view>
    <text class="note">For entertainment. Non-monetary demo game.</text>
  </view>
</template>
<style scoped>
.page { min-height: 100vh; padding: 20rpx; }
.board { background: linear-gradient(160deg, #2b2140, #6d4a9c); border-radius: 20rpx; padding: 50rpx 40rpx; text-align: center; color: #fff; }
.title { font-size: 44rpx; font-weight: 800; }
.sub { display: block; margin-top: 12rpx; opacity: 0.85; font-size: 24rpx; }
.dice { width: 200rpx; height: 200rpx; margin: 40rpx auto; border-radius: 30rpx; background: rgba(255,255,255,0.15); display: flex; align-items: center; justify-content: center; }
.dice.win { background: rgba(43,191,106,0.35); }
.dice.lose { background: rgba(255,92,92,0.3); }
.num { font-size: 90rpx; font-weight: 900; color: #ffd98a; }
.res { font-size: 32rpx; font-weight: 700; }
.res.win { color: #7cffb0; }
.res.lose { color: #ff9c9c; }
.card { background: #fff; border-radius: 16rpx; padding: 30rpx; margin-top: 20rpx; }
.bl { font-size: 28rpx; font-weight: 700; }
.bet { margin: 16rpx 0; height: 84rpx; border: 2rpx solid #eee; border-radius: 12rpx; padding: 0 24rpx; font-size: 32rpx; }
.muted { color: #b9b9b9; font-size: 24rpx; }
.btns { display: flex; margin-top: 24rpx; }
.gb { flex: 1; height: 120rpx; line-height: 120rpx; text-align: center; margin: 0 12rpx; border-radius: 16rpx; font-size: 40rpx; font-weight: 800; color: #fff; }
.gb.low { background: #4a90e2; }
.gb.high { background: #ee5016; }
.note { display: block; margin-top: 20rpx; text-align: center; color: #b9b9b9; font-size: 22rpx; }
</style>
