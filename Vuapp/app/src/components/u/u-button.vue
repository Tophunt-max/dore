<script setup lang="ts">
const props = defineProps<{ type?: string; size?: string; disabled?: boolean; plain?: boolean }>();
const emit = defineEmits<{ (e: 'click'): void }>();
</script>
<template>
  <view class="u-button" :class="[props.type, props.plain ? 'plain' : '', props.disabled ? 'is-disabled' : '']" @click="!props.disabled && emit('click')">
    <slot />
  </view>
</template>
<style scoped>
.u-button { display: inline-flex; align-items: center; justify-content: center; padding: 0 20rpx; font-size: 28rpx; color: inherit; }
.u-button.is-disabled { opacity: 0.6; }
</style>
