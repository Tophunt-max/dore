<script setup lang="ts">
import { computed } from 'vue';
const props = defineProps<{
  percent?: number;
  activeColor?: string;
  inactiveColor?: string;
  height?: number | string;
}>();
const w = computed(() => Math.max(0, Math.min(100, Number(props.percent) || 0)) + '%');
const h = computed(() => {
  const v = props.height ?? 12;
  return typeof v === 'number' || /^\d+$/.test(String(v)) ? `${v}rpx` : String(v);
});
</script>
<template>
  <view class="lp" :style="{ height: h, background: props.inactiveColor || '#f0f0f0' }">
    <view class="lp-in" :style="{ width: w, background: props.activeColor || 'linear-gradient(90deg,#ffe44b,#fea326)' }" />
  </view>
</template>
<style scoped>
.lp { width: 100%; border-radius: 999rpx; overflow: hidden; }
.lp-in { height: 100%; border-radius: 999rpx; }
</style>
