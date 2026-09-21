<template>
  <view class="success">
    <navbar
      :title="navTitle"
      background="#ffffff"
      :isComfirm="true"
      :isBack="4 != successPage && 5 != successPage"
      @beforeBack="handleBack"
    ></navbar>
    <view class="top">
      <image class="top-img" :src="topImg" mode="heightFix" />
      <view class="top-tips">{{ tipsText }}</view>
      <view v-if="6 == successPage" class="finance-tips">
        <view class="finance-tips-dot">
          <view class="icon"></view>
          <view class="line"></view>
          <view class="icon"></view>
        </view>
        <view class="finance-tips-main">
          <view class="start">
            <view>
              {{ $t('finance.starttip') }}
              <view>
                <text>{{ income }}</text>
              </view>
            </view>
            <view class="time">{{ countDown(ordertime) }}</view>
          </view>
          <view class="end">
            <view>
              {{ $t('finance.endtip') }}
              <view>
                <text>₹ {{ amount }}</text>
              </view>
            </view>
            <view class="time">{{ countDown(endtime) }}</view>
          </view>
        </view>
      </view>
      <view v-if="4 != successPage && 5 != successPage" class="top-btn">
        <view class="top-btn-item">
          <overbtn :btnText="$t('success.btnback')" :fontSize="28" btnType="plain" @btnAction="backHome"></overbtn>
        </view>
        <view class="top-btn-item">
          <overbtn :btnText="btnText" :fontSize="28" btnType="submit" @btnAction="confirm"></overbtn>
        </view>
      </view>
      <template v-if="1 == successPage">
        <image class="top-line" :src="'/static/image/goods/img_line.png'" mode="widthFix" />
        <view class="goods">
          <view class="goods-title">{{ goodsData.name }}</view>
          <view class="goods-num">
            {{ $t('success.yournum') }}
						{{ showNumber.join(',') }}
            <text v-if="showViewAll && showNumber.length < goodsData.getnumber.length"></text>
            <text
              v-if="showViewAll && showNumber.length < goodsData.getnumber.length"
              class="goods-view"
              @click="showMore"
            ></text>
          </view>
          <view v-if="0 != goodsData.lottery" class="goods-time">{{ $t('success.draw') }}{{ goodsData.lottery_time }}</view>
        </view>
      </template>
    </view>
    <view v-if="1 == successPage || 2 == successPage || 3 == successPage" class="bottom">
      <view class="gift">
        <image :src="'/static/image/bask/img_Gift.png'" mode="widthFix" />
        <view class="gift-text">{{ $t('success.more') }}</view>
      </view>
      <view class="whatsapp" @click="openWhatsapp">
        <view class="whatsapp_img">
          <image :src="'/static/image/bask/img_whatsapp.png'" />
        </view>
        <view class="whatsapp_text"></view>
      </view>
    </view>
  </view>
</template>

<script>
import { GoodsDetail, systemService } from '@/api/orich';
import { parseTime } from '@/utils/orich';
import { interopDefault as d_a34a } from '@/vendor/a34a';
import { nativePlus } from '@/utils/native';

// Helpers the reference bundle hoisted out of the component.
function c(t, e, s, i, a, n, r) {
  try {
    var o = t[n](r), c = o.value;
  } catch (l) {
    return void s(l);
  }
  o.done ? e(c) : Promise.resolve(c).then(i, a);
}
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

