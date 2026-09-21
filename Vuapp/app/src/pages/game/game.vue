<template>
  <view class="game">
    <navbar background="#fff" :title="$t('game.navtitle')" :isBack="false">
      <template #right>
        <view class="nav_help" @click="showRule = true">
          <image src="/static/image/member/icon_problem.png" />
          <view class="nav_help_rule">{{ $t('account.rules') }}</view>
        </view>
      </template>
    </navbar>
    <view class="game_lucky">
      <view class="game_lucky_info">
        <view class="game_lucky_info_balance">
          <view class="title">{{ $t('goods.bal') }}</view>
          <view class="price otw">
            <text class="font32"></text>
            <text class="font64">{{ balance }}</text>
          </view>
        </view>
        <view class="game_lucky_info_recharge" @click="toRecharge">
          <view class="title">{{ $t('account.btnrech') }}</view>
          <view class="icon">
            <image src="/static/image/home/icon_Vector_White.png" />
          </view>
        </view>
      </view>
      <view class="game_lucky_swiper">
        <swiper class="swiper" :interval="interval" :autoplay="true" :vertical="true" :circular="true">
          <swiper-item v-for="(item, index) in swiperList" :key="index">
            <view class="swiper-item">
              <view class="icon">
                <image src="/static/image/game/icon_notice.png" />
              </view>
              <view class="content">
                <text class="content_name">{{ item.usr_nickname }}</text>
                <text class="content_text">{{ $t('common.won') }}</text>
                <text class="content_price">₹ {{ item.luo_amount }}</text>
              </view>
            </view>
          </swiper-item>
        </swiper>
      </view>
      <view class="game_lucky_join">
        <view class="game_lucky_join_period">
          <view class="game_lucky_join_period_issue">
            <view class="title">
              {{ $t('game.trial') }}
              <image src="/static/image/game/icon_Violet.png" />
            </view>
            <view class="tdown">{{ nowlucky.pid }}</view>
          </view>
          <view class="game_lucky_join_period_issue">
            <view class="title">{{ $t('game.down') }}</view>
            <view class="tdown otw">{{ countdown }}</view>
          </view>
        </view>
        <view class="game_lucky_tips">{{ $t('game.tip') }}</view>
        <view class="game_lucky_join_select">
          <view class="game_lucky_join_select_button" :class="{ unable: !canBuy }" @click="openPop(1)">{{ $t('game.jgreen') }}</view>
          <view class="game_lucky_join_select_button" :class="{ unable: !canBuy }" @click="openPop(2)">{{ $t('game.jviolet') }}</view>
          <view class="game_lucky_join_select_button" :class="{ unable: !canBuy }" @click="openPop(3)">{{ $t('game.jred') }}</view>
        </view>
        <view class="game_lucky_join_nums">
          <view
            v-for="(item, index) in 10"
            :key="index"
            class="number"
            :class="{ unable: !canBuy }"
            @click="openPop(4, index)"
          >
            {{ index }}
            <view v-if="canBuy" class="number_icon">
              <template v-if="[0].includes(index)">
                <view class="cicle cviolet"></view>
                <view class="cicle cred"></view>
              </template>
              <template v-else-if="[5].includes(index)">
                <view class="cicle cviolet"></view>
                <view class="cicle cgreen"></view>
              </template>
              <view v-else-if="[1, 3, 7, 9].includes(index)" class="cicle cgreen"></view>
              <view v-else class="cicle cred"></view>
            </view>
          </view>
        </view>
      </view>
    </view>
    <view class="game_tab">
      <view v-for="(item, index) in tabList" :key="index" class="game_tab_item" @click="changeTab(item.type)">
        <view class="game_tab_item_title" :class="{ tabselect: tabIndex == item.type }">{{ item.title }}</view>
        <view v-show="tabIndex == item.type" class="game_tab_item_select">
          <image src="/static/image/icon_Select.png" />
        </view>
      </view>
    </view>
    <view class="game_main">
      <mescroll-body
        ref="mescrollRef"
        :down="downOption"
        :up="upOption"
        :height="400"
        @init="mescrollInit"
        @down="downCallback"
        @up="upCallback"
      >
        <game-record v-if="1 == tabIndex" :list="recordList"></game-record>
        <game-order v-else :list="orderList"></game-order>
      </mescroll-body>
    </view>
    <game-popup
      ref="gamePop"
      :type="buyType"
      :selectNum="selectNum"
      :maxBuy="nowlucky.max_buy"
      :canBuy="canBuy"
      @confirm="confirm"
    ></game-popup>
    <u-popup mode="center" v-model="showRule">
      <view class="game_rule">
        <view class="game_rule_content">
          <view v-html="gameRule"></view>
        </view>
      </view>
      <view class="game_close" @click="showRule = false">
        <image src="/static/image/game/icon_delete.png" />
      </view>
    </u-popup>
    <tabbar page="/pages/game/game"></tabbar>
  </view>
