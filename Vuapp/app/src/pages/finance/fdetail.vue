<template>
  <view v-if="Object.keys(detailList).length" class="fdetail">
    <navbar backColor="#f5f5f5" titleColor="#f5f5f5">
      <template #right>
        <view class="bar_help" @click="openShare" slot="right">
          <image src="/static/image/finance/icon_Share.png" mode="" />
        </view>
      </template>
    </navbar>
    <view class="fdetail_info">
      <view class="fdetail_info_img">
        <image :src="detailList.img" mode="" />
        <view v-if="countdown && '00:00:00' != countdown" class="fdetail_info_time">End in {{ countdown }}</view>
        <view v-if="2 == detailList.status" class="fdetail_info_finish">
          <image src="/static/image/finance/img_Soldout.png" mode="" />
        </view>
      </view>
      <view class="fdetail_info_dd">
        <view class="fdetail_info_dd_title">{{ detailList.name }}</view>
        <view class="fdetail_info_dd_strip">
          {{ $t('finance.rate') }}:
          <text>{{ detailList.rate }} %</text>
        </view>
        <view class="fdetail_info_dd_strip">
          {{ $t('finance.due') }}:
          <text>{{ detailList.day }} {{ $t('finance.day') }}</text>
        </view>
        <view class="fdetail_info_dd_strip">
          {{ $t('finance.amount') }}:
          <text>₹ {{ detailList.amount }}</text>
        </view>
      </view>
    </view>
    <view class="fdetail_card">
      <view class="fdetail_card_item">
        <view class="fdetail_card_item_title">{{ $t('finance.income') }}</view>
        <view class="fdetail_card_item_main">{{ detailList.receive }}</view>
      </view>
      <view class="fdetail_card_item">
        <view class="fdetail_card_item_title">{{ $t('finance.uprice') }}</view>
        <view class="fdetail_card_item_main price">₹ {{ detailList.price }}</view>
      </view>
      <view class="fdetail_card_item">
        <view class="fdetail_card_item_title">{{ $t('finance.remaing') }}</view>
        <view class="fdetail_card_item_main">
          {{ detailList.surplus }} {{ $t('finance.unit') }}
          <text class="gray">(₹{{ detailList.surplus * detailList.price }})</text>
        </view>
      </view>
      <view class="fdetail_card_item">
        <view class="fdetail_card_item_title">{{ $t('finance.quantity') }}</view>
        <view class="fdetail_card_item_main">
          <u-number-box
            :max="buyMax"
            :min="buyMin"
            :disabled="!(buyMax > 0)"
            @change="changNum"
            v-model="buyNum"
          ></u-number-box>
        </view>
      </view>
      <view class="fdetail_card_item">
        <view class="fdetail_card_item_title">{{ $t('finance.interest') }}</view>
        <view class="fdetail_card_item_main">
          ₹{{ (buyNum * detailList.price * (.01 * detailList.rate)).toFixed(2) }} x {{ detailList.day }} {{ $t('finance.day') }}
        </view>
      </view>
      <view class="fdetail_card_item">
        <view class="fdetail_card_item_title">{{ $t('finance.padni') }}</view>
        <view class="fdetail_card_item_main">
          ₹{{ (buyNum * detailList.price + buyNum * detailList.price * (.01 * detailList.rate) * detailList.day).toFixed(2) }}
        </view>
      </view>
    </view>
    <view class="fdetail_part">
      <view class="fdetail_part_tab">
        <view
          v-for="(item, index) in tabList"
          :key="index"
          class="fdetail_part_tab_item"
          @click="changeTab(item)"
        >
          <view class="tab_name" :class="{ active: tabIndex == item.type }">{{ item.name }}</view>
          <image v-if="tabIndex == item.type" src="/static/image/icon_Select.png" mode="" />
        </view>
      </view>
      <mescroll-body
        v-if="1 == tabIndex"
        ref="mescrollRef"
        :down="downOption"
        :up="upOption"
        :height="400"
        @init="mescrollInit"
        @down="downCallback"
        @up="upCallback"
      >
        <view class="fdetail_part_main">
          <view v-for="(item, index) in historyList" :key="index" class="fdetail_part_main_item">
            <view class="fdetail_part_main_item_avatar">
              <image :src="item.user_headimg" mode="" />
            </view>
            <view class="fdetail_part_main_item_user">
              <view class="fdetail_part_main_item_user_info">
                <view class="name otw">{{ item.user_name }}</view>
                <image :src="item.vip_img" mode="" />
                <view class="time">{{ countDown(item.created) }}</view>
              </view>
              <view class="fdetail_part_main_item_user_buyin">
                <text>
                  {{ $t('finance.buyin2') }} ₹ {{ item.price }}｜{{ $t('finance.earn') }}
                </text>
                <text class="earn">₹{{ item.rate_income }}</text>
              </view>
            </view>
          </view>
        </view>
      </mescroll-body>
      <view v-else class="fdetail_part_html" v-html="detailList.description"></view>
    </view>
    <view class="btn_buy">
      <view class="btn_buy_price">
        <view class="price">₹ {{ buyNum * detailList.price }}</view>
        <view v-if="detailList.balance" class="balance">{{ $t('account.balance') }} ₹ {{ detailList.balance }}</view>
      </view>
      <view class="btn_buy_price_submin" :class="+buyNum ? 'btnactive' : 'btndisable'" @click="toBuy">{{ $t('finance.buyin') }}</view>
    </view>
    <sharepopup ref="sharepop" :shareType="4" :financeID="finID"></sharepopup>
  </view>
