<script setup lang="ts">
// ORich shared confirm popup. Exposes open()/close(); emits confirm/cancel.
import { ref } from 'vue';
const props = defineProps<{
  confirmText?: string;
  cancelText?: string;
  conetnt?: string; // original prop spelling
  content?: string;
  popType?: string;
}>();
const emit = defineEmits<{ (e: 'confirm'): void; (e: 'cancel'): void }>();
const visible = ref(false);
function open() {
  visible.value = true;
}
function close() {
  visible.value = false;
}
function onConfirm() {
  emit('confirm');
  close();
}
function onCancel() {
  emit('cancel');
  close();
}
defineExpose({ open, close });
</script>
<template>
  <view v-if="visible" class="op-mask" @click="onCancel">
    <view class="op-box" @click.stop>
      <view class="op-content">{{ props.conetnt || props.content }}</view>
      <view class="op-btns">
        <view class="op-btn op-cancel" @click="onCancel">{{ props.cancelText || 'Cancel' }}</view>
        <view class="op-btn op-confirm" @click="onConfirm">{{ props.confirmText || 'Confirm' }}</view>
      </view>
    </view>
  </view>
</template>
<style scoped>
.op-mask { position: fixed; inset: 0; z-index: 9999; display: flex; align-items: center; justify-content: center; background: rgba(0, 0, 0, 0.5); }
.op-box { width: 560rpx; background: #fff; border-radius: 20rpx; padding: 48rpx 40rpx 30rpx; }
.op-content { font-size: 30rpx; color: #17273a; text-align: center; line-height: 46rpx; margin-bottom: 40rpx; }
.op-btns { display: flex; }
.op-btn { flex: 1; height: 80rpx; line-height: 80rpx; text-align: center; border-radius: 44rpx; font-size: 28rpx; margin: 0 10rpx; }
.op-cancel { border: 2rpx solid #b9b9b9; color: #666; }
.op-confirm { background: #ee5016; color: #fff; }
</style>
