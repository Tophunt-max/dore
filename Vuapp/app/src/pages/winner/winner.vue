<template>
  <view class="winner">
    <navbar :title="$t('common.winnerTitle')" background="#ffffff"></navbar>
    <mescroll-body
      ref="mescrollRef"
      :down="downOption"
      :up="upOption"
      @init="mescrollInit"
      @down="downCallback"
      @up="upCallback"
    >
      <view v-for="(item, index) in dataList" :key="index" class="main">
        <view class="header">
          <image :src="item.userheadimgurl" />
          <view class="header-name">{{ item.username }}</view>
          <view class="header-time">{{ item.time }}</view>
        </view>
        <view class="content">{{ item.content }}</view>
        <view class="imgArr">
          <image
            v-for="(item2, index2) in item.imagesurl"
            :key="index2"
            :src="item2"
            @click="enlargeImg(item.imagesurl, index2)"
           />
        </view>
        <view class="goods" @click="toDetail(item.dumid)">
          <image :src="item.iconurl" />
          <view class="goods-desc">
            <view class="goods-name otw">{{ item.delname }}</view>
            <view class="goods-issue">Issue: {{ item.issue }}</view>
          </view>
        </view>
      </view>
    </mescroll-body>
  </view>
</template>

<script>
import { interopDefault as d_4df3 } from '@/utils/mescroll-mixin';
import { WinnerList } from '@/api/orich';

export default {
  mixins: [d_4df3],
  onLoad: function (t) {},
  onShow: function () {
    var t = this;
    setTimeout(function () {
      t.mescroll.resetUpScroll();
    }, 500);
  },
  computed: {},
  data: function () {
    return {
      downOption: {
        use: true,
        auto: true
      },
      upOption: {
        use: true,
        auto: true,
        page: {
          num: 0,
          size: 20
        }
      },
      dataList: []
    };
  },
  methods: {
    enlargeImg: function (t, e) {
      uni.previewImage({
        current: e,
        urls: t
      });
    },
    toDetail: function (t) {
      uni.navigateTo({
        url: ('../goods/goods?id=').concat(t)
      });
    },
    upCallback: function (t) {
      var e = this, s = (t.num - 1) * t.size, i = t.size;
      WinnerList({
        start: s,
        limit: i
      }).then(function (s) {
        var i = s.list, a = i.length, n = +s.count;
        1 == t.num && (e.dataList = []);
        e.dataList = e.dataList.concat(i);
        e.mescroll.endBySize(a, n);
      }).catch(function (t) {
        e.mescroll.endErr();
      });
    }
  }
};
</script>

<style scoped>
.winner { background:#f9f9f9;min-height:100vh;padding-bottom:98rpx }
.main { position:relative;width:100%;margin-top:16rpx;padding:30rpx 26rpx;background:#fff }
.main .header { display:flex;flex-direction:row;align-items:center;justify-content:center }
.main .header uni-image { width:56rpx;height:56rpx;margin-right:18rpx;border-radius:50%;border:2rpx solid #fff }
.main .header .header-name { flex:1;margin-right:18rpx;font-size:26rpx;font-family:Roboto,Roboto-Regular;font-weight:600;color:#17273a }
.main .header .header-time { font-size:26rpx;font-family:Roboto,Roboto-Regular;color:#b9b9b9 }
.main .title { margin-top:30rpx;font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:700;color:#17273a }
.main .content { margin-top:20rpx;margin-bottom:20rpx;font-size:28rpx;font-family:Roboto,Roboto-Regular;color:#686868 }
.main .imgArr { display:flex;flex-direction:row;flex-wrap:wrap;align-items:center;justify-content:flex-start;margin:16rpx 0 }
.main .imgArr uni-image { width:88rpx;height:88rpx;margin-top:10rpx;border-radius:8rpx;margin-right:16rpx }
.main .goods { display:flex;flex-direction:row;align-items:center;justify-content:center }
.main .goods uni-image { width:116rpx;height:116rpx;margin-right:14rpx;border-radius:8px }
.main .goods .goods-desc { display:flex;flex-direction:column;align-items:flex-start;justify-content:space-between;flex:1;height:134rpx;padding:24rpx 32rpx 26rpx 32rpx;background:#f7f8f9;border-radius:24rpx }
.main .goods .goods-desc .goods-name { width:504rpx;font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:700;color:#17273a }
.main .goods .goods-desc .goods-issue { font-size:26rpx;font-family:Roboto,Roboto-Regular;color:#b9b9b9 }
</style>
