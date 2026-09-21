<script setup lang="ts">
import { ref } from 'vue';
import { onShow } from '@dcloudio/uni-app';
import { useUserStore } from '@/store/user';
import { formatMinor } from '@/utils/money';

const store = useUserStore();
const counts = ref<any>({ orders: 0, wins: 0, team: 0 });

async function load() {
  const res = await store.fetchAccount();
  if (res.ok) counts.value = res.counts || counts.value;
}
onShow(() => {
  if (!store.isLoggedIn && !uni.getStorageSync('access_token')) {
    uni.navigateTo({ url: '/pages/login/login' });
    return;
  }
  load();
});

function go(url: string) {
  uni.navigateTo({ url });
}
const menu = [
  { t: 'My Orders', url: '/pages/order/record', icon: '/static/image/account/order.png' },
  { t: 'My Team', url: '/pages/account/team', icon: '/static/image/account/team.png' },
  { t: 'Beneficiaries', url: '/pages/payment/payment', icon: '/static/image/account/bank.png' },
  { t: 'Funding Records', url: '/pages/account/funding', icon: '/static/image/account/record.png' },
  { t: 'My Finance', url: '/pages/finance/order', icon: '/static/image/account/finance.png' },
  { t: 'Invite Friends', url: '/pages/invitation/invitation', icon: '/static/image/account/invite.png' },
  { t: 'Help', url: '/pages/help/help', icon: '/static/image/account/help.png' },
  { t: 'Support', url: '/pages/account/service', icon: '/static/image/account/service.png' },
  { t: 'About Us', url: '/pages/account/aboutus', icon: '/static/image/account/about.png' },
  { t: 'Settings', url: '/pages/account/setting', icon: '/static/image/account/setting.png' },
];
</script>

<template>
  <view class="page">
    <view class="head">
      <view class="profile" @click="go('/pages/account/username')">
        <image class="avatar" :src="store.user?.avatar || '/static/image/other.png'" mode="aspectFill" />
        <view class="pinfo">
          <text class="uname">{{ store.user?.username || 'Login' }}</text>
          <text class="uid">ID: {{ store.user?.id }} · Invite {{ store.user?.invite_code }}</text>
        </view>
      </view>
      <view class="wallet card">
        <view class="wleft">
          <text class="wlabel">Wallet Balance</text>
          <text class="wbal">{{ formatMinor(store.balanceMinor) }}</text>
        </view>
        <view class="wbtns">
          <view class="wbtn primary-btn" @click="go('/pages/payment/recharge')">Recharge</view>
          <view class="wbtn out" @click="go('/pages/payment/cashOut')">Withdraw</view>
        </view>
      </view>
      <view class="stats">
        <view class="stat"><text class="sv">{{ counts.orders }}</text><text class="sl">Orders</text></view>
        <view class="stat"><text class="sv">{{ counts.wins }}</text><text class="sl">Wins</text></view>
        <view class="stat"><text class="sv">{{ counts.team }}</text><text class="sl">Team</text></view>
      </view>
    </view>

    <view class="menu card">
      <view v-for="(m, i) in menu" :key="i" class="mitem" @click="go(m.url)">
        <image class="micon" :src="m.icon" mode="aspectFit" />
        <text class="mt">{{ m.t }}</text>
        <text class="arrow">›</text>
      </view>
    </view>
  </view>
</template>

<style scoped>
.page {
  min-height: 100vh;
  padding-bottom: 40rpx;
}
.head {
  background: linear-gradient(180deg, #ff7d4d, #ee5016);
  padding: 40rpx 30rpx 60rpx;
}
.profile {
  display: flex;
  align-items: center;
}
.avatar {
  width: 110rpx;
  height: 110rpx;
  border-radius: 50%;
  border: 4rpx solid #fff;
}
.pinfo {
  margin-left: 24rpx;
}
.uname {
  font-size: 36rpx;
  font-weight: 700;
  color: #fff;
}
.uid {
  display: block;
  margin-top: 8rpx;
  font-size: 24rpx;
  color: rgba(255, 255, 255, 0.85);
}
.wallet {
  margin-top: 30rpx;
  padding: 30rpx;
  display: flex;
  align-items: center;
  justify-content: space-between;
}
.wlabel {
  font-size: 26rpx;
  color: #b9b9b9;
}
.wbal {
  display: block;
  margin-top: 8rpx;
  font-size: 44rpx;
  font-weight: 900;
  color: #ee5016;
}
.wbtns {
  display: flex;
}
.wbtn {
  height: 64rpx;
  line-height: 64rpx;
  padding: 0 28rpx;
  border-radius: 40rpx;
  font-size: 26rpx;
  margin-left: 16rpx;
}
.wbtn.out {
  background: #fff;
  color: #ee5016;
  border: 2rpx solid #ee5016;
}
.stats {
  display: flex;
  margin-top: 30rpx;
}
.stat {
  flex: 1;
  display: flex;
  flex-direction: column;
  align-items: center;
}
.sv {
  font-size: 40rpx;
  font-weight: 700;
  color: #fff;
}
.sl {
  font-size: 24rpx;
  color: rgba(255, 255, 255, 0.85);
}
.menu {
  margin: -30rpx 20rpx 0;
  padding: 10rpx 30rpx;
}
.mitem {
  display: flex;
  align-items: center;
  height: 100rpx;
  border-bottom: 2rpx solid #f5f5f5;
}
.micon {
  width: 44rpx;
  height: 44rpx;
  margin-right: 24rpx;
}
.mt {
  flex: 1;
  font-size: 30rpx;
}
.arrow {
  color: #ccc;
  font-size: 40rpx;
}
</style>
