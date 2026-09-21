<script setup lang="ts">
// uView notice-bar clone. Accepts `list` (array) or `text`; scrolls vertically.
const props = defineProps<{ list?: any[]; text?: string; color?: string; bgColor?: string }>();
const emit = defineEmits<{ (e: 'click', index: number): void }>();
</script>
<template>
  <view class="u-notice" :style="{ background: props.bgColor || 'transparent' }">
    <swiper v-if="props.list && props.list.length" class="sw" vertical circular :autoplay="true" :interval="3000" :disable-touch="true">
      <swiper-item v-for="(it, i) in props.list" :key="i" @click="emit('click', i)">
        <text class="txt" :style="{ color: props.color || '#ee5016' }">{{ typeof it === 'string' ? it : it.text || it.title }}</text>
      </swiper-item>
    </swiper>
    <text v-else class="txt" :style="{ color: props.color || '#ee5016' }">{{ props.text }}</text>
  </view>
</template>
<style scoped>
.u-notice { width: 100%; height: 60rpx; overflow: hidden; }
.sw { height: 60rpx; }
.txt { display: block; line-height: 60rpx; font-size: 26rpx; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; }
</style>