</template>

<script>
import { interopDefault as d_4df3 } from '@/utils/mescroll-mixin';
import { countDown, parseTime } from '@/utils/orich';
import { financeDetail, financeDetailHistory } from '@/api/orich';

export default {
  mixins: [d_4df3],
  data: function () {
    return {
      tabIndex: 1,
      tabList: [{
        name: this.$t('finance.tab1'),
        type: 1
      }, {
        name: this.$t('finance.tab2'),
        type: 2
      }],
      finID: '',
      detailList: {},
      buyNum: 1,
      buyMax: 1,
      buyMin: 1,
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
      historyList: [],
      firstLoad: true,
      showTime: null,
      countdown: ''
    };
  },
  onLoad: function (t) {
    this.finID = t.id;
  },
  onShow: function () {
    var t = this;
    setTimeout(function () {
      t.getDetail();
      t.firstLoad || t.mescroll.resetUpScroll();
    });
  },
  methods: {
    openShare: function () {
      this.$refs.sharepop.open();
    },
    countDown: function (t) {
      return parseTime(t);
    },
    toBuy: function () {
      +this.buyNum && uni.navigateTo({
        url: ('../goods/comfirm?id=').concat(this.detailList.id, '&num=').concat(this.buyNum, '&gtype=2')
      });
    },
    changNum: function (t) {
      t.value <= this.buyMax ? this.buyNum = t.value : uni.showToast({
        icon: 'none',
        title: this.$t('common.maxTip'),
        duration: 3e3
      });
    },
    changeTab: function (t) {
      this.tabIndex = t.type;
    },
    getDetail: function () {
      var t = this;
      clearInterval(this.showTime);
      uni.showLoading({
        mask: true
      });
      financeDetail({
        id: this.finID
      }).then(function (e) {
        t.detailList = e;
        e.user_max_buy <= 0 || e.surplus <= 0 ? (t.buyMax = 0, t.buyNum = 0, t.buyMin = 0) : (t.buyMin = 1, t.buyMax = +e.user_max_buy < +e.surplus ? +e.user_max_buy : +e.surplus);
        t.showTime = setInterval(function () {
          t.detailList.server_time++;
          t.countdown = countDown(t.detailList.end_in, t.detailList.server_time);
          t.$forceUpdate();
          '00:00:00' == t.countdown && clearInterval(t.showTime);
        }, 1e3);
        uni.hideLoading();
      }).catch(function () {
        uni.hideLoading();
      });
    },
    upCallback: function (t) {
      var e = this, s = (t.num - 1) * t.size, a = t.size;
      financeDetailHistory({
        id: this.finID,
        start: s,
        limit: a
      }).then(function (s) {
        e.firstLoad = false;
        var i = s.list, a = i.length, n = +s.count;
        1 == t.num && (e.historyList = []);
        e.historyList = e.historyList.concat(i);
        e.mescroll.endBySize(a, n);
      }).catch(function (t) {
        e.mescroll.endErr();
      });
    }
  },
  unmounted: function () {
    clearInterval(this.countdown);
  }
};
</script>

