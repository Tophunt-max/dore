<template>
  <view class="mine">
    <view class="mine_user" @click="checkLogin">
      <view class="mine_user_main">
        <view class="mine_user_img" :class="isLogin ? 'login' : 'nologin'">
          <image class="img" :src="userInfo.imgUrl" />
        </view>
        <view class="mine_user_info">
          <view class="mine_user_info_name">
            <view class="u-m-r-20">{{ 1 == userInfo.status ? userInfo.name : 'Log in' }}</view>
            <image v-if="1 == userInfo.status" :src="userInfo.vip_img" />
          </view>
          <view class="mine_user_info_number">{{ userInfo.mobile }}</view>
        </view>
      </view>
      <view class="mine_user_member">
        <view class="mine_user_member_title">
          <view class="icon">
            <image src="/static/image/member/icon_vip.png" />
          </view>
          <view class="name">{{ $t('member.openvip') }}</view>
        </view>
        <view class="mine_user_member_item">
          <view class="benefits">{{ $t('member.benefits') }}</view>
          <view class="coin">
            <image src="/static/image/member/icon_goldcoins.png" />
          </view>
          <view class="enjoy1">{{ $t('member.eorder') }}</view>
          <view class="redpacket">
            <image src="/static/image/member/icon_redenvelope.png" />
          </view>
          <view class="enjoy2">{{ $t('member.ivip') }}</view>
          <view class="tovip" @click="toMember">
            <image src="/static/image/member/icon_vector.png" />
          </view>
        </view>
      </view>
    </view>
    <view class="mine_setting" @click="toSetting">
      <image class="img" src="/static/image/account/icon_setup.png" mode="widthFix" />
    </view>
    <view class="mine_main">
      <view class="mine_main_menu">
        <view class="mine_main_menu_left">{{ $t('account.orders') }}</view>
        <view class="mine_main_menu_right" @click="toRecords(0)">
          <text>{{ $t('account.all') }}</text>
          <view class="mine_main_menu_right_icon">
            <image class="img" :src="'/static/image/icon_CaretRight.png'" mode="widthFix" />
          </view>
        </view>
      </view>
      <view class="mine_main_nav">
        <view
          v-for="(item, index) in navList"
          :key="index"
          class="mine_main_nav_item"
          @click="toRecords(index + 1)"
        >
          <view class="mine_main_nav_item_icon">
            <image class="img" :src="item.img" mode="widthFix" />
            <u-badge class="badge" type="error" :count="badge[index]" :is-center="true"></u-badge>
          </view>
          <view class="mine_main_nav_item_title">{{ item.title }}</view>
        </view>
      </view>
    </view>
    <view class="mine_wallet">
      <view class="mine_wallet_title">{{ $t('account.wallet') }}</view>
      <view class="mine_wallet_main">
        <view class="mine_wallet_main_count">₹{{ userInfo.money }}</view>
        <view class="mine_wallet_main_btndraw">
          <overbtn
            :btnText="$t('account.btnwith')"
            :fontSize="28"
            fontWeight="bold"
            btnType="plain"
            @btnAction="toWithdraw"
          ></overbtn>
        </view>
        <view class="mine_wallet_main_btnrecharge" @click="btnRecharge">
          <view>{{ $t('account.btnrech') }}</view>
          <image class="img" src="/static/image/icon_RightArrow.png" mode="widthFix" />
        </view>
      </view>
      <view class="mine_wallet_tip">{{ $t('account.balances') }}</view>
    </view>
    <view v-if="showFin" class="mine_finance">
      <view class="mine_finance_bar">
        <view class="mine_finance_bar_title">{{ $t('finance.htitle') }}</view>
        <view class="mine_finance_bar_icon" @click="toFinance">
          <image src="/static/image/icon_CaretRight.png" />
        </view>
      </view>
      <view class="mine_finance_total">
        <view class="mine_finance_total_item">
          <view class="number">₹{{ userInfo.finance_all_price }}</view>
          <view class="tip">{{ $t('finance.iTitle') }}</view>
        </view>
        <view class="mine_finance_total_item">
          <view class="number">₹{{ userInfo.finance_all_income }}</view>
          <view class="tip">{{ $t('finance.eTitle') }}</view>
        </view>
        <view class="mine_finance_total_item">
          <view class="number">₹{{ userInfo.finance_day_income }}</view>
          <view class="tip">{{ $t('finance.dTitle') }}</view>
        </view>
      </view>
    </view>
    <view class="mine_menulist">
      <view
        v-for="(item, index) in munuList"
        :key="index"
        class="mine_menulist_item"
        :class="{ mar_top: index > 0 }"
        @click="menuGo(index)"
      >
        <view class="mine_menulist_item_left">
          <view class="mine_menulist_item_icon" :class="0 == index ? 'iconsize2' : 'iconsize'">
            <image class="img" :src="item.icon" mode="widthFix" />
          </view>
          <view class="mine_menulist_item_title">{{ item.title }}</view>
        </view>
        <view class="mine_menulist_item_right">
          <image class="img" :src="'/static/image/icon_CaretRight.png'" mode="widthFix" />
        </view>
      </view>
    </view>
    <view class="mine_menulist">
      <view
        v-for="(item, index) in setList"
        :key="index"
        class="mine_menulist_item"
        :class="{ mar_top: index > 0 }"
        @click="navGo(index)"
      >
        <view class="mine_menulist_item_left">
          <view class="mine_menulist_item_icon iconsize">
            <image class="img" :src="item.icon" mode="widthFix" />
          </view>
          <view class="mine_menulist_item_title">{{ item.title }}</view>
        </view>
        <view class="mine_menulist_item_right">
          <image class="img" :src="'/static/image/icon_CaretRight.png'" mode="widthFix" />
        </view>
      </view>
    </view>
    <tabbar page="/pages/account/account"></tabbar>
  </view>
