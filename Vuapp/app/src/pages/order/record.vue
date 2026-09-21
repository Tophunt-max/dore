<template>
  <view class="record">
    <navbar :title="$t('order.records')" background="#ffffff" :isComfirm="true" @beforeBack="handleBack"></navbar>
    <navtabs :list="list" :activeIndex="current" @active="change"></navtabs>
    <mescroll-body
      ref="mescrollRef"
      :down="downOption"
      :up="upOption"
      @init="mescrollInit"
      @down="downCallback"
      @up="upCallback"
    >
      <view class="record_main_card">
        <cardlist
          :cardList="cardList"
          @navNext="navNext"
          @navToDetail="toDetail"
          @share="handleShare"
          @handleSkip="handleSkip"
          @navToDiscount="toDiscount"
        ></cardlist>
      </view>
    </mescroll-body>
    <sharepopup ref="popup" :showPopup="showPopup" shareType="2" :orderID="orderID"></sharepopup>
  </view>
</template>

<script>
import { interopDefault as d_4df3 } from '@/utils/mescroll-mixin';
import { userOrder } from '@/api/orich';
import { countDown } from '@/utils/orich';

export default {
  mixins: [d_4df3],
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
      list: [{
        name: this.$t('account.all'),
        status: 0
      }, {
        name: this.$t('account.waiting'),
        status: 1
      }, {
        name: this.$t('account.todelivery'),
        status: 3
      }, {
        name: this.$t('account.indelivery'),
        status: 4
      }, {
        name: this.$t('account.completed'),
        status: 5
      }],
      current: 0,
      orderStatus: 0,
      cardList: [],
      listTime: [],
      loading: true,
      showPopup: false,
      orderID: '',
      firstLoad: true
    };
  },
  onShow: function () {
    var t = this;
    setTimeout(function () {
      t.firstLoad || t.mescroll.resetUpScroll();
    });
  },
  onLoad: function (t) {
    t.type && this.change(t.type);
  },
  watch: {
    orderStatus: function (t) {
      this.mescroll.resetUpScroll();
    }
  },
  methods: {
    handleBack: function () {
      uni.navigateTo({
        url: '../account/account'
      });
    },
    change: function (t) {
      this.current = t;
      this.orderStatus = this.list[t].status;
    },
    navNext: function (t) {
      uni.navigateTo({
        url: ('../../pages/order/detail?id=').concat(t)
      });
    },
    toDetail: function (t) {
      uni.navigateTo({
        url: ('/pages/order/detail?id=').concat(t)
      });
    },
    toDiscount: function (t, e) {
      2 == t ? uni.navigateTo({
        url: ('../../pages/order/discount?id=').concat(e)
      }) : this.toDetail(e);
    },
    orderList: function () {
      var t = this;
      this.loading = true;
      userOrder({
        status: this.orderStatus
      }).then(function (e) {
        t.cardList = e.list;
        t.loading = false;
      }).catch(function () {
        t.loading = false;
      });
    },
    handleShare: function (e) {
      console.log(e);
      this.orderID = e.dumid;
      this.$refs.popup.open();
    },
    upCallback: function (t) {
      var e = this, s = (t.num - 1) * t.size, i = t.size;
      userOrder({
        status: this.orderStatus,
        start: s,
        limit: i
      }).then(function (s) {
        e.firstLoad = false;
        var i = s.list, a = i.length, n = +s.count;
        1 == t.num && (e.cardList = []);
        e.cardList = e.cardList.concat(i);
        e.clearTimer();
        e.cardList.forEach(function (t, s) {
          e.listTime[s] = '';
          t.countdown = '';
          3 == t.has_lottery && (e.listTime[s] = setInterval(function () {
            t.nowtime++;
            t.countdown = countDown(t.endendtimein, t.nowtime);
            '00:00:00' == t.countdown && (clearInterval(e.listTime[s]), e.mescroll.resetUpScroll());
            e.$forceUpdate();
          }, 1e3), t.countdown = countDown(t.endendtimein, t.nowtime), '00:00:00' == t.countdown && clearInterval(e.listTime[s]), e.$forceUpdate());
          2 == t.has_lottery && (e.listTime[s] = setInterval(function () {
            t.nowtime++;
            t.countdown = countDown(t.lottery_stamp, t.nowtime);
            '00:00:00' == t.countdown && (clearInterval(e.listTime[s]), e.mescroll.resetUpScroll());
            e.$forceUpdate();
          }, 1e3), t.countdown = countDown(t.lottery_stamp, t.nowtime), '00:00:00' == t.countdown && clearInterval(e.listTime[s]), e.$forceUpdate());
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
    },
    handleSkip: function (e, s) {
      console.log(e, 'sss');
      var i = '';
      switch (+e) {
        case 1:
          uni.setStorageSync('page', 2);
          i = ('../goods/goods?id=').concat(s);
          break;
        case 3:
          i = ('../order/detail?id=').concat(s);
          break;
        case 5:
          i = ('../bask/index?id=').concat(s);
          break;
        case 4:
        case 6:
          i = ('../order/detail?id=').concat(s);
          break;
      }
      uni.navigateTo({
        url: i
      });
    }
  },
  unmounted: function () {
    this.clearTimer();
  }
};
</script>

<style scoped>
.record { min-height:100vh;background:#f9f9f9 }
.record_loading { padding-top:20rpx;text-align:center;background:#f9f9f9 }
.record_main { background:#f9f9f9 }
.record_main_card { background:#f9f9f9;padding:16rpx 30rpx }
</style>
