<script setup lang="ts">
// Custom navigation bar used across ORich pages (navigationStyle: custom).
import { computed } from 'vue';
const props = defineProps<{
  title?: string;
  bgColor?: string;
  color?: string;
  back?: boolean;
  isBack?: boolean;
}>();
const showBack = computed(() => props.back !== false && props.isBack !== false);
const statusBarHeight = computed(() => (uni.getSystemInfoSync().statusBarHeight || 0) + 'px');
function goBack() {
  const pages = getCurrentPages();
  if (pages.length > 1) uni.navigateBack();
  else uni.switchTab({ url: '/pages/home/home' });
}
</script>
<template>
  <view class="navbar" :style="{ background: props.bgColor || '#F8F8F8' }">
    <view class="status" :style="{ height: statusBarHeight }" />
    <view class="bar">
      <view class="side" @click="goBack">
        <text v-if="showBack" class="arrow" :style="{ color: props.color || '#17273a' }">‹</text>
      </view>
      <text class="title" :style="{ color: props.color || '#17273a' }">{{ props.title }}</text>
      <view class="side"><slot name="right" /></view>
    </view>
  </view>
</template>
<style scoped>
.navbar { width: 100%; }
.bar { height: 88rpx; display: flex; align-items: center; justify-content: space-between; padding: 0 20rpx; }
.side { width: 90rpx; display: flex; align-items: center; }
.arrow { font-size: 60rpx; line-height: 60rpx; }
.title { flex: 1; text-align: center; font-size: 34rpx; font-weight: 700; }
</style>
