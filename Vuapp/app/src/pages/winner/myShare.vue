<script setup lang="ts">
// Faithful port of ORich pages/winner/myShare (two tabs: to-share / shared).
import { ref } from 'vue';
import { onLoad, onShow } from '@dcloudio/uni-app';
import { useI18n } from 'vue-i18n';
import { userOrder, myWinner } from '@/api/orich';

const { t } = useI18n();
const mescroll = ref<any>(null);
const downOption = { use: true, auto: true };
const upOption = { use: true, auto: true, page: { num: 0, size: 20 } };
const dataList = ref<any[]>([]);
const cardList = ref<any[]>([]);
const barList = [{ title: t('winner.wtorder') }, { title: t('winner.shared') }];
const tabIndex = ref(0);

onLoad((q: any) => {
  tabIndex.value = Number(q?.type) || 0;
});
onShow(() => setTimeout(() => mescroll.value && mescroll.value.resetUpScroll()));

function mescrollInit(ms: any) {
  mescroll.value = ms;
}
function downCallback() {
  mescroll.value && mescroll.value.resetUpScroll();
}
function changeTab(i: number) {
  tabIndex.value = i;
  mescroll.value && mescroll.value.resetUpScroll();
}
function enlargeImg(urls: string[], current: number) {
  uni.previewImage({ current, urls });
}
function toShare(id: any) {
  uni.navigateTo({ url: `../bask/index?id=${id}` });
}
function toDetail(id: any) {
  uni.navigateTo({ url: `../goods/goods?id=${id}` });
}
function upCallback(page: any) {
  const start = (page.num - 1) * page.size;
  if (tabIndex.value === 0) {
    userOrder({ status: 5, start, limit: page.size })
      .then((s: any) => {
        const l = s.list || [];
        if (page.num === 1) cardList.value = [];
        cardList.value = cardList.value.concat(l);
        mescroll.value && mescroll.value.endBySize(l.length, s.count);
      })
      .catch(() => mescroll.value && mescroll.value.endErr());
  } else {
    myWinner({ start, limit: page.size })
      .then((s: any) => {
        const l = s.list || [];
        if (page.num === 1) dataList.value = [];
        dataList.value = dataList.value.concat(l);
        mescroll.value && mescroll.value.endBySize(l.length, s.count);
      })
      .catch(() => mescroll.value && mescroll.value.endErr());
  }
}
</script>

<template>
  <view class="winner">
    <navbar :title="$t('winner.myshare')" background="#ffffff" />
    <view class="share_bar">
      <view v-for="(e, a) in barList" :key="a" class="share_bar_item" @click="changeTab(a)">
        <view class="share_bar_item_title" :class="{ active: a == tabIndex }">{{ e.title }}</view>
      </view>
    </view>
    <mescroll-body ref="mescrollRef" :down="downOption" :up="upOption" @init="mescrollInit" @down="downCallback" @up="upCallback">
      <view v-if="tabIndex == 0" class="card_list">
        <view v-for="(e, a) in cardList" :key="a" class="card_list_item">
          <view class="card_list_item_title">{{ e.issue ? 'Issue ' + e.issue : '' }}</view>
          <view class="card_list_item_main">
            <view class="card_list_item_main_img"><image :src="e.image || e.iconurl" mode="aspectFill" /></view>
            <view class="card_list_item_main_title">{{ e.title || e.dealname }}</view>
          </view>
          <view class="card_list_comment" @click="toShare(e.goods_id || e.id)">
            <view class="card_list_comment_btn"><view>{{ $t('winner.com') }}</view></view>
          </view>
        </view>
        <view v-if="!cardList.length" class="nodata">{{ $t('common.nodata') }}</view>
      </view>
      <template v-else>
        <view v-for="(e, n) in dataList" :key="n" class="main">
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
      </template>
    </mescroll-body>
  </view>
</template>

