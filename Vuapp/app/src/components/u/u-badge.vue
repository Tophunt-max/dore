<script setup lang="ts">
// uView u-badge clone: small count bubble; hidden when count is falsy.
import { computed } from 'vue';
const props = defineProps<{ count?: number | string; isCenter?: boolean; type?: string }>();
const show = computed(() => {
  const n = Number(props.count);
  return !!props.count && !isNaN(n) && n > 0;
});
</script>
<template>
  <text v-if="show" class="u-badge" :class="{ center: props.isCenter }">{{ props.count }}</text>
</template>
<style scoped>
.u-badge {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  min-width: 32rpx;
  height: 32rpx;
  padding: 0 8rpx;
  background: #ff5c5c;
  border: 2rpx solid #fff;
  border-radius: 999rpx;
  color: #fff;
  font-size: 20rpx;
  line-height: 1;
}
.u-badge.center {
  position: absolute;
  top: -10rpx;
  right: -10rpx;
}
</style>
