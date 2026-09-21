<script setup lang="ts">
// Faithful port of ORich pages/game/game ("Lucky Ball" colour/number game).
import { ref, computed } from 'vue';
import { onShow } from '@dcloudio/uni-app';
import { GamePlay, Wallet } from '@/api/orich';
import { formatMinor, toMinor } from '@/utils/money';

const balanceMinor = ref(0);
const period = ref('');
const countdown = ref(60);
const bet = ref('10');
const tab = ref(0);
const records = ref<any[]>([]);
const playing = ref(false);
const lastRoll = ref<number | null>(null);
let timer: any = null;

const colourOf = (n: number) => (n === 0 || n === 5 ? 'violet' : n % 2 === 0 ? 'red' : 'green');

onShow(async () => {
  const w: any = await Wallet();
  if (w.ok) balanceMinor.value = w.balance_minor;
  period.value = String(Date.now()).slice(-8);
  if (!timer) {
    timer = setInterval(() => {
      countdown.value = countdown.value > 0 ? countdown.value - 1 : 60;
      if (countdown.value === 60) period.value = String(Date.now()).slice(-8);
    }, 1000);
  }
});

const mm = computed(() => String(Math.floor(countdown.value / 60)).padStart(2, '0'));
const ss = computed(() => String(countdown.value % 60).padStart(2, '0'));

async function play(guess: 'high' | 'low', label: string) {
  if (playing.value) return;
  const minor = toMinor(Number(bet.value) || 0);
  playing.value = true;
  const r: any = await GamePlay({ bet_minor: minor, guess });
  playing.value = false;
  if (!r.ok) {
    uni.showToast({ title: r.error === 'insufficient_balance' ? 'Insufficient balance' : r.error || 'Failed', icon: 'none' });
    return;
  }
  lastRoll.value = r.roll;
  records.value.unshift({
    period: period.value,
    number: r.roll,
    colour: colourOf(r.roll % 10),
    result: r.result,
    payout_minor: r.payout_minor,
    pick: label,
    created_at: Math.floor(Date.now() / 1000),
  });
  const w: any = await Wallet();
  if (w.ok) balanceMinor.value = w.balance_minor;
  uni.showToast({ title: r.result === 'win' ? `Win +${formatMinor(r.payout_minor)}` : 'Try again', icon: 'none' });
}
</script>

<template>
  <view class="game">
    <navbar :title="$t('game.navtitle')" background="transparent" titleColor="#ffffff" backColor="#ffffff" />

    <view class="game_head">
      <view class="game_head_row">
        <view class="game_head_item">
          <view class="game_head_label">{{ $t('game.trial') }}</view>
          <view class="game_head_value">{{ period }}</view>
        </view>
        <view class="game_head_item right">
          <view class="game_head_label">{{ $t('game.down') }}</view>
          <view class="game_head_timer">
            <text class="tbox">{{ mm }}</text><text class="tcolon">:</text><text class="tbox">{{ ss }}</text>
          </view>
        </view>
      </view>
      <view class="game_head_balance">{{ formatMinor(balanceMinor) }}</view>
    </view>

    <view class="game_board">
      <view class="game_tip">{{ $t('game.tip') }}</view>
      <view class="game_result">
        <text class="game_result_num">{{ lastRoll === null ? '?' : lastRoll }}</text>
      </view>
      <view class="game_bet">
        <text class="game_bet_label">{{ $t('game.contr2') }}</text>
        <input v-model="bet" class="game_bet_input" type="digit" placeholder="10" />
      </view>
      <view class="game_btns">
        <view class="game_btn green" @click="play('low', $t('game.jgreen'))">{{ $t('game.jgreen') }}</view>
        <view class="game_btn violet" @click="play('high', $t('game.jviolet'))">{{ $t('game.jviolet') }}</view>
        <view class="game_btn red" @click="play('high', $t('game.jred'))">{{ $t('game.jred') }}</view>
      </view>
    </view>

    <view class="game_tabs">
      <view class="game_tab" :class="{ on: tab === 0 }" @click="tab = 0">{{ $t('game.tab1') }}</view>
      <view class="game_tab" :class="{ on: tab === 1 }" @click="tab = 1">{{ $t('game.tab2') }}</view>
    </view>

    <view class="game_list">
      <view v-for="(r, i) in records" :key="i" class="game_row">
        <view class="game_row_left">
          <view class="game_row_period">{{ $t('game.period') }} {{ r.period }}</view>
          <view class="game_row_time">{{ new Date(r.created_at * 1000).toLocaleTimeString() }}</view>
        </view>
        <view class="game_row_mid">
          <text class="game_ball" :class="r.colour">{{ r.number }}</text>
        </view>
        <view class="game_row_right" :class="r.result">
          {{ r.result === 'win' ? '+' + formatMinor(r.payout_minor) : formatMinor(0) }}
        </view>
      </view>
      <view v-if="!records.length" class="nodata">{{ $t('common.nodata') }}</view>
    </view>
  </view>
