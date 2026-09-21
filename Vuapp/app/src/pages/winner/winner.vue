<script setup lang="ts">
// Faithful port of ORich pages/winner/winner.
import { ref } from 'vue';
import { onShow } from '@dcloudio/uni-app';
import { WinnerList } from '@/api/orich';

const mescroll = ref<any>(null);
const downOption = { use: true, auto: true };
const upOption = { use: true, auto: true, page: { num: 0, size: 20 } };
const dataList = ref<any[]>([]);

function mescrollInit(ms: any) {
  mescroll.value = ms;
}
function downCallback() {
  if (mescroll.value) mescroll.value.resetUpScroll();
}
function upCallback(page: any) {
  const start = (page.num - 1) * page.size;
  WinnerList({ start, limit: page.size })
    .then((r: any) => {
      const list = r.list || [];
      if (page.num === 1) dataList.value = [];
      dataList.value = dataList.value.concat(list);
      mescroll.value && mescroll.value.endBySize(list.length, r.count);
    })
    .catch(() => mescroll.value && mescroll.value.endErr());
}
function enlargeImg(urls: string[], current: number) {
  uni.previewImage({ current, urls });
}
function toDetail(id: number | string) {
  uni.navigateTo({ url: `../goods/goods?id=${id}` });
}
onShow(() => {
  setTimeout(() => mescroll.value && mescroll.value.resetUpScroll(), 500);
});
</script>

<template>
  <view class="winner">
    <navbar backIcon="" :title="$t('common.winnerTitle')" background="#ffffff" />
    <mescroll-body ref="mescrollRef" :down="downOption" :up="upOption" @init="mescrollInit" @down="downCallback" @up="upCallback">
      <view v-for="(e, i) in dataList" :key="i" class="main">
        <view class="header">
          <image :src="e.userheadimgurl" mode="aspectFill" />
          <view class="header-name">{{ e.username }}</view>
          <view class="header-time">{{ e.time }}</view>
        </view>
        <view class="content">{{ e.content }}</view>
        <view class="imgArr">
          <image v-for="(img, a) in e.imagesurl" :key="a" :src="img" mode="aspectFill" @click="enlargeImg(e.imagesurl, a)" />
        </view>
        <view class="goods" @click="toDetail(e.dumid)">
          <image :src="e.iconurl" mode="aspectFill" />
          <view class="goods-desc">
            <view class="goods-name otw">{{ e.delname }}</view>
            <view class="goods-issue">{{ e.issue }}</view>
          </view>
        </view>
      </view>
      <view v-if="!dataList.length" class="nodata">{{ $t('common.nodata') }}</view>
    </mescroll-body>
  </view>
</template>

<style scoped>
/* Verbatim scoped CSS from ORich pages/winner/winner (scope stripped) */
.winner { background: #f9f9f9; min-height: 100vh; padding-bottom: 98rpx; }
.main { position: relative; width: 100%; margin-top: 16rpx; padding: 30rpx 26rpx; background: #fff; }
.main .header { display: flex; flex-direction: row; align-items: center; justify-content: center; }
.main .header uni-image { width: 56rpx; height: 56rpx; margin-right: 18rpx; border-radius: 50%; border: 2rpx solid #fff; }
.main .header .header-name { flex: 1; margin-right: 18rpx; font-size: 26rpx; font-family: Roboto, Roboto-Regular; font-weight: 600; color: #17273a; }
.main .header .header-time { font-size: 26rpx; font-family: Roboto, Roboto-Regular; color: #b9b9b9; }
.main .title { margin-top: 30rpx; font-size: 32rpx; font-family: Roboto, Roboto-Medium; font-weight: 700; color: #17273a; }
.main .content { margin-top: 20rpx; margin-bottom: 20rpx; font-size: 28rpx; font-family: Roboto, Roboto-Regular; color: #686868; }
.main .imgArr { display: flex; flex-direction: row; flex-wrap: wrap; align-items: center; justify-content: flex-start; margin: 16rpx 0; }
.main .imgArr uni-image { width: 88rpx; height: 88rpx; margin-top: 10rpx; border-radius: 8rpx; margin-right: 16rpx; }
.main .goods { display: flex; flex-direction: row; align-items: center; justify-content: center; }
.main .goods uni-image { width: 116rpx; height: 116rpx; margin-right: 14rpx; border-radius: 8px; }
.main .goods .goods-desc { display: flex; flex-direction: column; align-items: flex-start; justify-content: space-between; flex: 1; height: 134rpx; padding: 24rpx 32rpx 26rpx 32rpx; background: #f7f8f9; border-radius: 24rpx; }
.main .goods .goods-desc .goods-name { width: 504rpx; font-size: 28rpx; font-family: Roboto, Roboto-Medium; font-weight: 700; color: #17273a; }
.main .goods .goods-desc .goods-issue { font-size: 26rpx; font-family: Roboto, Roboto-Regular; color: #b9b9b9; }
</style>
