<script setup lang="ts">
// Faithful port of ORich pages/account/setting.
import { ref } from 'vue';
import { Logout } from '@/api/orich';
import { clearTokens } from '@/api/request';
import { LOCALES, setLocale, currentLocale } from '@/locale';

const showLang = ref(false);
const langLabel = () => LOCALES.find((l) => l.code === currentLocale())?.label || 'English';

const rows = [
  { title: 'account.username', url: './username' },
  { title: 'address.title', url: '../address/address' },
  { title: 'account.myteam', url: './team' },
];

function go(url: string) {
  uni.navigateTo({ url });
}
function pickLang(code: string) {
  setLocale(code);
  showLang.value = false;
  setTimeout(() => uni.showToast({ title: code === 'hi_di' ? 'हिंदी' : 'English', icon: 'none' }), 100);
}
function logout() {
  uni.showModal({
    title: '',
    content: 'Log out of vuapp?',
    success: (r) => {
      if (r.confirm) {
        Logout().catch(() => {});
        clearTokens();
        uni.reLaunch({ url: '../login/login' });
      }
    },
  });
}
</script>

<template>
  <view class="setting">
    <navbar title="Settings" background="#ffffff" />

    <view class="setting_main">
      <view v-for="(r, i) in rows" :key="i" class="setting_item" @click="go(r.url)">
        <view class="setting_item_left">{{ $t(r.title) }}</view>
        <u-icon name="arrow-right" color="#cccccc" size="14" />
      </view>

      <view class="setting_item" @click="showLang = true">
        <view class="setting_item_left">Language</view>
        <view class="setting_item_right">
          <text class="setting_item_value">{{ langLabel() }}</text>
          <u-icon name="arrow-right" color="#cccccc" size="14" />
        </view>
      </view>

      <view class="setting_item" @click="go('../richtext/rule')">
        <view class="setting_item_left">{{ $t('prize.rules') }}</view>
        <u-icon name="arrow-right" color="#cccccc" size="14" />
      </view>
      <view class="setting_item" @click="go('./aboutus')">
        <view class="setting_item_left">{{ $t('account.about') }}</view>
        <view class="setting_item_right">
          <text class="setting_item_value">{{ $t('account.version') }}1.0.0</text>
          <u-icon name="arrow-right" color="#cccccc" size="14" />
        </view>
      </view>
    </view>

    <view class="setting_logout" @click="logout">{{ $t('account.logout') }}</view>

    <view v-if="showLang" class="lang_mask" @click="showLang = false">
      <view class="lang_sheet" @click.stop>
        <view v-for="l in LOCALES" :key="l.code" class="lang_item" :class="{ on: currentLocale() === l.code }" @click="pickLang(l.code)">
          {{ l.label }}
        </view>
      </view>
    </view>
  </view>
</template>

<style>
@import './setting.css';
</style>

<style scoped>
.setting { min-height: 100vh; background: #f9f9f9; }
.setting_main { background: #fff; margin-top: 16rpx; padding: 0 30rpx; }
.setting_item { display: flex; align-items: center; justify-content: space-between; height: 110rpx; border-bottom: 2rpx solid #f5f5f5; }
.setting_item:last-child { border-bottom: none; }
.setting_item_left { font-size: 30rpx; color: #17273a; }
.setting_item_right { display: flex; align-items: center; }
.setting_item_value { font-size: 26rpx; color: #b9b9b9; margin-right: 10rpx; }
.setting_logout { margin: 40rpx 30rpx; height: 92rpx; line-height: 92rpx; text-align: center; background: #fff; border-radius: 16rpx; color: #ff5c5c; font-size: 30rpx; }
.lang_mask { position: fixed; inset: 0; z-index: 9999; background: rgba(0, 0, 0, 0.5); display: flex; align-items: flex-end; }
.lang_sheet { width: 100%; background: #fff; border-radius: 24rpx 24rpx 0 0; padding: 20rpx 0 40rpx; }
.lang_item { padding: 30rpx; text-align: center; font-size: 30rpx; border-bottom: 2rpx solid #f5f5f5; }
.lang_item.on { color: #ee5016; font-weight: 700; }
</style>