</template>

<style>
@import './game.css';
</style>

<style scoped>
.game { min-height: 100vh; background: #f9f9f9; background-image: linear-gradient(180deg, #2b2140 0, #4a2f7a 380rpx, #f9f9f9 380rpx); padding-bottom: 60rpx; }
.game_head { padding: 10rpx 30rpx 0; color: #fff; }
.game_head_row { display: flex; justify-content: space-between; }
.game_head_label { font-size: 24rpx; opacity: 0.8; }
.game_head_value { margin-top: 8rpx; font-size: 32rpx; font-weight: 700; }
.game_head_item.right { text-align: right; }
.game_head_timer { margin-top: 8rpx; }
.tbox { display: inline-block; min-width: 46rpx; padding: 4rpx 8rpx; background: #17273a; border-radius: 8rpx; text-align: center; font-weight: 700; }
.tcolon { margin: 0 8rpx; font-weight: 700; }
.game_head_balance { margin-top: 20rpx; font-size: 44rpx; font-weight: 900; color: #ffd24d; }
.game_board { margin: 24rpx; padding: 30rpx; background: #fff; border-radius: 20rpx; }
.game_tip { font-size: 26rpx; color: #b9b9b9; text-align: center; }
.game_result { display: flex; align-items: center; justify-content: center; height: 180rpx; }
.game_result_num { font-size: 92rpx; font-weight: 900; color: #ee5016; }
.game_bet { display: flex; align-items: center; border: 2rpx solid #eee; border-radius: 12rpx; padding: 0 20rpx; height: 84rpx; }
.game_bet_label { font-size: 26rpx; color: #b9b9b9; margin-right: 16rpx; }
.game_bet_input { flex: 1; font-size: 32rpx; }
.game_btns { display: flex; margin-top: 24rpx; }
.game_btn { flex: 1; height: 88rpx; line-height: 88rpx; margin: 0 8rpx; border-radius: 12rpx; text-align: center; color: #fff; font-size: 26rpx; font-weight: 700; }
.game_btn.green { background: #2bbf6a; }
.game_btn.violet { background: #8a4bd8; }
.game_btn.red { background: #ff5c5c; }
.game_tabs { display: flex; margin: 0 24rpx; background: #fff; border-radius: 16rpx 16rpx 0 0; }
.game_tab { flex: 1; text-align: center; padding: 26rpx 0; font-size: 28rpx; color: #b9b9b9; }
.game_tab.on { color: #17273a; font-weight: 700; border-bottom: 4rpx solid #ee5016; }
.game_list { margin: 0 24rpx; background: #fff; border-radius: 0 0 16rpx 16rpx; padding: 0 24rpx; }
.game_row { display: flex; align-items: center; justify-content: space-between; padding: 24rpx 0; border-bottom: 2rpx solid #f5f5f5; }
.game_row_period { font-size: 28rpx; color: #17273a; }
.game_row_time { margin-top: 6rpx; font-size: 22rpx; color: #b9b9b9; }
.game_ball { display: inline-block; width: 56rpx; height: 56rpx; line-height: 56rpx; border-radius: 50%; text-align: center; color: #fff; font-weight: 700; }
.game_ball.green { background: #2bbf6a; }
.game_ball.red { background: #ff5c5c; }
.game_ball.violet { background: #8a4bd8; }
.game_row_right { font-size: 28rpx; font-weight: 700; color: #b9b9b9; }
.game_row_right.win { color: #2bbf6a; }
</style>
