<template>
  <view class="cashout">
    <navbar :title="$t('payment.wtitle')" background="#ffffff">
      <template #right>
        <view class="cashout_record" @click="toRecord" slot="right">{{ $t('payment.navrecord') }}</view>
      </template>
    </navbar>
    <view class="cashout_main">
      <view v-if="1 == showUPI" class="cashout_main_tab">
        <view
          v-for="(item, index) in tabList"
          :key="index"
          class="cashout_main_tab_item"
          @click="changeTab(item.type)"
        >
          <view class="title" :class="{ tabactive: tabIndex == item.type }">{{ item.name }}</view>
          <view v-if="tabIndex == item.type" class="icon">
            <image src="/static/image/icon_Select.png" />
          </view>
        </view>
      </view>
      <template v-if="1 == tabIndex">
        <view v-if="showTips" class="cashout_main_tips" @click="chooseCard">
          {{ $t('payment.noCardTips') }}
          <view class="cashout_main_tips_icon">
            <image :src="'/static/image/icon_CaretRight.png'" />
          </view>
        </view>
        <view v-else class="cashout_main_title" @click="chooseCard">
          {{ $t('payment.receiving') }}
          <view class="cashout_main_title_right">
            <view class="cashout_main_title_right_item">
              <view class="cashout_main_title_img">
                <image :src="cardData.imageurl" />
              </view>
              <view class="cashout_main_title_name">{{ cardData.name }}</view>
              <view class="cashout_main_title_icon">
                <image :src="'/static/image/icon_CaretRight.png'" />
              </view>
            </view>
          </view>
        </view>
      </template>
      <view v-else class="cashout_main_upi">
        <u-input :placeholder="$t('payment.upitip')" v-model="upi"></u-input>
      </view>
      <view class="cashout_main_title_right_tips">{{ $t('payment.waitTips') }}</view>
      <view class="cashout_main_amount">
        {{ $t('payment.amount') }}
        <text>（{{ $t('member.freetip') }}: {{ withdrawfee }}%）</text>
      </view>
      <view class="cashout_main_money">
        <view class="cashout_main_money_input">
          <input v-model="money" />
          <view class="viptip" @click="toVIP">
            <image src="/static/image/finance/icon_Arrow.png" />
            {{ $t('member.cashtip') }}
          </view>
        </view>
      </view>
      <view class="cashout_main_balance">
        <view class="cashout_main_balance_left">₹ {{ balance }} {{ $t('payment.balancetip') }}</view>
        <view class="cashout_main_balance_right" @click="handleAll">{{ $t('payment.withdrawall') }}</view>
      </view>
    </view>
    <view class="cashout_btn">
      <overbtn
        btnText="WITHDRAW"
        :canSubmit="showNext"
        :btnType="showNext ? 'disabled' : 'submit'"
        @btnAction="handleWithdraw"
      ></overbtn>
    </view>
    <view class="cashout_whatsapp" @click="openWhatsapp">{{ $t('payment.contact') }}</view>
    <view class="cashout_tip">
      <view class="cashout_tip_title">{{ $t('payment.noticetitle') }}</view>
      <view class="cashout_tip_item">{{ $t('payment.notice1') }}</view>
      <view class="cashout_tip_item">{{ $t('payment.notice2') }}
			{{ withdrawlimit }}</view>
      <view class="cashout_tip_item">{{ $t('payment.notice3') }}</view>
      <view class="cashout_tip_item">{{ $t('payment.notice4', { free: withdrawfee }) }}</view>
      <view class="cashout_tip_item">{{ $t('payment.notice5') }}</view>
    </view>
    <onepopup
      ref="popup"
      popType="1"
      :conetnt="$t('payment.popupTips')"
      @cancel="btnCancel"
      @confirm="btnConfirm"
    ></onepopup>
  </view>
</template>

<script>
import { interopDefault as d_a34a } from '@/vendor/a34a';
import { bankList, systemService, userWithdraw } from '@/api/orich';
import { nativePlus } from '@/utils/native';

