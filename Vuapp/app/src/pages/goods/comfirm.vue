<template>
  <view v-if="Object.keys(goodsData).length" class="comfirm">
    <navbar :title="$t('goods.otitle')" :isComfirm="true" @beforeBack="beforeBack"></navbar>
    <view class="comfirm-back"></view>
    <view class="detail">
      <view class="comfirm-title">
        <view class="comfirm-op"></view>
        <view class="comfirm-text">{{ $t('goods.det') }}</view>
      </view>
      <view class="goods">
        <image :src="1 == gtype ? goodsData.iconurl : goodsData.img" mode="" />
        <view class="goods-desc">
          <view class="goods-title">
            <view class="goods-title-text otw">{{ goodsData.name }}</view>
            <view class="goods-num">x{{ buyNum }}</view>
          </view>
          <view v-if="1 == gtype" class="goods-price">
            <view class="goods-price-old">₹{{ goodsData.allprice }}</view>
            <view class="goods-price-new">₹{{ goodsData.unit_price }}</view>
          </view>
          <view v-else class="goods-finance">
            <view class="price">₹{{ goodsData.price * buyNum }}</view>
            <view class="interest">
              {{ $t('finance.interest') }}:₹{{ (buyNum * goodsData.price * (.01 * goodsData.rate) * goodsData.day).toFixed(2) }}
            </view>
          </view>
        </view>
      </view>
    </view>
    <image class="c-divider" src="/static/image/goods/img_line.png" mode="widthFix" />
    <view class="pay">
      <view class="comfirm-title">
        <view class="comfirm-op"></view>
        <view class="comfirm-title">{{ $t('goods.paym') }}</view>
      </view>
      <view class="pay-list">
        <view class="pay-item" @click="payIndex = 1">
          <image class="pay-icon" :src="'/static/image/pay/Group272.png'" mode="" />
          <view class="pay-name">Balance ({{ this.userInfo.money }}₹ )</view>
          <view class="pay-radio" :class="1 == payIndex ? 'pay-select' : ''">
            <view class="pay-op"></view>
          </view>
        </view>
      </view>
    </view>
    <view class="btn">
      <view class="btn-buy">
        <view class="btn-price">
          <view v-if="1 == gtype" class="btn-price-new">
            ₹{{ isNew ? '0.00' : (goodsData.unit_price * buyNum).toFixed(2) }}
          </view>
          <view v-else class="btn-price-new">₹ {{ (goodsData.price * buyNum).toFixed(2) }}</view>
        </view>
        <view class="btn-btn">
          <overbtn
            :loading="loading"
            :btnText="$t('goods.payn')"
            :fontSize="28"
            fontWeight="bold"
            btnType="submit"
            @btnAction="paynow"
          ></overbtn>
        </view>
      </view>
    </view>
    <onepopup ref="onepopup" popType="2" :gtype="gtype"></onepopup>
  </view>
</template>

<script>
import { mapGetters } from 'vuex';
import { interopDefault as d_a34a } from '@/vendor/a34a';
import { AddOrder, GoodsDetail, addOrderPay, financeBuy, financeDetail } from '@/api/orich';

