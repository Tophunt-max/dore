<template>
  <view class="comfirm">
    <navbar :title="$t('payment.recharge')" background="#ffffff">
      <template #right>
        <view class="recharge_record" @click="toRecord" slot="right">{{ $t('payment.navrecord') }}</view>
      </template>
    </navbar>
    <view class="comfirm-tips">{{ $t('payment.tips') }}</view>
    <view class="comfirm_pay">
      <view
        v-for="(item, index) in payList"
        :key="index"
        class="comfirm_pay_item"
        :class="{ active: activeIndex == index }"
        @click="changePay(index, item)"
      >
        {{ item.num }}
      </view>
      <view class="comfirm_pay_item width_input">
        <u-input
          placeholder="Enter amount"
          input-align="center"
          :height="78"
          @focus="changePay(7)"
          @blur="changePay(7)"
          v-model="value"
        ></u-input>
      </view>
    </view>
    <view class="btn">
      <view class="btn-buy">
        <view class="btn-price">
          <view class="btn-price-old"></view>
        </view>
        <view class="btn-btn">
          <overbtn
            :loading="loading"
            :btnText="$t('payment.pnow')"
            :fontSize="28"
            btnType="submit"
            @btnAction="paynow"
          ></overbtn>
        </view>
      </view>
    </view>
    <image class="c-divider" src="/static/image/goods/img_line.png" mode="widthFix" />
    <view class="pay-tips">{{ $t('finance.paytips') }}</view>
    <view class="pay-whatsapp" @click="openWhatsapp">{{ $t('payment.contact') }}</view>
    <onepopup ref="onepopup" popType="2"></onepopup>
  </view>
</template>

<script>
import { mapGetters } from 'vuex';
import { interopDefault as d_a34a } from '@/vendor/a34a';
import { addRechargePay, payStatus, systemService } from '@/api/orich';
import { analytics, nativePlus } from '@/utils/native';

