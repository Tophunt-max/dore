<template>
  <view class="order">
    <navbar backColor="#fff"></navbar>
    <view class="order_total">
      <view class="order_total_income">
        <view class="order_total_income_title">{{ $t('finance.total') }}</view>
        <view class="order_total_income_num">₹ {{ already_income }}</view>
      </view>
      <view class="order_total_amount">
        <view class="order_total_amount_item">
          <view class="title">{{ $t('finance.iTitle') }}</view>
          <view class="number">₹ {{ all_price }}</view>
        </view>
        <view class="order_total_amount_item">
          <view class="title">{{ $t('finance.eTitle') }}</view>
          <view class="number">₹ {{ all_income }}</view>
        </view>
        <view class="order_total_amount_item">
          <view class="title">{{ $t('finance.dTitle') }}</view>
          <view class="number">₹ {{ day_income }}</view>
        </view>
      </view>
    </view>
    <view class="order_list">
      <view class="order_list_tab">
        <view
          v-for="(item, index) in tabList"
          :key="index"
          class="order_list_tab_item"
          @click="changeTab(item.value)"
        >
          <view class="name" :class="{ active: tabIndex == item.value }">{{ item.name }}</view>
          <view class="img">
            <image v-if="tabIndex == item.value" src="/static/image/icon_Select.png" mode="" />
          </view>
        </view>
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
        <view class="order_list_card">
          <view v-for="(item, index) in list" :key="index" class="order_list_card_item">
            <view class="order_list_card_item_title">{{ item.name }}</view>
            <view class="order_list_card_item_total">
              <view class="order_list_card_item_total_strip">
                <view class="title">{{ $t('finance.iTitle') }}</view>
                <view class="number">₹ {{ item.price }}</view>
              </view>
              <view class="order_list_card_item_total_strip">
                <view class="title">{{ $t('finance.eTitle') }}</view>
                <view class="number">₹ {{ item.rate_income }}</view>
              </view>
              <view class="order_list_card_item_total_strip">
                <view class="title">{{ $t('finance.dTitle') }}</view>
                <view class="number">₹ {{ item.day_income }}</view>
              </view>
            </view>
            <view class="order_list_card_item_pro mr_top36">
              <view class="order_list_card_item_pro_title">{{ $t('finance.progressrate') }}:</view>
              <view class="order_list_card_item_pro_gress">
                <lineprogress :percent="parseInt(item.already_hours / item.hours * 100)"></lineprogress>
              </view>
              <view class="order_list_card_item_pro_num">
                <text v-if="item.already_hours < item.hours">
                  {{ item.already_hours }}/{{ item.hours }} {{ $t('finance.hour') }}
                </text>
                <text v-else></text>
              </view>
            </view>
            <view v-if="item.countdown && '00:00:00' != item.countdown" class="order_list_card_item_pro ">
              <view>{{ $t('card.endin') }}</view>
              <view class="u-m-l-6 endin">{{ item.countdown }}</view>
            </view>
            <view class="order_list_card_item_pro">
              <view>{{ $t('finance.endtime') }}:</view>
              <view class="order_list_card_item_pro_time">{{ timeFormat(item.end) }}</view>
            </view>
          </view>
        </view>
      </mescroll-body>
    </view>
  </view>
</template>

<script>
import { interopDefault as d_4df3 } from '@/utils/mescroll-mixin';
import { countDown, parseTime } from '@/utils/orich';
import { myFinanceList } from '@/api/orich';

