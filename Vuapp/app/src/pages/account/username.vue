<script setup lang="ts">
// Faithful port of ORich pages/account/username (edit nickname).
import { ref } from 'vue';
import { onShow } from '@dcloudio/uni-app';
import { AccountData, SetUsername } from '@/api/orich';

const username = ref('');

onShow(async () => {
  const r: any = await AccountData();
  if (r && r.ok !== false) username.value = r.nickname === '-' ? '' : r.nickname;
});

async function save() {
  const v = username.value.trim();
  if (!v) {
    uni.showToast({ title: 'Please enter a name', icon: 'none' });
    return;
  }
  if (v.length > 24) {
    uni.showToast({ title: 'The number of nickname characters exceeds the limit.', icon: 'none' });
    return;
  }
  const r: any = await SetUsername({ username: v });
  if (r.ok) {
    uni.showToast({ title: 'Edit success!', icon: 'none' });
    setTimeout(() => uni.navigateBack(), 600);
  } else uni.showToast({ title: 'Edit fail', icon: 'none' });
}
</script>

<template>
  <view class="username">
    <navbar :title="$t('common.name')" background="#ffffff" />
    <view class="username_main">
      <input v-model="username" class="username_input" :placeholder="$t('common.name')" maxlength="24" />
    </view>
    <view class="username_btn">
      <overbtn :btnText="$t('common.confirm')" :fontSize="30" btnType="submit" @btnAction="save" />
    </view>
  </view>
</template>

<style scoped>
.username { min-height: 100vh; background: #f9f9f9; }
.username_main { background: #fff; margin-top: 16rpx; padding: 0 30rpx; }
.username_input { height: 110rpx; font-size: 32rpx; color: #17273a; }
.username_btn { margin: 40rpx 30rpx; height: 92rpx; }
</style>
