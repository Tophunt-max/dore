<script setup lang="ts">
// Faithful port of ORich pages/account/setting.
// Rows mirror the original: Avatar, Name, Phone, Address, Bank Account + Log Out.
import { ref } from 'vue';
import { onShow } from '@dcloudio/uni-app';
import { AccountData, Logout, SetAvatar } from '@/api/orich';
import { clearTokens, api } from '@/api/request';
import { LOCALES, setLocale, currentLocale } from '@/locale';

const info = ref<any>({ nickname: '-', mobile: '-', headimgurl: '' });
const showLang = ref(false);
const langLabel = () => LOCALES.find((l) => l.code === currentLocale())?.label || 'English';

onShow(async () => {
  const r: any = await AccountData();
  if (r && r.ok !== false) info.value = r;
});

function go(url: string) {
  uni.navigateTo({ url });
}
function pickAvatar() {
  uni.chooseImage({
    count: 1,
    success: (res) => {
      uni.uploadFile({
        url: `${api.base}/api/upload`,
        filePath: res.tempFilePaths[0],
        name: 'file',
        header: { Authorization: `Bearer ${uni.getStorageSync('access_token')}`, 'Content-Type': 'image/jpeg' },
        success: async (up) => {
          try {
            const d = JSON.parse(up.data);
            if (d.ok) {
              await SetAvatar({ avatar: d.key });
              uni.showToast({ title: 'Edit success!', icon: 'none' });
            }
          } catch {
            uni.showToast({ title: 'Edit fail', icon: 'none' });
          }
        },
      });
    },
  });
}
function pickLang(code: string) {
  setLocale(code);
  showLang.value = false;
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
    <navbar :title="$t('account.settitle')" background="#ffffff" />

    <view class="setting_main">
      <view class="setting_item" @click="pickAvatar">
        <view class="setting_item_left">{{ $t('common.avatar') }}</view>
        <view class="setting_item_right">
          <image class="setting_avatar" :src="info.headimgurl || '/static/image/other.png'" mode="aspectFill" />
          <u-icon name="arrow-right" color="#cccccc" size="14" />
        </view>
      </view>

      <view class="setting_item" @click="go('./username')">
        <view class="setting_item_left">{{ $t('common.name') }}</view>
        <view class="setting_item_right">
          <text class="setting_item_value">{{ info.nickname }}</text>
          <u-icon name="arrow-right" color="#cccccc" size="14" />
        </view>
      </view>

      <view class="setting_item">
        <view class="setting_item_left">{{ $t('common.phone') }}</view>
        <view class="setting_item_right">
          <text class="setting_item_value">{{ info.mobile }}</text>
        </view>
      </view>

      <view class="setting_item" @click="go('../address/address')">
        <view class="setting_item_left">{{ $t('common.address') }}</view>
        <u-icon name="arrow-right" color="#cccccc" size="14" />
      </view>

      <view class="setting_item" @click="go('../payment/payment')">
        <view class="setting_item_left">{{ $t('account.bank') }}</view>
        <u-icon name="arrow-right" color="#cccccc" size="14" />
      </view>

      <view class="setting_item" @click="showLang = true">
        <view class="setting_item_left">Language</view>
        <view class="setting_item_right">
          <text class="setting_item_value">{{ langLabel() }}</text>
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
.setting_avatar { width: 68rpx; height: 68rpx; border-radius: 50%; margin-right: 12rpx; }
.setting_logout { margin: 40rpx 30rpx; height: 92rpx; line-height: 92rpx; text-align: center; background: #fff; border-radius: 16rpx; color: #ff5c5c; font-size: 30rpx; }
.lang_mask { position: fixed; inset: 0; z-index: 9999; background: rgba(0, 0, 0, 0.5); display: flex; align-items: flex-end; }
.lang_sheet { width: 100%; background: #fff; border-radius: 24rpx 24rpx 0 0; padding: 20rpx 0 40rpx; }
.lang_item { padding: 30rpx; text-align: center; font-size: 30rpx; border-bottom: 2rpx solid #f5f5f5; }
.lang_item.on { color: #ee5016; font-weight: 700; }
</style>
