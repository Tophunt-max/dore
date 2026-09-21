<script setup lang="ts">
// Faithful port of ORich pages/account/team (my team + referral stats).
import { ref } from 'vue';
import { onShow } from '@dcloudio/uni-app';
import { Team, Referrals } from '@/api/orich';
import { formatMinor } from '@/utils/money';

const members = ref<any[]>([]);
const total = ref(0);
const recent = ref(0);
const earnings = ref(0);

onShow(async () => {
  const t: any = await Team();
  if (t.ok) members.value = t.members || [];
  const r: any = await Referrals();
  if (r.ok) {
    total.value = (r.stats && r.stats.total) || 0;
    recent.value = (r.stats && r.stats.recent) || 0;
    earnings.value = r.referral_earnings_minor || 0;
  }
});

function toInvite() {
  uni.navigateTo({ url: '../invitation/invitation' });
}
function openMember(id: number) {
  uni.navigateTo({ url: `./teamDetail?id=${id}` });
}
</script>

<template>
  <view class="team">
    <navbar :title="$t('account.myteam')" background="transparent" titleColor="#ffffff" backColor="#ffffff" />

    <view class="team_head">
      <view class="team_head_item">
        <view class="v">{{ total }}</view>
        <view class="l">{{ $t('invite.inv') }}</view>
      </view>
      <view class="team_head_item">
        <view class="v">{{ recent }}</view>
        <view class="l">30 days</view>
      </view>
      <view class="team_head_item">
        <view class="v">{{ formatMinor(earnings) }}</view>
        <view class="l">{{ $t('invite.rew') }}</view>
      </view>
    </view>

    <view class="team_list">
      <view v-for="m in members" :key="m.id" class="team_row" @click="openMember(m.id)">
        <image class="team_avatar" :src="m.avatar || '/static/image/other.png'" mode="aspectFill" />
        <view class="team_info">
          <view class="team_name">{{ m.username }}</view>
          <view class="team_time">{{ new Date(m.created_at * 1000).toLocaleDateString() }}</view>
        </view>
        <u-icon name="arrow-right" color="#cccccc" size="14" />
      </view>
      <view v-if="!members.length" class="team_empty">
        <view class="nodata">{{ $t('common.nodata') }}</view>
        <view class="team_empty_btn" @click="toInvite">{{ $t('invite.slink') }}</view>
      </view>
    </view>
  </view>
</template>

<style>
@import './team.css';
</style>

<style scoped>
.team { min-height: 100vh; background: #f9f9f9; background-image: linear-gradient(180deg, #ff7d4d 0, #ee5016 300rpx, #f9f9f9 300rpx); padding-bottom: 60rpx; }
.team_head { display: flex; margin: 10rpx 24rpx 0; padding: 30rpx 10rpx; border-radius: 20rpx; background: rgba(255, 255, 255, 0.16); color: #fff; }
.team_head_item { flex: 1; text-align: center; }
.team_head_item .v { font-size: 36rpx; font-weight: 900; color: #ffd24d; }
.team_head_item .l { margin-top: 6rpx; font-size: 22rpx; opacity: 0.9; }
.team_list { margin: 24rpx; background: #fff; border-radius: 16rpx; padding: 0 24rpx; }
.team_row { display: flex; align-items: center; padding: 24rpx 0; border-bottom: 2rpx solid #f5f5f5; }
.team_row:last-child { border-bottom: none; }
.team_avatar { width: 76rpx; height: 76rpx; border-radius: 50%; margin-right: 20rpx; }
.team_info { flex: 1; }
.team_name { font-size: 30rpx; font-weight: 700; color: #17273a; }
.team_time { margin-top: 6rpx; font-size: 24rpx; color: #b9b9b9; }
.team_empty { padding: 30rpx 0 40rpx; text-align: center; }
.team_empty_btn { margin: 10rpx auto 0; width: 260rpx; height: 76rpx; line-height: 76rpx; border-radius: 40rpx; background: #ee5016; color: #fff; font-size: 28rpx; }
</style>