<style scoped>
.fdetail { min-height:100vh;padding-bottom:100rpx;background-image:url('/static/image/finance/bg_list.png');background-size:100% 400rpx;background-repeat:no-repeat;background-color:#f9f9f9;position:relative }
.fdetail .bar_help { position:absolute;right:34rpx;width:38rpx;height:38rpx }
.fdetail .bar_help uni-image { width:100%;height:100% }
.fdetail .fdetail_info { display:flex;align-items:flex-start;justify-content:flex-start;padding:0 22rpx }
.fdetail .fdetail_info .fdetail_info_img { width:198rpx;height:198rpx;position:relative }
.fdetail .fdetail_info .fdetail_info_img uni-image { width:100%;height:100% }
.fdetail .fdetail_info .fdetail_info_finish { width:118rpx;height:132rpx;position:absolute;left:0;top:-28rpx }
.fdetail .fdetail_info .fdetail_info_finish uni-image { width:100%;height:100% }
.fdetail .fdetail_info .fdetail_info_time { width:100%;position:absolute;left:0;bottom:0;height:40rpx;line-height:40rpx;background:#90b9ff;border-radius:10rpx 10rpx 0rpx 0rpx;font-size:24rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#fff;padding:0 6rpx;white-space:nowrap }
.fdetail .fdetail_info .fdetail_info_dd { padding-left:28rpx }
.fdetail .fdetail_info .fdetail_info_dd .fdetail_info_dd_title { font-size:32rpx;font-family:Roboto,Roboto-Bold;font-weight:700;color:#fff;letter-spacing:0rpx;margin-bottom:14rpx }
.fdetail .fdetail_info .fdetail_info_dd .fdetail_info_dd_strip { font-size:28rpx;font-family:PingFang SC,PingFang SC-Bold;font-weight:700;color:#ffe2db;letter-spacing:0rpx;margin-top:6rpx }
.fdetail .fdetail_info .fdetail_info_dd .fdetail_info_dd_strip uni-text { margin-left:6rpx }
.fdetail .fdetail_card { width:710rpx;height:436rpx;background:#fff;border-radius:10rpx;margin-top:60rpx;margin-left:22rpx;padding:38rpx 36rpx }
.fdetail .fdetail_card .fdetail_card_item { display:flex;align-items:center;justify-content:space-between;font-size:28rpx;font-family:Roboto,Roboto-Regular;font-weight:400 }
.fdetail .fdetail_card .fdetail_card_item .fdetail_card_item_title { color:#b9b9b9 }
.fdetail .fdetail_card .fdetail_card_item .fdetail_card_item_main { color:#17273a }
.fdetail .fdetail_card .fdetail_card_item .price { color:#ff5c5c }
.fdetail .fdetail_card .fdetail_card_item .gray { color:#b9b9b9 }
.fdetail .fdetail_card .fdetail_card_item:nth-child(n+2) { margin-top:30rpx }
.fdetail .fdetail_part { margin-top:20rpx;background:#fff }
.fdetail .fdetail_part .fdetail_part_html { padding:0 22rpx }
.fdetail .fdetail_part .fdetail_part_tab { padding:26rpx;display:flex;align-items:center;justify-content:space-around }
.fdetail .fdetail_part .fdetail_part_tab .fdetail_part_tab_item { display:flex;flex-direction:column;align-items:center;justify-content:center }
.fdetail .fdetail_part .fdetail_part_tab .fdetail_part_tab_item uni-image { margin-top:6rpx;width:28rpx;height:6rpx }
.fdetail .fdetail_part .fdetail_part_tab .fdetail_part_tab_item .tab_name { font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#b9b9b9;letter-spacing:0rpx }
.fdetail .fdetail_part .fdetail_part_tab .fdetail_part_tab_item .active { font-size:32rpx;font-weight:500;color:#17273a;letter-spacing:0rpx }
.fdetail .fdetail_part .fdetail_part_main { padding-bottom:20rpx }
.fdetail .fdetail_part .fdetail_part_main .fdetail_part_main_item { display:flex;align-items:flex-start;justify-content:flex-start;padding:20rpx 54rpx }
.fdetail .fdetail_part .fdetail_part_main .fdetail_part_main_item .fdetail_part_main_item_avatar { flex-shrink:0;width:96rpx;height:96rpx;border-radius:50%;overflow:hidden }
.fdetail .fdetail_part .fdetail_part_main .fdetail_part_main_item .fdetail_part_main_item_avatar uni-image { width:100%;height:100% }
.fdetail .fdetail_part .fdetail_part_main .fdetail_part_main_item .fdetail_part_main_item_user { width:100%;padding-left:34rpx }
.fdetail .fdetail_part .fdetail_part_main .fdetail_part_main_item .fdetail_part_main_item_user .fdetail_part_main_item_user_info { display:flex;align-items:center;justify-content:space-between }
.fdetail .fdetail_part .fdetail_part_main .fdetail_part_main_item .fdetail_part_main_item_user .fdetail_part_main_item_user_info .name { max-width:130rpx;font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#17273a;letter-spacing:0rpx }
.fdetail .fdetail_part .fdetail_part_main .fdetail_part_main_item .fdetail_part_main_item_user .fdetail_part_main_item_user_info .time { font-size:24rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#b9b9b9 }
.fdetail .fdetail_part .fdetail_part_main .fdetail_part_main_item .fdetail_part_main_item_user .fdetail_part_main_item_user_info uni-image { width:100rpx;height:46rpx }
.fdetail .fdetail_part .fdetail_part_main .fdetail_part_main_item .fdetail_part_main_item_user .fdetail_part_main_item_user_buyin { margin-top:12rpx;font-size:28rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#b9b9b9 }
.fdetail .fdetail_part .fdetail_part_main .fdetail_part_main_item .fdetail_part_main_item_user .fdetail_part_main_item_user_buyin .earn { margin-left:6rpx;color:#ff5c5c }
.fdetail .btn_buy { width:100%;height:98rpx;position:fixed;left:0;bottom:0;display:flex;align-items:center;justify-content:space-between;padding-left:60rpx;padding-right:30rpx;background:#fff;border-top:2rpx solid #f9f9f9 }
.fdetail .btn_buy .btn_buy_price { font-family:Roboto,Roboto-Bold }
.fdetail .btn_buy .btn_buy_price .price { font-size:32rpx;font-weight:700;color:#ff5c5c }
.fdetail .btn_buy .btn_buy_price .balance { font-size:28rpx;font-weight:400;color:#b9b9b9;white-space:nowrap }
.fdetail .btn_buy .btndisable { background:#dbdbdb }
.fdetail .btn_buy .btnactive { background:#ee5016 }
.fdetail .btn_buy .btn_buy_price_submin { width:404rpx;height:78rpx;border-radius:8rpx;line-height:78rpx;text-align:center;color:#fff }
</style>
