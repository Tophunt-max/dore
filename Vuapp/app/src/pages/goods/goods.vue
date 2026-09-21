<template>
  <view class="goods">
    <navbar
      :backColor="backBg"
      :background="navBg"
      :title="goodsData.name"
      :titleColor="titleColor"
      :isComfirm="true"
      @beforeBack="beforeBack"
    ></navbar>
    <view class="toTop" id="toTop">
      <view class="banner">
        <view class="banner-toast" :animation="animationData">
          <view v-for="(item, index) in newsList" :key="index" class="btoast">{{ item }} {{ $t('goods.toast') }}</view>
        </view>
        <view v-if="'00:00:00' != countdown" class="banner-countdown">
          {{ 2 == goodsData.has_lottery ? 'Draw' : 'End' }} in {{ countdown }}
        </view>
        <u-swiper height="541" :list="bannerList" img-mode="scaleToFill"></u-swiper>
      </view>
      <view class="intro card">
        <view class="intro-header">
          <view class="intro-price">
            <view class="intro-price-all">
              <template v-if="3 == goodsData.normal">
                <template v-if="1 == goodsData.del_type">{{ $t('home.bmrp') }} : ₹ {{ goodsData.current_price }}</template>
                <template v-else>{{ $t('home.bouns') }} : ₹ {{ goodsData.current_price }}</template>
              </template>
              <template v-else>
                ₹ {{ goodsData.unit_price }}
                <text>₹ {{ goodsData.allprice }}</text>
              </template>
            </view>
            <view v-if="1 == goodsData.auto_return" class="intro-price-refund">{{ $t('goods.refund') }}</view>
          </view>
          <view class="intro-title">{{ goodsData.name }}</view>
          <view class="intro-text">{{ $t('goods.issue') }} {{ goodsData.issue }}</view>
        </view>
        <image @click="handleShare" src="/static/image/goods/icon_Share.png" mode="" />
      </view>
      <view v-if="1 == goodsData.auto_return" class="loser">
        <view class="loser-text">
          {{ $t('goods.refundText') }}
          <text>₹{{ goodsData.max_return }}</text>
        </view>
        <view class="loser-help" @click="toNav(goodsData.faq_url)">
          <image src="/static/image/icon_faq.png" mode="" />
        </view>
      </view>
      <view class="people card">
        <view class="people-view">
          <view class="people-text">{{ goodsData.usernumber }} {{ $t('goods.joined') }}</view>
          <view class="people-avatar">
            <image v-for="(item, index) in goodsData.userimgurl" v-if="item" :key="index" :src="item" mode="" />
          </view>
        </view>
        <view class="people-progress">
          <lineprogress :percent="parseInt(goodsData.current_buy / goodsData.max_buy * 100)"></lineprogress>
        </view>
        <view class="people-need">
          <view class="people-text">{{ $t('goods.need') }}{{ goodsData.max_buy }}</view>
          <view class="people-remain">
            {{ $t('goods.remain') }}{{ goodsData.max_buy - goodsData.current_buy }}
          </view>
        </view>
        <view v-if="1 == goodsData.has_lottery" class="people-number">
          <view class="people-result">
            <view class="people-more" @click="toCalcu">{{ $t('goods.calculation') }}</view>
            <image :src="'/static/image/goods/icon_Trophy.png'" mode="widthFix" />
            <view class="people-detail">
              <view class="people-winner otw">
                {{ $t('common.winner') }}:
                <text>{{ goodsData.nickname }}</text>
              </view>
              <view>
                {{ $t('common.code') }}
                <text>{{ goodsData.lottery_sn }}</text>
              </view>
              <view>{{ $t('goods.time') }} {{ goodsData.lottery_time }}</view>
            </view>
          </view>
        </view>
        <view v-if="2 == goodsData.has_lottery" class="people-number">
          <view class="people-title">
            <view class="people-tips">{{ $t('goods.lucky') }}</view>
          </view>
        </view>
        <view v-if="3 == goodsData.has_lottery && 0 != goodsData.getnumbercount" class="people-number">
          <view class="people-title">
            <view class="people-all"></view>
            <view>
              {{ $t('goods.have') }}
              <text>{{ goodsData.getnumbercount }}</text>
              {{ $t('goods.numbers') }}
            </view>
            <view
              v-if="goodsData.getnumbercount > 4 && goodsData.getnumber.length <= 4"
              class="people-all"
              @click="showMore"
            >
              {{ $t('goods.all') }}
            </view>
            <view v-else class="people-all"></view>
          </view>
          <view class="people-area">
            <view v-for="(item, index) in goodsData.getnumber" :key="index" class="people-area-item">{{ item }}</view>
          </view>
        </view>
      </view>
      <view v-if="1 == goodsData.normal" class="draw card">
        <view class="draw-title" @click="toRich">
          <view class="draw-op"></view>
          <view class="draw-text">{{ $t('goods.draw') }}</view>
          <image class="draw-more" src="/static/image/goods/icon_Arrow.png" mode="" />
        </view>
        <buystep page="goodsPage"></buystep>
      </view>
      <view v-if="2 == goodsData.normal" class="prize">
        <view class="prize-title">
          <view>
            <text class="prize-icon"></text>
            <text class="prize-name">{{ $t('goods.prize') }}</text>
          </view>
          <view class="rule-color" @click="toRlue">{{ $t('goods.rule') }}</view>
        </view>
        <view class="rank">
          <view v-for="(item, index) in goodsData.lotteryallocation" :key="index" class="prize-rank">
            <view class="prize-rank-box">
              <view class="rank-icon">
                <image v-if="+index < 3" :src="iconList[index]" mode="" />
                <view v-else class="rank-iconnum">
                  <text>{{ index + 1 }}</text>
                </view>
              </view>
              <view class="rank-name">{{ rankName(index) }} prize</view>
            </view>
            <view class="rank-price">
              <view class="rank-price-left">₹ {{ item.prize }}</view>
              <view v-if="+item.num > 1" class="rank-price-num">x{{ item.num }}</view>
            </view>
          </view>
        </view>
      </view>
    </view>
    <view class="main">
      <u-sticky>
        <view class="ltab">
          <view class="ltab-item" :class="1 == ltabIndex ? 'ltab-item-active' : ''" @click="ltabIndex = 1">
            <view class="ltab-item-text">{{ $t('goods.lparti') }}</view>
            <image src="/static/image/icon_Select.png" mode="" />
          </view>
          <view class="ltab-item" :class="2 == ltabIndex ? 'ltab-item-active' : ''" @click="ltabIndex = 2">
            <view class="ltab-item-text">{{ $t('goods.ldetail') }}</view>
            <image src="/static/image/icon_Select.png" mode="" />
          </view>
          <view class="ltab-item" :class="3 == ltabIndex ? 'ltab-item-active' : ''" @click="ltabIndex = 3">
            <view class="ltab-item-text">{{ $t('goods.lwinner') }}</view>
            <image src="/static/image/icon_Select.png" mode="" />
          </view>
          <view class="ltab-item" :class="4 == ltabIndex ? 'ltab-item-active' : ''" @click="ltabIndex = 4">
            <view class="ltab-item-text">{{ $t('goods.lreviews') }}</view>
            <image src="/static/image/icon_Select.png" mode="" />
          </view>
        </view>
      </u-sticky>
      <mescroll-body
        v-if="2 != ltabIndex"
        ref="mescrollRef"
        height="400"
        :down="downOption"
        :up="upOption"
        @init="mescrollInit"
        @down="downCallback"
        @up="upCallback"
      >
        <view v-if="1 == ltabIndex" class="participation">
          <view v-for="(item, index) in dataList" :key="index" class="item">
            <view v-if="index + 1 !== dataList.length" class="op"></view>
            <image class="avatar" :src="item.headimgurl" mode="" />
            <view class="detail">
              <view class="header">
                <view class="header-top">
                  <view class="header-name otw">{{ item.nickname }}</view>
                  <image :src="item.vip_img" mode="" />
                  <view class="header-time">{{ item.created }}</view>
                </view>
                <view class="header-bottom">
                  {{ $t('goods.participated') }} {{ item.num }}
									{{ $t('goods.people') }}
                </view>
              </view>
            </view>
          </view>
        </view>
        <view v-if="3 == ltabIndex" class="winner">
          <view v-for="(item, index) in dataList" :key="index" class="item" @click="updateGoods(item.id)">
            <view class="itemno">{{ $t('goods.gid') }} {{ item.issue }}</view>
            <view class="detail">
              <view class="detail-userinfo">
                <view class="text">
                  <text>{{ $t('common.winners') }}</text>
                </view>
                <view class="headimg">
                  <image :src="item.iconurl" mode="" />
                </view>
                <view class="name">{{ item.nickname }}</view>
                <view v-if="2 == +item.dumnormal" class="img-more" @click="toPrize(item.id)">{{ $t('goods.more') }}</view>
              </view>
              <view class="text">{{ $t('goods.gnum') }}{{ item.lottery_sn }}</view>
              <view class="text">{{ $t('goods.time') }} {{ item.lottery_time }}</view>
            </view>
          </view>
        </view>
        <view v-if="4 == ltabIndex" class="reviews">
          <view v-for="(item, index) in dataList" :key="index" class="item">
            <view class="header">
              <image class="avatar" :src="item.headimgurl" mode="" />
              <view class="name otw">{{ item.nickname }}</view>
              <view class="issue">{{ $t('common.niss') }} {{ item.issue }}</view>
              <image class="vipimg" :src="item.vip_img" mode="" />
              <view class="time">{{ item.time }}</view>
            </view>
            <view class="main">
              <view class="title">{{ item.title }}</view>
              <view class="content">{{ item.content }}</view>
              <view class="imgArr">
                <image
                  v-for="(item2, index2) in item.imgurl"
                  :key="index2"
                  :src="item2"
                  @click="enlargeImg(item.imgurl, index2)"
                  mode=""
                 />
              </view>
            </view>
          </view>
        </view>
      </mescroll-body>
      <view v-else class="parse">
        <u-parse :html="goodsData.description"></u-parse>
      </view>
    </view>
    <view v-if="3 == goodsData.normal" class="pkbtn">
      <view class="pkbtn-blue">
        <view class="pkbtn-blue-box">
          <view class="pkbtn-blue-box-avatar">
            <image v-if="PKList.length" :src="PKList[0].headimgurl" mode="" />
            <image v-else @click="paynow" src="/static/image/icon_questionmark_blue.png" mode="" />
          </view>
          <view class="pkbtn-blue-box-title">
            <text v-if="PKList.length">{{ PKList[0].nickname }}</text>
            <text>{{ $t('account.waiting') }}</text>
          </view>
        </view>
      </view>
      <view class="pkbtn-pkicon">
        <image src="/static/image/goods/icon_VS.png" mode="" />
      </view>
      <view class="pkbtn-redi">
        <view class="pkbtn-redi-box" @click="paynow">
          <view class="pkbtn-redi-box-avatar" :class="{ avatar_bj: PKList.length <= 1 }">
            <image v-if="PKList.length > 1" :src="PKList[1].headimgurl" mode="" />
            <text v-else></text>
          </view>
          <view class="pkbtn-redi-box-title">
            <text v-if="PKList.length > 1">{{ PKList[1].nickname }}</text>
            <text>₹ {{ goodsData.unit_price }}</text>
          </view>
        </view>
      </view>
    </view>
    <template v-else>
      <view v-if="3 == goodsData.has_lottery || 3 != goodsData.has_lottery && goodsData.newid" class="btn">
        <view v-if="3 == goodsData.has_lottery" class="btn-buy">
          <view class="btn-price">
            <view class="btn-price-new">₹{{ isNew ? '0.00' : goodsData.unit_price * buyNum }}</view>
          </view>
          <view class="btn-num">
            <u-number-box
              size="32"
              :color="0 === +buyNum ? '#B9B9B9' : '#17273A'"
              input-width="80"
              input-height="78"
              :max="canBuy"
              @change="valChange"
              v-model="buyNum"
            ></u-number-box>
          </view>
          <view class="btn-btn">
            <overbtn
              :btnText="$t('goods.payn')"
              :fontSize="28"
              fontWeight="bold"
              :btnType="+buyNum ? 'submit' : 'disabled'"
              :canSubmit="!+buyNum"
              @btnAction="paynow"
            ></overbtn>
          </view>
        </view>
        <view v-if="3 != goodsData.has_lottery && 2 != goodsData.type" class="btn-latest">
          <overbtn
            :btnText="$t('goods.latest')"
            :fontSize="28"
            :btnType="goodsData.newid ? 'submit' : 'disabled'"
            :canSubmit="!goodsData.newid"
            @btnAction="latestIssue"
          ></overbtn>
        </view>
      </view>
    </template>
    <view v-if="guideShow" class="mask" @touchmove="stopPropagation(), preventDefault()">
      <view class="m-guide">
        <view class="guide-price" :style="{ bottom: 3 != goodsData.normal ? '166rpx' : '98rpx' }">
          <view class="guide-price-img">
            <image :src="'/static/image/home/sus.png'" mode="widthFix" />
          </view>
          <view>{{ $t('goods.acti') }}</view>
        </view>
      </view>
    </view>
    <view
      v-if="!guideShow && normalShow && 3 == goodsData.has_lottery && 2 != goodsData.type && 3 != goodsData.normal"
      class="normal_mask"
    >
      <view class="guide-price" :style="{ bottom: 3 == goodsData.normal ? '166rpx' : '98rpx' }">
        <image :src="'/static/image/home/sus.png'" mode="" />
        <image
          class="guide-del"
          :src="'/static/image/home/del.png'"
          @click.stop="changeNormal($event)"
          mode=""
         />
        <view>{{ $t('goods.normaltip') }}</view>
      </view>
    </view>
    <sharepopup ref="sharepopup" shareType="2" :orderID="goodsId"></sharepopup>
  </view>