export default {
  data: function () {
    return {
      navTitle: '',
      btnText: '',
      topImg: '',
      tipsText: '',
      successPage: 3,
      goodsId: '',
      goodsData: {
        getnumber: []
      },
      showNumber: [],
      loading: false,
      detailID: '',
      qrcode: '',
      showViewAll: true,
      sendMes: {},
      amount: '',
      income: '',
      ordertime: '',
      endtime: ''
    };
  },
  onLoad: function (t) {
    var e = this;
    switch ((this.successPage = t.type, this.detailID = t.id, +this.successPage)) {
      case 1:
        this.goodsId = t.id;
        this.navTitle = this.$t('success.payment');
        this.btnText = this.$t('success.btnshow');
        this.tipsText = this.$t('success.good');
        this.topImg = './../../static/image/goods/ing_Successfulpurchase.png';
        GoodsDetail({
          id: this.goodsId
        }).then(function (t) {
          e.goodsData = t;
          var s = [];
          s = t.getnumber.slice(0, 9);
          e.showNumber = s;
        });
        break;
      case 2:
        this.navTitle = this.$t('success.confirm');
        this.btnText = this.$t('success.btndetail');
        this.tipsText = this.$t('success.it');
        this.topImg = './../../static/image/goods/img_confirm.png';
        break;
      case 3:
        this.navTitle = this.$t('success.comment');
        this.btnText = this.$t('success.view');
        this.tipsText = this.$t('success.review');
        this.topImg = './../../static/image/bask/img_Successful.png';
        break;
      case 4:
        this.navTitle = this.$t('success.payment');
        this.btnText = this.$t('success.view');
        this.tipsText = this.$t('success.increased');
        this.topImg = './../../static/image/bask/img_Plain.png';
        break;
      case 5:
        this.navTitle = this.$t('success.payfail');
        this.btnText = this.$t('success.view');
        this.tipsText = this.$t('success.failtip');
        this.topImg = './../../static/image/bask/img_Paymentfail.png';
        break;
      case 6:
        this.navTitle = this.$t('success.payment');
        this.btnText = this.$t('finance.view');
        this.tipsText = this.$t('finance.tip');
        this.topImg = './../../static/image/goods/ing_Successfulpurchase.png';
        this.amount = t.amount;
        this.income = t.income;
        this.ordertime = t.ordertime;
        this.endtime = t.endtime;
        break;
      case 7:
        this.navTitle = this.$t('success.comment');
        this.btnText = this.$t('member.view');
        this.tipsText = this.$t('member.review');
        this.topImg = './../../static/image/bask/img_Successful.png';
        break;
    }
  },
  methods: {
    countDown: function (t) {
      return parseTime(t);
    },
    handleBack: function () {
      var t = uni.getStorageSync('page');
      2 == t || 3 == this.successPage || 2 == this.successPage ? uni.reLaunch({
        url: ('../order/detail?id=').concat(this.detailID, '&page=2')
      }) : this.backHome();
      uni.setStorageSync('page', '');
    },
    backHome: function () {
      uni.navigateTo({
        url: '../home/home'
      });
    },
    confirm: function () {
      var t = '';
      switch (+this.successPage) {
        case 1:
          t = ('../order/detail?id=').concat(this.goodsId, '&page=2');
          break;
        case 2:
          t = ('../order/detail?id=').concat(this.detailID);
          break;
        case 3:
          t = '../winner/myShare?type=1';
          break;
        case 4:
          break;
        case 6:
          t = '../invitation/invitation';
          break;
        case 7:
          t = '/pages/task/member';
          break;
      }
      uni.reLaunch({
        url: t
      });
    },
    openWhatsapp: function () {
      this.getData().then(nativePlus.runtime.openURL(('whatsapp://send?phone=+').concat(this.sendMes.phone, '&text=').concat(this.sendMes.content)));
    },
    getData: function () {
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
    showMore: function () {
      this.showNumber = this.goodsData.getnumber;
      this.showViewAll = false;
    }
  }
};
</script>

<style scoped>
.success { min-height:100vh;width:100%;background-color:#f9f9f9 }
.top { display:flex;flex-direction:column;align-items:center;justify-content:flex-start;padding:0 10rpx;background-color:#fff;margin-bottom:24rpx }
.top .top-img { height:380rpx }
.top .top-tips { width:530rpx;margin-top:0rpx;text-align:center;font-size:28rpx;font-family:Roboto,Roboto-Regular;color:#ee5016 }
.top .finance-tips { margin-top:30rpx;display:flex;align-items:center;justify-content:center;flex-direction:column;width:664rpx;height:226rpx;background:#fff;border-radius:16rpx;box-shadow:0rpx 0rpx 22rpx 0rpx rgba(0,0,0,.05) }
.top .finance-tips .finance-tips-dot { display:flex;align-items:center;justify-content:center }
.top .finance-tips .finance-tips-dot .icon { width:24rpx;height:24rpx;background:#ee5016;border-radius:50% }
.top .finance-tips .finance-tips-dot .line { width:300rpx;border:2rpx dashed #ee5016;opacity:.3 }
.top .finance-tips .finance-tips-main { margin-top:20rpx;display:flex;align-items:flex-start;justify-content:space-between;font-size:26rpx;font-weight:500;text-align:CENTER;color:#b9b9b9;letter-spacing:0rpx }
.top .finance-tips .finance-tips-main uni-text { color:#ee5016 }
.top .finance-tips .finance-tips-main .time { margin-top:10rpx }
.top .finance-tips .finance-tips-main .start { margin-right:30rpx }
.top .top-btn { display:flex;flex-direction:row;align-items:center;justify-content:space-around;width:100%;padding:0 10rpx;margin-top:42rpx;margin-bottom:36rpx }
.top .top-btn .top-btn-item { width:286rpx;height:78rpx }
.top .top-line { margin-top:10rpx;width:100% }
.goods { width:100%;padding:36rpx 32rpx }
.goods .goods-title { font-size:32rpx;font-family:PingFang SC,PingFang SC-Bold;font-weight:700;color:#17273a;overflow:hidden;text-overflow:ellipsis;display:-webkit-box;-webkit-line-clamp:2;-webkit-box-orient:vertical }
.goods .goods-num { margin-top:20rpx;word-break:break-all;font-size:26rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#b9b9b9;line-height:36rpx;position:relative }
.goods .goods-view { font-size:26rpx;font-weight:400;color:#58a5ff;position:absolute;right:0 }
.goods .goods-time { margin-top:10rpx;font-size:26rpx;font-family:Roboto,Roboto-Regular;font-weight:400;text-align:LEFT;color:#b9b9b9 }
.bottom { position:relative;width:100%;padding:42rpx 32rpx;background-color:#fff }
.bottom .gift { display:flex;flex-direction:row;align-items:flex-start;justify-content:center;padding:0 26rpx }
.bottom .gift uni-image { width:80rpx;margin-right:44rpx }
.bottom .gift .gift-text { flex:1;margin:0 10rpx;text-align:center;font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:700;line-height:36rpx;color:#ee5016 }
.bottom .step-op { position:absolute;width:2rpx;height:62rpx;opacity:1;border:2rpx dashed #ee5016 }
.bottom .op1 { top:276rpx;left:62rpx }
.bottom .op2 { top:460rpx;left:62rpx }
.bottom .step-qr { position:absolute;top:264rpx;left:120rpx;width:90rpx;height:90rpx;background:#c4c4c4;border-radius:4rpx }
.bottom .step-qr uni-image { width:100%;height:100%;border-radius:4rpx }
.bottom .step-whats { position:absolute;top:422rpx;left:120rpx;width:90rpx;height:90rpx;border-radius:4rpx }
.bottom .step-whats uni-image { width:100%;height:100%;border-radius:4rpx }
.bottom .step { position:relative;width:100%;margin-top:60rpx }
.bottom .step .step-item { display:flex;flex-direction:row;align-items:center;justify-content:center;width:100%;padding-right:104rpx }
.bottom .step .step-num { display:flex;flex-direction:row;align-items:center;justify-content:center;width:64rpx;height:64rpx;margin-right:24rpx;opacity:1;background:#fff2e2;border-radius:50%;font-size:36rpx;font-family:Roboto,Roboto-Medium;font-weight:700;text-align:CENTER;color:#ff881a }
.bottom .step .step-text { flex:1;font-size:28rpx;line-height:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;text-align:LEFT;color:#b9b9b9 }
.wechat_img { position:absolute;top:364rpx;right:280rpx;width:66rpx;height:66rpx }
.wechat_img uni-image { width:100% }
.dotted_line, .dotted_lines { position:absolute;top:280rpx;left:64rpx;width:2rpx;height:62rpx;opacity:.5;border:2rpx dashed #ee5016 }
.dotted_lines { top:468rpx }
.top .toppay { padding-top:112rpx;background-color:#fff }
.top .toppay .icons { margin-left:38rpx }
.top .img_toppay uni-image { width:390rpx;height:390rpx }
.top .img_toppay .img_title { width:650rpx;height:64rpx;text-align:center }
.bottom .paytitle { left:130rpx }
.top_img .title_centent { padding-left:212rpx }
.whatsapp { margin-top:86rpx;display:flex;align-items:center;justify-content:center;width:402rpx;height:116rpx;background:#f0fff2;border-radius:20rpx;box-shadow:0rpx -6rpx 8rpx 0rpx rgba(48,171,65,.2) inset;margin-left:50%;-webkit-transform:translateX(-50%);transform:translateX(-50%) }
.whatsapp .whatsapp_img { width:66rpx;height:66rpx }
.whatsapp .whatsapp_img uni-image { width:100%;height:100% }
.whatsapp .whatsapp_text { margin-left:14rpx;font-size:36rpx;font-family:PingFang SC,PingFang SC-Bold;font-weight:700;color:#55cd63;line-height:200rpx;letter-spacing:0rpx }
</style>
