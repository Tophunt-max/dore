<script setup lang="ts">
import { useUserStore } from '@/store/user';
import { setLocale, i18n } from '@/locale';
const store = useUserStore();
function go(url: string) {
  uni.navigateTo({ url });
}
function toggleLang() {
  const next = (i18n.global.locale as any).value === 'en' ? 'zh' : 'en';
  setLocale(next);
  uni.showToast({ title: next.toUpperCase(), icon: 'none' });
}
function logout() {
  uni.showModal({
    title: 'Logout',
    content: 'Are you sure you want to logout?',
    success: (r) => {
      if (r.confirm) {
        store.logout();
        uni.reLaunch({ url: '/pages/login/login' });
      }
    },
  });
}
</script>
<template>
  <view class="page">
    <view class="card">
      <view class="row" @click="go('/pages/account/username')"><text>Username</text><text class="arrow">›</text></view>
      <view class="row" @click="go('/pages/address/address')"><text>Addresses</text><text class="arrow">›</text></view>
      <view class="row" @click="toggleLang"><text>Language</text><text class="arrow">EN / 中文 ›</text></view>
      <view class="row" @click="go('/pages/richtext/rule')"><text>Rules</text><text class="arrow">›</text></view>
      <view class="row" @click="go('/pages/account/aboutus')"><text>About Us</text><text class="arrow">›</text></view>
    </view>
    <view class="logout" @click="logout">Logout</view>
  </view>
</template>
<style scoped>
.page { min-height: 100vh; padding: 20rpx; }
.card { background: #fff; border-radius: 16rpx; padding: 0 30rpx; }
.row { display: flex; justify-content: space-between; align-items: center; height: 100rpx; border-bottom: 2rpx solid #f5f5f5; font-size: 30rpx; }
.arrow { color: #ccc; }
.logout { margin-top: 40rpx; text-align: center; height: 92rpx; line-height: 92rpx; background: #fff; border-radius: 16rpx; color: #ff5c5c; font-size: 30rpx; }
</style>