</template>

<script>
import { interopDefault as d_4df3 } from '@/utils/mescroll-mixin';
import { luckyBuy, luckyList, luckyNow, luckyOrderList } from '@/api/orich';
import { countDown } from '@/utils/orich';

export default {
  mixins: [d_4df3],
  data: function () {
    return {
      interval: 5e3,
      tabIndex: 1,
      tabList: [{
        title: this.$t('game.tab1'),
        type: 1
      }, {
        title: this.$t('game.tab2'),
        type: 2
      }],
      recordList: [],
      swiperList: [],
      orderList: [],
      nowlucky: {},
      balance: 0,
      buyType: 1,
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
      timer: null,
      countdown: '00:00:00',
      canBuy: true,
      selectNum: 0,
      showRule: false,
      firstLoad: true,
      gameRule: ''
    };
  },
  watch: {
    tabIndex: function () {
      this.mescroll.resetUpScroll();
    }
  },
  onShow: function () {
    this.nowActive();
    !this.firstLoad && this.mescroll.resetUpScroll();
    this.firstLoad = false;
  },
  methods: {
    nowActive: function () {
      var t = this;
      clearInterval(this.timer);
      this.canBuy = true;
      uni.showLoading({
        mask: true
      });
      luckyNow().then(function (e) {
        if (1 != e.lucky_status) return (t.countdown = '-', void uni.hideLoading());
        t.nowlucky = e;
        e.pid ? (t.timer = setInterval(function () {
          t.nowlucky.now_time++;
          t.countdown = countDown(t.nowlucky.end_time, t.nowlucky.now_time);
          t.nowlucky.now_time > t.nowlucky.limit_time && (t.canBuy = false, t.$refs.gamePop.close());
          t.$forceUpdate();
          t.countdown <= '00:00:00' && (clearInterval(t.timer), t.nowActive(), t.mescroll.resetUpScroll());
        }, 1e3), uni.hideLoading()) : setTimeout(function () {
          clearInterval(t.timer);
          t.nowActive();
        }, 1e3);
      }).catch(function () {
        uni.hideLoading();
      });
    },
    toRecharge: function () {
      uni.navigateTo({
        url: '../payment/recharge'
      });
    },
    confirm: function (t) {
      var e = this, s = {
        id: this.nowlucky.id,
        price: +t.money * +t.buyNum,
        number: t.number,
        color: t.color
      };
      uni.showLoading({
        mask: true
      });
      luckyBuy(s).then(function (t) {
        uni.showToast({
          title: e.$t('game.buysuc'),
          icon: 'none'
        });
        e.$refs.gamePop.close();
        e.mescroll.resetUpScroll();
        uni.hideLoading();
      }).catch(function () {
        uni.hideLoading();
      });
    },
    changeTab: function (t) {
      this.tabIndex = t;
    },
    openPop: function (t, e) {
      Object.keys(this.nowlucky).length && (this.buyType = t, this.selectNum = e || 0, this.$refs.gamePop.open());
    },
    upCallback: function (t) {
      var e = this, s = (t.num - 1) * t.size, i = t.size, a = 1 == this.tabIndex ? luckyList : luckyOrderList;
      a({
        start: s,
        limit: i
      }).then(function (s) {
        var i = s.list, a = i.length, n = +s.count;
        1 == e.tabIndex ? (1 == t.num && (e.recordList = []), e.balance = s.balance, e.swiperList = s.records, e.gameRule = s.rule, e.recordList = e.recordList.concat(i)) : (1 == t.num && (e.orderList = []), e.orderList = e.orderList.concat(i));
        e.mescroll.endBySize(a, n);
      }).catch(function (t) {
        e.mescroll.endErr();
      });
    }
  },
  unmounted: function () {
    clearInterval(this.timer);
  }
};
</script>