// Helpers the reference bundle hoisted out of the component.
function c(t, e, s, i, a, n, r) {
  try {
    var o = t[n](r), c = o.value;
  } catch (l) {
    return void s(l);
  }
  o.done ? e(c) : Promise.resolve(c).then(i, a);
}
function f(t, e, s) {
  return ((e in t) ? Object.defineProperty(t, e, {
    value: s,
    enumerable: true,
    configurable: true,
    writable: true
  }) : t[e] = s, t);
}
function u(t, e) {
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
var _ = analytics;
function l(t) {
  return function () {
    var e = this, s = arguments;
    return new Promise(function (i, a) {
      var n = t.apply(e, s);
      function r(t) {
        c(n, i, a, r, o, 'next', t);
      }
      function o(t) {
        c(n, i, a, r, o, 'throw', t);
      }
      r(void 0);
    });
  };
}
function d(t) {
  for (var e = 1; e < arguments.length; e++) {
    var s = null != arguments[e] ? arguments[e] : {};
    e % 2 ? u(Object(s), true).forEach(function (e) {
      f(t, e, s[e]);
    }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(t, Object.getOwnPropertyDescriptors(s)) : u(Object(s)).forEach(function (e) {
      Object.defineProperty(t, e, Object.getOwnPropertyDescriptor(s, e));
    });
  }
  return t;
}

export default {
  onLoad: function (t) {
    this.$store.dispatch('getUserInfo');
  },
  computed: d({}, mapGetters(['userInfo'])),
  watch: {},
  data: function () {
    return {
      payIndex: 3,
      loading: false,
      payList: [{
        num: 10,
        gift: 0,
        type: 6
      }, {
        num: 100,
        gift: 2,
        type: 1
      }, {
        num: 500,
        gift: 4,
        type: 2
      }, {
        num: 1e3,
        gift: 6,
        type: 3
      }, {
        num: 5e3,
        gift: 8,
        type: 4
      }, {
        num: 1e4,
        gift: 10,
        type: 5
      }],
      value: '',
      activeIndex: 0,
      price: 0,
      customStyle: {
        display: 'flex'
      },
      info: {},
      sendMes: {},
      xpayTimer: null,
      payNumers: 0
    };
  },
  mounted: function () {
    this.price = this.payList[0].num;
    this.getCustomer();
  },
  methods: {
    toRecord: function () {
      uni.navigateTo({
        url: './payrecord'
      });
    },
    openWhatsapp: function () {
      nativePlus.runtime.openURL(('whatsapp://send?phone=+').concat(this.sendMes.phone, '&text=').concat(this.sendMes.content));
    },
    getCustomer: function () {
      var t = this;
      return l(d_a34a.mark(function e() {
        return d_a34a.wrap(function (e) {
          while (1) switch (e.prev = e.next) {
            case 0:
              return (e.next = 2, systemService({
                type: 1
              }).then(function (e) {
                t.sendMes = e;
              }));
            case 2:
            case 'end':
              return e.stop();
          }
        }, e);
      }))();
    },
    changePay: function (e, s) {
      this.activeIndex = e;
      this.price = 7 == e ? this.value : s.num;
      console.log(this.price, 'this.price');
    },
    paynow: function () {
      var e = this;
      switch ((this.loading = true, console.log(this.payIndex, 'paytype'), +this.payIndex)) {
        case 0:
          break;
        case 1:
          break;
        case 2:
          break;
        case 3:
          addRechargePay({
            price: this.price,
            successUrl: 'http://orich.in/#/pages/success/index?type=4'
          }).then(function (t) {
            e.info = t.data;
            var s = ('https://api.orich.in/newform/index.html?amount=').concat(t.data.amount, '&currency=').concat(t.data.currency, '&language=').concat(t.data.language, '\n							&merchantId=').concat(t.data.merchantId, '&nonce=').concat(t.data.nonce, '&orderNum=').concat(t.data.orderNum, '&sign=').concat(t.data.sign, '\n							&timestamp=').concat(t.data.timestamp, '&userId=').concat(t.data.userId, '&phoneNum=').concat(t.data.phoneNum, '&firstName=').concat(t.data.firstName, '\n							&lastName=').concat(t.data.lastName, '&email=').concat(t.data.email);
            uni.setStorageSync('formurl', s);
            uni.navigateTo({
              url: '../payform/payform'
            });
            e.loading = false;
          }).catch(function () {
            e.loading = false;
          });
          break;
      }
    },
    xpayStatus: function () {
      for (var t = this, e = setInterval(function () {}, 1e3), s = 0; s < e; s++) clearInterval(s);
      t.clearTimer();
      t.xpayTimer = setInterval(function () {
        t.payNumers++;
        payStatus({
          orderNum: t.info.orderNum
        }).then(function (e) {
          3 == e && (_.logEvent({
            eventName: 'af_xpay_revenue',
            eventValues: {
              af_revenue: t.info.amount,
              af_content_type: 'recharge',
              af_content_id: t.info.merchantId,
              af_currency: t.info.currency
            }
          }, function (t) {}), t.clearTimer());
          t.payNumers > 150 && t.clearTimer();
        });
      }, 2e3);
    },
    beforeBack: function () {
      this.$refs.onepopup.open();
    },
    clearTimer: function () {
      console.log(this.xpayTimer, '清除');
      clearInterval(this.xpayTimer);
      this.payNumers = 0;
    }
  },
  unmounted: function () {
    this.clearTimer();
  },
  onBackPress: function () {
    console.log('onBackPress');
  }
};
</script>

<style scoped>
.comfirm { position:relative;background:#fff;min-height:100vh;padding-bottom:100rpx }
.comfirm .comfirm-tips { width:100%;padding:0 30rpx;text-align:left;font-size:26rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#17273a }
.comfirm .comfirm_pay { margin-top:24rpx;display:flex;align-items:center;flex-wrap:wrap }
.comfirm .comfirm_pay .width_input { margin-right:30rpx!important;width:100%!important }
.comfirm .comfirm_pay .comfirm_pay_item { width:208rpx;height:78rpx;margin-left:32rpx;line-height:78rpx;text-align:center;border:1rpx solid hsla(0,0%,72.5%,.6);border-radius:9rpx;position:relative }
.comfirm .comfirm_pay .comfirm_pay_item .right_icon { width:66rpx;height:46rpx;background:url('/static/image/finance/bg_list.png') no-repeat;background-size:100% 100%;position:absolute;top:-20rpx;right:-20rpx;line-height:34rpx;font-size:24rpx;font-family:DIN,DIN-Medium;font-weight:500;color:#ee5016;letter-spacing:0rpx }
.comfirm .comfirm_pay .comfirm_pay_item:nth-child(n+4) { margin-top:32rpx }
.comfirm .comfirm_pay .active { background:#ee5016;border:1rpx solid #ee5016;color:#fff }
.comfirm .comfirm-title { display:flex;align-items:center;justify-content:flex-start;margin:30rpx 0;font-size:32rpx;font-weight:700;color:#17273a }
.comfirm .comfirm-title .comfirm-op { width:10rpx;height:20rpx;margin-right:10rpx;background:#ee5016 }
.comfirm .detail { padding:0 30rpx }
.comfirm .detail .goods { display:flex;align-items:flex-start;justify-content:center }
.comfirm .detail .goods uni-image { width:180rpx;height:180rpx;margin-right:30rpx }
.comfirm .detail .goods .goods-desc { flex:1 }
.comfirm .detail .goods .goods-desc .goods-title { display:flex;align-items:center }
.comfirm .detail .goods .goods-desc .goods-title .goods-title-text { width:400rpx }
.comfirm .detail .goods .goods-desc .goods-title .goods-num { margin-left:30rpx;font-size:28rpx;font-family:Roboto,Roboto-Regular;color:#b9b9b9 }
.comfirm .detail .goods .goods-desc .goods-price { display:flex;align-items:center;justify-content:flex-start;width:100%;margin-top:30rpx }
.comfirm .detail .goods .goods-desc .goods-price .goods-price-old { margin-right:30rpx;font-size:28rpx;font-family:Roboto,Roboto-Regular;color:#b9b9b9;text-decoration:line-through }
.comfirm .detail .goods .goods-desc .goods-price .goods-price-new { font-size:32rpx;font-family:Roboto,Roboto-Bold;font-weight:700;color:#ee5016 }
.comfirm .c-divider { width:calc(100% - 60rpx);margin:45rpx 30rpx 0 30rpx }
.comfirm .pay { padding:0 30rpx }
.comfirm .pay .comfirm-title { margin:10rpx 0 }
.comfirm .pay .pay-list .pay-item { display:flex;flex-direction:row;align-items:center;justify-content:center;width:100%;margin:20rpx 0;padding:10rpx 0 }
.comfirm .pay .pay-list .pay-item .pay-icon { width:142rpx;height:68rpx;margin-right:20rpx }
.comfirm .pay .pay-list .pay-item .pay-name { flex:1;font-size:28rpx;font-family:Roboto,Roboto-Regular;color:#17273a }
.comfirm .pay .pay-list .pay-item .pay-radio { width:34rpx;height:34rpx;border:2rpx solid #b9b9b9;border-radius:50% }
.comfirm .pay .pay-list .pay-item .pay-op { width:0;height:0 }
.comfirm .pay .pay-list .pay-item .pay-select { display:flex;flex-direction:row;align-items:center;justify-content:center;border:2rpx solid #ee5016;border-radius:50% }
.comfirm .pay .pay-list .pay-item .pay-select .pay-op { width:18rpx;height:18rpx;background:#ee5016;border-radius:50% }
.comfirm .pay-tips { margin-top:30rpx;text-align:center;padding:0 30rpx;font-size:26rpx;color:grey }
.comfirm .pay-whatsapp { margin-top:50rpx;text-align:center;font-weight:700;text-decoration:underline }
.comfirm .btn { display:flex;flex-direction:row;align-items:center;justify-content:center;margin-top:30rpx;width:100%;height:98rpx;background:#fff }
.comfirm .btn .btn-buy { display:flex;flex-direction:row;align-items:center;justify-content:center;width:100%;height:100%;margin-right:30rpx }
.comfirm .btn .btn-buy .btn-price { flex:1;display:flex;flex-direction:column;align-items:flex-start;justify-content:center;padding-left:30rpx }
.comfirm .btn .btn-buy .btn-price .btn-price-new { font-size:32rpx;font-weight:700;color:#ee5016 }
.comfirm .btn .btn-buy .btn-price .btn-price-old { text-decoration:line-through;font-size:28rpx;color:#b9b9b9;text-decoration:line-through }
.comfirm .btn .btn-buy .btn-num { margin:0 28rpx }
.comfirm .btn .btn-buy .btn-btn { width:100%;height:78rpx }
.comfirm .btn .btn-latest { width:598rpx;height:78rpx }
.recharge_record { position:absolute;right:50rpx }
.comfirm .comfirm_pay .comfirm_pay_item .right_icon { width:66rpx;height:46rpx;background:url('/static/image/pay/icon_identification.png') no-repeat;background-size:100% 100%;position:absolute;top:-20rpx;right:-20rpx;line-height:34rpx;font-size:24rpx;font-family:DIN,DIN-Medium;font-weight:500;color:#ee5016;letter-spacing:0rpx }
</style>
