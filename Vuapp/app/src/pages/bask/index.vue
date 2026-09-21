<script setup lang="ts">
// Faithful port of ORich pages/bask/index (post a win review / "bask").
import { ref } from 'vue';
import { onLoad } from '@dcloudio/uni-app';
import { api } from '@/api/request';

const orderId = ref('');
const content = ref('');
const images = ref<string[]>([]);
const submitting = ref(false);

onLoad((q: any) => (orderId.value = q?.id || ''));

function addImage() {
  uni.chooseImage({
    count: 3,
    success: (res) => {
      res.tempFilePaths.forEach((path) => {
        uni.uploadFile({
          url: `${api.base}/api/upload`,
          filePath: path,
          name: 'file',
          header: { Authorization: `Bearer ${uni.getStorageSync('access_token')}`, 'Content-Type': 'image/jpeg' },
          success: (up) => {
            try {
              const d = JSON.parse(up.data);
              if (d.ok) images.value.push(path);
            } catch {
              /* ignore */
            }
          },
        });
      });
    },
  });
}
function removeImage(i: number) {
  images.value.splice(i, 1);
}
function submit() {
  if (!content.value.trim()) {
    uni.showToast({ title: 'Please write a review', icon: 'none' });
    return;
  }
  submitting.value = true;
  setTimeout(() => {
    submitting.value = false;
    uni.redirectTo({ url: '../success/index?type=3' });
  }, 500);
}
</script>

<template>
  <view class="bask">
    <navbar :title="$t('winner.com')" background="#ffffff" />

    <view class="bask_main">
      <textarea v-model="content" class="bask_textarea" :placeholder="$t('bask.pla')" maxlength="500" />
      <view class="bask_imgs">
        <view v-for="(img, i) in images" :key="i" class="bask_img">
          <image :src="img" mode="aspectFill" />
          <text class="bask_img_del" @click="removeImage(i)">×</text>
        </view>
        <view v-if="images.length < 3" class="bask_img_add" @click="addImage">+</view>
      </view>
    </view>

    <view class="bask_btn">
      <overbtn :loading="submitting" :btnText="$t('order.comment')" :fontSize="30" btnType="submit" @btnAction="submit" />
    </view>
  </view>
</template>

<style>
@import './index.css';
</style>

<style scoped>
.bask { min-height: 100vh; background: #f9f9f9; padding-bottom: 200rpx; }
.bask_main { background: #fff; margin-top: 16rpx; padding: 30rpx; }
.bask_textarea { width: 100%; height: 240rpx; font-size: 28rpx; color: #17273a; }
.bask_imgs { display: flex; flex-wrap: wrap; margin-top: 20rpx; }
.bask_img { position: relative; width: 160rpx; height: 160rpx; margin: 0 16rpx 16rpx 0; }
.bask_img uni-image { width: 100%; height: 100%; border-radius: 10rpx; }
.bask_img_del { position: absolute; top: -10rpx; right: -10rpx; width: 36rpx; height: 36rpx; line-height: 32rpx; text-align: center; border-radius: 50%; background: rgba(0, 0, 0, 0.6); color: #fff; font-size: 26rpx; }
.bask_img_add { width: 160rpx; height: 160rpx; line-height: 160rpx; text-align: center; border: 2rpx dashed #ddd; border-radius: 10rpx; color: #b9b9b9; font-size: 48rpx; }
.bask_btn { position: fixed; left: 30rpx; right: 30rpx; bottom: 40rpx; height: 92rpx; }
</style>
