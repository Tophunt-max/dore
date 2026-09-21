<template>
  <view class="home">
    <navbar :isBack="false" :titleColor="titleColor" :background="navBg">
      <template #center>
        <view class="nav-logo">
          <image src="/static/image/logo.png" mode="aspectFit" style="height: 84rpx; width: 84rpx" />
        </view>
      </template>
      <template #right>
        <view class="home-lang" slot="right">
          <view @click="showLang = true">
            <text :style="{ color: titleColor }">{{ reLanguage }}</text>
            <u-icon name="arrow-down" :color="titleColor" size="28"></u-icon>
          </view>
        </view>
      </template>
    </navbar>
    <view class="home-background"></view>
    <view class="toTop" id="toTop">
      <view v-if="bannerList.length" class="banner">
        <u-swiper height="278" :list="bannerList" @click="clickBanner"></u-swiper>
      </view>
      <view v-if="0 != tabList.length" class="tab">
        <view v-for="(item, index) in tabList" :key="index" class="tab-item" @click="toUrl(item)">
          <image :src="item.imageurl" mode="" />
          <view class="tab-item-text">{{ item.title }}</view>
        </view>
      </view>
      <view v-if="latestList.length && swiperToast" class="toast">
        <swiper class="toast-swiper" :interval="interval" :autoplay="true" :vertical="true" :circular="true">
          <swiper-item v-for="(item, index) in latestList" :key="index">
            <view class="toast-swiper-item" @click="toGoods(item.id)">
              <view class="toast-swiper-item-img">
                <image :src="item.headimgurl" />
              </view>
              <view class="toast-swiper-item-main">
                <text>{{ item.nickname }}</text>
                <text>{{ $t('common.won') }}</text>
                <text class="name">{{ item.name }}</text>
              </view>
            </view>
          </swiper-item>
        </swiper>
      </view>
      <view v-if="0 !== Object.keys(newData).length" class="newbie" :class="{ 'guide-new': guideShow }">
        <view v-if="guideShow" class="guide-tips">
          <image class="guide-del" :src="'/static/image/home/del.png'" @click.stop="NoFirst($event)" mode="" />
          <view class="guide-text">{{ $t('home.view') }}</view>
        </view>
        <view class="newbie-title" @click="toRich">
          <view class="newbie-title-text">{{ $t('home.newbie') }}</view>
          <view class="newbie-title-help">{{ $t('home.help') }}</view>
          <image src="/static/image/home/Vector.png" mode="widthFix" />
        </view>
        <buystep page="homePage"></buystep>
        <view class="nshop" @click="toGoods(newData.id, 'new')">
          <image class="nshop-img" :src="newData.iconurl" mode="" />
          <view class="nshop-detail">
            <view class="nshop-title otw">{{ newData.name }}</view>
            <view class="nshop-precent">
              <view class="nshop-progress">
                <lineprogress :percent="parseInt(newData.current_buy / newData.max_buy * 100)"></lineprogress>
              </view>
              <view class="nshop-progress-text">{{ newData.current_buy }}/{{ newData.max_buy }}</view>
            </view>
            <view v-if="newData.countdown" class="nshop-countdown">Draw in {{ newData.countdown }}</view>
            <view class="nshop-price">
              <view class="nshop-price-old">₹{{ newData.allprice }}</view>
              <view class="nshop-price-new">₹{{ newData.unit_price }}</view>
            </view>
            <view
              class="nshop-btn"
              :class="{ 'nshop-diasble': 2 == newData.has_lottery }"
              @click.stop="snatch(newData, newData.has_lottery, true)"
            >
              <view>{{ $t('home.joinnow') }}</view>
              <image src="/static/image/home/icon_RightArrow.png" mode="widthFix" />
            </view>
          </view>
        </view>
      </view>
      <view v-if="fList.length" class="finance">
        <view class="finance-header">
          <view class="finance-header-item">
            <view class="iconimg">
              <image src="/static/image/finance/icon_Finance.png" mode="" />
            </view>
            <view class="title">{{ $t('finance.htitle') }}</view>
          </view>
          <view class="finance-header-item" @click="toFinance">
            <view class="more">{{ $t('home.more') }}</view>
            <view class="moreimg">
              <image src="/static/image/finance/icon_Arrow.png" mode="" />
            </view>
          </view>
        </view>
        <view class="finance-main">
          <view
            v-for="(item, index) in fList"
            :key="index"
            class="finance-main-card"
            @click="toFDetail(item.id)"
          >
            <view class="finance-main-card-image">
              <image :src="item.img" mode="" />
            </view>
            <view class="finance-main-card-content">
              <view class="ctitle">{{ item.name }}</view>
              <view class="linepro">
                <lineprogress :height="28" :percent="100 * item.progress"></lineprogress>
              </view>
              <view class="ditem">
                <view class="ditem-title">{{ $t('finance.due') }}:</view>
                <view class="ditem-cel">{{ item.day }} {{ $t('finance.day') }}</view>
              </view>
              <view class="ditem">
                <view class="ditem-title">{{ $t('finance.rate') }}:</view>
                <view class="ditem-cel">{{ item.rate }}%</view>
              </view>
            </view>
            <view v-if="2 == item.status" class="finance-main-card-finish">
              <image src="/static/image/finance/img_Soldout.png" mode="" />
            </view>
          </view>
          <view class="finance-main-more" @click="toFinance">
            <view class="more-icon">
              <image src="/static/image/finance/icon_Arrow.png" mode="" />
            </view>
          </view>
        </view>
      </view>
      <view v-if="0 !== upcomimgList.length" class="high glist">
        <view class="header">
          <view class="header-title">
            <image src="/static/image/home/icon_Upcoming.png" mode="" />
            {{ $t('home.upcoming') }}
          </view>
        </view>
        <view class="main">
          <view v-for="(item, index) in upcomimgList" :key="index" class="item" @click="toGoods(item.id)">
            <view class="item-show">
              <image :src="item.iconurl" mode="" />
            </view>
            <view class="item-text">
              <view class="item-name otw">{{ item.name }}</view>
              <view class="item-line" :class="item.countdown ? '' : 'item-op'">
                <lineprogress :percent="parseInt(item.current_buy / item.max_buy * 100)"></lineprogress>
              </view>
              <view class="item-count">₹ {{ item.unit_price }}</view>
            </view>
          </view>
          <view class="main-op"></view>
        </view>
      </view>
      <view v-if="firstLoad" class="invite">
        <view class="invite-icon">
          <image src="/static/image/home/icon_Invite.png" mode="" />
        </view>
        <view class="invite-main">{{ $t('home.invitemoney') }}</view>
        <view class="invite-btn" @click="toInvite">{{ $t('prize.btnTitle') }}</view>
      </view>
      <view v-if="0 !== highList.length" class="high glist">
        <view class="header">
          <view class="header-title">
            <image src="/static/image/home/icon_HotPicks.png" mode="" />
            {{ $t('home.high') }}
          </view>
        </view>
        <view class="main">
          <view v-for="(item, index) in highList" :key="index" class="item" @click="toGoods(item.id)">
            <view class="item-show">
              <image :src="item.iconurl" mode="" />
              <view v-if="2 == item.normal" class="item-show-prize">{{ $t('home.multiple') }}</view>
            </view>
            <view class="item-text">
              <view class="item-name otw">{{ item.name }}</view>
              <view class="item-line" :class="item.countdown ? '' : 'item-op'">
                <lineprogress :percent="parseInt(item.current_buy / item.max_buy * 100)"></lineprogress>
              </view>
              <view class="item-count">₹ {{ item.price }}</view>
            </view>
          </view>
          <view class="main-op"></view>
        </view>
      </view>
    </view>
    <view class="home-list">
      <u-sticky>
        <view v-if="firstLoad" class="ltab">
          <view class="ltab-price" @click="showPrice = true">
            <view class="ltab-price-select">{{ tabPrice }}</view>
            <image src="/static/image/icon_arrow.png" mode="" />
          </view>
          <view class="ltab-tab">
            <view
              v-for="(item, index) in labList"
              :key="index"
              class="ltab-item"
              :class="ltabIndex == item.value ? 'ltab-item-active' : ''"
              @click="ltabIndex = item.value"
            >
              <view class="ltab-item-text">{{ item.label }}</view>
              <image src="/static/image/icon_Select.png" mode="" />
            </view>
          </view>
        </view>
      </u-sticky>
      <mescroll-body
        ref="mescrollRef"
        height="400"
        :down="downOption"
        :up="upOption"
        @init="mescrollInit"
        @down="downCallback"
        @up="upCallback"
      >
        <view
          v-for="(item, index) in goodsList"
          :key="index"
          class="litem"
          :class="index + 1 == goodsList.length ? 'lgoods-noborder' : ''"
          @click="toGoods(item.id)"
        >
          <view class="litem-left">
            <image class="litem-img" :src="item.iconurl" mode="aspectFit" />
            <view v-if="2 == item.normal" class="item-prize">{{ $t('home.multiple') }}</view>
            <view
              v-if="item.userimgurl.length"
              class="litem-avatar"
              :class="item.countdown ? 'litem-avatar-end' : ''"
            >
              <image
                v-for="(item2, index2) in item.userimgurl"
                v-if="item2"
                :key="index2"
                :src="item2"
                mode=""
               />
            </view>
          </view>
          <view class="litem-right">
            <view class="lgoods-title otw">{{ item.name }}</view>
            <view v-if="item.countdown" class="lgoods-end draw-color">
              {{ (item.has_lottery, 'End') }} in
						{{ item.countdown }}
            </view>
            <view v-else class="lgoods-end">
              <text v-if="0 !== +item.success" class="draw-color">{{ (item.has_lottery, 'End') }} in {{ item.countdown }}</text>
              <text v-else>{{ $t('home.fulltime') }}</text>
            </view>
            <view class="lgoods-precent">
              <view class="lgoods-progress">
                <lineprogress :percent="parseInt(item.current_buy / item.max_buy * 100)"></lineprogress>
              </view>
              <view class="lgoods-progress-text">{{ item.current_buy }}/{{ item.max_buy }}</view>
            </view>
            <view class="lgoods-price">
              <view class="lgoods-price-old">₹{{ item.allprice }}</view>
              <view class="lgoods-price-new">₹{{ item.unit_price }}</view>
            </view>
            <view class="lgoods-bottom">
              <view v-if="0 !== +item.usernumber" class="lgoods-people otw lgoods-people-end">{{ item.usernumber }} {{ $t('home.gift') }}</view>
              <view v-else class="lgoods-people otw lgoods-people-end">{{ $t('home.newDraw') }}</view>
              <view
                class="lgoods-btn"
                :class="{ 'lgoods-btn-avatar': item.userimgurl.length, 'nshop-diasble': 2 == item.has_lottery }"
                @click.stop="snatch(item, item.has_lottery)"
              >
                <view>{{ $t('home.snatch') }}</view>
                <image src="/static/image/home/icon_RightArrow.png" mode="" />
              </view>
            </view>
          </view>
        </view>
      </mescroll-body>
    </view>
    <view
      v-if="lotteryShow"
      class="mask"
      @click="hideLottery"
      @touchmove="stopPropagation(), preventDefault()"
    >
      <view class="m-modal" :class="1 == pickData.status ? 'm-modal-fail' : 'm-modal-success'">
        <view class="m-title">
          {{ 1 == pickData.status ? $t('home.regret') : $t('home.congara') }}
        </view>
        <view v-if="lotteryList.length > 1" class="m-left" @click.stop="pickLeft($event)">
          <image :src="'/static/image/home/icon_Arrow.png'" mode="" />
        </view>
        <view v-if="lotteryList.length > 1" class="m-right" @click.stop="pickRight($event)">
          <image :src="'/static/image/home/icon_Arrow_right.png'" mode="" />
        </view>
        <view class="m-main" @click="stopPropagation()">
          <view class="m-header">
            <view class="m-header-img">
              <image :src="pickData.iconurl" mode="" />
            </view>
            <view class="m-header-desc">
              <view class="m-header-title otw2">{{ pickData.name }}</view>
              <view class="m-header-issue">{{ $t('common.niss') }} {{ pickData.id }}</view>
            </view>
          </view>
          <view class="m-winner" @click="toDiscont(pickData)">
            <view v-if="pickData.word" class="item">
              {{ $t('common.youwon') }}
              <text>{{ pickData.word }} |
							₹{{ pickData.getprice }}</text>
            </view>
            <view class="item">
              {{ $t('common.winners') }}
              <text>{{ pickData.nickname }}</text>
            </view>
            <view class="item">
              {{ $t('common.code') }}
              <text>{{ pickData.lottery_sn }}</text>
            </view>
          </view>
          <view v-if="2 == pickData.status" class="m-tips">{{ $t('home.please') }}</view>
          <view v-else class="m-tips">{{ $t('home.prize') }}</view>
          <view class="m-btn">
            <view class="m-btn-item m-btn-left" @click="hideLottery">{{ $t('home.back') }}</view>
            <view class="m-btn-item m-btn-right" @click.stop="toDetail(pickData.id)">
              <text v-if="2 == pickData.status">{{ $t('home.toconfirm') }}</text>
              <text v-else>{{ $t('home.tocheck') }}</text>
            </view>
          </view>
        </view>
      </view>
    </view>
    <view v-if="prizeShow" class="mask" @click="hidePrize" @touchmove="stopPropagation(), preventDefault()">
      <view class="m-modal m-modal-success">
        <view class="p-title">{{ $t('home.prizetitle') }}</view>
        <view class="p-main">
          <view class="p-main-icon">
            <image :src="'/static/image/prize/icon_partition.png'" mode="" />
          </view>
          <view class="p-main-tips">{{ $t('home.prizetips1') }}</view>
          <view class="p-main-price">
            <text></text>
            {{ activityPrice }}
          </view>
          <view class="p-main-tips2">{{ $t('home.prizetips2') }}</view>
          <view class="p-btn">
            <view class="m-btn-item m-btn-left" @click="hidePrize">{{ $t('home.back') }}</view>
            <view class="m-btn-item m-btn-right" @click.stop="toAccount($event)">
              <text>{{ $t('home.tocheck') }}</text>
            </view>
          </view>
        </view>
      </view>
    </view>
    <view v-if="guideShow" class="mask" @touchmove="stopPropagation(), preventDefault()">
      <view class="m-guide"></view>
    </view>
    <view v-if="activityTime && 0 != activityTime" class="home-prize" @click="toPrize">
      <image :src="'/static/image/prize/icon_partition.png'" mode="" />
    </view>
    <u-popup mode="bottom" v-model="snatchShow">
      <view class="snatch">
        <view class="snatch-title">{{ $t('home.quan') }}</view>
        <view class="snatch-num">
          <u-number-box
            size="32"
            :color="0 === +buyNum ? '#B9B9B9' : '#17273A'"
            input-width="176"
            input-height="78"
            :max="canBuy"
            @change="valChange"
            v-model="buyNum"
          ></u-number-box>
        </view>
        <view class="snatch-set">
          <view class="snatch-set-item" @click="buyAdd(5)"></view>
          <view class="snatch-set-item" @click="buyAdd(10)"></view>
          <view class="snatch-set-item" @click="buyAdd(50)"></view>
          <view class="snatch-set-item" @click="buyAdd('all')"></view>
        </view>
        <view class="snatch-btn">
          <overbtn
            :btnText="$t('home.btnt')"
            :fontSize="32"
            :canSubmit="0 == buyNum"
            :btnType="0 == buyNum ? 'disabled' : 'submit'"
            @btnAction="toContinue"
          ></overbtn>
        </view>
      </view>
    </u-popup>
    <u-select
      :list="languageList"
      :confirm-text="$t('common.confirm')"
      :cancel-text="$t('common.cancel')"
      @confirm="changLang"
      v-model="showLang"
    ></u-select>
    <u-select
      :list="priceList"
      :default-value="[priceIndex]"
      :confirm-text="$t('common.confirm')"
      :cancel-text="$t('common.cancel')"
      @confirm="priceConfirm"
      v-model="showPrice"
    ></u-select>
    <tabbar page="/pages/home/home"></tabbar>
    <u-mask :show="showRecomm && !guideShow && firstLoad && recommValue" :mask-click-able="false">
      <view class="showRecomm-img">
        <u-image width="100%" height="800rpx" :src="systemInfo.image" mode="aspectFit" @click="handleImage"></u-image>
        <view class="showRecomm-img-close">
          <u-image
            width="60rpx"
            height="60rpx"
            src="/static/image/icon_delete_tou.png"
            mode="aspectFit"
            @click="showRecomm = false, $store.commit('SET_RECOMM', false)"
          ></u-image>
        </view>
      </view>
    </u-mask>
  </view>
