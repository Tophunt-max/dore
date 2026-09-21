<script setup lang="ts">
import { ref } from 'vue';
import { onShow } from '@dcloudio/uni-app';
import { api } from '@/api/request';
import { formatMinor } from '@/utils/money';
const code = ref('');
const stats = ref<any>({ total: 0, recent: 0 });
const earnings = ref(0);
onShow(async () => {
  const res = await api.get('/api/referrals');
  if (res.ok) {
    code.value = res.invite_code;
    stats.value = res.stats || stats.value;
    earnings.value = res.referral_earnings_minor || 0;
  }
});
function copyCode() {
  uni.setClipboardData({ data: code.value, success: () => uni.showToast({ title: 'Copied', icon: 'none' }) });
}
function copyLink() {
  const link = `${api.base.replace(/\/$/, '')}/#/pages/login/login?invite=${code.value}`;
  uni.setClipboardData({ data: link, success: () => uni.showToast({ title: 'Link copied', icon: 'none' }) });
}
</script>
<template>
  <view class="page">
    <nav-bar title="Invite & Earn" bg="transparent" color="#fff" back />
    <view class="hero">
      <text class="ht">Invite friends, earn rewards</text>
      <text class="hd">Share your code. When friends join and play, you earn.</text>
    </view>
    <view class="codecard">
      <text class="cl">Your invite code</text>
      <text class="code">{{ code }}</text>
      <view class="btns">
        <view class="b out" @click="copyCode">Copy Code</view>
        <view class="b primary-btn" @click="copyLink">Copy Link</view>
      </view>
    </view>
    <view class="stats">
      <view class="stat card"><text class="sv">{{ stats.total || 0 }}</text><text class="sl">Total invites</text></view>
      <view class="stat card"><text class="sv">{{ stats.recent || 0 }}</text><text class="sl">Last 30 days</text></view>
      <view class="stat card"><text class="sv">{{ formatMinor(earnings) }}</text><text class="sl">Earnings</text></view>
    </view>
  </view>
</template>
<style scoped>
.page { min-height: 100vh; background: linear-gradient(180deg, #ee5016, #f6f6f6 45%); }
.hero { padding: 20rpx 40rpx 40rpx; }
.ht { font-size: 44rpx; font-weight: 800; color: #fff; }
.hd { display: block; margin-top: 16rpx; color: rgba(255,255,255,0.9); font-size: 28rpx; }
.codecard { margin: 0 30rpx; background: #fff; border-radius: 20rpx; padding: 40rpx; text-align: center; }
.cl { color: #b9b9b9; font-size: 26rpx; }
.code { display: block; margin: 16rpx 0 30rpx; font-size: 60rpx; font-weight: 900; letter-spacing: 8rpx; color: #ee5016; }
.btns { display: flex; }
.b { flex: 1; height: 84rpx; line-height: 84rpx; margin: 0 12rpx; border-radius: 44rpx; font-size: 28rpx; }
.b.out { border: 2rpx solid #ee5016; color: #ee5016; }
.stats { display: flex; padding: 30rpx; }
.stat { flex: 1; margin: 0 8rpx; padding: 30rpx 10rpx; text-align: center; }
.sv { font-size: 36rpx; font-weight: 700; color: #17273a; }
.sl { display: block; margin-top: 8rpx; font-size: 22rpx; color: #b9b9b9; }
</style>