// Helpers the reference bundle hoisted out of the component.
function o(t, e, s, i, a, n, r) {
  try {
    var o = t[n](r), c = o.value;
  } catch (l) {
    return void s(l);
  }
  o.done ? e(c) : Promise.resolve(c).then(i, a);
}
function c(t) {
  return function () {
    var e = this, s = arguments;
    return new Promise(function (i, a) {
      var n = t.apply(e, s);
      function r(t) {
        o(n, i, a, r, c, 'next', t);
      }
      function c(t) {
        o(n, i, a, r, c, 'throw', t);
      }
      r(void 0);
    });
  };
}

export default {
  data: function () {
    return {
      cardData: {},
      money: '',
      balance: '',
      cardID: '',
      showTips: true,
      showNext: true,
      withdrawlimit: '',
      sendMes: {},
      withdrawfee: '',
      upi: '',
      showUPI: '',
      tabList: [{
        name: this.$t('payment.cashtab1'),
        type: 1
      }, {
        name: this.$t('payment.cashtab2'),
        type: 2
      }],
      tabIndex: 1
    };
  },
  onLoad: function (t) {
    this.balance = t.money;
    this.cardID = t.id;
    this.getCustomer();
    this.getData();
  },
  onShow: function () {},
  watch: {
    money: function () {
      this.money && +this.money > 0 ? this.showNext = false : this.showNext = true;
    }
  },
  methods: {
    changeTab: function (t) {
      this.tabIndex = t;
    },
    toVIP: function () {
      uni.navigateTo({
        url: '../task/member'
      });
    },
    toRecord: function () {
      uni.navigateTo({
        url: './cashrecord'
      });
    },
    openWhatsapp: function () {
      nativePlus.runtime.openURL(('whatsapp://send?phone=+').concat(this.sendMes.phone, '&text=').concat(this.sendMes.content));
    },
    getCustomer: function () {
      var t = this;
      return c(d_a34a.mark(function e() {
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
    handleWithdraw: function () {
      this.showTips && 1 == this.tabIndex ? uni.showToast({
        icon: 'none',
        mask: true,
        title: this.$t('payment.noCardTips')
      }) : this.withdrawlimit && +this.money >= this.withdrawlimit ? this.$refs.popup.open() : uni.showToast({
        icon: 'none',
        mask: true,
        title: this.$t('payment.enoughtTipL') + this.withdrawlimit
      });
    },
    btnCancel: function () {
      this.$refs.popup.close();
    },
    btnConfirm: function () {
      var t = this, e = Object.assign({}, this.cardData, {
        price: this.money,
        type: this.tabIndex,
        upi: this.upi
      });
      userWithdraw(e).then(function () {
        t.btnCancel();
        uni.showToast({
          icon: 'none',
          mask: true,
          title: t.$t('payment.successW')
        });
        setTimeout(function () {
          uni.navigateTo({
            url: '../account/account'
          });
        }, 500);
      });
    },
    handleAll: function () {
      this.money = this.balance;
    },
    chooseCard: function () {
      uni.navigateTo({
        url: ('./payment?type=2&money=').concat(this.balance)
      });
    },
    getData: function () {
      var t = this;
      bankList({
        id: this.cardID
      }).then(function (e) {
        t.withdrawlimit = e.withdrawlimit;
        t.withdrawfee = e.withdrawfee;
        t.showUPI = e.upi_show;
        t.upi = e.upi;
        +e.count ? (t.showTips = false, t.cardData = e.list[0]) : t.showTips = true;
      });
    }
  }
};
</script>

<style scoped>
.cashout { min-height:100vh;background:#f8f8f8;padding-bottom:30rpx }
.cashout .cashout_main { margin:24rpx 30rpx 0 30rpx;padding:38rpx 18rpx 38rpx 26rpx;background:#fff;border-radius:16rpx }
.cashout .cashout_main .cashout_main_tab { display:flex;align-items:center;justify-content:space-around;padding-bottom:40rpx }
.cashout .cashout_main .cashout_main_tab .cashout_main_tab_item { display:flex;align-items:center;justify-content:center;flex-direction:column }
.cashout .cashout_main .cashout_main_tab .cashout_main_tab_item .title { font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#b9b9b9 }
.cashout .cashout_main .cashout_main_tab .cashout_main_tab_item .tabactive { font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#17273a }
.cashout .cashout_main .cashout_main_tab .cashout_main_tab_item .icon { margin-top:-10rpx;width:28rpx;height:12rpx }
.cashout .cashout_main .cashout_main_tab .cashout_main_tab_item .icon uni-image { width:100%;height:100% }
.cashout .cashout_main .cashout_main_tips { font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#17273a;letter-spacing:0rpx;display:flex;position:relative;height:70rpx;line-height:70rpx }
.cashout .cashout_main .cashout_main_tips .cashout_main_tips_icon { width:36rpx;height:36rpx;position:absolute;right:18rpx }
.cashout .cashout_main .cashout_main_tips .cashout_main_tips_icon uni-image { width:100%;height:100% }
.cashout .cashout_main .cashout_main_title { font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#17273a;letter-spacing:0rpx;display:flex;align-items:center;position:relative;white-space:nowrap }
.cashout .cashout_main .cashout_main_title .cashout_main_title_right { margin-left:40rpx;width:320rpx;text-align:left }
.cashout .cashout_main .cashout_main_title .cashout_main_title_right .cashout_main_title_right_item { display:flex;align-items:center;justify-content:flex-end;overflow:hidden }
.cashout .cashout_main .cashout_main_title .cashout_main_title_right .cashout_main_title_right_item .cashout_main_title_img { height:30rpx;width:96rpx }
.cashout .cashout_main .cashout_main_title .cashout_main_title_right .cashout_main_title_right_item .cashout_main_title_img uni-image { width:100%;height:100% }
.cashout .cashout_main .cashout_main_title .cashout_main_title_right .cashout_main_title_right_item .cashout_main_title_name { margin-left:16rpx;overflow:hidden;text-overflow:ellipsis;white-space:nowrap }
.cashout .cashout_main .cashout_main_title .cashout_main_title_right .cashout_main_title_right_item .cashout_main_title_icon { width:36rpx;height:36rpx;position:absolute;right:18rpx }
.cashout .cashout_main .cashout_main_title .cashout_main_title_right .cashout_main_title_right_item .cashout_main_title_icon uni-image { width:100%;height:100% }
.cashout .cashout_main .cashout_main_title_right_tips { margin-top:34rpx;font-size:28rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#b9b9b9;text-align:right;padding-right:18rpx;padding-bottom:28rpx;border-bottom:1rpx solid #ececec }
.cashout .cashout_main .cashout_main_amount { font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#17273a;letter-spacing:0rpx;margin-top:28rpx;margin-bottom:20rpx }
.cashout .cashout_main .cashout_main_amount uni-text { font-size:24rpx;color:#b9b9b9 }
.cashout .cashout_main .cashout_main_money { font-size:64rpx;font-family:Roboto,Roboto-Bold;font-weight:700;color:#ee5016;padding-bottom:28rpx;border-bottom:1rpx solid #ececec;display:flex;align-items:flex-start }
.cashout .cashout_main .cashout_main_money uni-input { font-size:64rpx;margin-left:10rpx }
.cashout .cashout_main .cashout_main_money .viptip { font-size:24rpx;display:flex;align-items:center;flex-direction:row-reverse }
.cashout .cashout_main .cashout_main_money .viptip uni-image { width:30rpx;height:30rpx }
.cashout .cashout_main .cashout_main_balance { margin-top:34rpx;display:flex;align-items:center;justify-content:space-between }
.cashout .cashout_main .cashout_main_balance .cashout_main_balance_left { font-family:Roboto,Roboto-Regular;font-weight:400;color:#b9b9b9;font-size:28rpx }
.cashout .cashout_main .cashout_main_balance .cashout_main_balance_right { margin-right:4rpx;font-size:28rpx;font-family:Roboto,Roboto-Regular;font-weight:400;text-align:LEFT;color:#ee5016 }
.cashout .cashout_btn { width:600rpx;height:90rpx;margin-top:100rpx;margin-left:74rpx }
.cashout .cashout_whatsapp { margin-top:50rpx;text-align:center;font-weight:700;text-decoration:underline }
.cashout .cashout_tip { margin-top:100rpx;padding:0 20rpx;margin:50rpx 30rpx 0 30rpx }
.cashout .cashout_tip .cashout_tip_title { font-size:32rpx;margin-bottom:20rpx }
.cashout .cashout_tip .cashout_tip_item { margin:10rpx 0 }
.cashout_record { position:absolute;right:50rpx }
</style>