export default {
  mixins: [d_4df3],
  data: function () {
    return {
      tabIndex: 0,
      tabList: [{
        name: this.$t('home.all'),
        value: '0'
      }, {
        name: this.$t('finance.inincome'),
        value: '1'
      }, {
        name: this.$t('finance.completed'),
        value: '2'
      }],
      list: [],
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
      all_income: 0,
      all_price: 0,
      already_income: 0,
      day_income: 0,
      listTime: []
    };
  },
  onShow: function () {
    var t = this;
    setTimeout(function () {
      t.firstLoad || t.mescroll.resetUpScroll();
    });
  },
  watch: {
    tabIndex: function (t) {
      this.list = [];
      this.mescroll.resetUpScroll();
    }
  },
  methods: {
    timeFormat: function (t) {
      return parseTime(t);
    },
    changeTab: function (t) {
      this.tabIndex = t;
    },
    upCallback: function (t) {
      var e = this, s = (t.num - 1) * t.size, n = t.size;
      myFinanceList({
        status: this.tabIndex,
        start: s,
        limit: n
      }).then(function (s) {
        e.firstLoad = false;
        e.all_income = s.all_income;
        e.all_price = s.all_price;
        e.already_income = s.already_income;
        e.day_income = s.day_income;
        var i = s.list, n = i.length, r = +s.count;
        1 == t.num && (e.list = []);
        e.list = e.list.concat(i);
        e.clearTimer();
        e.list.forEach(function (t, s) {
          e.listTime[s] = '';
          t.countdown = '';
          e.listTime[s] = setInterval(function () {
            t.server_time++;
            t.countdown = countDown(t.end, t.server_time);
            '00:00:00' == t.countdown && (clearInterval(e.listTime[s]), e.mescroll.resetUpScroll());
            e.$forceUpdate();
          }, 1e3);
          t.countdown = countDown(t.end, t.server_time);
          '00:00:00' == t.countdown && clearInterval(e.listTime[s]);
          e.$forceUpdate();
        });
        e.mescroll.endBySize(n, r);
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
.order { min-height:100vh }
.order .order_total { margin-top:-88rpx;background-image:url('/static/image/finance/bg_order.png');background-size:100% 100%;background-repeat:no-repeat;height:442rpx;padding-top:88rpx;color:#fff }
.order .order_total .order_total_income { text-align:center;font-size:36rpx;font-family:Roboto,Roboto-Medium;font-weight:500;letter-spacing:0rpx }
.order .order_total .order_total_income_num { margin-top:30rpx;font-size:52rpx;font-family:Roboto,Roboto-Bold;font-weight:700;letter-spacing:0rpx }
.order .order_total .order_total_amount { display:flex;align-items:center;justify-content:space-between;margin-top:36rpx;padding:0 22rpx }
.order .order_total .order_total_amount .order_total_amount_item { color:#fff;text-align:center }
.order .order_total .order_total_amount .order_total_amount_item .title { font-size:28rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#fff;letter-spacing:0rpx }
.order .order_total .order_total_amount .order_total_amount_item .number { margin-top:14rpx;font-size:36rpx;font-family:Roboto,Roboto-Bold;font-weight:700;color:#fff;letter-spacing:0rpx;max-width:200rpx;white-space:nowrap;text-overflow:ellipsis;overflow:hidden }
.order .order_list { margin-top:-30rpx;background:#fff;border-radius:20rpx 20rpx 0rpx 0rpx;padding-top:30rpx }
.order .order_list .order_list_tab { display:flex;align-items:center;justify-content:center }
.order .order_list .order_list_tab .order_list_tab_item { font-family:Roboto,Roboto-Medium;font-weight:500;font-size:28rpx;letter-spacing:0rpx;text-align:center;margin:0 56rpx }
.order .order_list .order_list_tab .order_list_tab_item .name { color:#b9b9b9 }
.order .order_list .order_list_tab .order_list_tab_item .active { font-size:32rpx;color:#17273a }
.order .order_list .order_list_tab .order_list_tab_item .img { margin-top:-6rpx }
.order .order_list .order_list_tab .order_list_tab_item uni-image { width:34rpx;height:12rpx }
.order .order_list .order_list_card { margin-top:20rpx }
.order .order_list .order_list_card .order_list_card_item { padding:30rpx 24rpx;border-top:2rpx solid #f9f9f9;border-bottom:2rpx solid #f9f9f9 }
.order .order_list .order_list_card .order_list_card_item .order_list_card_item_title { font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#17273a;letter-spacing:0rpx }
.order .order_list .order_list_card .order_list_card_item .order_list_card_item_total { margin-top:28rpx;display:flex;align-items:center;justify-content:space-between }
.order .order_list .order_list_card .order_list_card_item .order_list_card_item_total .order_list_card_item_total_strip { font-size:28rpx;font-family:Roboto,Roboto-Regular;font-weight:400;text-align:center;letter-spacing:0rpx }
.order .order_list .order_list_card .order_list_card_item .order_list_card_item_total .order_list_card_item_total_strip .title { color:#b9b9b9 }
.order .order_list .order_list_card .order_list_card_item .order_list_card_item_total .order_list_card_item_total_strip .number { margin-top:16rpx;color:#ff5c5c;font-weight:700;max-width:200rpx;white-space:nowrap;overflow:hidden;text-overflow:ellipsis }
.order .order_list .order_list_card .order_list_card_item .order_list_card_item_pro { margin-top:24rpx;font-size:28rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#b9b9b9;letter-spacing:0rpx;display:flex;align-items:center;justify-content:flex-start }
.order .order_list .order_list_card .order_list_card_item .order_list_card_item_pro .order_list_card_item_pro_title { flex-shrink:0 }
.order .order_list .order_list_card .order_list_card_item .order_list_card_item_pro .order_list_card_item_pro_gress { margin-left:12rpx;margin-right:24rpx;width:100% }
.order .order_list .order_list_card .order_list_card_item .order_list_card_item_pro .order_list_card_item_pro_num { flex-shrink:0 }
.order .order_list .order_list_card .order_list_card_item .order_list_card_item_pro .order_list_card_item_pro_time { margin-left:14rpx }
.order .order_list .order_list_card .order_list_card_item .endin { color:#ee5016 }
.order .order_list .order_list_card .order_list_card_item .mr_top36 { margin-top:36rpx }
</style>