</template>

<script>
import m_0765 from '@/vendor/0765';
import { userAccount } from '@/api/orich';
import { nativePlus } from '@/utils/native';

export default {
  onLoad: function () {
    var t = uni.getStorageSync('serviceVer').replace(/[^0-9]/gi, '') || 0, e = nativePlus.runtime.version.replace(/[^0-9]/gi, '');
    e > t && (this.showFin = false);
  },
  data: function () {
    return {
      userInfo: {
        name: '-',
        mobile: '-',
        imgUrl: '../../static/image/account/login3.png',
        money: '-',
        status: null,
        cashOut: '',
        finance_day_income: 0,
        finance_all_income: 0,
        finance_all_price: 0,
        today_cost: 0,
        return_rate: 0,
        return_amount: 0,
        return_cap: 0,
        return_income: 0,
        vip_img: ''
      },
      badge: [0, 0, 0, 0],
      navList: [{
        img: '../../static/image/account/icon_Waiting.png',
        title: this.$t('account.waiting')
      }, {
        img: '../../static/image/account/icon_ToConfirm.png',
        title: this.$t('account.todelivery')
      }, {
        img: '../../static/image/account/icon_InDelivery.png',
        title: this.$t('account.indelivery')
      }, {
        img: '../../static/image/account/icon_Received.png',
        title: this.$t('account.received')
      }],
      customStyle: {},
      btnPlain: {},
      munuList: [{
        icon: '../../static/image/account/icon_Myshare.png',
        title: this.$t('account.myshare'),
        navTo: '../winner/myShare?type=1'
      }, {
        icon: '../../static/image/account/icon_Fundingrecords.png',
        title: this.$t('account.fundingrecords'),
        navTo: './funding'
      }, {
        icon: '../../static/image/account/icon_Invitationrecords.png',
        title: this.$t('account.invitationrecords'),
        navTo: '../invitation/invitation'
      }, {
        icon: '../../static/image/account/icon_myteam.png',
        title: this.$t('account.myteam'),
        navTo: './teamDetail'
      }],
      setList: [{
        icon: '../../static/image/account/icon_Customerservice.png',
        title: this.$t('account.service'),
        navTo: './service'
      }, {
        icon: '../../static/image/account/icon_AboutUs.png',
        title: this.$t('account.about'),
        navTo: './aboutus'
      }],
      isLogin: false,
      showFin: true
    };
  },
  onShow: function () {
    uni.getStorageSync('oned_token') && this.userData();
  },
  mounted: function () {
    this.customStyle = m_0765.submitStyle;
    this.btnPlain = m_0765.plainStyle;
  },
  methods: {
    toMember: function () {
      uni.navigateTo({
        url: '../task/member'
      });
    },
    toFinance: function () {
      uni.navigateTo({
        url: '../finance/order'
      });
    },
    userData: function () {
      var t = this;
      userAccount().then(function (e) {
        t.userInfo.status = 1;
        t.userInfo.name = e.nickname;
        t.userInfo.mobile = e.mobile;
        e.headimgurl && (t.userInfo.imgUrl = e.headimgurl, t.isLogin = true);
        t.userInfo.money = e.money;
        t.userInfo.finance_day_income = e.finance_day_income;
        t.userInfo.finance_all_income = e.finance_all_income;
        t.userInfo.finance_all_price = e.finance_all_price;
        t.userInfo.today_cost = e.today_cost;
        t.userInfo.return_rate = e.return_rate;
        t.userInfo.return_amount = e.return_amount;
        t.userInfo.cashOut = +e.money - +e.money_bad;
        t.userInfo.return_income = e.return_income;
        t.userInfo.return_cap = e.return_cap;
        t.userInfo.vip_img = e.vip_img;
        t.badge[0] = e.wait;
        t.badge[1] = e.confirm;
        t.badge[2] = e.delivery;
        t.badge[3] = e.receive;
      });
    },
    checkLogin: function () {
      this.$store.dispatch('checkLogin').then(function () {}).catch(function () {});
    },
    toSetting: function () {
      this.$store.dispatch('checkLogin').then(function () {
        uni.navigateTo({
          url: '../account/setting'
        });
      }).catch(function () {});
    },
    toRecords: function (t) {
      this.$store.dispatch('checkLogin').then(function () {
        uni.navigateTo({
          url: ('../order/record?type=').concat(t)
        });
      }).catch(function () {});
    },
    navGo: function (t) {
      var e = this;
      './service' == this.setList[t].navTo ? uni.navigateTo({
        url: this.setList[t].navTo
      }) : this.$store.dispatch('checkLogin').then(function () {
        uni.navigateTo({
          url: e.setList[t].navTo
        });
      }).catch(function () {});
    },
    menuGo: function (t) {
      var e = this;
      this.$store.dispatch('checkLogin').then(function () {
        uni.navigateTo({
          url: e.munuList[t].navTo
        });
      }).catch(function () {});
    },
    toWithdraw: function () {
      var t = this;
      this.$store.dispatch('checkLogin').then(function () {
        uni.navigateTo({
          url: ('../payment/cashOut?money=').concat(t.userInfo.cashOut)
        });
      }).catch(function () {});
    },
    btnRecharge: function () {
      this.$store.dispatch('checkLogin').then(function () {
        uni.navigateTo({
          url: '../payment/recharge'
        });
      }).catch(function () {});
    }
  }
};
</script>