</template>

<script>
import { interopDefault as d_4df3 } from '@/utils/mescroll-mixin';
import { GoodsBuyDetail, GoodsDetail, GoodsHisDetail, GoodsShareDetail, NumberMax, RunoobDetail, UserJoin } from '@/api/orich';
import { mapGetters } from 'vuex';
import { interopDefault as d_c8a5 } from '@/vendor/c8a5';
import { interopDefault as d_a34a } from '@/vendor/a34a';
import { countDown } from '@/utils/orich';

// Helpers the reference bundle hoisted out of the component.
function g(t, e) {
  (null == e || e > t.length) && (e = t.length);
  for (var s = 0, i = new Array(e); s < e; s++) i[s] = t[s];
  return i;
}
function p() {
  throw new TypeError('Invalid attempt to spread non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.');
}
function h(t, e) {
  if (t) {
    if ('string' === typeof t) return g(t, e);
    var s = Object.prototype.toString.call(t).slice(8, -1);
    return ('Object' === s && t.constructor && (s = t.constructor.name), 'Map' === s || 'Set' === s ? Array.from(t) : 'Arguments' === s || (/^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/).test(s) ? g(t, e) : void 0);
  }
}
function m(t) {
  if ('undefined' !== typeof Symbol && (Symbol.iterator in Object(t))) return Array.from(t);
}
function v(t) {
  if (Array.isArray(t)) return g(t);
}
function b(t, e, s, i, a, n, r) {
  try {
    var o = t[n](r), c = o.value;
  } catch (l) {
    return void s(l);
  }
  o.done ? e(c) : Promise.resolve(c).then(i, a);
}
function C(t, e, s) {
  return ((e in t) ? Object.defineProperty(t, e, {
    value: s,
    enumerable: true,
    configurable: true,
    writable: true
  }) : t[e] = s, t);
}
function w(t, e) {
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
function _(t) {
  return v(t) || m(t) || h(t) || p();
}
function $(t) {
  return function () {
    var e = this, s = arguments;
    return new Promise(function (i, a) {
      var n = t.apply(e, s);
      function r(t) {
        b(n, i, a, r, o, 'next', t);
      }
      function o(t) {
        b(n, i, a, r, o, 'throw', t);
      }
      r(void 0);
    });
  };
}
function y(t) {
  for (var e = 1; e < arguments.length; e++) {
    var s = null != arguments[e] ? arguments[e] : {};
    e % 2 ? w(Object(s), true).forEach(function (e) {
      C(t, e, s[e]);
    }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(t, Object.getOwnPropertyDescriptors(s)) : w(Object(s)).forEach(function (e) {
      Object.defineProperty(t, e, Object.getOwnPropertyDescriptor(s, e));
    });
  }
  return t;
}

export default {
  mixins: [d_4df3],
  onLoad: function (t) {
    this.goodsId = t.id;
    t.type && 'new' == t.type ? (this.isNew = false, this.req = RunoobDetail, this.userInfo && 1 == this.userInfo.new && (this.guideShow = true)) : this.req = GoodsDetail;
    this.getData();
  },
  computed: y({}, mapGetters(['userInfo'])),
  watch: {
    ltabIndex: function () {
      this.dataList = [];
      uni.createSelectorQuery().select('#toTop').boundingClientRect(function (t) {
        var e = t.height;
        uni.pageScrollTo({
          duration: 200,
          scrollTop: e
        });
      }).exec();
      this.mescroll.resetUpScroll();
    }
  },
  data: function () {
    return {
      navBg: 'transparent',
      titleColor: 'transparent',
      backBg: '#626262',
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
      req: null,
      bannerList: [],
      goodsId: '',
      goodsData: {},
      ltabIndex: 1,
      dataList: [1, 2, 3, 4],
      PKList: [],
      content: '',
      timeNews: null,
      timeCount: null,
      newsList: [],
      buyNum: 1,
      canBuy: 0,
      countdown: '00:00:00',
      guideShow: false,
      normalShow: true,
      isNew: false,
      animationData: {},
      aniValue: true,
      randomTimer: null,
      randomAni: 2100,
      iconList: ['../../static/image/goods/icon_Firstprize.png', '../../static/image/goods/icon_Secondprize.png', '../../static/image/goods/icon_Thirdprize.png'],
      rankList: [],
      firstLoad: true
    };
  },
  onShow: function () {
    var t = this, e = uni.createAnimation({
      transformOrigin: 'ease-in'
    });
    this.animation = e;
    this.timeNews = setInterval(function () {
      t.newsList = [];
      var e = d_c8a5[t.rnd(1, d_c8a5.length - 1)];
      t.newsList.push(e);
      t.rotateAndScale();
      setTimeout(function () {
        t.newsList = [];
      }, 2100);
    }, 3e3);
  },
  onHide: function () {
    clearInterval(this.timeNews);
  },
  methods: {
    toNav: function (t) {
      uni.navigateTo({
        url: t
      });
    },
    updateGoods: function (t) {
      this.goodsId = t;
      this.firstLoad = true;
      this.getData();
    },
    toPrize: function (t) {
      uni.navigateTo({
        url: ('../order/discount?id=').concat(t)
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
    },
    toRlue: function () {
      uni.navigateTo({
        url: '../help/help'
      });
    },
    beforeBack: function () {
      uni.redirectTo({
        url: '../home/home'
      });
    },
    rotateAndScale: function () {
      this.animation.translateY(50).opacity(1).step();
      this.animation.translateY(50).opacity(1).step({
        duration: 1500
      });
      this.animation.opacity(0).step({
        duration: 500
      });
      this.animation.translateY(0).opacity(0).step({
        duration: 0
      });
      this.animationData = this.animation.export();
    },
    NoFirst: function () {
      var t = this;
      UserJoin().then(function () {
        t.guideShow = false;
        t.$store.dispatch('getUserInfo');
      });
    },
    changeNormal: function () {
      this.normalShow = false;
    },
    handleShare: function () {
      this.$refs.sharepopup.open();
    },
    enlargeImg: function (t, e) {
      uni.previewImage({
        current: e,
        urls: t
      });
    },
    toRich: function () {
      uni.navigateTo({
        url: '../help/help_detail?id=37'
      });
    },
    getData: function () {
      var t = this;
      return $(d_a34a.mark(function e() {
        return d_a34a.wrap(function (e) {
          while (1) switch (e.prev = e.next) {
            case 0:
              return (clearInterval(t.countdown), t.firstLoad && uni.showLoading(), e.next = 4, t.req({
                id: t.goodsId
              }).then((function () {
                var e = $(d_a34a.mark(function e(s) {
                  return d_a34a.wrap(function (e) {
                    while (1) switch (e.prev = e.next) {
                      case 0:
                        return (t.firstLoad && uni.hideLoading(), t.firstLoad = false, t.goodsData = s, e.next = 5, NumberMax({
                          id: t.goodsId
                        }).then(function (e) {
                          t.canBuy = e.max;
                          0 == t.canBuy && (t.buyNum = 0);
                        }));
                      case 5:
                        t.$forceUpdate();
                        t.bannerList = [];
                        t.goodsData.galleryurl.forEach(function (e) {
                          t.bannerList.push({
                            image: e || ''
                          });
                        });
                        t.goodsData.getnumber.length > 4 && (t.goodsData.getnumberall = _(t.goodsData.getnumber), t.goodsData.getnumber = t.goodsData.getnumber.slice(0, 4));
                        3 == t.goodsData.has_lottery && 0 != t.goodsData.success && (t.timeCount = setInterval(function () {
                          t.goodsData.nowtime++;
                          t.countdown = countDown(t.goodsData.success, t.goodsData.nowtime);
                          t.$forceUpdate();
                          '00:00:00' == t.countdown && (clearInterval(t.timeCount), t.getData());
                        }, 1e3), t.countdown = countDown(t.goodsData.success, t.goodsData.nowtime), t.$forceUpdate(), '00:00:00' == t.countdown && (clearInterval(t.timeCount), t.getData()));
                        2 == t.goodsData.has_lottery && 0 != t.goodsData.lottery && (t.timeCount = setInterval(function () {
                          t.goodsData.nowtime++;
                          t.countdown = countDown(t.goodsData.lottery, t.goodsData.nowtime);
                          t.$forceUpdate();
                          '00:00:00' == t.countdown && (clearInterval(t.timeCount), t.getData());
                        }, 1e3), t.countdown = countDown(t.goodsData.lottery, t.goodsData.nowtime), t.$forceUpdate(), '00:00:00' == t.countdown && (clearInterval(t.timeCount), t.getData()));
                        1 == t.goodsData.has_lottery && clearInterval(t.timeCount);
                      case 12:
                      case 'end':
                        return e.stop();
                    }
                  }, e);
                }));
                return function (t) {
                  return e.apply(this, arguments);
                };
              })()));
            case 4:
            case 'end':
              return e.stop();
          }
        }, e);
      }))();
    },
    showMore: function () {
      this.goodsData.getnumber = _(this.goodsData.getnumberall);
    },
    toCalcu: function () {
      uni.navigateTo({
        url: ('./calculation?id=').concat(this.goodsId, '&a=').concat(this.goodsData.fair_sn_local, '&winner=').concat(this.goodsData.lottery_sn)
      });
    },
    latestIssue: function () {
      console.log(this.goodsData.newid);
      this.goodsId = this.goodsData.newid;
      this.getData();
      uni.pageScrollTo({
        scrollTop: 0,
        duration: 500
      });
    },
    valChange: function (e) {
      console.log(e);
      this.buyNum = e.value;
      e.value >= this.canBuy && uni.showToast({
        icon: 'none',
        title: this.$t('common.maxTip'),
        duration: 3e3
      });
    },
    paynow: function () {
      var t = this;
      this.$store.dispatch('checkLogin').then(function () {
        +t.buyNum && uni.navigateTo({
          url: ('./comfirm?id=').concat(t.goodsId, '&num=').concat(t.buyNum, '&type=').concat(t.isNew ? 'new' : '')
        });
      }).catch(function () {});
    },
    rnd: function (t, e) {
      var s = Math.floor(Math.random() * (e - t + 1) + t);
      return s;
    },
    upCallback: function (t) {
      var e = this, s = (t.num - 1) * t.size, i = t.size, a = null;
      switch (this.ltabIndex) {
        case 1:
          a = GoodsBuyDetail;
          break;
        case 2:
          return;
        case 3:
          a = GoodsHisDetail;
          break;
        case 4:
          a = GoodsShareDetail;
          break;
      }
      a({
        id: this.goodsId,
        start: s,
        limit: i
      }).then(function (s) {
        var i = s.list, a = i.length, n = +s.count;
        1 == t.num && (e.dataList = []);
        1 == e.ltabIndex && 1 == t.num && (e.PKList = i);
        e.dataList = e.dataList.concat(i);
        e.mescroll.endBySize(a, n);
      }).catch(function (t) {
        e.mescroll.endErr();
      });
    }
  },
  onPullDownRefresh: function () {
    console.log('refresh');
    setTimeout(function () {
      uni.stopPullDownRefresh();
    }, 1e3);
  },
  onPageScroll: function (t) {
    var e = t.scrollTop;
    e < 88 ? (this.navBg = 'transparent', this.titleColor = 'transparent', this.backBg = '#626262') : e > 88 && (this.navBg = '#ffffff', this.titleColor = '', this.backBg = '#626262');
  },
  onHide: function () {
    clearInterval(this.timeNews);
    clearInterval(this.timeCount);
  },
  unmounted: function () {
    clearInterval(this.timeNews);
    clearInterval(this.timeCount);
  }
};
</script>

<style scoped>
* { font-family:Roboto,Roboto-Bold }
.mescroll-upwarp { box-sizing:border-box;min-height:55px;padding:15px 0;text-align:center;clear:both }
.goods { min-height:120vh;background:#f9f9f9;padding-bottom:100rpx }
.goods .mask { position:fixed;left:0;top:0;z-index:9999;display:flex;flex-direction:row;align-items:center;justify-content:center;width:100vw;height:100vh;background:rgba(0,0,0,.6) }
.goods .mask .m-guide { position:relative;width:100%;height:100% }
.goods .mask .m-guide .btn-btn { position:absolute;bottom:10rpx;right:30rpx;width:283rpx;height:78rpx }
.goods .mask .m-guide .guide-tips { position:absolute;right:30rpx;bottom:190rpx;width:444rpx;height:126rpx;text-align:CENTER;box-shadow:0rpx 8rpx 28rpx 0rpx rgba(0,0,0,.05);background-image:url('/static/image/home/guide-bot.png');background-size:100% 100% }
.goods .mask .m-guide .guide-text { margin-top:32rpx;font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#fff }
.goods .mask .m-guide .guide-del { position:absolute;right:16rpx;bottom:88rpx;width:32rpx;height:32rpx }
.goods .mask .m-guide .guide-price { display:flex;flex-direction:row;align-items:center;justify-content:center;position:absolute;left:56rpx;width:536rpx;height:100rpx;opacity:1;background:linear-gradient(262deg,#ee5016,rgba(238,80,22,.17));border-radius:199rpx 199rpx 199rpx 0rpx;padding:0 12rpx;font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:500;text-align:CENTER;color:#fff }
.goods .mask .m-guide .guide-price .guide-price-img { min-width:34rpx;min-height:34rpx }
.goods .mask .m-guide .guide-price .guide-price-img uni-image { width:100%;height:100% }
.goods .guide-btn { z-index:100000 }
.goods .card { padding:30rpx;margin-bottom:16rpx;background:#fff }
.goods .banner { position:relative;margin-top:-88rpx }
.goods .banner .banner-toast { display:flex;flex-direction:column;align-items:center;justify-content:center;position:absolute;top:30rpx;left:0;width:100vw;z-index:999 }
.goods .banner .banner-toast .btoast { width:auto;padding:12rpx 56rpx;margin-top:20rpx;background:rgba(0,0,0,.6);border-radius:30rpx;font-size:28rpx;text-align:center;color:#fff;transition:all .5s }
.goods .banner .banner-countdown { z-index:970;position:absolute;bottom:18rpx;left:10rpx;padding:12rpx 0rpx;width:280rpx;opacity:1;background:linear-gradient(256deg,#ee5016,rgba(238,80,22,.17));border-radius:200rpx 200rpx 200rpx 0rpx;font-size:32rpx;text-align:CENTER;color:#fff }
.goods .intro { display:flex;flex-direction:row;align-items:flex-start;justify-content:center;width:100%;padding:0rpx 0 0 30rpx }
.goods .intro .intro-header { flex:1;display:flex;flex-direction:column;align-items:flex-start;justify-content:center;padding:30rpx 0 32rpx 0 }
.goods .intro .intro-header .intro-price { width:100%;display:flex;align-items:center;justify-content:space-between }
.goods .intro .intro-header .intro-price .intro-price-all { max-width:430rpx;font-size:48rpx;font-family:Roboto,Roboto-Bold;font-weight:700;text-align:LEFT;color:#ff5c5c;overflow:hidden;white-space:nowrap }
.goods .intro .intro-header .intro-price .intro-price-all uni-text { margin-left:22rpx;font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;text-align:LEFT;color:#b9b9b9;text-decoration:line-through }
.goods .intro .intro-header .intro-price .intro-price-refund { flex-shrink:0;margin-right:10rpx;width:154rpx;height:50rpx;line-height:50rpx;background:linear-gradient(111deg,#ffe44b,#fea326);border-radius:8rpx;font-size:26rpx;font-family:DIN,DIN-Medium;font-weight:500;text-align:center;color:#ea6a01 }
.goods .intro .intro-header .intro-title { width:540rpx;font-size:32rpx;font-weight:700;margin-top:6rpx }
.goods .intro .intro-header .intro-text { margin-top:18rpx;font-size:28rpx;font-weight:400;color:#b9b9b9 }
.goods .intro uni-image { margin-top:-14rpx;width:126rpx;height:134rpx }
.goods .loser { width:100%;height:80rpx;background:#fdedd6;margin-top:-16rpx;margin-bottom:16rpx;position:relative;padding:0 36rpx 0 26rpx;display:flex;align-items:center;justify-content:space-between }
.goods .loser .loser-text { font-size:28rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#ad6701 }
.goods .loser .loser-text uni-text { color:#ff5c5c;margin-left:6rpx }
.goods .loser .loser-help { flex-shrink:0;width:32rpx;height:32rpx }
.goods .loser .loser-help uni-image { width:100%;height:100% }
.goods .people { width:100% }
.goods .people .people-text { font-size:28rpx;font-weight:400;text-align:LEFT;color:#b9b9b9 }
.goods .people .people-view { display:flex;align-items:center;justify-content:space-between;margin-top:-10rpx }
.goods .people .people-avatar { display:flex;flex-direction:row;align-items:center;justify-content:flex-start }
.goods .people .people-avatar uni-image { width:44rpx;height:44rpx;border-radius:50%;border:2rpx solid #fff;margin-left:-14rpx }
.goods .people .people-progress { width:100%;margin:4rpx 0 }
.goods .people .people-need { display:flex;align-items:center;justify-content:space-between;font-size:28rpx;font-weight:400;color:#ee5016 }
.goods .people .people-number { width:100%;padding:18rpx 0 8rpx 0;margin:30rpx 0 0 0;opacity:1;background:#f7f8f9;border-radius:44rpx }
.goods .people .people-number .people-title { display:flex;flex-direction:row;align-items:center;justify-content:center;width:100%;font-size:28rpx;font-weight:400;color:#17273a }
.goods .people .people-number .people-title uni-text { color:#ee5016 }
.goods .people .people-number .people-title .people-all { width:100rpx;margin-left:36rpx;font-size:26rpx;font-weight:400;color:#58a5ff }
.goods .people .people-number .people-area { display:flex;flex-direction:row;align-items:center;justify-content:flex-start;flex-wrap:wrap;width:100%;padding:10rpx 20rpx }
.goods .people .people-number .people-area .people-area-item { width:114rpx;margin:10rpx 24rpx;text-align:center;font-size:28rpx;font-weight:700;color:#17273a }
.goods .people .people-number .people-tips { padding-bottom:10rpx;font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:700;color:#ee5016 }
.goods .people .people-number .people-result { position:relative;display:flex;flex-direction:row;align-items:center;justify-content:flex-start;padding:0 40rpx;padding-bottom:10rpx }
.goods .people .people-number .people-result uni-image { width:70rpx;margin-right:36rpx }
.goods .people .people-number .people-result .people-detail { flex:1;font-size:28rpx;color:#b9b9b9 }
.goods .people .people-number .people-result .people-detail uni-text:before { content:" " }
.goods .people .people-number .people-result .people-more { position:absolute;right:28rpx;top:0rpx;font-size:28rpx;font-weight:700;color:#ee5016 }
.goods .people .people-number .people-result .people-winner { width:340rpx }
.goods .prize { margin-top:16rpx;padding:28rpx 0 44rpx 20rpx;background:#fff;margin-bottom:16rpx }
.goods .prize .prize-title { margin-bottom:8rpx;display:flex;justify-content:space-between;padding-right:30rpx }
.goods .prize .prize-title .prize-icon { display:inline-block;width:10rpx;height:20rpx;background:#ee5016;margin-right:16rpx }
.goods .prize .prize-title .prize-name { font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#17273a }
.goods .prize .prize-title .rule-color { color:#58a5ff }
.goods .prize .rank { max-height:328rpx;overflow-y:auto }
.goods .prize .rank .prize-rank { padding:24rpx 90rpx 0 30rpx;display:flex;align-items:center }
.goods .prize .rank .prize-rank .prize-rank-box { display:flex;align-items:center }
.goods .prize .rank .prize-rank .prize-rank-box .rank-icon { width:30rpx;height:40rpx }
.goods .prize .rank .prize-rank .prize-rank-box .rank-icon uni-image { width:100%;height:100% }
.goods .prize .rank .prize-rank .prize-rank-box .rank-iconnum { width:36rpx;height:36rpx;background:#ffe6e2;border-radius:50%;line-height:36rpx;text-align:center }
.goods .prize .rank .prize-rank .prize-rank-box .rank-iconnum uni-text { width:16rpx;height:22rpx;font-size:24rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#fc573b }
.goods .prize .rank .prize-rank .prize-rank-box .rank-name { margin-left:24rpx;font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#17273a;width:200rpx }
.goods .prize .rank .prize-rank .rank-price { font-size:32rpx;font-family:Roboto,Roboto-Bold;font-weight:700;color:#ff5c5c;margin-left:200rpx;display:flex;align-items:center;justify-content:space-between }
.goods .prize .rank .prize-rank .rank-price .rank-price-left { width:130rpx;overflow:hidden;text-overflow:ellipsis;white-space:nowrap }
.goods .prize .rank .prize-rank .rank-price .rank-price-num { margin-left:4rpx;font-size:22rpx;font-family:PingFang SC,PingFang SC-Bold;font-weight:700;color:#ff5c5c;letter-spacing:0rpx }
.goods .draw { width:100% }
.goods .draw .draw-title { display:flex;align-items:center;margin:-10rpx 0 26rpx 0 }
.goods .draw .draw-title .draw-op { width:10rpx;height:20rpx;background:#ee5016 }
.goods .draw .draw-title .draw-text { flex:1;margin:0 16rpx;font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:700;color:#17273a }
.goods .draw .draw-title .draw-more { width:30rpx;height:30rpx }
.goods .main { width:100%;margin-bottom:20rpx;background:#fff }
.goods .main .ltab { display:flex;flex-direction:row;align-items:center;justify-content:space-between;width:100%;padding:28rpx 55rpx 20rpx 50rpx;border-bottom:8rpx solid #f9f9f9;background:#fff }
.goods .main .ltab .ltab-item { display:flex;flex-direction:column;align-items:center;justify-content:center }
.goods .main .ltab .ltab-item .ltab-item-text { font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:700;color:#b9b9b9;text-align:right;margin-bottom:6rpx }
.goods .main .ltab .ltab-item uni-image { width:0;height:0 }
.goods .main .ltab .ltab-item-active .ltab-item-text { font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:700;color:#17273a }
.goods .main .ltab .ltab-item-active uni-image { width:34rpx;height:12rpx;margin-top:4rpx }
.goods .main .parse { width:100%;height:100%;padding:20rpx }
.goods .pkbtn { display:flex;flex-direction:row;align-items:center;justify-content:center;position:fixed;left:0;bottom:0;width:100%;height:164rpx;background:#fff;box-shadow:0rpx 4rpx 24rpx 0rpx rgba(0,0,0,.1);z-index:99999 }
.goods .pkbtn .pkbtn-redi { background:url('/static/image/goods/bg_red.png') no-repeat;background-size:100% }
.goods .pkbtn .pkbtn-redi .pkbtn-redi-box { height:92rpx;width:288rpx;display:flex;justify-items:flex-start;position:relative }
.goods .pkbtn .pkbtn-redi .pkbtn-redi-box .pkbtn-redi-box-avatar { width:86rpx;height:86rpx;line-height:86rpx;border-radius:50%;overflow:hidden;position:absolute;right:0 }
.goods .pkbtn .pkbtn-redi .pkbtn-redi-box .pkbtn-redi-box-avatar uni-image { width:100%;height:100% }
.goods .pkbtn .pkbtn-redi .pkbtn-redi-box .pkbtn-redi-box-avatar uni-text { font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:500;text-align:CENTER;color:#ff5069;letter-spacing:0rpx;position:absolute;left:50%;-webkit-transform:translateX(-50%);transform:translateX(-50%) }
.goods .pkbtn .pkbtn-redi .pkbtn-redi-box .avatar_bj { background:#ffe6e2;border:4rpx solid #fff }
.goods .pkbtn .pkbtn-redi .pkbtn-redi-box .pkbtn-redi-box-title { margin-left:40rpx;line-height:82rpx;max-width:130rpx;overflow:hidden;font-size:36rpx;white-space:nowrap;text-overflow:ellipsis;font-family:Roboto,Roboto-Bold;color:#fff }
.goods .pkbtn .pkbtn-blue { background:url('/static/image/goods/bg_blue.png') no-repeat;background-size:100% }
.goods .pkbtn .pkbtn-blue .pkbtn-blue-box { height:92rpx;width:288rpx;display:flex;justify-items:flex-start }
.goods .pkbtn .pkbtn-blue .pkbtn-blue-box .pkbtn-blue-box-avatar { width:86rpx;height:86rpx;border-radius:50%;text-align:CENTER;overflow:hidden }
.goods .pkbtn .pkbtn-blue .pkbtn-blue-box .pkbtn-blue-box-avatar uni-image { width:100%;height:100% }
.goods .pkbtn .pkbtn-blue .pkbtn-blue-box .pkbtn-blue-box-avatar uni-text { line-height:76rpx;font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#ff5069;letter-spacing:0rpx }
.goods .pkbtn .pkbtn-blue .pkbtn-blue-box .pkbtn-blue-box-title { margin-left:20rpx;line-height:82rpx;max-width:120rpx;overflow:hidden;font-size:32rpx;font-family:PingFang SC,PingFang SC-Bold;font-weight:700;text-align:LEFT;color:#fff;letter-spacing:0rpx }
.goods .pkbtn .pkbtn-pkicon { width:80rpx;height:68rpx }
.goods .pkbtn .pkbtn-pkicon uni-image { width:100%;height:100% }
.goods .btn { display:flex;flex-direction:row;align-items:center;justify-content:center;position:fixed;left:0;bottom:0;width:100%;height:98rpx;background:#fff;box-shadow:0rpx 4rpx 24rpx 0rpx rgba(0,0,0,.1);z-index:99999 }
.goods .btn .btn-buy { display:flex;flex-direction:row;align-items:center;justify-content:center;width:100%;height:100%;margin:0 30rpx }
.goods .btn .btn-buy .btn-price { flex:1;display:flex;flex-direction:column;align-items:flex-start;justify-content:center;padding-left:30rpx }
.goods .btn .btn-buy .btn-price .btn-price-new { font-size:32rpx;font-weight:700;color:#ee5016 }
.goods .btn .btn-buy .btn-price .btn-price-old { font-size:28rpx;color:#b9b9b9;text-decoration:line-through }
.goods .btn .btn-buy .btn-num { margin:0 28rpx }
.goods .btn .btn-buy .btn-btn { width:283rpx;height:78rpx }
.goods .btn .btn-latest { width:598rpx;height:78rpx }
.participation { width:100%;padding:0 30rpx 0 56rpx }
.participation .item { position:relative;display:flex;flex-direction:row;align-items:flex-start;justify-content:center;width:100%;padding:34rpx 0 40rpx 0 }
.participation .item .op { position:absolute;top:150rpx;left:48rpx;width:2rpx;height:74rpx;opacity:.3;border-left:2rpx dashed #b9b9b9 }
.participation .item .avatar { width:96rpx;height:96rpx;margin-right:32rpx;border-radius:50%;border:2rpx solid #fff }
.participation .item .detail { flex:1 }
.participation .item .header { display:flex;flex-direction:column;align-items:flex-start;justify-content:space-between;height:96rpx;padding:8rpx 0 4rpx 0 }
.participation .item .header .header-top { display:flex;align-items:center;justify-content:space-between;width:100% }
.participation .item .header .header-top .header-name { max-width:170rpx;font-size:28rpx;font-weight:700;color:#17273a }
.participation .item .header .header-top .header-time { font-size:24rpx;font-weight:400;color:#b9b9b9 }
.participation .item .header .header-top uni-image { width:100rpx;height:46rpx }
.participation .item .header .header-bottom { font-size:28rpx;font-weight:400;color:#b9b9b9 }
.participation .item .ip { font-size:28rpx;font-weight:400;color:#b9b9b9 }
.winner { width:100%;padding:24rpx 28rpx 24rpx 42rpx }
.winner .item { display:flex;align-items:center;width:100%;padding:18rpx 0;position:relative }
.winner .item .img { width:184rpx;height:184rpx;border-radius:8rpx;margin-right:26rpx }
.winner .item .itemno { width:162rpx;font-size:28rpx;font-family:Roboto,Roboto-Bold;font-weight:700;color:#17273a;letter-spacing:0rpx;margin-right:94rpx }
.winner .item .detail .detail-userinfo { display:flex;align-items:center;justify-content:flex-start }
.winner .item .detail .detail-userinfo .headimg { width:56rpx;height:56rpx;border-radius:50%;overflow:hidden;margin:0 10rpx }
.winner .item .detail .detail-userinfo .headimg uni-image { width:100%;height:100% }
.winner .item .detail .img-more { font-size:26rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#58a5ff;position:absolute;right:44rpx }
.winner .item .detail .title { width:466rpx;margin:14rpx 0;font-size:28rpx;font-weight:700;color:#000 }
.winner .item .detail .name { font-size:28rpx;font-weight:400 }
.winner .item .detail .text { margin:14rpx 0;font-size:26rpx;font-weight:400;color:#b9b9b9 }
.winner .item:not(:last-child) { border-bottom:1rpx solid #ececec }
.reviews { width:100%;padding:0 24rpx }
.reviews .item { width:100%;padding:34rpx 0 28rpx 0 }
.reviews .item .header { display:flex;align-items:center;justify-content:center }
.reviews .item .header .avatar { width:56rpx;height:56rpx;margin-right:18rpx;border-radius:50%;border:2rpx solid #fff }
.reviews .item .header .name { margin-right:16rpx;font-size:26rpx;color:#17273a;max-width:160rpx }
.reviews .item .header .issue { margin-right:16rpx;font-size:26rpx;color:#b9b9b9 }
.reviews .item .header .vipimg { width:100rpx;height:46rpx }
.reviews .item .header .time { flex:1;text-align:right;font-size:24rpx;color:#b9b9b9 }
.reviews .item .main { width:100%;margin-top:30rpx;padding:26rpx 30rpx;background:#f7f8f9;border-radius:36rpx }
.reviews .item .main .title { font-size:28rpx;color:#17273a }
.reviews .item .main .content { margin:12rpx 0 0rpx 0;font-size:28rpx;color:#b9b9b9 }
.reviews .item .main .imgArr { display:flex;align-items:center;flex-wrap:wrap;justify-content:flex-start }
.reviews .item .main .imgArr uni-image { width:88rpx;height:88rpx;border-radius:8rpx;margin-top:20rpx;margin-right:16rpx }
.reviews .item:not(:last-child) { border-bottom:1rpx solid #ececec }
.normal_mask { position:fixed;left:0;bottom:0;z-index:888;display:flex;flex-direction:row;align-items:center;justify-content:center }
.normal_mask .guide-price { display:flex;flex-direction:row;align-items:center;justify-content:flex-start;position:absolute;left:56rpx;bottom:98rpx;width:556rpx;height:94rpx;opacity:1;background:rgba(0,0,0,.5);border-radius:20rpx;padding-left:10rpx;font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:500;text-align:CENTER;color:#fff }
.normal_mask .guide-price uni-image { width:34rpx;height:34rpx;margin-right:12rpx }
.normal_mask .guide-del { position:absolute;right:0;top:10rpx }
</style>