<style scoped>
.game { width:100%;min-height:100vh;background:#f9f9f9;padding-bottom:160rpx }
.game .nav_help { position:absolute;right:26rpx;display:flex;align-items:center }
.game .nav_help uni-image { width:28rpx;height:28rpx }
.game .nav_help .nav_help_rule { margin-left:6rpx;font-size:28rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#17273a }
.game .cgreen { background:#55e273 }
.game .cviolet { background:#ff62ff }
.game .cred { background:#ff4343 }
.game .unable { background:#b9b9b9!important;box-shadow:none!important }
.game .game_lucky { margin-top:34rpx;height:918rpx;background:url('/static/image/finance/bg_list.png') no-repeat;background-size:100% 100% }
.game .game_lucky .game_lucky_info { margin:0 24rpx;display:flex;align-items:center;justify-content:space-between;height:160rpx;padding:32rpx 36rpx 0 42rpx }
.game .game_lucky .game_lucky_info .game_lucky_info_balance .title { font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#ec991f }
.game .game_lucky .game_lucky_info .game_lucky_info_balance .price { margin-top:14rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#ff5c5c;letter-spacing:0rpx;max-width:360rpx }
.game .game_lucky .game_lucky_info .game_lucky_info_balance .price .font32 { font-size:32rpx }
.game .game_lucky .game_lucky_info .game_lucky_info_balance .price .font64 { margin-left:6rpx;font-size:64rpx }
.game .game_lucky .game_lucky_info .game_lucky_info_recharge { width:166rpx;height:54rpx;line-height:54rpx;background:#fa5b21;border-radius:199rpx;box-shadow:0rpx -2rpx 4rpx 0rpx #fe8e66 inset;display:flex;align-items:flex-start;justify-content:center }
.game .game_lucky .game_lucky_info .game_lucky_info_recharge .title { color:#fff;font-size:26rpx;font-family:Roboto,Roboto-Regular;font-weight:400 }
.game .game_lucky .game_lucky_info .game_lucky_info_recharge .icon { margin-left:8rpx;width:12rpx;height:20rpx }
.game .game_lucky .game_lucky_info .game_lucky_info_recharge .icon uni-image { width:100%;height:100% }
.game .game_lucky .game_lucky_swiper { height:40rpx }
.game .game_lucky .game_lucky_swiper .swiper { height:40rpx }
.game .game_lucky .game_lucky_swiper .swiper .swiper-item { display:flex;align-items:center;justify-content:center }
.game .game_lucky .game_lucky_swiper .swiper .swiper-item .icon { width:32rpx;height:32rpx }
.game .game_lucky .game_lucky_swiper .swiper .swiper-item .icon uni-image { width:100%;height:100% }
.game .game_lucky .game_lucky_swiper .swiper .swiper-item .content { margin-left:10rpx;font-size:26rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#8f5601 }
.game .game_lucky .game_lucky_swiper .swiper .swiper-item .content .content_text { margin:0 6rpx }
.game .game_lucky .game_lucky_swiper .swiper .swiper-item .content .content_price { color:#ff5c5c }
.game .game_lucky .game_lucky_join { margin-top:40rpx;padding:58rpx 58rpx 0 68rpx }
.game .game_lucky .game_lucky_join .game_lucky_join_period { display:flex;align-items:flex-start;justify-content:space-between;height:88rpx }
.game .game_lucky .game_lucky_join .game_lucky_join_period .game_lucky_join_period_issue { font-family:Roboto,Roboto-Medium;font-weight:500 }
.game .game_lucky .game_lucky_join .game_lucky_join_period .title { font-size:28rpx;color:#fcedcf }
.game .game_lucky .game_lucky_join .game_lucky_join_period .title uni-image { margin-left:10rpx;width:24rpx;height:24rpx }
.game .game_lucky .game_lucky_join .game_lucky_join_period .tdown { max-width:400rpx;font-size:44rpx;color:#fff;text-shadow:0rpx 2rpx 2rpx 0rpx #f28f00 }
.game .game_lucky .game_lucky_join .game_lucky_tips { margin-top:84rpx;font-size:26rpx;font-family:Roboto,Roboto-Medium;font-weight:500;text-align:center;color:#b05500 }
.game .game_lucky .game_lucky_join .game_lucky_join_select { margin-top:36rpx;display:flex;align-items:center;justify-content:space-around }
.game .game_lucky .game_lucky_join .game_lucky_join_select .game_lucky_join_select_button { width:189rpx;height:76rpx;line-height:76rpx;text-align:center;border-radius:4rpx;color:#fff;font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:500 }
.game .game_lucky .game_lucky_join .game_lucky_join_select .game_lucky_join_select_button:nth-child(1) { background:#55e273;box-shadow:0rpx 6rpx 6rpx 0rpx rgba(252,153,11,.6),0rpx -8rpx 14rpx 0rpx #4beb6e inset }
.game .game_lucky .game_lucky_join .game_lucky_join_select .game_lucky_join_select_button:nth-child(2) { background:#ff62ff;box-shadow:0rpx 6rpx 6rpx 0rpx #ff9803 }
.game .game_lucky .game_lucky_join .game_lucky_join_select .game_lucky_join_select_button:nth-child(3) { background:#ff4343;box-shadow:0rpx 6rpx 6rpx 0rpx rgba(252,153,11,.8) }
.game .game_lucky .game_lucky_join .game_lucky_join_nums { display:flex;align-items:center;justify-content:space-around;flex-wrap:wrap }
.game .game_lucky .game_lucky_join .game_lucky_join_nums .number { margin-top:22rpx;width:108rpx;height:62rpx;line-height:62rpx;text-align:center;background:#3a89ff;border-radius:4rpx;font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#fff;position:relative }
.game .game_lucky .game_lucky_join .game_lucky_join_nums .number .number_icon { line-height:normal;display:flex;align-items:flex-end;justify-content:flex-end;position:absolute;bottom:4rpx;right:4rpx }
.game .game_lucky .game_lucky_join .game_lucky_join_nums .number .number_icon .cicle { margin-left:2rpx;width:14rpx;height:14rpx;border-radius:50% }
.game .game_tab { background-color:#fff;width:100%;margin-top:26rpx;padding:36rpx 0;display:flex;align-items:center;justify-content:center }
.game .game_tab .game_tab_item { display:flex;align-items:center;justify-content:center;flex-direction:column }
.game .game_tab .game_tab_item:nth-child(1) { margin-right:110rpx }
.game .game_tab .game_tab_item .game_tab_item_title { font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#b9b9b9;letter-spacing:0rpx }
.game .game_tab .game_tab_item .game_tab_item_select { width:28rpx;height:12rpx }
.game .game_tab .game_tab_item .game_tab_item_select uni-image { width:100%;height:100% }
.game .game_tab .game_tab_item .tabselect { font-size:32rpx;font-weight:500;color:#17273a }
.game .game_rule { width:688rpx;height:976rpx;background:url('/static/image/game/bg_rules.png') no-repeat;background-size:100% 100%;padding:100rpx 30rpx 40rpx 40rpx }
.game .game_rule .game_rule_content { height:100%;width:100%;overflow:hidden;overflow-y:scroll }
.game .game_close { margin-top:16rpx;text-align:center }
.game .game_close uni-image { width:58rpx;height:58rpx }
.game .u-mode-center-box { background-color:initial }
.game .game_lucky { margin-top:34rpx;height:918rpx;background:url('/static/image/game/bg_game.png') no-repeat;background-size:100% 100% }
</style>
