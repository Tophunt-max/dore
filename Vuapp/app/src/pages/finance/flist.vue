<template>
  <view class="flist">
    <navbar backColor="#f5f5f5" :title="$t('finance.ltitle')" titleColor="#f5f5f5"></navbar>
    <view class="flist-step">
      <buystep :type="3" page="flist"></buystep>
    </view>
    <view v-if="swiperList.length && swiperToast" class="toast">
      <swiper class="toast-swiper" :interval="interval" :autoplay="true" :vertical="true" :circular="true">
        <swiper-item v-for="(item, index) in swiperList" :key="index">
          <view class="toast-swiper-item" @click="toGoods(item.id)">
            <view class="toast-swiper-item-img">
              <image :src="item.user_headimg" />
            </view>
            <view class="toast-swiper-item-main">
              <text>{{ item.user_name }}</text>
              <text class="arrival">{{ $t('finance.arrival') }}</text>
              <text class="name">₹ {{ item.amount }}</text>
              <text>{{ $t('finance.earn').toLowerCase() }}</text>
              <text class="name">₹ {{ item.rate_income }}</text>
            </view>
          </view>
        </swiper-item>
      </swiper>
    </view>
    <mescroll-body
      ref="mescrollRef"
      :down="downOption"
      :up="upOption"
      :height="400"
      @init="mescrollInit"
      @down="downCallback"
      @up="upCallback"
    >
      <finance-list :list="fList" @buy="toBuy"></finance-list>
    </mescroll-body>
  </view>
</template>

<script>
import { interopDefault as d_4df3 } from '@/utils/mescroll-mixin';
import { financeList, financeOrderRecent } from '@/api/orich';
import { countDown } from '@/utils/orich';

export default {
  mixins: [d_4df3],
  data: function () {
    return {
      fList: [],
      listTime: [],
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
      firstLoad: true,
      swiperToast: false,
      swiperList: [],
      interval: 5e3
    };
  },
  onLoad: function () {
    this.getRecent();
  },
  onShow: function () {
    var t = this;
    setTimeout(function () {
      t.firstLoad || t.mescroll.resetUpScroll();
    });
  },
  methods: {
    toBuy: function (t) {
      uni.navigateTo({
        url: ('./fdetail?id=').concat(t.id)
      });
    },
    getRecent: function () {
      var t = this;
      financeOrderRecent().then(function (e) {
        t.swiperToast = true;
        t.swiperList = e.list;
      });
    },
    upCallback: function (t) {
      var e = this, s = (t.num - 1) * t.size, a = t.size;
      financeList({
        start: s,
        limit: a
      }).then(function (s) {
        e.firstLoad = false;
        var i = s.list, a = i.length, n = +s.count;
        1 == t.num && (e.fList = []);
        e.fList = e.fList.concat(i);
        e.clearTimer();
        e.fList.forEach(function (t, s) {
          e.listTime[s] = '';
          t.countdown = '';
          e.listTime[s] = setInterval(function () {
            t.server_time++;
            t.countdown = countDown(t.end_in, t.server_time);
            '00:00:00' == t.countdown && (clearInterval(e.listTime[s]), e.mescroll.resetUpScroll());
          }, 1e3);
          t.countdown = countDown(t.end_in, t.server_time);
          '00:00:00' == t.countdown && clearInterval(e.listTime[s]);
        });
        e.mescroll.endBySize(a, n);
      }).catch(function (t) {
        e.mescroll.endErr();
      });
    },
    clearTimer: function () {
      this.listTime.forEach(function (t) {
        return clearInterval(t);
      });
      this.listTime = [];
    }
  },
  unmounted: function () {
    this.clearTimer();
  }
};
</script>

<style scoped>
.flist { width:100% }
.flist .bar-help { position:absolute;right:30rpx }
.flist .bar-help uni-image { width:36rpx;height:36rpx }
.flist .flist-step { margin-top:-88rpx;padding-top:66rpx;padding:66rpx 38rpx 0 36rpx;height:288rpx;background-image:url('/static/image/finance/bg_list.png');background-size:100% 100%;position:relative }
.flist .toast { padding-top:22rpx;padding-left:30rpx;padding-bottom:12rpx;background-color:#fff;border-bottom:2rpx solid #f5f5f5;margin:0 28rpx }
.flist .toast .toast-swiper { height:70rpx }
.flist .toast .toast-swiper .toast-swiper-item { display:flex;align-items:center;justify-content:flex-end }
.flist .toast .toast-swiper .toast-swiper-item .toast-swiper-item-img { width:60rpx;height:60rpx;border-radius:50%;overflow:hidden }
.flist .toast .toast-swiper .toast-swiper-item .toast-swiper-item-img uni-image { width:100%;height:100% }
.flist .toast .toast-swiper .toast-swiper-item .toast-swiper-item-main { width:80%;margin-left:36rpx;margin-right:18rpx;white-space:nowrap;overflow:hidden;text-overflow:ellipsis }
.flist .toast .toast-swiper .toast-swiper-item .toast-swiper-item-main .arrival { margin-left:10rpx }
.flist .toast .toast-swiper .toast-swiper-item .toast-swiper-item-main .name { color:#ee5016;margin:0 10rpx }
</style>