<style scoped>
.mine { width:100%;min-height:100vh;background:#f9f9f9;padding-bottom:118rpx }
.mine .img { width:100%;height:100% }
.mine .mine_user { height:568rpx;background-image:url('/static/image/finance/bg_list.png');background-size:100% 100%;padding-top:158rpx }
.mine .mine_user .mine_user_main { display:flex }
.mine .mine_user .login { border:4rpx solid #fff }
.mine .mine_user .nologin { padding:16rpx }
.mine .mine_user .mine_user_img { width:120rpx;height:120rpx;border-radius:50%;overflow:hidden;margin-left:32rpx }
.mine .mine_user .mine_user_info { margin-top:14rpx;margin-left:34rpx }
.mine .mine_user .mine_user_info .mine_user_info_name { font-size:32rpx;font-weight:700;height:36rpx;line-height:36rpx;letter-spacing:0rpx;color:#fff;display:flex;align-items:center;justify-content:flex-start }
.mine .mine_user .mine_user_info .mine_user_info_name uni-image { width:100rpx;height:46rpx }
.mine .mine_user .mine_user_info .mine_user_info_number { margin-top:12rpx;font-size:26rpx;font-weight:400;height:36rpx;line-height:36rpx;color:#fff }
.mine .mine_user .mine_user_member { margin:28rpx 16rpx 0 16rpx;background:url('/static/image/game/bg_rules.png') no-repeat;background-size:100% 100%;min-height:160rpx }
.mine .mine_user .mine_user_member .mine_user_member_title { display:flex;align-items:center;justify-content:flex-start;height:52rpx;padding-left:78rpx }
.mine .mine_user .mine_user_member .mine_user_member_title .icon { width:44rpx;height:38rpx }
.mine .mine_user .mine_user_member .mine_user_member_title .icon uni-image { width:100%;height:100% }
.mine .mine_user .mine_user_member .mine_user_member_title .name { font-size:32rpx;font-family:Roboto,Roboto-Bold;font-weight:700;color:#fff;margin-left:20rpx }
.mine .mine_user .mine_user_member .mine_user_member_item { display:flex;align-items:center;justify-content:flex-start;padding-left:24rpx;padding-right:18rpx }
.mine .mine_user .mine_user_member .mine_user_member_item .benefits { font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#ee5016;flex-shrink:0 }
.mine .mine_user .mine_user_member .mine_user_member_item .coin { width:48rpx;height:48rpx;margin-left:30rpx;flex-shrink:0 }
.mine .mine_user .mine_user_member .mine_user_member_item .enjoy1 { width:138rpx;font-size:26rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#ee5016;margin-left:14rpx;flex-shrink:0 }
.mine .mine_user .mine_user_member .mine_user_member_item .redpacket { width:82rpx;height:82rpx;flex-shrink:0;margin-left:4rpx }
.mine .mine_user .mine_user_member .mine_user_member_item .enjoy2 { width:124rpx;font-size:26rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#ee5016;flex-shrink:0 }
.mine .mine_user .mine_user_member .mine_user_member_item .tovip { width:16rpx;height:28rpx;flex-shrink:0;margin-left:16rpx }
.mine .mine_user .mine_user_member .mine_user_member_item uni-image { width:100%;height:100% }
.mine .mine_setting { width:40rpx;height:40rpx;position:absolute;top:128rpx;right:24rpx }
.mine .mine_main { margin:-86rpx 12rpx 0 16rpx;background:#fff;height:226rpx;border-radius:16rpx }
.mine .mine_main .mine_main_menu { padding:50rpx 24rpx 0 32rpx;height:36rpx;line-height:36rpx;display:flex;align-items:center;justify-content:space-between;font-family:Roboto }
.mine .mine_main .mine_main_menu .mine_main_menu_left { font-size:32rpx;font-weight:700 }
.mine .mine_main .mine_main_menu .mine_main_menu_right { font-size:26rpx;font-weight:400;color:#b9b9b9 }
.mine .mine_main .mine_main_menu .mine_main_menu_right uni-text { margin-right:8rpx }
.mine .mine_main .mine_main_menu .mine_main_menu_right .mine_main_menu_right_icon { display:inline-block;width:24rpx;height:24rpx }
.mine .mine_main .mine_main_nav { display:flex;align-items:center;justify-content:space-between;padding:46rpx 48rpx 26rpx 44rpx }
.mine .mine_main .mine_main_nav .mine_main_nav_item .mine_main_nav_item_icon { width:64rpx;height:64rpx;margin:0 auto;position:relative }
.mine .mine_main .mine_main_nav .mine_main_nav_item .mine_main_nav_item_title { font-family:Roboto,Roboto-Regular;font-size:26rpx;font-weight:400;color:#17273a;height:36rpx;line-height:36rpx }
.mine .mine_wallet { margin:24rpx 12rpx 24rpx 16rpx;height:226rpx;background-image:url();background-size:100% 100%;border-radius:16rpx }
.mine .mine_wallet .mine_wallet_title { font-family:Roboto,Roboto-Bold;font-weight:600;padding:32rpx 0 0 46rpx }
.mine .mine_wallet .mine_wallet_main { height:36rpx;line-height:36rpx;margin-top:34rpx;margin-left:48rpx;display:flex }
.mine .mine_wallet .mine_wallet_main .mine_wallet_main_count { font-family:Roboto,Roboto-Bold;width:274rpx;height:36rpx;line-height:36rpx;font-size:52rpx;font-weight:700;color:#ee5016 }
.mine .mine_wallet .mine_wallet_main .mine_wallet_main_btndraw { width:164rpx;height:70rpx;margin-left:38rpx }
.mine .mine_wallet .mine_wallet_main .mine_wallet_main_btnrecharge { width:172rpx;height:70rpx;margin-left:10rpx;display:flex;flex-direction:row;align-items:center;justify-content:center;opacity:1;background:linear-gradient(115deg,#ffe44b,#fea326);border-radius:8rpx;box-shadow:0rpx -4rpx 8rpx 0rpx rgba(255,125,0,.5) inset;font-size:26rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#ad6701 }
.mine .mine_wallet .mine_wallet_main .mine_wallet_main_btnrecharge uni-image { width:28rpx;height:28rpx;margin-left:2rpx }
.mine .mine_wallet .mine_wallet_tip { font-family:Roboto,Roboto-Regular;margin-top:12rpx;margin-left:48rpx;font-weight:400;color:#a6a5a5;height:36rpx;line-height:36rpx }
.mine .mine_finance { margin:24rpx 12rpx 24rpx 16rpx;height:226rpx;background-image:url('/static/image/account/bg_finance.png');background-size:100% 100%;border-radius:16rpx }
.mine .mine_finance .mine_finance_bar { display:flex;justify-content:space-between;padding:30rpx 24rpx 0 28rpx }
.mine .mine_finance .mine_finance_bar .mine_finance_bar_title { font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:600;color:#17273a;letter-spacing:0rpx }
.mine .mine_finance .mine_finance_bar .mine_finance_bar_icon { width:24rpx;height:24rpx }
.mine .mine_finance .mine_finance_bar .mine_finance_bar_icon uni-image { width:100%;height:100% }
.mine .mine_finance .mine_finance_total { margin-top:42rpx;padding:0 20rpx 0 14rpx;display:flex;justify-content:space-between }
.mine .mine_finance .mine_finance_total .mine_finance_total_item { text-align:center;font-weight:400;align-items:center;letter-spacing:0rpx }
.mine .mine_finance .mine_finance_total .mine_finance_total_item .number { font-size:40rpx;font-family:Roboto,Roboto-Bold;font-weight:700;color:#ff5c5c;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;max-width:230rpx }
.mine .mine_finance .mine_finance_total .mine_finance_total_item .number .number_add { margin-left:6rpx;font-size:24rpx }
.mine .mine_finance .mine_finance_total .mine_finance_total_item .tip { margin-top:12rpx;font-family:Roboto,Roboto-Regular;font-size:26rpx;color:#b9b9b9 }
.mine .mine_menulist { background:#fff;margin:24rpx 16rpx;border-radius:16rpx;padding:24rpx 24rpx 28rpx 28rpx }
.mine .mine_menulist .mar_top { margin-top:54rpx }
.mine .mine_menulist .mine_menulist_item { display:flex;justify-content:space-between }
.mine .mine_menulist .mine_menulist_item .mine_menulist_item_left { display:flex;align-items:center }
.mine .mine_menulist .mine_menulist_item .mine_menulist_item_left .mine_menulist_item_icon { margin-right:22rpx }
.mine .mine_menulist .mine_menulist_item .iconsize { width:44rpx;height:44rpx }
.mine .mine_menulist .mine_menulist_item .iconsize2 { width:36rpx;height:36rpx;margin-left:6rpx }
.mine .mine_menulist .mine_menulist_item .mine_menulist_item_title { font-family:Roboto,Roboto-Regular;font-weight:400;font-size:32rpx;height:36rpx;line-height:36rpx;color:#17273a }
.mine .mine_menulist .mine_menulist_item .mine_menulist_item_right { width:24rpx;height:24rpx }
.badge { height:32rpx;background:#ff5c5c;border:2rpx solid #fff;border-radius:50% }
.mine .mine_user { height:568rpx;background-image:url('/static/image/account/bg_my.png');background-size:100% 100%;padding-top:158rpx }
.mine .mine_user .mine_user_member { margin:28rpx 16rpx 0 16rpx;background:url('/static/image/member/bg_openvip.png') no-repeat;background-size:100% 100%;min-height:160rpx }
.mine .mine_wallet { margin:24rpx 12rpx 24rpx 16rpx;height:226rpx;background-image:url('/static/image/account/bg_Wallet.png');background-size:100% 100%;border-radius:16rpx }
</style>
