<script setup lang="ts">
// Custom navigation bar (ORich uses navigationStyle: custom on several pages).
import { computed } from 'vue';

const props = defineProps<{
  title?: string;
  bg?: string;
  color?: string;
  back?: boolean;
}>();

const statusBarHeight = computed(() => {
  const info = uni.getSystemInfoSync();
  return (info.statusBarHeight || 0) + 'px';
});

function goBack() {
  const pages = getCurrentPages();
  if (pages.length > 1) uni.navigateBack();
  else uni.switchTab({ url: '/pages/home/home' });
}
</script>

<template>
  <view class="nav" :style="{ background: props.bg || '#F8F8F8' }">
    <view class="status" :style="{ height: statusBarHeight }" />
    <view class="bar">
      <view v-if="props.back !== false" class="back" @click="goBack">
        <text class="back-arrow" :style="{ color: props.color || '#17273a' }">‹</text>
      </view>
      <text class="title" :style="{ color: props.color || '#17273a' }">{{ props.title }}</text>
      <view class="back" />
    </view>
  </view>
</template>

<style scoped>
.nav {
  width: 100%;
}
.bar {
  height: 88rpx;
  display: flex;
  flex-direction: row;
  align-items: center;
  justify-content: space-between;
  padding: 0 20rpx;
}
.back {
  width: 80rpx;
  display: flex;
  align-items: center;
}
.back-arrow {
  font-size: 56rpx;
  line-height: 56rpx;
}
.title {
  flex: 1;
  text-align: center;
  font-size: 34rpx;
  font-weight: 700;
}
</style>
