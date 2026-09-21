<template>
  <view class="calculation">
    <navbar :title="$t('goods.ctitle')" background="#ffffff"></navbar>
    <view class="alg">
      <view class="alg-title">{{ $t('goods.mula') }}</view>
      <view class="alg-text">{{ $t('goods.rem') }}</view>
    </view>
    <view class="intro">
      <view></view>
      <view>{{ $t('goods.rec') }}</view>
      <view>
        <text>{{ numA }}</text>
      </view>
    </view>
    <view class="list">
      <view class="header">
        <view class="header-left">{{ $t('goods.ordertimes') }}</view>
        <view class="header-right">{{ $t('goods.user') }}</view>
      </view>
      <view class="main">
        <view v-for="(item, index) in dataList" :key="index" class="item">
          <view class="item-left">
            {{ item.time }}.{{ item.a_create_time.substring(item.a_create_time.length - 3) }}
            <text>→ {{ item.a_create_time }}</text>
          </view>
          <view class="item-right">{{ item.nickname }}</view>
        </view>
      </view>
    </view>
    <view class="result">
      <view class="result-title">{{ $t('goods.cal') }}</view>
      <view class="result-main">
        {{ $t('goods.code') }}
        <text>{{ winner }}</text>
      </view>
    </view>
    <view v-if="2 == dumnormal" class="discount">
      <view v-for="(item, index) in codeList" :key="index" class="discount_rank">
        <view v-if="index > 0" class="discount_rank_item">
          <view class="discount_rank_item_title">{{ rankName(index) }} code:</view>
          <view class="discount_rank_item_num">{{ item.join(', ') }}</view>
        </view>
      </view>
    </view>
  </view>
</template>

<script>
import { mapGetters } from 'vuex';
import { GetLottery } from '@/api/orich';

// Helpers the reference bundle hoisted out of the component.
function o(t, e, s) {
  return ((e in t) ? Object.defineProperty(t, e, {
    value: s,
    enumerable: true,
    configurable: true,
    writable: true
  }) : t[e] = s, t);
}
function n(t, e) {
  var s = Object.keys(t);
  if (Object.getOwnPropertySymbols) {
    var i = Object.getOwnPropertySymbols(t);
    e && (i = i.filter(function (e) {
      return Object.getOwnPropertyDescriptor(t, e).enumerable;
    }));
    s.push.apply(s, i);
  }
  return s;
}
function r(t) {
  for (var e = 1; e < arguments.length; e++) {
    var s = null != arguments[e] ? arguments[e] : {};
    e % 2 ? n(Object(s), true).forEach(function (e) {
      o(t, e, s[e]);
    }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(t, Object.getOwnPropertyDescriptors(s)) : n(Object(s)).forEach(function (e) {
      Object.defineProperty(t, e, Object.getOwnPropertyDescriptor(s, e));
    });
  }
  return t;
}

export default {
  onLoad: function (t) {
    this.goodsId = t.id;
    this.numA = t.a;
    this.winner = t.winner;
    this.getData();
  },
  computed: r({}, mapGetters(['userInfo'])),
  watch: {},
  data: function () {
    return {
      numA: '',
      winner: '',
      goodsId: '',
      dataList: [],
      dumnormal: 1,
      rankList: [],
      codeList: []
    };
  },
  methods: {
    getData: function () {
      var t = this;
      GetLottery({
        id: this.goodsId
      }).then(function (e) {
        t.dataList = e.list;
        t.rankList = e.win;
        t.dumnormal = e.dumnormal;
        t.codeList = e.code;
      });
    },
    rankName: function (t) {
      var e = '';
      switch (+t) {
        case 0:
          e = this.$t('goods.onenumber');
          break;
        case 1:
          e = this.$t('goods.twonumber');
          break;
        case 2:
          e = this.$t('goods.threenumber');
          break;
        case 3:
          e = this.$t('goods.fournumber');
          break;
        case 4:
          e = this.$t('goods.fivenumber');
          break;
      }
      return e;
    }
  }
};
</script>

<style scoped>
.calculation { position:relative;min-height:100vh;padding:0 30rpx 30rpx 30rpx;background:#f9f9f9 }
.calculation .alg { width:100%;margin-top:16rpx;padding:30rpx 28rpx;background:linear-gradient(283deg,#ee5016,rgba(238,80,22,.65));border-radius:16rpx }
.calculation .alg .alg-title { font-size:32rpx;font-family:Roboto,Roboto-Bold;font-weight:700;color:#fff }
.calculation .alg .alg-text { margin-top:10rpx;font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:700;color:#fff }
.calculation .intro { width:100%;margin-top:16rpx;padding:28rpx 28rpx;background:#fff;font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:700;text-align:LEFT;color:#17273a }
.calculation .intro uni-text { color:#ee5016 }
.calculation .intro uni-text:before { content:" " }
.calculation .list { width:100%;padding:0 28rpx }
.calculation .list .header { display:flex;flex-direction:row;align-items:center;justify-content:space-between;width:100%;height:90rpx }
.calculation .list .header .header-left { font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:700;text-align:CENTER;color:#b9b9b9 }
.calculation .list .header .header-right { font-size:28rpx;font-family:Roboto,Roboto-Bold;font-weight:700;text-align:CENTER;color:#b9b9b9 }
.calculation .list .main { width:100%;height:400rpx;overflow-y:auto }
.calculation .list .main .item { display:flex;flex-direction:row;align-items:center;justify-content:space-between;width:100%;height:92rpx;border-top:1rpx solid #ececec }
.calculation .list .main .item .item-left { font-size:26rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#b9b9b9 }
.calculation .list .main .item .item-right { font-size:26rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#b9b9b9 }
.calculation .list .main uni-text { color:#ee5016 }
.calculation .result { width:100%;margin-top:16rpx;padding:20rpx 22rpx;background:#fff }
.calculation .result .result-title { width:100%;font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:700;text-align:left;color:#17273a }
.calculation .result .result-main { width:100%;margin:24rpx 0;font-size:36rpx;font-family:Roboto,Roboto-Medium;font-weight:700;text-align:center;color:#17273a }
.calculation .result .result-main uni-text { color:#ee5016 }
.calculation .discount { width:100%;background:#fff;margin-top:16rpx;font-size:28rpx;font-family:Roboto,Roboto-Medium;color:#17273a;padding:20rpx 0 20rpx 20rpx }
.calculation .discount .discount_rank { margin-top:20rpx;padding-right:20rpx }
.calculation .discount .discount_rank .discount_rank_item { display:flex;font-size:32rpx;margin-bottom:20rpx;min-height:64rpx;line-height:64rpx }
.calculation .discount .discount_rank .discount_rank_item .discount_rank_item_title { white-space:nowrap;text-align:right;width:200rpx }
.calculation .discount .discount_rank .discount_rank_item .discount_rank_item_num { color:#ee5016;margin-left:10rpx }
</style>
