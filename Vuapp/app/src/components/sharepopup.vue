<script setup lang="ts">
// ORich share popup. Exposes open()/close().
import { ref } from 'vue';
const props = defineProps<{ showPopup?: boolean; shareType?: string; orderID?: any }>();
const visible = ref(false);
function open() {
  visible.value = true;
}
function close() {
  visible.value = false;
}
function copyLink() {
  uni.setClipboardData({ data: 'https://vuapp-user.pages.dev', success: () => uni.showToast({ title: 'Link copied', icon: 'none' }) });
  close();
}
defineExpose({ open, close });
</script>
<template>
  <view v-if="visible" class="sp-mask" @click="close">
    <view class="sp-sheet" @click.stop>
      <view class="sp-title">Share</view>
      <view class="sp-row">
        <view class="sp-item" @click="copyLink"><text class="sp-ic">🔗</text><text>Copy link</text></view>
        <view class="sp-item" @click="copyLink"><text class="sp-ic">💬</text><text>WhatsApp</text></view>
        <view class="sp-item" @click="copyLink"><text class="sp-ic">📘</text><text>Facebook</text></view>
      </view>
      <view class="sp-cancel" @click="close">Cancel</view>
    </view>
  </view>
</template>
<style scoped>
.sp-mask { position: fixed; inset: 0; z-index: 9999; background: rgba(0, 0, 0, 0.5); display: flex; align-items: flex-end; }
.sp-sheet { width: 100%; background: #fff; border-radius: 24rpx 24rpx 0 0; padding: 30rpx; }
.sp-title { text-align: center; font-size: 30rpx; font-weight: 700; margin-bottom: 24rpx; }
.sp-row { display: flex; justify-content: space-around; padding: 20rpx 0 30rpx; }
.sp-item { display: flex; flex-direction: column; align-items: center; font-size: 24rpx; color: #666; }
.sp-ic { font-size: 56rpx; margin-bottom: 12rpx; }
.sp-cancel { text-align: center; padding: 26rpx 0; border-top: 2rpx solid #f2f2f2; color: #666; font-size: 30rpx; }
</style>
