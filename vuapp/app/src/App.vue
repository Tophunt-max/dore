<script setup lang="ts">
import { onLaunch } from '@dcloudio/uni-app';
import { useUserStore } from '@/store/user';

onLaunch(() => {
  const token = uni.getStorageSync('access_token');
  if (token) {
    useUserStore().fetchAccount();
  }
});
</script>

<template>
  <view />
</template>

<style lang="scss">
/* Global reset + shared classes recovered from the ORich reference bundle */
page {
  background-color: #f6f6f6;
  font-family: Roboto, 'PingFang SC', -apple-system, Helvetica, sans-serif;
  color: #17273a;
}
view,
text,
image {
  box-sizing: border-box;
}
.flex-row {
  display: flex;
  flex-direction: row;
  align-items: center;
}
.flex-col {
  display: flex;
  flex-direction: column;
}
.brand-btn {
  background: linear-gradient(115deg, #ffe44b, #fea326);
  box-shadow: 0rpx -4rpx 8rpx 0rpx rgba(255, 125, 0, 0.5) inset;
  color: #ad6701;
  border-radius: 8rpx;
  text-align: center;
}
.primary-btn {
  background: #ee5016;
  color: #fff;
  border-radius: 12rpx;
  text-align: center;
}
.card {
  background: #fff;
  border-radius: 16rpx;
}
.muted {
  color: #b9b9b9;
}
.price {
  color: #ee5016;
  font-weight: 700;
}
.nodata {
  text-align: center;
  color: #b9b9b9;
  padding: 80rpx 0;
  font-size: 28rpx;
}
</style>
