<script setup lang="ts">
// ORich's shared primary action button. Props mirror the original:
// canSubmit (whether it is disabled), loading, btnText, fontSize, btnType.
import { computed } from 'vue';
const props = defineProps<{
  canSubmit?: boolean;
  loading?: boolean;
  btnText?: string;
  fontSize?: number | string;
  btnType?: string; // 'submit' | 'disabled'
}>();
const emit = defineEmits<{ (e: 'btnAction'): void }>();
const disabled = computed(() => props.btnType === 'disabled' || props.canSubmit === true || props.loading);
const plain = computed(() => props.btnType === 'plain');
const fs = computed(() => `${props.fontSize ?? 32}rpx`);
function tap() {
  if (!disabled.value) emit('btnAction');
}
</script>
<template>
  <view class="overbtn" :class="{ disabled, plain }" :style="{ fontSize: fs }" @click="tap">
    <text v-if="props.loading" class="spinner" />
    <text>{{ props.btnText }}</text>
  </view>
</template>
<style scoped>
.overbtn {
  display: flex;
  align-items: center;
  justify-content: center;
  width: 100%;
  height: 100%;
  min-height: 70rpx;
  border-radius: 12rpx;
  background: #ee5016;
  color: #fff;
  font-family: Roboto, 'PingFang SC';
  font-weight: 700;
}
.overbtn.disabled {
  background: #f4c3b0;
}
.overbtn.plain {
  background: transparent;
  color: #ee5016;
  border: 2rpx solid #ee5016;
}
.spinner {
  width: 30rpx;
  height: 30rpx;
  margin-right: 14rpx;
  border: 4rpx solid rgba(255, 255, 255, 0.5);
  border-top-color: #fff;
  border-radius: 50%;
  animation: spin 0.8s linear infinite;
}
@keyframes spin {
  to { transform: rotate(360deg); }
}
</style>