<style scoped>
/* Verbatim scoped CSS from ORich pages/winner/myShare (scope stripped) */
.winner { background: #f9f9f9; min-height: 100vh; }
.card_list { border-radius: 16rpx; }
.card_list .card_list_item { position: relative; margin: 20rpx 28rpx 16rpx 30rpx; padding: 30rpx 0 30rpx 22rpx; background-color: #fff; }
.card_list .card_list_item .card_list_comment { position: absolute; bottom: 30rpx; right: 30rpx; }
.card_list .card_list_item .card_list_comment .card_list_comment_btn { width: 172rpx; height: 60rpx; display: flex; flex-direction: row; align-items: center; justify-content: center; background: linear-gradient(115deg, #ffe44b, #fea326); border-radius: 8rpx; box-shadow: 0rpx -4rpx 8rpx 0rpx rgba(255, 125, 0, 0.5) inset; font-size: 26rpx; font-weight: 400; color: #ad6701; }
.card_list .card_list_item .card_list_item_title { font-size: 28rpx; font-family: Roboto, Roboto-Regular; font-weight: 400; color: #b9b9b9; }
.card_list .card_list_item .card_list_item_main { margin-left: 6rpx; margin-top: 16rpx; display: flex; }
.card_list .card_list_item .card_list_item_main .card_list_item_main_img { width: 154rpx; height: 154rpx; }
.card_list .card_list_item .card_list_item_main .card_list_item_main_img uni-image { width: 100%; }
.card_list .card_list_item .card_list_item_main .card_list_item_main_title { margin-left: 30rpx; padding-top: 20rpx; font-family: Roboto, Roboto-Medium; font-weight: 700; color: #000; }
.share_bar { background: #fff; display: flex; align-items: center; justify-content: space-between; padding: 18rpx 66rpx 14rpx 68rpx; }
.share_bar .share_bar_item { display: flex; flex-direction: column; align-items: center; justify-content: center; }
.share_bar .share_bar_item .share_bar_item_title { font-size: 28rpx; font-family: Roboto, Roboto-Medium; font-weight: 700; color: #b9b9b9; }
.share_bar .share_bar_item .active { font-size: 32rpx; color: #17273a; }
.main { position: relative; width: 100%; margin-top: 16rpx; padding: 30rpx 26rpx; background: #fff; }
.main .header { display: flex; flex-direction: row; align-items: center; justify-content: center; }
.main .header uni-image { width: 56rpx; height: 56rpx; margin-right: 18rpx; border-radius: 50%; border: 2rpx solid #fff; }
.main .header .header-name { flex: 1; margin-right: 18rpx; font-size: 26rpx; font-weight: 600; color: #17273a; }
.main .header .header-time { font-size: 26rpx; color: #b9b9b9; }
.main .content { margin-top: 20rpx; margin-bottom: 20rpx; font-size: 28rpx; color: #686868; }
.main .imgArr { display: flex; flex-direction: row; flex-wrap: wrap; align-items: center; justify-content: flex-start; margin: 16rpx 0; }
.main .imgArr uni-image { width: 88rpx; height: 88rpx; margin-top: 10rpx; border-radius: 8rpx; margin-right: 16rpx; }
.main .goods { display: flex; flex-direction: row; align-items: center; justify-content: center; }
.main .goods uni-image { width: 116rpx; height: 116rpx; margin-right: 14rpx; border-radius: 8px; }
.main .goods .goods-desc { display: flex; flex-direction: column; align-items: flex-start; justify-content: space-between; flex: 1; height: 134rpx; padding: 24rpx 32rpx 26rpx 32rpx; background: #f7f8f9; border-radius: 24rpx; }
.main .goods .goods-desc .goods-name { width: 504rpx; font-size: 28rpx; font-weight: 700; color: #17273a; }
.main .goods .goods-desc .goods-issue { font-size: 26rpx; color: #b9b9b9; }
</style>
