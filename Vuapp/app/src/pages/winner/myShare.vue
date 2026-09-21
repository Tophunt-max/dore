<template>
  <view class="winner">
    <navbar :title="$t('winner.myshare')" background="#ffffff"></navbar>
    <view class="share_bar">
      <view v-for="(item, index) in barList" :key="index" class="share_bar_item" @click="changeTab(index)">
        <view class="share_bar_item_title" :class="{ active: index == tabIndex }">{{ item.title }}</view>
        <image v-show="tabIndex == index" :src="'/static/image/icon_Select.png'" mode="" />
      </view>
    </view>
    <mescroll-body
      ref="mescrollRef"
      :down="downOption"
      :up="upOption"
      @init="mescrollInit"
      @down="downCallback"
      @up="upCallback"
    >
      <view v-if="0 == tabIndex" class="card_list">
        <view v-for="(item, index) in cardList" :key="index" class="card_list_item">
          <view class="card_list_item_title">Issue: {{ item.issue }}</view>
          <view class="card_list_item_main">
            <view class="card_list_item_main_img">
              <image :src="item.iconurl" mode="widthFix" />
            </view>
            <view class="card_list_item_main_title">{{ item.dealname }}</view>
          </view>
          <view class="card_list_comment" @click="toShare(item.dumid)">
            <view class="card_list_comment_btn">
              <view>{{ $t('winner.com') }}</view>
              <image class="img" :src="'/static/image/icon_RightArrow.png'" mode="widthFix" />
            </view>
          </view>
        </view>
      </view>
      <view v-else v-for="(item, index) in dataList" :key="index" class="main">
        <view class="header">
          <image :src="item.userheadimgurl" mode="" />
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
            mode=""
           />
        </view>
        <view class="goods" @click="toDetail(item.dumid)">
          <image :src="item.iconurl" mode="" />
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
import { myWinner, userOrder } from '@/api/orich';

export default {
  mixins: [d_4df3],
  onLoad: function (t) {
    this.tabIndex = t.type || 0;
  },
  onShow: function () {
    var t = this;
    setTimeout(function () {
      t.mescroll.resetUpScroll();
    });
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
      dataList: [],
      barList: [{
        title: this.$t('winner.wtorder')
      }, {
        title: this.$t('winner.shared')
      }],
      listCount: 0,
      tabIndex: 0,
      cardList: []
    };
  },
  methods: {
    enlargeImg: function (t, e) {
      uni.previewImage({
        current: e,
        urls: t
      });
    },
    changeTab: function (t) {
      this.tabIndex = t;
      this.mescroll.resetUpScroll();
    },
    toShare: function (t) {
      uni.navigateTo({
        url: ('../bask/index?id=').concat(t)
      });
    },
    toDetail: function (t) {
      uni.navigateTo({
        url: ('../goods/goods?id=').concat(t)
      });
    },
    upCallback: function (t) {
      var e = this, s = (t.num - 1) * t.size, i = t.size;
      0 == this.tabIndex ? userOrder({
        status: 5,
        start: s,
        limit: i
      }).then(function (s) {
        var i = s.list, a = i.length, n = +s.count;
        e.listCount = +s.count;
        1 == t.num && (e.cardList = []);
        e.cardList = e.cardList.concat(i);
        e.mescroll.endBySize(a, n);
      }).catch(function (t) {
        e.mescroll.endErr();
      }) : myWinner({
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
.winner { background:#f9f9f9;height:100% }
.img { width:100% }
.card_list { border-radius:16rpx }
.card_list .card_list_item { position:relative;margin:20rpx 28rpx 16rpx 30rpx;padding:30rpx 0 30rpx 22rpx;background-color:#fff }
.card_list .card_list_item .card_list_comment { position:absolute;bottom:30rpx;right:30rpx }
.card_list .card_list_item .card_list_comment .card_list_comment_btn { width:172rpx;height:60rpx;display:flex;flex-direction:row;align-items:center;justify-content:center;background:linear-gradient(115deg,#ffe44b,#fea326);border-radius:8rpx;box-shadow:0rpx -4rpx 8rpx 0rpx rgba(255,125,0,.5) inset;font-size:26rpx;font-weight:400;color:#ad6701 }
.card_list .card_list_item .card_list_comment .card_list_comment_btn uni-image { width:28rpx;height:28rpx }
.card_list .card_list_item .card_list_item_title { font-size:28rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#b9b9b9 }
.card_list .card_list_item .card_list_item_main { margin-left:6rpx;margin-top:16rpx;display:flex }
.card_list .card_list_item .card_list_item_main .card_list_item_main_img { width:154rpx;height:154rpx }
.card_list .card_list_item .card_list_item_main .card_list_item_main_img uni-image { width:100% }
.card_list .card_list_item .card_list_item_main .card_list_item_main_title { margin-left:30rpx;padding-top:20rpx;font-family:Roboto,Roboto-Medium;font-weight:700;color:#000 }
.share_bar { background:#fff;display:flex;align-items:center;justify-content:space-between;padding:18rpx 66rpx 14rpx 68rpx }
.share_bar .share_bar_item { display:flex;flex-direction:column;align-items:center;justify-content:center }
.share_bar .share_bar_item .share_bar_item_title { font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:700;color:#b9b9b9;letter-spacing:0rpx }
.share_bar .share_bar_item .active { font-size:32rpx;color:#17273a }
.share_bar .share_bar_item uni-text { margin-left:20rpx }
.share_bar .share_bar_item uni-image { width:34rpx;height:12rpx;margin-left:6rpx }
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
.mescroll-upwarp { box-sizing:border-box;min-height:55px;padding:15px 0;text-align:center;clear:both }
</style>
