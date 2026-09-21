<script setup lang="ts">
// Faithful port of ORich pages/finance/flist.
import { ref } from 'vue';
import { onLoad, onShow } from '@dcloudio/uni-app';
import { financeList, financeOrderRecent } from '@/api/orich';

const fList = ref<any[]>([]);
const downOption = { use: true, auto: true };
const upOption = { use: true, auto: true, page: { num: 0, size: 20 } };
const firstLoad = ref(true);
const swiperToast = ref(false);
const swiperList = ref<any[]>([]);
const interval = 5000;
const mescroll = ref<any>(null);

onLoad(() => getRecent());
onShow(() => {
  setTimeout(() => {
    if (!firstLoad.value && mescroll.value) mescroll.value.resetUpScroll();
  });
});

function mescrollInit(ms: any) {
  mescroll.value = ms;
}
function downCallback() {
  mescroll.value && mescroll.value.resetUpScroll();
}
function getRecent() {
  financeOrderRecent().then((e: any) => {
    swiperToast.value = true;
    swiperList.value = e.list || [];
  });
}
function upCallback(page: any) {
  const start = (page.num - 1) * page.size;
  financeList({ start, limit: page.size })
    .then((s: any) => {
      firstLoad.value = false;
      const l = s.list || [];
      if (page.num === 1) fList.value = [];
      fList.value = fList.value.concat(l);
      mescroll.value && mescroll.value.endBySize(l.length, s.count);
    })
    .catch(() => mescroll.value && mescroll.value.endErr());
}
function toBuy(t: any) {
  uni.navigateTo({ url: `./fdetail?id=${t.id}` });
}
function toGoods(id: any) {
  uni.navigateTo({ url: `../goods/goods?id=${id}` });
}
</script>

<template>
  <view class="flist">
    <navbar backColor="#f5f5f5" :title="$t('finance.ltitle')" titleColor="#f5f5f5" />
    <view class="flist-step">
      <buystep :type="3" page="flist" />
    </view>
    <view v-if="swiperList.length && swiperToast" class="toast">
      <swiper class="toast-swiper" :interval="interval" :autoplay="true" circular vertical>
        <swiper-item v-for="(e, i) in swiperList" :key="i">
          <view class="toast-swiper-item" @click="toGoods(e.id)">
            <view class="toast-swiper-item-img"><image :src="e.user_headimg" mode="aspectFill" /></view>
            <view class="toast-swiper-item-main">
              <text>{{ e.user_name }}</text>
              <text class="arrival">{{ $t('finance.arrival') }}</text>
              <text class="name">{{ e.amount }}</text>
            </view>
          </view>
        </swiper-item>
      </swiper>
    </view>
    <mescroll-body ref="mescrollRef" :down="downOption" :up="upOption" :height="400" @init="mescrollInit" @down="downCallback" @up="upCallback">
      <finance-list :list="fList" @buy="toBuy" />
      <view v-if="!fList.length" class="nodata">{{ $t('common.nodata') }}</view>
    </mescroll-body>
  </view>
</template>

<style scoped>
/* Verbatim scoped CSS from ORich pages/finance/flist (scope stripped, bg mapped) */
.flist { width: 100%; }
.flist .bar-help { position: absolute; right: 30rpx; }
.flist .bar-help uni-image { width: 36rpx; height: 36rpx; }
.flist .flist-step { margin-top: -88rpx; padding: 66rpx 38rpx 0 36rpx; height: 288rpx; background: linear-gradient(135deg, #ff7d4d, #ee5016); background-size: 100% 100%; position: relative; }
.flist .toast { padding-top: 22rpx; padding-left: 30rpx; padding-bottom: 12rpx; background-color: #fff; border-bottom: 2rpx solid #f5f5f5; margin: 0 28rpx; }
.flist .toast .toast-swiper { height: 70rpx; }
.flist .toast .toast-swiper .toast-swiper-item { display: flex; align-items: center; justify-content: flex-end; }
.flist .toast .toast-swiper .toast-swiper-item .toast-swiper-item-img { width: 60rpx; height: 60rpx; border-radius: 50%; overflow: hidden; }
.flist .toast .toast-swiper .toast-swiper-item .toast-swiper-item-img uni-image { width: 100%; height: 100%; }
.flist .toast .toast-swiper .toast-swiper-item .toast-swiper-item-main { width: 80%; margin-left: 36rpx; margin-right: 18rpx; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; }
.flist .toast .toast-swiper .toast-swiper-item .toast-swiper-item-main .arrival { margin-left: 10rpx; }
.flist .toast .toast-swiper .toast-swiper-item .toast-swiper-item-main .name { color: #ee5016; margin: 0 10rpx; }
</style>