</template>

<script>
import { interopDefault as d_4df3 } from '@/utils/mescroll-mixin';
import { mapGetters } from 'vuex';
import { interopDefault as d_a34a } from '@/vendor/a34a';
import { ActiveList, DuobaoItem, DuobaoSwiperItem, GKind, GetResult, GetTime, Index, NumberMax, UserJoin, editAfStatus, financeList, gPrice, getActivity, getUserAfs } from '@/api/orich';
import { countDown } from '@/utils/orich';
import { analytics, nativePlus } from '@/utils/native';

// Helpers the reference bundle hoisted out of the component.
function h(t, e, s, i, a, n, r) {
  try {
    var o = t[n](r), c = o.value;
  } catch (l) {
    return void s(l);
  }
  o.done ? e(c) : Promise.resolve(c).then(i, a);
}
function b(t, e, s) {
  return ((e in t) ? Object.defineProperty(t, e, {
    value: s,
    enumerable: true,
    configurable: true,
    writable: true
  }) : t[e] = s, t);
}
function v(t, e) {
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
var w = analytics;
var $ = analytics;
function m(t) {
  return function () {
    var e = this, s = arguments;
    return new Promise(function (i, a) {
      var n = t.apply(e, s);
      function r(t) {
        h(n, i, a, r, o, 'next', t);
      }
      function o(t) {
        h(n, i, a, r, o, 'throw', t);
      }
      r(void 0);
    });
  };
}
function g(t) {
  for (var e = 1; e < arguments.length; e++) {
    var s = null != arguments[e] ? arguments[e] : {};
    e % 2 ? v(Object(s), true).forEach(function (e) {
      b(t, e, s[e]);
    }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(t, Object.getOwnPropertyDescriptors(s)) : v(Object(s)).forEach(function (e) {
      Object.defineProperty(t, e, Object.getOwnPropertyDescriptor(s, e));
    });
  }
  return t;
}

export default {
  mixins: [d_4df3],
  onLoad: function (t) {
    this.versionNum = nativePlus.runtime.version;
    this.gPriceList();
    this.kindList();
    t.channel && uni.setStorageSync('channel', t.channel);
  },
  computed: g(g({}, mapGetters(['userInfo', 'systemInfo', 'recommValue'])), {}, {
    reLanguage: function () {
      var t = '';
      return (t = 'hi_di' == uni.getStorageSync('language') ? 'हिंदी' : 'English', t);
    }
  }),
  watch: {
    ltabIndex: function () {
      uni.pageScrollTo({
        duration: 200,
        scrollTop: this.toTop
      });
      this.mescroll.resetUpScroll();
    },
    pickIndex: function () {
      console.log(this.pickIndex);
      this.pickData = this.lotteryList[this.pickIndex];
    },
    isActivity: function (t) {
      var e = this;
      t && (this.isActivityTimer = setInterval(function () {
        e.getActive();
      }, 1e3));
    },
    tprice: function (t) {
      this.mescroll.resetUpScroll();
    }
  },
  data: function () {
    return {
      showRecomm: false,
      webname: '',
      toTop: 0,
      navBg: 'transparent',
      titleColor: '#ffffff',
      bannerList: [],
      tabList: [],
      npercent: 80,
      newData: {},
      latestList: [],
      highList: [],
      upcomimgList: [],
      ltabIndex: '',
      goodsList: [],
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
      newTime: null,
      highTime: [],
      listTime: [],
      compimgTime: [],
      lotteryTime: null,
      lotteryArr: [],
      lotteryList: [],
      lotteryShow: false,
      pickData: {},
      pickIndex: null,
      snatchShow: false,
      snatchData: {},
      buyNum: 1,
      canBuy: 0,
      guideShow: false,
      prizeShow: false,
      activityTime: 0,
      activityNowtime: 0,
      activTimer: null,
      isActivity: false,
      isActivityTimer: null,
      activityPrice: 0,
      sendMes: {
        phone: '',
        content: ''
      },
      showDown: true,
      downloadAPK: '',
      downloadAPKTimer: null,
      priceList: [],
      interval: 5e3,
      swiperToast: false,
      showPrice: false,
      tabPrice: this.$t('common.price'),
      priceIndex: 0,
      tprice: '',
      swiperItem: {},
      firstLoad: false,
      labList: [],
      languageList: [{
        value: 'en_us',
        label: 'English'
      }, {
        value: 'hi_di',
        label: 'हिंदी'
      }],
      showLang: false,
      versionNum: '0',
      fList: []
    };
  },
  onShow: function () {
    var e = this;
    return m(d_a34a.mark(function s() {
      return d_a34a.wrap(function (s) {
        while (1) switch (s.prev = s.next) {
          case 0:
            return (e.$store.dispatch('getSystemInfo'), e.buyNum = 1, e.getFinance(), s.next = 5, e.getData());
          case 5:
            return (s.next = 7, e.getActives());
          case 7:
            return (s.next = 9, e.getLottery());
          case 9:
            if ((s.t0 = e.firstLoad, !s.t0)) {
              s.next = 13;
              break;
            }
            return (s.next = 13, e.mescroll.resetUpScroll());
          case 13:
            return (s.next = 15, e.swiperList());
          case 15:
            setTimeout(function () {
              uni.createSelectorQuery().select('#toTop').boundingClientRect(function (s) {
                e.toTop = s.height - 36;
                console.log(s.height, e.toTop);
              }).exec();
            }, 1e3);
            e.userInfo && 1 == e.userInfo.new && 0 != Object.keys(e.newData).length ? (e.guideShow = true, uni.pageScrollTo({
              duration: 200,
              scrollTop: 0
            })) : (e.guideShow = false, e.systemInfo.image && (e.showRecomm = true));
            e.$store.state.token && e.getActive();
            e.getUserAfList();
          case 19:
          case 'end':
            return s.stop();
        }
      }, s);
    }))();
  },
  methods: {
    getUserAfList: function () {
      var t = [], e = [];
      getUserAfs().then(function (s) {
        if ((t = s, t && +t.list.length)) {
          for (var i = 0; i < t.list.length; i++) (e.push(t.list[i].ure_orderid), $.logEvent({
            eventName: 'af_xpay_revenue',
            eventValues: {
              af_revenue: t.list[i].ure_price,
              af_content_type: 'recharge',
              af_content_id: t.merchantId,
              af_currency: t.currency
            }
          }, function (t) {}));
          for (var a = 0; a < t.list.length; a++) w.logEvent({
            name: 'purchase',
            params: {
              value: t.list[a].ure_price,
              currency: t.currency,
              transaction_id: t.merchantId
            }
          }, function (t) {});
        }
        +e.length && editAfStatus({
          orderNums: e
        }).then(function (t) {});
      });
    },
    toFDetail: function (t) {
      uni.navigateTo({
        url: ('../finance/fdetail?id=').concat(t)
      });
    },
    toFinance: function () {
      uni.navigateTo({
        url: '../finance/flist'
      });
    },
    getFinance: function () {
      var t = this;
      financeList({
        start: 0,
        limit: 5,
        version: this.versionNum
      }).then(function (e) {
        t.fList = e.list;
      });
    },
    handleImage: function () {
      var t = {};
      t.type = this.systemInfo.link_type;
      t.url = this.systemInfo.link;
      this.toUrl(t);
    },
    changLang: function (t) {},
    GORule: function (t) {
      switch (+t) {
        case 1:
          uni.navigateTo({
            url: '../help/help_detail?id=35'
          });
          break;
        case 2:
          uni.navigateTo({
            url: '../help/help_detail?id=36'
          });
          break;
      }
    },
    toInvite: function () {
      uni.navigateTo({
        url: '../invitation/invitation'
      });
    },
    swiperList: function () {
      var t = this;
      DuobaoSwiperItem({
        version: this.versionNum
      }).then(function (e) {
        t.swiperItem = e;
      });
    },
    priceConfirm: function (t) {
      for (var e in (this.tabPrice = t[0].value ? t[0].label : this.$t('common.price'), this.priceList)) this.priceList[e].value == t[0].value && (this.priceIndex = +e, this.tprice = t[0].value);
    },
    gPriceList: function () {
      var t = this;
      gPrice().then(function (e) {
        t.priceList = e;
      });
    },
    kindList: function () {
      var t = this;
      GKind({
        version: this.versionNum
      }).then(function (e) {
        t.labList = e;
        t.ltabIndex = e[0].value;
      });
    },
    downloadURL: function () {
      var t = this;
      clearInterval(this.downloadAPKTimer);
      this.systemInfo.version.forEach(function (e) {
        1 == e.channel && 1 == e.system && (t.downloadAPK = e.dl);
      });
    },
    toDiscont: function (e) {
      console.log(e, 'item');
      e.word && uni.navigateTo({
        url: ('../order/discount?id=').concat(e.id)
      });
    },
    getActive: function () {
      var t = this;
      getActivity().then(function (e) {
        e.price && (t.prizeShow = true, t.activityPrice = e.price, setTimeout(function () {
          clearInterval(t.isActivityTimer);
        }, 200));
      });
    },
    NoFirst: function () {
      var t = this;
      UserJoin().then(function () {
        t.guideShow = false;
        t.$store.dispatch('getUserInfo');
      });
    },
    getData: function () {
      var t = this;
      Index().then(function (e) {
        t.webname = e.title;
        t.bannerList = [];
        t.tabList = [];
        e.bannerlist.forEach(function (e) {
          t.bannerList.push({
            image: e.imageurl,
            type: e.type,
            url: e.url
          });
        });
        t.tabList = e.navigationlist;
        t.sendMes.phone = e.system.whatsapp;
        t.sendMes.content = e.system.customercontent;
        t.swiperToast = true;
      }).catch(function () {});
    },
    clickBanner: function (t) {
      var e = this.bannerList[t];
      this.toUrl(e);
    },
    toUrl: function (t) {
      var e = this;
      return m(d_a34a.mark(function s() {
        return d_a34a.wrap(function (s) {
          while (1) switch (s.prev = s.next) {
            case 0:
              if (3 != t.type) {
                s.next = 6;
                break;
              }
              return (s.next = 3, e.getData());
            case 3:
              nativePlus.runtime.openURL(('whatsapp://send?phone=+').concat(e.sendMes.phone, '&text=').concat(e.sendMes.content));
              s.next = 7;
              break;
            case 6:
              9 == t.type || 10 == t.type ? nativePlus.runtime.openURL(t.url) : uni.navigateTo({
                url: t.url
              });
            case 7:
            case 'end':
              return s.stop();
          }
        }, s);
      }))();
    },
    getActives: function () {
      var t = this;
      ActiveList({
        version: this.versionNum
      }).then(function (e) {
        t.newData = e.runoob || ({});
        '2' == t.newData.has_lottery && (t.newTime = setInterval(function () {
          t.newData.nowtime++;
          t.newData.countdown = countDown(t.newData.lottery, t.newData.nowtime);
          '00:00:00' == t.newData.countdown && clearInterval(t.newTime);
          t.$forceUpdate();
        }, 1e3), t.newData.countdown = countDown(t.newData.lottery, t.newData.nowtime), '00:00:00' == t.newData.countdown && clearInterval(t.newTime), t.$forceUpdate());
        t.latestList = e.new.list || [];
        t.highList = e.zhuanqu.list || [];
        t.upcomimgList = e.upcoming || [];
        0 != t.highList.length && (t.clearTime(1), t.highList.forEach(function (e, s) {
          t.highTime[s] = '';
          e.countdown = '';
          0 != e.success && 3 == e.has_lottery && (t.highTime[s] = setInterval(function () {
            e.nowtime++;
            e.countdown = countDown(e.success, e.nowtime);
            '00:00:00' == e.countdown && clearInterval(t.highTime[s]);
            t.$forceUpdate();
          }, 1e3), e.countdown = countDown(e.success, e.nowtime), '00:00:00' == e.countdown && clearInterval(t.highTime[s]), t.$forceUpdate());
          0 != e.lottery && 2 == e.has_lottery && (t.highTime[s] = setInterval(function () {
            e.nowtime++;
            e.countdown = countDown(e.lottery, e.nowtime);
            '00:00:00' == e.countdown && clearInterval(t.highTime[s]);
            t.$forceUpdate();
          }, 1e3), e.countdown = countDown(e.lottery, e.nowtime), '00:00:00' == e.countdown && clearInterval(t.highTime[s]), t.$forceUpdate());
        }));
        0 != t.upcomimgList.length && (t.clearTime(1), t.upcomimgList.forEach(function (e, s) {
          t.compimgTime[s] = '';
          e.countdown = '';
          0 != e.success && 3 == e.has_lottery && (t.compimgTime[s] = setInterval(function () {
            e.nowtime++;
            e.countdown = countDown(e.success, e.nowtime);
            '00:00:00' == e.countdown && clearInterval(t.compimgTime[s]);
            t.$forceUpdate();
          }, 1e3), e.countdown = countDown(e.success, e.nowtime), '00:00:00' == e.countdown && clearInterval(t.compimgTime[s]), t.$forceUpdate());
          0 != e.lottery && 2 == e.has_lottery && (t.compimgTime[s] = setInterval(function () {
            e.nowtime++;
            e.countdown = countDown(e.lottery, e.nowtime);
            '00:00:00' == e.countdown && clearInterval(t.compimgTime[s]);
            t.$forceUpdate();
          }, 1e3), e.countdown = countDown(e.lottery, e.nowtime), '00:00:00' == e.countdown && clearInterval(t.compimgTime[s]), t.$forceUpdate());
        }));
        t.activityTime = e.activity.time;
        t.activityNowtime = e.activity.nowtime;
        t.activityTime && 0 != t.activityTime && (t.activTimer = setInterval(function () {
          t.activityNowtime++;
          t.activityTime = countDown(t.activityTime, t.activityNowtime);
          '00:00:00' == t.activityTime && (t.isActivity = true, clearInterval(t.activTimer));
          t.$forceUpdate();
        }, 1e3));
      }).catch(function () {});
    },
    toGoods: function (t, e) {
      'new' == e ? this.$store.dispatch('checkLogin').then(function () {
        uni.navigateTo({
          url: ('../goods/goods?id=').concat(t, '&type=new')
        });
      }).catch(function () {}) : uni.navigateTo({
        url: ('../goods/goods?id=').concat(t)
      });
    },
    toDetail: function (t) {
      this.lotteryShow = false;
      uni.navigateTo({
        url: ('../order/detail?id=').concat(t, '&page=3')
      });
    },
    toAccount: function () {
      this.prizeShow = false;
      uni.navigateTo({
        url: '../account/account'
      });
    },
    getLottery: function () {
      var e = this;
      return m(d_a34a.mark(function s() {
        return d_a34a.wrap(function (s) {
          while (1) switch (s.prev = s.next) {
            case 0:
              return (s.next = 2, GetResult().then(function (t) {
                e.lotteryList = t.list;
                e.lotteryList.length && (e.pickData = e.lotteryList[0], e.pickIndex = 0, e.lotteryShow = true);
              }).catch(function () {}));
            case 2:
              return (console.log('getLottery'), s.next = 5, GetTime().then(function (s) {
                e.clearLottery();
                e.lotteryArr = s.time;
                e.lotteryArr.length && (e.lotteryTime = setInterval(function () {
                  var s = Date.parse(new Date());
                  e.lotteryArr.forEach(function (i) {
                    console.log('now,item:', s, ',', i);
                    s == 1e3 * (+i + 3) && e.getLottery();
                  });
                }, 1e3));
              }).catch(function () {}));
            case 5:
            case 'end':
              return s.stop();
          }
        }, s);
      }))();
    },
    pickLeft: function () {
      0 == this.pickIndex ? this.pickIndex = this.lotteryList.length - 1 : this.pickIndex--;
      this.$forceUpdate();
    },
    pickRight: function () {
      this.pickIndex == this.lotteryList.length - 1 ? this.pickIndex = 0 : this.pickIndex++;
      this.$forceUpdate();
    },
    hideGuide: function () {
      this.guideShow = false;
    },
    hideLottery: function () {
      this.lotteryShow = false;
      this.lotteryList = [];
      this.pickData = {};
    },
    hidePrize: function () {
      this.prizeShow = false;
    },
    snatch: function (t, e, s) {
      var i = this;
      this.snatchData = t;
      s ? this.$store.state.token ? uni.navigateTo({
        url: ('../goods/goods?id=').concat(t.id, '&type=new')
      }) : (uni.showToast({
        icon: 'none',
        title: 'Please log in first'
      }), setTimeout(function () {
        uni.navigateTo({
          url: '../../pages/login/login'
        });
      }, 1e3)) : e && 2 == e || this.$store.dispatch('checkLogin').then(function () {
        NumberMax({
          id: t.id
        }).then(function (t) {
          i.snatchShow = true;
          i.buyNum = 1;
          i.canBuy = +t.max;
          0 == i.canBuy && (i.buyNum = 0);
        }).catch(function () {});
      }).catch(function () {});
    },
    valChange: function (t) {
      this.buyNum = t.value;
      t.value >= this.canBuy && uni.showToast({
        icon: 'none',
        title: this.$t('common.maxTip'),
        duration: 3e3
      });
    },
    buyAdd: function (t) {
      'all' == t && (t = +this.snatchData.max_buy);
      var e = this.canBuy, s = this.buyNum;
      s = t;
      s > e && (s = e);
      this.buyNum = s;
    },
    toContinue: function () {
      var e = this;
      console.log(this.buyNum, this.canBuy);
      this.buyNum > this.canBuy || (this.snatchShow = false, this.$store.dispatch('checkLogin').then(function () {
        uni.navigateTo({
          url: ('./../goods/comfirm?id=').concat(e.snatchData.id, '&num=').concat(e.buyNum)
        });
      }).catch(function () {}));
    },
    toRich: function () {
      uni.navigateTo({
        url: '../help/help'
      });
    },
    toPrize: function () {
      uni.navigateTo({
        url: '../prize/prize'
      });
    },
    toDownLoad: function () {
      window.location = this.downloadAPK;
    },
    upCallback: function (t) {
      var e = this;
      if (this.ltabIndex) {
        var s = (t.num - 1) * t.size, i = t.size;
        DuobaoItem({
          price: this.tprice,
          kind: this.ltabIndex,
          start: s,
          limit: i
        }).then(function (s) {
          var i = s.list, a = i.length, n = +s.count;
          1 == t.num && (e.goodsList = []);
          e.goodsList = e.goodsList.concat(i);
          0 != e.goodsList.length && (e.clearTime(2), e.goodsList.forEach(function (t, s) {
            e.listTime[s] = '';
            t.countdown = '';
            0 != t.success && 3 == t.has_lottery && (e.listTime[s] = setInterval(function () {
              t.nowtime++;
              t.countdown = countDown(t.success, t.nowtime);
              '00:00:00' == t.countdown && clearInterval(e.listTime[s]);
              e.$forceUpdate();
            }, 1e3), t.countdown = countDown(t.success, t.nowtime), '00:00:00' == t.countdown && clearInterval(e.listTime[s]), e.$forceUpdate());
            0 != t.lottery && 2 == t.has_lottery && (e.listTime[s] = setInterval(function () {
              t.nowtime++;
              t.countdown = countDown(t.lottery, t.nowtime);
              '00:00:00' == t.countdown && clearInterval(e.listTime[s]);
              e.$forceUpdate();
            }, 1e3), t.countdown = countDown(t.lottery, t.nowtime), '00:00:00' == t.countdown && clearInterval(e.listTime[s]), e.$forceUpdate());
          }));
          e.mescroll.endBySize(a, n);
          e.firstLoad = true;
        }).catch(function (t) {
          e.firstLoad = true;
          e.mescroll.endErr();
        });
      }
    },
    clearTime: function (t) {
      2 != t && (this.highTime.forEach(function (t) {
        return clearInterval(t);
      }), this.highTime = []);
      1 != t && (this.listTime.forEach(function (t) {
        return clearInterval(t);
      }), this.listTime = []);
    },
    clearLottery: function () {
      clearInterval(this.lotteryTime);
      this.lotteryTime = null;
    }
  },
  onHide: function () {
    this.clearTime(3);
    this.clearLottery();
    clearInterval(this.newTime);
  },
  unmounted: function () {
    this.clearTime(3);
    this.clearLottery();
    clearInterval(this.downloadAPKTimer);
    clearInterval(this.newTime);
  },
  onPullDownRefresh: function () {
    console.log('refresh');
    this.getActives();
    this.swiperList();
    setTimeout(function () {
      uni.stopPullDownRefresh();
    }, 1e3);
  },
  onPageScroll: function (t) {
    var e = t.scrollTop;
    e < 88 ? (this.navBg = 'transparent', this.titleColor = '#ffffff') : e > 88 && (this.navBg = '#ffffff', this.titleColor = '#000000');
  }
};
</script>

<style scoped>
* { font-family:Roboto,Roboto-Bold }
.home { position:relative;min-height:100vh;padding-bottom:98rpx;background-color:#f6f6f6 }
.home .home-lang { position:absolute;right:30rpx }
.home .home-background { height:330rpx;width:100%;position:absolute;top:0;left:0;background:url('/static/image/home/bg_homepage.png') no-repeat;background-size:100% 100% }
.home .toTop { padding:0 14rpx }
.home .nav-logo { display:flex;flex-direction:row;align-items:center;justify-content:center;width:100vw;height:88rpx }
.home .nav-logo uni-image { height:66rpx }
.home .mask { position:fixed;left:0;top:0;z-index:99999;display:flex;flex-direction:row;align-items:center;justify-content:center;width:100vw;height:100vh;background:rgba(0,0,0,.6) }
.home .mask .m-modal { z-index:100000;width:676rpx;height:1048rpx;margin-top:-10%;position:relative }
.home .mask .m-modal-fail { background:url('/static/image/home/img_lottery.png');background-size:100% 100% }
.home .mask .m-modal-success { background:url('/static/image/home/img_Winning.png');background-size:100% 100% }
.home .mask .m-left { position:fixed;left:0;top:42%;width:100rpx;height:100rpx }
.home .mask .m-left uni-image { width:100%;height:100% }
.home .mask .m-right { position:fixed;right:0;top:42%;width:100rpx;height:100rpx }
.home .mask .m-right uni-image { width:100%;height:100% }
.home .mask .m-main { width:500rpx;margin:auto;margin-top:292rpx }
.home .mask .m-header { display:flex;flex-direction:row;align-items:center;justify-content:center;margin-bottom:20rpx }
.home .mask .m-header .m-header-img { display:flex;align-items:center;justify-content:center;width:136rpx;height:136rpx;margin-right:20rpx;border-radius:8rpx }
.home .mask .m-header .m-header-img uni-image { width:100%;height:100%;border-radius:8rpx }
.home .mask .m-header .m-header-desc { flex:1;height:136rpx }
.home .mask .m-header .m-header-desc .m-header-title { width:330rpx;margin-top:18rpx;font-size:26rpx;font-family:Roboto,Roboto-Medium;font-weight:700;color:#000 }
.home .mask .m-header .m-header-desc .m-header-issue { margin-top:10rpx;font-size:26rpx;font-family:Roboto,Roboto-Regular;color:#b9b9b9 }
.home .mask .m-winner { display:flex;flex-direction:column;align-items:flex-start;justify-content:space-between;width:100%;padding:16rpx 28rpx 16rpx 28rpx;background:#f5f5f5;border-radius:16rpx;font-size:28rpx;font-family:Roboto,Roboto-Regular;color:#b9b9b9 }
.home .mask .m-winner .item { line-height:42rpx }
.home .mask .m-winner uni-text { color:#ee5016 }
.home .mask .m-winner uni-text:before { content:" " }
.home .mask .m-tips { width:100%;margin-top:30rpx;font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:700;text-align:CENTER;color:#ee5016 }
.home .mask .m-btn { display:flex;flex-direction:row;align-items:center;justify-content:space-between;width:75%;position:absolute;bottom:60rpx }
.home .mask .m-btn .m-btn-item { display:flex;flex-direction:row;align-items:center;justify-content:center;width:207rpx;height:78rpx;border-radius:9rpx;font-size:28rpx;color:#fff;font-family:PingFang SC,PingFang SC-Bold }
.home .mask .m-btn .m-btn-left { background:transparent;border:2rpx solid #fff }
.home .mask .p-btn { display:flex;flex-direction:row;align-items:center;justify-content:space-between;width:100%;margin-top:250rpx }
.home .mask .p-btn .m-btn-item { display:flex;flex-direction:row;align-items:center;justify-content:center;width:207rpx;height:78rpx;border-radius:9rpx;font-size:28rpx;color:#fff;font-family:PingFang SC,PingFang SC-Bold }
.home .mask .p-btn .m-btn-left { background:transparent;border:2rpx solid #fff }
.home .mask .m-modal-fail { position:relative;width:676rpx;height:1052rpx;margin-bottom:-4rpx }
.home .mask .m-modal-fail .m-title { position:absolute;left:262rpx;top:172rpx;font-size:48rpx;font-family:YouSheBiaoTiHei,YouSheBiaoTiHei-Regular;color:#fff }
.home .mask .m-modal-fail .m-btn-right { background:#fd583f;box-shadow:0rpx 8rpx 0rpx 0rpx #cd0413 }
.home .mask .m-modal-fail .m-btn { margin-top:282rpx }
.home .mask .p-main { width:500rpx;margin:auto;margin-top:292rpx;display:flex;flex-direction:column;align-items:center }
.home .mask .p-main .p-main-icon { width:178rpx;height:178rpx }
.home .mask .p-main .p-main-icon uni-image { width:100%;height:100% }
.home .mask .p-main .p-main-tips { margin-top:34rpx;font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:500;text-align:CENTER;color:#6f3f3f }
.home .mask .p-main .p-main-price { margin-top:14rpx;font-size:52rpx;font-family:Roboto,Roboto-Black;font-weight:900;text-align:CENTER;color:#ff5c5c }
.home .mask .p-main .p-main-price uni-text { margin-right:8rpx }
.home .mask .p-main .p-main-tips2 { margin-top:12rpx;font-size:28rpx;font-family:Roboto,Roboto-Regular;font-weight:400;text-align:CENTER;color:#6f3f3f }
.home .mask .m-modal-success { position:relative }
.home .mask .m-modal-success .m-title { position:absolute;left:172rpx;top:172rpx;font-size:48rpx;font-family:YouSheBiaoTiHei,YouSheBiaoTiHei-Regular;color:#fff }
.home .mask .m-modal-success .p-title { position:absolute;left:172rpx;top:172rpx;font-size:40rpx;font-family:YouSheBiaoTiHei,YouSheBiaoTiHei-Regular;font-weight:400;color:#fff;text-shadow:0rpx 4rpx 8rpx 0rpx #bf2322 }
.home .mask .m-modal-success .m-btn-right { background:#fd583f;box-shadow:0rpx 8rpx 0rpx 0rpx #cd0413 }
.home .banner { width:100%;height:278rpx }
.home .banner .banner-swiper { width:100%;height:100% }
.home .tab { display:flex;flex-direction:row;align-items:center;justify-content:center;padding:26rpx 30rpx;background-color:#fff }
.home .tab .tab-item { flex:1;text-align:center }
.home .tab .tab-item uni-image { width:96rpx;height:96rpx;border-radius:50% }
.home .tab .tab-item .tab-item-text { margin-top:4rpx;font-size:26rpx;font-family:PingFang SC,PingFang SC-Bold;font-weight:1000;text-align:CENTER;color:#4f4f4f }
.home .toast { border-top:2rpx solid #f6f6f6;padding-top:22rpx;padding-bottom:12rpx;background-color:#fff }
.home .toast .toast-swiper { height:70rpx }
.home .toast .toast-swiper .toast-swiper-item { display:flex;align-items:center;justify-content:flex-end }
.home .toast .toast-swiper .toast-swiper-item .toast-swiper-item-img { width:60rpx;height:60rpx;border-radius:50%;overflow:hidden }
.home .toast .toast-swiper .toast-swiper-item .toast-swiper-item-img uni-image { width:100%;height:100% }
.home .toast .toast-swiper .toast-swiper-item .toast-swiper-item-main { width:80%;margin-left:36rpx;margin-right:18rpx;white-space:nowrap;overflow:hidden;text-overflow:ellipsis }
.home .toast .toast-swiper .toast-swiper-item .toast-swiper-item-main .name { color:#ee5016 }
.home .activities { margin-top:22rpx;display:flex;align-items:center;justify-content:space-between }
.home .activities .activities-item { width:49%;background-color:#fff;border-radius:10rpx }
.home .activities .activities-item .title_bg1 { background:linear-gradient(270deg,#fb9deb,#a0c4fe 50%,#d0fad6) }
.home .activities .activities-item .title_bg2 { background:linear-gradient(270deg,#64ccf9,#60e5be 50%,#d0e8fa) }
.home .activities .activities-item .activities-item-title { width:100%;display:flex;align-items:center;justify-content:space-between;border-radius:10rpx 10rpx 0 0 }
.home .activities .activities-item .activities-item-title .activities-item-box { width:100%;height:72rpx;display:flex;align-items:center;justify-content:flex-start }
.home .activities .activities-item .activities-item-title .activities-item-problem { min-width:30rpx;height:30rpx;margin-right:12rpx }
.home .activities .activities-item .activities-item-title .activities-item-problem uni-image { width:100%;height:100% }
.home .activities .activities-item .activities-item-title .imgbox { margin-left:4rpx;width:64rpx;height:64rpx }
.home .activities .activities-item .activities-item-title .imgbox uni-image { width:100%;height:100% }
.home .activities .activities-item .activities-item-title .content { margin-left:10rpx;font-size:26rpx;font-family:Roboto,Roboto-Bold;font-weight:700;color:#000;line-height:36rpx;letter-spacing:0rpx }
.home .activities .activities-item .activities-item-swiper { height:310rpx;padding-top:18rpx;padding-left:18rpx }
.home .activities .activities-item .activities-item-swiper .swiper-list { height:100%;display:flex;flex-direction:column;justify-content:space-between }
.home .activities .activities-item .activities-item-swiper .swiper-list .swiper-list-top { display:flex;justify-content:flex-start }
.home .activities .activities-item .activities-item-swiper .swiper-list .swiper-list-top .swiper-list-top-img { width:150rpx;height:148rpx }
.home .activities .activities-item .activities-item-swiper .swiper-list .swiper-list-top .swiper-list-top-img uni-image { width:100%;height:100% }
.home .activities .activities-item .activities-item-swiper .swiper-list .swiper-list-top .swiper-list-top-main { margin-left:22rpx }
.home .activities .activities-item .activities-item-swiper .swiper-list .swiper-list-top .swiper-list-top-main .swiper-list-top-main-title { font-size:26rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#b9b9b9;letter-spacing:0rpx }
.home .activities .activities-item .activities-item-swiper .swiper-list .swiper-list-top .swiper-list-top-main .list_martop { margin-top:18rpx }
.home .activities .activities-item .activities-item-swiper .swiper-list .swiper-list-top .swiper-list-top-main .swiper-list-top-main-cont { max-width:176rpx;font-size:32rpx;font-family:DIN,DIN-Bold;font-weight:700;color:#ff5c5c;letter-spacing:0rpx;white-space:nowrap;overflow:hidden;text-overflow:ellipsis }
.home .activities .activities-item .activities-item-swiper .swiper-list .swiper-list-bottom2 { height:120rpx;padding-top:14rpx;padding-left:26rpx;padding-right:30rpx;padding-bottom:10rpx;margin-top:20rpx;display:flex;align-items:center;justify-content:space-between;background:linear-gradient(271deg,#fff,#fce9e6,#fff);border-radius:0rpx 0rpx 10rpx 10rpx }
.home .activities .activities-item .activities-item-swiper .swiper-list .swiper-list-bottom2 .swiper-list-bottom-avatar { display:flex;align-items:center;justify-content:flex-start }
.home .activities .activities-item .activities-item-swiper .swiper-list .swiper-list-bottom2 .swiper-list-bottom-avatar .avatar-list { width:50rpx;height:50rpx;border-radius:50%;overflow:hidden;margin-left:-10rpx }
.home .activities .activities-item .activities-item-swiper .swiper-list .swiper-list-bottom2 .swiper-list-bottom-avatar .avatar-list uni-image { width:100%;height:100% }
.home .activities .activities-item .activities-item-swiper .swiper-list .swiper-list-bottom2 .swiper-list-bottom-btnjoin { width:108rpx;height:44rpx;line-height:44rpx;background:linear-gradient(115deg,#ffe44b,#fea326);border-radius:8rpx;box-shadow:0rpx -4rpx 8rpx 0rpx rgba(255,125,0,.5) inset;text-align:center;font-size:26rpx;font-family:DIN,DIN-Medium;font-weight:500;color:#ad6701 }
.home .activities .activities-item .activities-item-swiper .swiper-list .swiper-list-bottom2 .swiper-list-bottom-btnjoin uni-image { width:20rpx;height:20rpx;opacity:.8;margin-left:6rpx }
.home .activities .activities-item .activities-item-swiper .swiper-list .swiper-list-bottom { height:120rpx;padding-top:14rpx;padding-bottom:10rpx;margin-right:18rpx;margin-top:20rpx;display:flex;align-items:center;justify-content:space-around;background:linear-gradient(271deg,#fff,#fce9e6,#fff);border-radius:0rpx 0rpx 10rpx 10rpx }
.home .activities .activities-item .activities-item-swiper .swiper-list .swiper-list-bottom .swiper-list-bottom-user .swiper-list-bottom-user-avatar { width:60rpx;height:60rpx;margin:0 auto }
.home .activities .activities-item .activities-item-swiper .swiper-list .swiper-list-bottom .swiper-list-bottom-user .swiper-list-bottom-user-avatar uni-image { width:100%;height:100% }
.home .activities .activities-item .activities-item-swiper .swiper-list .swiper-list-bottom .swiper-list-bottom-user .swiper-list-bottom-user-name { font-size:26rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#17273a;letter-spacing:0rpx;white-space:nowrap;text-overflow:ellipsis;max-width:120rpx;overflow:hidden }
.home .activities .activities-item .activities-item-swiper .swiper-list .swiper-list-bottom .swiper-list-bottom-user .swiper-list-bottom-user-join { width:60rpx;height:60rpx;opacity:1;border-radius:50%;line-height:60rpx;text-align:center;margin:0 auto;color:#fea326 }
.home .activities .activities-item .activities-item-swiper .swiper-list .swiper-list-bottom .swiper-list-bottom-user .swiper-list-bottom-user-join uni-image { width:100%;height:100% }
.home .activities .activities-item .activities-item-swiper .swiper-list .swiper-list-bottom .swiper-list-bottom-user .swiper-list-bottom-userjo { color:#fea326;font-size:26rpx;font-family:Roboto,Roboto-Regular;font-weight:400;line-height:36rpx;letter-spacing:0rpx;text-align:center;max-width:120rpx;white-space:nowrap;overflow:hidden;text-overflow:ellipsis }
.home .activities .activities-item .activities-item-swiper .swiper-list .swiper-list-bottom .swiper-list-bottom-pkicon { width:48rpx;height:48rpx }
.home .activities .activities-item .activities-item-swiper .swiper-list .swiper-list-bottom .swiper-list-bottom-pkicon uni-image { width:100%;height:100% }
.home .newbie { margin-top:0rpx;position:relative;padding:1rpx 0;background:#fff;box-shadow:0rpx 8rpx 28rpx 0rpx rgba(0,0,0,.05);background-image:url('/static/image/home/bg_Yellow.png');background-size:100% 100% }
.home .newbie .newbie-op { position:absolute;width:100%;height:44rpx;left:0;top:0;opacity:1;background:rgba(255,148,106,.1);-webkit-filter:blur(25rpx);filter:blur(25rpx) }
.home .newbie .newbie-title { display:flex;flex-direction:row;align-items:center;justify-content:center;margin:44rpx 32rpx }
.home .newbie .newbie-title .newbie-title-text { font-size:36rpx;font-family:Roboto,Roboto-Bold;font-weight:700;color:#17273a }
.home .newbie .newbie-title .newbie-title-help { flex:1;font-size:28rpx;font-family:Roboto,Roboto-Regular;font-weight:400;text-align:right;color:#17273a }
.home .newbie .newbie-title uni-image { width:10rpx;height:18rpx;margin-left:12rpx }
.home .newbie .nshop { position:relative;display:flex;flex-direction:row;align-items:flex-start;justify-content:center;margin-top:40rpx;padding:0 28rpx;padding-bottom:40rpx }
.home .newbie .nshop .nshop-img { flex-shrink:0;width:164rpx;height:164rpx;margin-right:24rpx;border-radius:8rpx }
.home .newbie .nshop .nshop-detail { flex:1 }
.home .newbie .nshop .nshop-detail .nshop-title { width:506rpx;font-size:28rpx;font-family:PingFang SC,PingFang SC-Bold;font-weight:700;text-align:left;color:#000 }
.home .newbie .nshop .nshop-detail .nshop-countdown { font-size:26rpx;font-family:PingFang SC,PingFang SC-Medium;color:#b9b9b9 }
.home .newbie .nshop .nshop-detail .nshop-precent { display:flex;flex-direction:row;align-items:center;justify-content:center;margin-top:8rpx }
.home .newbie .nshop .nshop-detail .nshop-precent .nshop-progress { display:flex;align-items:center;width:100%;padding-right:24rpx }
.home .newbie .nshop .nshop-detail .nshop-precent .nshop-progress-text { flex:1;text-align:right;font-size:28rpx;font-family:DIN,DIN-Medium;font-weight:700;color:#000 }
.home .newbie .nshop .nshop-detail .nshop-price { display:flex;flex-direction:row;align-items:center;justify-content:flex-start;margin-top:12rpx }
.home .newbie .nshop .nshop-detail .nshop-price .nshop-price-old { margin-right:20rpx;font-size:28rpx;font-family:DIN,DIN-Bold;font-weight:700;color:#b9b9b9;text-decoration:line-through }
.home .newbie .nshop .nshop-detail .nshop-price .nshop-price-new { font-size:32rpx;font-family:DIN,DIN-Bold;font-weight:700;color:#ee5016 }
.home .newbie .nshop .nshop-detail .nshop-btn { position:absolute;bottom:40rpx;right:30rpx;display:flex;flex-direction:row;align-items:center;justify-content:center;width:180rpx;height:60rpx;opacity:1;background:linear-gradient(115deg,#ffe44b,#fea326);border-radius:8rpx;box-shadow:0rpx -4rpx 8rpx 0rpx rgba(255,125,0,.5) inset;font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:700;color:#ad6701 }
.home .newbie .nshop .nshop-detail .nshop-btn uni-image { width:28rpx;margin-left:10rpx }
.home .nshop-diasble { color:#959595!important;background:linear-gradient(115deg,#e0e0e0,#b9b9b9)!important;box-shadow:0rpx -4rpx 8rpx 0rpx #b9b9b9 inset!important }
.home .guide-new { position:relative;z-index:100000 }
.home .guide-new .guide-tips { position:absolute;left:24rpx;bottom:-92rpx;width:592rpx;height:126rpx;text-align:CENTER;box-shadow:0rpx 8rpx 28rpx 0rpx rgba(0,0,0,.05);background-image:url('/static/image/home/guide-top.png');background-size:100% 100% }
.home .guide-new .guide-text { margin-top:56rpx;font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#fff }
.home .guide-new .guide-del { position:absolute;right:10rpx;bottom:64rpx;width:32rpx;height:32rpx }
.home .glist { margin-bottom:16rpx }
.home .glist .header { display:flex;flex-direction:row;align-items:center;justify-content:space-between;height:90rpx;padding:0 28rpx;margin:10rpx;border-radius:10rpx 10rpx 0rpx 0rpx }
.home .glist .header .header-title { font-size:36rpx;font-family:Roboto,Roboto-Bold;font-weight:700;display:flex;align-items:center }
.home .glist .header .header-title uni-image { width:40rpx;height:40rpx;margin-right:17rpx }
.home .glist .header .header-right { flex:1;text-align:right }
.home .glist .main { display:flex;flex-direction:row;align-items:center;justify-content:flex-start;width:100%;overflow-x:auto;border-radius:0rpx 0rpx 20rpx 20rpx }
.home .glist .main-op { width:2rpx;height:2rpx;color:#fff }
.home .glist .item { background-color:#fff;width:212rpx;margin-right:24rpx;opacity:1;border-radius:10rpx;padding-top:34rpx }
.home .glist .item .item-show { display:flex;align-items:center;justify-content:center;height:148rpx;position:relative;background-color:#fff }
.home .glist .item .item-show .item-show-prize { white-space:nowrap;width:184rpx;height:42rpx;opacity:1;background:#90b9ff;border-radius:20rpx 20rpx 0rpx 0rpx;line-height:42rpx;font-size:24rpx;font-family:Roboto,Roboto-Medium;font-weight:500;text-align:LEFT;color:#fff;text-align:center;position:absolute;bottom:-2rpx;z-index:970 }
.home .glist .item .item-show uni-image { z-index:99;max-width:148rpx;max-height:150rpx;opacity:1;border-radius:8rpx }
.home .glist .item .item-text { display:flex;flex-direction:column;align-items:center;justify-content:space-between;width:100%;padding:12rpx 10rpx;background-color:#fff }
.home .glist .item .item-text .item-name { width:200rpx;text-align:center;font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:700;margin-top:6rpx }
.home .glist .item .item-text .item-num { font-size:28rpx;color:#ee5016;font-family:DIN,DIN-Regular;font-weight:400 }
.home .glist .item .item-text .item-count { font-size:32rpx;font-family:DIN,DIN-Medium;font-weight:700;text-align:CENTER;color:#ff5c5c }
.home .glist .item .item-text .item-line { width:100%;margin:-8rpx 20rpx }
.home .glist .item:last-child { margin-right:16rpx }
.home .latest .header { background:url('/static/image/home/latest.png');background-size:100% 100% }
.home .latest .header-right { display:flex;align-items:center;justify-content:flex-end;font-size:28rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#fff }
.home .latest .header-right uni-image { width:10rpx;height:18rpx;margin-left:12rpx }
.home .latest .item-show { background-color:#ecf2ff }
.home .invite { height:100rpx;background:#ffe9e1;border-radius:10rpx;margin-top:28rpx;display:flex;align-items:center;justify-content:flex-start }
.home .invite .invite-icon { width:70rpx;height:60rpx;margin-left:38rpx }
.home .invite .invite-icon uni-image { width:100%;height:100% }
.home .invite .invite-main { margin-left:40rpx;font-size:36rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#ee5016;line-height:36rpx;letter-spacing:0rpx }
.home .invite .invite-btn { width:130rpx;height:54rpx;background:#ee5016;border-radius:199rpx;line-height:54rpx;color:#fff;text-align:center;margin-left:76rpx }
.home .finance { height:378rpx;border-radius:10rpx;background-image:url('/static/image/finance/bg_Finance.png');background-size:100% 100%;margin-top:22rpx;overflow:hidden }
.home .finance .finance-header { display:flex;align-items:center;justify-content:space-between;padding:30rpx 26rpx 0 24rpx }
.home .finance .finance-header .finance-header-item { display:flex }
.home .finance .finance-header .finance-header-item .iconimg { width:40rpx;height:40rpx }
.home .finance .finance-header .finance-header-item .title { margin-left:20rpx;font-size:32rpx;font-family:Roboto,Roboto-Bold;font-weight:700;color:#883c20;letter-spacing:0rpx }
.home .finance .finance-header .finance-header-item .more { font-size:26rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#ee5016;margin-right:8rpx }
.home .finance .finance-header .finance-header-item .moreimg { width:20rpx;height:20rpx }
.home .finance .finance-header .finance-header-item uni-image { width:100%;height:100% }
.home .finance .finance-main { width:100%;margin-top:64rpx;padding-left:18rpx;overflow-x:auto;display:flex }
.home .finance .finance-main .finance-main-more { display:flex;justify-content:flex-start;align-items:center;background:#fff;border-radius:10rpx;box-shadow:0rpx 0rpx 22rpx 0rpx rgba(0,0,0,.05);margin-right:16rpx }
.home .finance .finance-main .finance-main-more .more-icon { width:40rpx;height:40rpx }
.home .finance .finance-main .finance-main-more .more-icon uni-image { width:100%;height:100% }
.home .finance .finance-main .finance-main-card { width:580rpx;padding:32rpx 20rpx 18rpx 22rpx;display:flex;justify-content:flex-start;background:#fff;border-radius:10rpx;box-shadow:0rpx 0rpx 22rpx 0rpx rgba(0,0,0,.05);margin-right:16rpx;position:relative }
.home .finance .finance-main .finance-main-card .finance-main-card-image { width:162rpx;height:164rpx }
.home .finance .finance-main .finance-main-card .finance-main-card-image uni-image { width:100%;height:100% }
.home .finance .finance-main .finance-main-card .finance-main-card-content { margin-left:16rpx }
.home .finance .finance-main .finance-main-card .finance-main-card-content .ctitle { max-width:362rpx;overflow:hidden;text-overflow:ellipsis;white-space:nowrap }
.home .finance .finance-main .finance-main-card .finance-main-card-content .linepro { margin-top:18rpx;margin-bottom:10rpx;width:350rpx }
.home .finance .finance-main .finance-main-card .finance-main-card-content .ditem { display:flex;align-items:center }
.home .finance .finance-main .finance-main-card .finance-main-card-content .ditem .ditem-title { font-size:28rpx;font-weight:500;color:#b9b9b9;letter-spacing:0rpx;text-shadow:0rpx 0rpx 22rpx 0rpx rgba(0,0,0,.05) }
.home .finance .finance-main .finance-main-card .finance-main-card-content .ditem .ditem-cel { max-width:220rpx;margin-left:6rpx;font-size:28rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#ff5c5c;letter-spacing:0rpx;text-shadow:0rpx 0rpx 22rpx 0rpx rgba(0,0,0,.05);overflow:hidden;text-overflow:ellipsis }
.home .finance .finance-main .finance-main-card .finance-main-card-finish { width:118rpx;height:132rpx;position:absolute;left:0;top:-30rpx }
.home .finance .finance-main .finance-main-card .finance-main-card-finish uni-image { width:100%;height:100% }
.home .high .header-right { display:flex;align-items:center;justify-content:flex-end }
.home .high .header-right .hour, .home .high .header-right .minute, .home .high .header-right .seconds { width:40rpx;height:42rpx;text-align:center;line-height:42rpx;opacity:1;background:#17273a;border-radius:8rpx;font-size:26rpx;font-family:DIN,DIN-Medium;font-weight:700;color:#fff }
.home .high .header-right .colon { margin:0 6rpx;font-size:26rpx;font-family:DIN,DIN-Medium;font-weight:700;color:#17273a }
.home .high .item-text { height:160rpx }
.home .high .item-show { background-color:#fff5f4 }
.home .high .item-op { margin-top:0!important;margin-bottom:6rpx!important }
.home .home-list { margin-top:28rpx }
.home .home-list .ltab { display:flex;flex-direction:row;align-items:center;justify-content:flex-start;width:100vw;padding:22rpx 26rpx 10rpx 26rpx;margin-bottom:0rpx;margin-top:-2rpx;background:#fff }
.home .home-list .ltab .ltab-price { font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:700;color:#17273a;line-height:36rpx;letter-spacing:0rpx;display:flex;align-items:center;justify-content:flex-start;padding-right:14rpx;border-right:2rpx solid #e0e0e0;white-space:nowrap }
.home .home-list .ltab .ltab-price uni-image { margin-left:10rpx;width:20rpx;height:12rpx }
.home .home-list .ltab .ltab-tab { display:flex;flex-direction:row;align-items:center;justify-content:space-between;overflow-y:auto;padding-left:20rpx }
.home .home-list .ltab .ltab-item { display:flex;flex-direction:column;align-items:center;justify-content:center;white-space:nowrap;margin-right:50rpx }
.home .home-list .ltab .ltab-item .ltab-item-text { font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:700;color:#b9b9b9 }
.home .home-list .ltab .ltab-item uni-image { width:0rpx;height:0rpx }
.home .home-list .ltab .ltab-item-active .ltab-item-text { font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:700;color:#17273a }
.home .home-list .ltab .ltab-item-active uni-image { width:34rpx;height:12rpx;margin-top:4rpx }
.home .home-list .litem { position:relative;display:flex;align-items:flex-start;justify-content:center;padding:24rpx 26rpx;border-bottom:1rpx dashed #e6e6e6;background-color:#fff }
.home .home-list .litem .litem-left { width:184rpx;margin-right:42rpx;position:relative }
.home .home-list .litem .litem-left .litem-img { max-width:184rpx;max-height:184rpx;margin-bottom:-6rpx;border-radius:8rpx }
.home .home-list .litem .litem-left .item-prize { white-space:nowrap;width:184rpx;height:42rpx;opacity:1;background:#90b9ff;border-radius:20rpx 20rpx 0rpx 0rpx;line-height:42rpx;font-size:24rpx;font-family:Roboto,Roboto-Medium;font-weight:500;text-align:LEFT;color:#fff;text-align:center;margin-top:-2rpx;position:absolute;top:146rpx }
.home .home-list .litem .litem-left .litem-avatar { display:flex;flex-direction:row;align-items:center;justify-content:flex-start;padding-top:10rpx;margin-left:14rpx }
.home .home-list .litem .litem-left .litem-avatar uni-image { width:44rpx;height:44rpx;border-radius:50%;border:2rpx solid #fff;margin-left:-14rpx }
.home .home-list .litem .litem-right { flex:1 }
.home .home-list .litem .litem-right .lgoods-title { width:467rpx;font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:700;text-align:left;color:#000 }
.home .home-list .litem .litem-right .lgoods-end { margin-top:14rpx;font-size:26rpx;font-family:PingFang SC,PingFang SC-Medium;color:#b9b9b9 }
.home .home-list .litem .litem-right .draw-color { color:#ee5016 }
.home .home-list .litem .litem-right .lgoods-precent { display:flex;flex-direction:row;align-items:center;justify-content:center;margin-top:8rpx;margin-bottom:3rpx }
.home .home-list .litem .litem-right .lgoods-precent .lgoods-progress { display:flex;align-items:center;width:100%;padding-right:24rpx }
.home .home-list .litem .litem-right .lgoods-precent .lgoods-progress-text { flex:1;text-align:right;font-size:28rpx;font-family:DIN,DIN-Medium;font-weight:700;color:#b9b9b9 }
.home .home-list .litem .litem-right .lgoods-price { display:flex;flex-direction:row;align-items:center;justify-content:flex-start }
.home .home-list .litem .litem-right .lgoods-price .lgoods-price-old { margin-right:20rpx;font-size:28rpx;font-family:DIN,DIN-Bold;font-weight:700;color:#b9b9b9;text-decoration:line-through }
.home .home-list .litem .litem-right .lgoods-price .lgoods-price-new { font-size:32rpx;font-family:DIN,DIN-Bold;font-weight:700;color:#ee5016 }
.home .home-list .litem .litem-right .lgoods-bottom { display:flex;align-items:center;justify-content:flex-start }
.home .home-list .litem .litem-right .lgoods-bottom .lgoods-people { width:300rpx;margin-top:18rpx;font-weight:700;font-size:24rpx;font-family:PingFang SC,PingFang SC-Bold;color:#b9b9b9 }
.home .home-list .litem .lgoods-btn { position:absolute;right:32rpx;bottom:18rpx;display:flex;flex-direction:row;align-items:center;justify-content:space-between;width:150rpx;height:60rpx;opacity:1;background:linear-gradient(115deg,#ffe44b,#fea326);border-radius:8rpx;box-shadow:0rpx -4rpx 8rpx 0rpx rgba(255,125,0,.5) inset;font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:700;color:#ad6701;padding-left:30rpx;padding-right:10rpx }
.home .home-list .litem .lgoods-btn uni-image { width:28rpx;height:28rpx }
.home .home-list .litem .litem-avatar-end { padding-top:8rpx }
.home .home-list .litem .lgoods-people-end { margin-top:30rpx!important }
.home .home-list .lgoods-noborder { border-bottom:none }
.home .snatch { width:100%;padding:28rpx 30rpx 12rpx 30rpx;background:#fff }
.home .snatch .snatch-title { font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:700;color:#17273a }
.home .snatch .snatch-num { display:flex;flex-direction:row;align-items:center;justify-content:center;width:100%;margin-top:46rpx }
.home .snatch .snatch-set { display:flex;flex-direction:row;align-items:center;justify-content:space-between;width:100%;padding:0 30rpx;margin:36rpx 0 42rpx 0 }
.home .snatch .snatch-set .snatch-set-item { display:flex;align-items:center;justify-content:center;width:122rpx;height:82rpx;border:1rpx solid #e0dfdf;border-radius:7rpx;font-size:32rpx;font-family:Roboto,Roboto-Regular;color:#17273a }
.home .snatch .snatch-btn { width:686rpx;height:92rpx;margin:auto }
.home .home-prize { width:156rpx;height:138rpx;position:fixed;right:14rpx;bottom:190rpx;z-index:999 }
.home .home-prize uni-image { width:100%;height:100% }
.home .home-download { position:fixed;top:0;left:0;width:100%;z-index:999;display:flex;align-items:center;justify-content:space-between;background:linear-gradient(115deg,#ffe44b,#fea326);height:100rpx;padding:0 10rpx 0 24rpx }
.home .home-download .home-download-close { min-width:70rpx;height:70rpx }
.home .home-download .home-download-close uni-image { width:100%;height:100% }
.home .home-download .home-download-main { max-width:470rpx;color:#ad6701;padding:0 20rpx;white-space:nowrap;text-overflow:ellipsis;overflow:hidden }
.home .home-download .home-download-main .home-download-main-cont { font-size:24rpx }
.home .home-download .home-download-down { display:flex;align-items:center;justify-content:flex-start }
.home .home-download .home-download-down .down { width:60rpx;height:60rpx;margin-right:10rpx }
.home .home-download .home-download-down .close { width:40rpx;height:40rpx }
.home .home-download .home-download-down uni-image { width:100%;height:100% }
.home .home-newhd { position:fixed;left:10rpx;bottom:110rpx;z-index:999 }
.home .home-newhd .home-newhd-box { position:relative;width:640rpx }
.home .home-newhd .home-newhd-box .home-newhd-box-img { height:148rpx;width:640rpx }
.home .home-newhd .home-newhd-box .home-newhd-box-img uni-image { width:100%;height:100% }
.home .home-newhd .home-newhd-box .home-newhd-content { position:absolute;left:86rpx;bottom:26rpx;color:#fff }
.home .home-newhd .home-newhd-box .home-newhd-icon { width:56rpx;height:56rpx;background:#fff;border-radius:50%;position:absolute;right:10rpx;bottom:16rpx;line-height:56rpx;font-size:26rpx;font-family:DIN,DIN-Medium;font-weight:500;text-align:CENTER;color:#f06016 }
.showRecomm-img { display:flex;flex-direction:column;align-items:center;justify-content:center;margin:15vh 50rpx 0 50rpx }
.showRecomm-img .showRecomm-img-close { margin-top:10rpx }
</style>