// Helpers the reference bundle hoisted out of the component.
function l(t, e, s, i, a, n, r) {
  try {
    var o = t[n](r), c = o.value;
  } catch (l) {
    return void s(l);
  }
  o.done ? e(c) : Promise.resolve(c).then(i, a);
}
function _(t, e, s) {
  return ((e in t) ? Object.defineProperty(t, e, {
    value: s,
    enumerable: true,
    configurable: true,
    writable: true
  }) : t[e] = s, t);
}
function d(t, e) {
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
function u(t) {
  return function () {
    var e = this, s = arguments;
    return new Promise(function (i, a) {
      var n = t.apply(e, s);
      function r(t) {
        l(n, i, a, r, o, 'next', t);
      }
      function o(t) {
        l(n, i, a, r, o, 'throw', t);
      }
      r(void 0);
    });
  };
}
function f(t) {
  for (var e = 1; e < arguments.length; e++) {
    var s = null != arguments[e] ? arguments[e] : {};
    e % 2 ? d(Object(s), true).forEach(function (e) {
      _(t, e, s[e]);
    }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(t, Object.getOwnPropertyDescriptors(s)) : d(Object(s)).forEach(function (e) {
      Object.defineProperty(t, e, Object.getOwnPropertyDescriptor(s, e));
    });
  }
  return t;
}

export default {
  onLoad: function (t) {
    this.goodsId = t.id;
    this.buyNum = t.num;
    t.gtype && (this.gtype = t.gtype);
    this.getData();
    t.type && 'new' == t.type && (this.isNew = true);
    this.$store.dispatch('getUserInfo');
  },
  computed: f({}, mapGetters(['userInfo'])),
  watch: {},
  data: function () {
    return {
      goodsId: '',
      buyNum: 0,
      goodsData: {},
      payIndex: 1,
      loading: false,
      isNew: false,
      gtype: 1
    };
  },
  methods: {
    getData: function () {
      var t = this;
      return u(d_a34a.mark(function e() {
        return d_a34a.wrap(function (e) {
          while (1) switch (e.prev = e.next) {
            case 0:
              if ((uni.showLoading(), 2 != t.gtype)) {
                e.next = 6;
                break;
              }
              return (e.next = 4, financeDetail({
                id: t.goodsId
              }).then(function (e) {
                t.goodsData = e;
                uni.hideLoading();
              }));
            case 4:
              e.next = 8;
              break;
            case 6:
              return (e.next = 8, GoodsDetail({
                id: t.goodsId
              }).then(function (e) {
                uni.hideLoading();
                t.goodsData = e;
              }));
            case 8:
            case 'end':
              return e.stop();
          }
        }, e);
      }))();
    },
    paynow: function () {
      var e = this;
      switch ((this.loading = true, console.log(this.payIndex, 'index'), +this.payIndex)) {
        case 1:
          1 == this.gtype ? this.goodsData.unit_price * this.buyNum > this.userInfo.money && !this.isNew ? (uni.showToast({
            icon: 'none',
            title: this.$t('goods.tips'),
            duration: 3e3
          }), setTimeout(function () {
            e.loading = false;
            uni.navigateTo({
              url: '../payment/recharge'
            });
          }, 3e3)) : AddOrder({
            id: this.goodsId,
            number: this.buyNum,
            type: this.payIndex
          }).then(function (t) {
            e.loading = false;
            uni.reLaunch({
              url: ('../success/index?type=1&id=').concat(e.goodsId)
            });
          }).catch(function () {
            e.loading = false;
          }) : financeBuy({
            id: this.goodsId,
            num: this.buyNum
          }).then(function (t) {
            e.loading = false;
            uni.reLaunch({
              url: ('../success/index?type=6&amount=').concat(t.amount, '&income=').concat(t.price, '&ordertime=').concat(t.order_time, '&endtime=').concat(t.end_time)
            });
          }).catch(function () {
            e.loading = false;
          });
          break;
        case 3:
          var s = function (e) {
            console.log('创建');
            var s = document.createElement('form');
            s.id = 'form1';
            s.name = 'form1';
            document.body.appendChild(s);
            var i = document.createElement('input');
            i.type = 'text';
            i.name = 'amount';
            i.value = e.amount;
            s.appendChild(i);
            var a = document.createElement('input');
            a.type = 'text';
            a.name = 'currency';
            a.value = e.currency;
            s.appendChild(a);
            var n = document.createElement('input');
            n.type = 'text';
            n.name = 'failureUrl';
            n.value = e.failureUrl;
            s.appendChild(n);
            var r = document.createElement('input');
            r.type = 'text';
            r.name = 'language';
            r.value = e.language;
            s.appendChild(r);
            var o = document.createElement('input');
            o.type = 'text';
            o.name = 'merchantId';
            o.value = e.merchantId;
            s.appendChild(o);
            var c = document.createElement('input');
            c.type = 'text';
            c.name = 'nonce';
            c.value = e.nonce;
            s.appendChild(c);
            var l = document.createElement('input');
            l.type = 'text';
            l.name = 'orderNum';
            l.value = e.orderNum;
            s.appendChild(l);
            var u = document.createElement('input');
            u.type = 'text';
            u.name = 'sign';
            u.value = e.sign;
            s.appendChild(u);
            var d = document.createElement('input');
            d.type = 'text';
            d.name = 'successUrl';
            d.value = 'http://orich.in/#/pages/success/index?type=1&id=this.goodsId';
            s.appendChild(d);
            var f = document.createElement('input');
            f.type = 'text';
            f.name = 'timestamp';
            f.value = e.timestamp;
            s.appendChild(f);
            var _ = document.createElement('input');
            _.type = 'text';
            _.name = 'userId';
            _.value = e.userId;
            s.appendChild(_);
            s.method = 'POST';
            s.action = 'https://open.qartpayment.com/v2/payment/gateway';
            s.submit();
            document.body.removeChild(s);
          };
          addOrderPay({
            id: this.goodsId,
            number: this.buyNum,
            successUrl: 'http://orich.in/#/pages/success/index?type=1&id=this.goodsId'
          }).then(function (t) {
            s(t.data);
            e.loading = false;
          }).catch(function () {
            e.loading = false;
          });
      }
    },
    beforeBack: function () {
      this.$refs.onepopup.open();
    }
  },
  onBackPress: function () {
    console.log('onBackPress');
  }
};
</script>

<style scoped>
.comfirm { position:relative;background:#fff;min-height:100vh;padding-bottom:100rpx }
.comfirm .comfirm-title { display:flex;align-items:center;justify-content:flex-start;margin:30rpx 0;font-size:32rpx;font-weight:700;color:#17273a }
.comfirm .comfirm-title .comfirm-op { width:10rpx;height:20rpx;margin-right:10rpx;background:#ee5016 }
.comfirm .detail { padding:0 30rpx }
.comfirm .detail .goods { display:flex;align-items:flex-start;justify-content:center }
.comfirm .detail .goods uni-image { width:180rpx;height:180rpx;margin-right:30rpx }
.comfirm .detail .goods .goods-desc { flex:1 }
.comfirm .detail .goods .goods-desc .goods-title { display:flex;align-items:center }
.comfirm .detail .goods .goods-desc .goods-title .goods-title-text { width:400rpx;font-weight:700 }
.comfirm .detail .goods .goods-desc .goods-title .goods-num { margin-left:30rpx;font-size:28rpx;font-family:Roboto,Roboto-Regular;color:#b9b9b9 }
.comfirm .detail .goods .goods-desc .goods-finance { margin-top:20rpx;font-family:Roboto,Roboto-Regular;font-weight:400;font-size:28rpx }
.comfirm .detail .goods .goods-desc .goods-finance .price { color:#17273a }
.comfirm .detail .goods .goods-desc .goods-finance .interest { margin-top:16rpx;color:#ff5c5c }
.comfirm .detail .goods .goods-desc .goods-price { display:flex;align-items:center;justify-content:flex-start;width:100%;margin-top:20rpx }
.comfirm .detail .goods .goods-desc .goods-price .goods-price-old { margin-right:30rpx;font-size:28rpx;font-family:Roboto,Roboto-Regular;color:#b9b9b9;text-decoration:line-through }
.comfirm .detail .goods .goods-desc .goods-price .goods-price-new { font-size:32rpx;font-family:Roboto,Roboto-Bold;font-weight:700;color:#ff5c5c }
.comfirm .c-divider { width:calc(100% - 60rpx);margin:0 30rpx;margin-top:46rpx }
.comfirm .pay { padding:0 30rpx }
.comfirm .pay .comfirm-title { margin:10rpx 0 }
.comfirm .pay .pay-list .pay-item { display:flex;flex-direction:row;align-items:center;justify-content:center;width:100%;margin:20rpx 0;padding:10rpx 0 }
.comfirm .pay .pay-list .pay-item .pay-icon { width:142rpx;height:68rpx;margin-right:20rpx }
.comfirm .pay .pay-list .pay-item .pay-name { flex:1;font-size:28rpx;font-family:Roboto,Roboto-Regular;color:#17273a }
.comfirm .pay .pay-list .pay-item .pay-radio { width:34rpx;height:34rpx;border:2rpx solid #b9b9b9;border-radius:50% }
.comfirm .pay .pay-list .pay-item .pay-op { width:0;height:0 }
.comfirm .pay .pay-list .pay-item .pay-select { display:flex;flex-direction:row;align-items:center;justify-content:center;border:2rpx solid #ee5016;border-radius:50% }
.comfirm .pay .pay-list .pay-item .pay-select .pay-op { width:18rpx;height:18rpx;background:#ee5016;border-radius:50% }
.comfirm .btn { display:flex;flex-direction:row;align-items:center;justify-content:center;position:fixed;left:0;bottom:0;width:100%;height:98rpx;background:#fff;box-shadow:0rpx 4rpx 24rpx 0rpx rgba(0,0,0,.1) }
.comfirm .btn .btn-buy { display:flex;flex-direction:row;align-items:center;justify-content:center;width:100%;height:100%;margin:0 30rpx }
.comfirm .btn .btn-buy .btn-price { flex:1;display:flex;flex-direction:column;align-items:flex-start;justify-content:center;padding-left:30rpx }
.comfirm .btn .btn-buy .btn-price .btn-price-new { font-size:48rpx;font-weight:700;color:#ff5c5c }
.comfirm .btn .btn-buy .btn-price .btn-price-old { text-decoration:line-through;font-size:28rpx;color:#b9b9b9;text-decoration:line-through }
.comfirm .btn .btn-buy .btn-num { margin:0 28rpx }
.comfirm .btn .btn-buy .btn-btn { width:283rpx;height:78rpx }
.comfirm .btn .btn-latest { width:598rpx;height:78rpx }
</style>
