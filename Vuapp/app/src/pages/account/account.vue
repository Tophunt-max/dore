<script setup lang="ts">
// Faithful port of ORich pages/account/account.
import { ref, reactive } from 'vue';
import { onShow } from '@dcloudio/uni-app';
import { AccountData } from '@/api/orich';

const A = '/static/image/account';
const rightArrow = '/static/image/home/icon_Arrow_right.png';

const isLogin = ref(false);
const showFin = ref(true);
const badge = reactive<number[]>([0, 0, 0, 0]);
const userInfo = reactive<any>({
  name: '-',
  mobile: '-',
  imgUrl: '/static/image/other.png',
  money: '0.00',
  status: null,
  vip_img: '',
  cashOut: 0,
  finance_all_price: '0.00',
  finance_all_income: '0.00',
});

const navList = [
  { img: `${A}/icon_Waiting.png`, title: 'account.waiting' },
  { img: `${A}/icon_ToConfirm.png`, title: 'account.todelivery' },
  { img: `${A}/icon_InDelivery.png`, title: 'account.indelivery' },
  { img: `${A}/icon_Received.png`, title: 'account.received' },
];
const munuList = [
  { icon: `${A}/icon_Myshare.png`, title: 'account.myshare', navTo: '../winner/myShare?type=1' },
  { icon: `${A}/icon_Fundingrecords.png`, title: 'account.fundingrecords', navTo: './funding' },
  { icon: `${A}/icon_Invitationrecords.png`, title: 'account.invitationrecords', navTo: '../invitation/invitation' },
  { icon: `${A}/icon_myteam.png`, title: 'account.myteam', navTo: './team' },
];
const setList = [
  { icon: `${A}/icon_Customerservice.png`, title: 'account.service', navTo: './service' },
  { icon: `${A}/icon_AboutUs.png`, title: 'account.about', navTo: './aboutus' },
];
const menu = [...munuList, ...setList];

function userData() {
  AccountData().then((e: any) => {
    if (!e || e.ok === false) return;
    userInfo.status = 1;
    userInfo.name = e.nickname;
    userInfo.mobile = e.mobile;
    if (e.headimgurl) {
      userInfo.imgUrl = e.headimgurl;
      isLogin.value = true;
    }
    userInfo.money = e.money;
    userInfo.finance_all_price = e.finance_all_price;
    userInfo.finance_all_income = e.finance_all_income;
    userInfo.cashOut = +e.money - +e.money_bad;
    userInfo.vip_img = e.vip_img;
    badge[0] = e.wait;
    badge[1] = e.confirm;
    badge[2] = e.delivery;
    badge[3] = e.receive;
  });
}
function ensureLogin(): boolean {
  if (!uni.getStorageSync('access_token')) {
    uni.navigateTo({ url: '/pages/login/login' });
    return false;
  }
  return true;
}
function checkLogin() {
  ensureLogin();
}
function toSetting() {
  if (ensureLogin()) uni.navigateTo({ url: '../account/setting' });
}
function toRecords(type: number) {
  if (ensureLogin()) uni.navigateTo({ url: `../order/record?type=${type}` });
}
function toMember() {
  uni.navigateTo({ url: '../task/member' });
}
function toFinance() {
  uni.navigateTo({ url: '../finance/order' });
}
function toWithdraw() {
  if (ensureLogin()) uni.navigateTo({ url: `../payment/cashOut?money=${userInfo.cashOut}` });
}
function btnRecharge() {
  if (ensureLogin()) uni.navigateTo({ url: '../payment/recharge' });
}
function go(navTo: string) {
  if (navTo === './service' || navTo === './aboutus') uni.navigateTo({ url: navTo });
  else if (ensureLogin()) uni.navigateTo({ url: navTo });
}

onShow(() => {
  if (uni.getStorageSync('access_token')) userData();
});
</script>

<template>
  <view class="mine">
    <view class="mine_user" @click="checkLogin">
      <view class="mine_user_main">
        <view class="mine_user_img" :class="isLogin ? 'login' : 'nologin'">
          <image class="img" :src="userInfo.imgUrl" mode="aspectFill" />
        </view>
        <view class="mine_user_info">
          <view class="mine_user_info_name">
            <view class="u-m-r-20">{{ userInfo.status == 1 ? userInfo.name : 'Log in' }}</view>
            <image v-if="userInfo.status == 1 && userInfo.vip_img" :src="userInfo.vip_img" mode="widthFix" />
          </view>
          <view class="mine_user_info_number">{{ userInfo.mobile }}</view>
        </view>
      </view>
      <view class="mine_user_member">
        <view class="mine_user_member_title">
          <view class="icon"><image :src="`${A}/icon_gold.png`" mode="aspectFit" /></view>
          <view class="name">{{ $t('member.openvip') }}</view>
        </view>
        <view class="mine_user_member_item">
          <view class="benefits">{{ $t('member.benefits') }}</view>
          <view class="coin"><image :src="`${A}/icon_gold.png`" mode="aspectFit" /></view>
          <view class="enjoy1">{{ $t('member.eorder') }}</view>
          <view class="redpacket"><image :src="`${A}/icon_Earnrewards.png`" mode="aspectFit" /></view>
          <view class="enjoy2">{{ $t('member.ivip') }}</view>
          <view class="tovip" @click.stop="toMember"><image :src="rightArrow" mode="widthFix" /></view>
        </view>
      </view>
    </view>

    <view class="mine_setting" @click="toSetting"><image class="img" :src="`${A}/icon.png`" mode="aspectFit" /></view>

    <view class="mine_main">
      <view class="mine_main_menu">
        <view class="mine_main_menu_left">{{ $t('account.orders') }}</view>
        <view class="mine_main_menu_right" @click="toRecords(0)">
          <text>{{ $t('account.all') }}</text>
          <view class="mine_main_menu_right_icon"><image class="img" :src="rightArrow" mode="aspectFit" /></view>
        </view>
      </view>
      <view class="mine_main_nav">
        <view v-for="(e, idx) in navList" :key="idx" class="mine_main_nav_item" @click="toRecords(idx + 1)">
          <view class="mine_main_nav_item_icon">
            <image class="img" :src="e.img" mode="aspectFit" />
            <u-badge class="badge" :count="badge[idx]" is-center type="error" />
          </view>
          <view class="mine_main_nav_item_title">{{ $t(e.title) }}</view>
        </view>
      </view>
    </view>

    <view class="mine_wallet">
      <view class="mine_wallet_title">{{ $t('account.wallet') }}</view>
      <view class="mine_wallet_main">
        <view class="mine_wallet_main_count">{{ userInfo.money }}</view>
        <view class="mine_wallet_main_btndraw">
          <overbtn :btnText="$t('account.btnwith')" :fontSize="28" btnType="plain" @btnAction="toWithdraw" />
        </view>
        <view class="mine_wallet_main_btnrecharge" @click="btnRecharge">
          <view>{{ $t('account.btnrech') }}</view>
        </view>
      </view>
      <view class="mine_wallet_tip">{{ $t('account.balances') }}</view>
    </view>

    <view v-if="showFin" class="mine_finance">
      <view class="mine_finance_bar">
        <view class="mine_finance_bar_title">{{ $t('finance.htitle') }}</view>
        <view class="mine_finance_bar_icon" @click="toFinance"><image :src="rightArrow" mode="aspectFit" /></view>
      </view>
      <view class="mine_finance_total">
        <view class="mine_finance_total_item">
          <view class="number">{{ userInfo.finance_all_price }}</view>
          <view class="tip">{{ $t('finance.iTitle') }}</view>
        </view>
        <view class="mine_finance_total_item">
          <view class="number">{{ userInfo.finance_all_income }}</view>
          <view class="tip">{{ $t('finance.iincome') }}</view>
        </view>
      </view>
    </view>

    <view class="mine_menulist">
      <view
        v-for="(e, idx) in menu"
        :key="idx"
        class="mine_menulist_item"
        :class="{ mar_top: idx !== 0 }"
        @click="go(e.navTo)"
      >
        <view class="mine_menulist_item_left">
          <view class="mine_menulist_item_icon"><image class="iconsize" :src="e.icon" mode="aspectFit" /></view>
          <view class="mine_menulist_item_title">{{ $t(e.title) }}</view>
        </view>
        <view class="mine_menulist_item_right"><image class="img" :src="rightArrow" mode="aspectFit" /></view>
      </view>
    </view>

    <tabbar page="/pages/account/account" />
  </view>
</template>

<style scoped>
/* Verbatim scoped CSS from ORich pages/account/account (scope stripped, bg vars mapped) */
.mine { width: 100%; min-height: 100vh; background: #f9f9f9; padding-bottom: 118rpx; }
.mine .img { width: 100%; height: 100%; }
.mine .mine_user { height: 568rpx; background-image: url('/static/image/account/bg_my.png'); background-size: 100% 100%; padding-top: 158rpx; }
.mine .mine_user .mine_user_main { display: flex; }
.mine .mine_user .login { border: 4rpx solid #fff; }
.mine .mine_user .nologin { padding: 16rpx; }
.mine .mine_user .mine_user_img { width: 120rpx; height: 120rpx; border-radius: 50%; overflow: hidden; margin-left: 32rpx; }
.mine .mine_user .mine_user_info { margin-top: 14rpx; margin-left: 34rpx; }
.mine .mine_user .mine_user_info .mine_user_info_name { font-size: 32rpx; font-weight: 700; height: 36rpx; line-height: 36rpx; color: #fff; display: flex; align-items: center; justify-content: flex-start; }
.mine .mine_user .mine_user_info .mine_user_info_name uni-image { width: 100rpx; height: 46rpx; }
.mine .mine_user .mine_user_info .mine_user_info_number { margin-top: 12rpx; font-size: 26rpx; font-weight: 400; height: 36rpx; line-height: 36rpx; color: #fff; }
.mine .mine_user .mine_user_member { margin: 28rpx 16rpx 0 16rpx; background: url('/static/image/account/bg_reward.png') no-repeat; background-size: 100% 100%; min-height: 160rpx; }
.mine .mine_user .mine_user_member .mine_user_member_title { display: flex; align-items: center; justify-content: flex-start; height: 52rpx; padding-left: 78rpx; }
.mine .mine_user .mine_user_member .mine_user_member_title .icon { width: 44rpx; height: 38rpx; }
.mine .mine_user .mine_user_member .mine_user_member_title .icon uni-image { width: 100%; height: 100%; }
.mine .mine_user .mine_user_member .mine_user_member_title .name { font-size: 32rpx; font-family: Roboto, Roboto-Bold; font-weight: 700; color: #fff; margin-left: 20rpx; }
.mine .mine_user .mine_user_member .mine_user_member_item { display: flex; align-items: center; justify-content: flex-start; padding-left: 24rpx; padding-right: 18rpx; }
.mine .mine_user .mine_user_member .mine_user_member_item .benefits { font-size: 32rpx; font-family: Roboto, Roboto-Medium; font-weight: 500; color: #ee5016; flex-shrink: 0; }
.mine .mine_user .mine_user_member .mine_user_member_item .coin { width: 48rpx; height: 48rpx; margin-left: 30rpx; flex-shrink: 0; }
.mine .mine_user .mine_user_member .mine_user_member_item .enjoy1 { width: 138rpx; font-size: 26rpx; font-family: Roboto, Roboto-Regular; font-weight: 400; color: #ee5016; margin-left: 14rpx; flex-shrink: 0; }
.mine .mine_user .mine_user_member .mine_user_member_item .redpacket { width: 82rpx; height: 82rpx; flex-shrink: 0; margin-left: 4rpx; }
.mine .mine_user .mine_user_member .mine_user_member_item .enjoy2 { width: 124rpx; font-size: 26rpx; font-family: Roboto, Roboto-Regular; font-weight: 400; color: #ee5016; flex-shrink: 0; }
.mine .mine_user .mine_user_member .mine_user_member_item .tovip { width: 16rpx; height: 28rpx; flex-shrink: 0; margin-left: 16rpx; }
.mine .mine_user .mine_user_member .mine_user_member_item uni-image { width: 100%; height: 100%; }
.mine .mine_setting { width: 40rpx; height: 40rpx; position: absolute; top: 128rpx; right: 24rpx; }
.mine .mine_main { margin: -86rpx 12rpx 0 16rpx; background: #fff; height: 226rpx; border-radius: 16rpx; }
.mine .mine_main .mine_main_menu { padding: 50rpx 24rpx 0 32rpx; height: 36rpx; line-height: 36rpx; display: flex; align-items: center; justify-content: space-between; font-family: Roboto; }
.mine .mine_main .mine_main_menu .mine_main_menu_left { font-size: 32rpx; font-weight: 700; }
.mine .mine_main .mine_main_menu .mine_main_menu_right { font-size: 26rpx; font-weight: 400; color: #b9b9b9; display: flex; align-items: center; }
.mine .mine_main .mine_main_menu .mine_main_menu_right uni-text { margin-right: 8rpx; }
.mine .mine_main .mine_main_menu .mine_main_menu_right .mine_main_menu_right_icon { display: inline-block; width: 24rpx; height: 24rpx; }
.mine .mine_main .mine_main_nav { display: flex; align-items: center; justify-content: space-between; padding: 46rpx 48rpx 26rpx 44rpx; }
.mine .mine_main .mine_main_nav .mine_main_nav_item .mine_main_nav_item_icon { width: 64rpx; height: 64rpx; margin: 0 auto; position: relative; }
.mine .mine_main .mine_main_nav .mine_main_nav_item .mine_main_nav_item_title { font-family: Roboto, Roboto-Regular; font-size: 26rpx; font-weight: 400; color: #17273a; height: 36rpx; line-height: 36rpx; }
.mine .mine_wallet { margin: 24rpx 12rpx 24rpx 16rpx; height: 226rpx; background-image: url('/static/image/account/bg_Wallet.png'); background-size: 100% 100%; border-radius: 16rpx; }
.mine .mine_wallet .mine_wallet_title { font-family: Roboto, Roboto-Bold; font-weight: 600; padding: 32rpx 0 0 46rpx; }
.mine .mine_wallet .mine_wallet_main { height: 36rpx; line-height: 36rpx; margin-top: 34rpx; margin-left: 48rpx; display: flex; }
.mine .mine_wallet .mine_wallet_main .mine_wallet_main_count { font-family: Roboto, Roboto-Bold; width: 274rpx; height: 36rpx; line-height: 36rpx; font-size: 52rpx; font-weight: 700; color: #ee5016; }
.mine .mine_wallet .mine_wallet_main .mine_wallet_main_btndraw { width: 164rpx; height: 70rpx; margin-left: 38rpx; }
.mine .mine_wallet .mine_wallet_main .mine_wallet_main_btnrecharge { width: 172rpx; height: 70rpx; margin-left: 10rpx; display: flex; flex-direction: row; align-items: center; justify-content: center; opacity: 1; background: linear-gradient(115deg, #ffe44b, #fea326); border-radius: 8rpx; box-shadow: 0rpx -4rpx 8rpx 0rpx rgba(255, 125, 0, 0.5) inset; font-size: 26rpx; font-family: Roboto, Roboto-Regular; font-weight: 400; color: #ad6701; }
.mine .mine_wallet .mine_wallet_tip { font-family: Roboto, Roboto-Regular; margin-top: 12rpx; margin-left: 48rpx; font-weight: 400; color: #a6a5a5; height: 36rpx; line-height: 36rpx; }
.mine .mine_finance { margin: 24rpx 12rpx 24rpx 16rpx; height: 226rpx; background-image: url('/static/image/account/bg_finance.png'); background-size: 100% 100%; border-radius: 16rpx; }
.mine .mine_finance .mine_finance_bar { display: flex; justify-content: space-between; padding: 30rpx 24rpx 0 28rpx; }
.mine .mine_finance .mine_finance_bar .mine_finance_bar_title { font-size: 32rpx; font-family: Roboto, Roboto-Medium; font-weight: 600; color: #17273a; }
.mine .mine_finance .mine_finance_bar .mine_finance_bar_icon { width: 24rpx; height: 24rpx; }
.mine .mine_finance .mine_finance_bar .mine_finance_bar_icon uni-image { width: 100%; height: 100%; }
.mine .mine_finance .mine_finance_total { margin-top: 42rpx; padding: 0 20rpx 0 14rpx; display: flex; justify-content: space-between; }
.mine .mine_finance .mine_finance_total .mine_finance_total_item { text-align: center; font-weight: 400; align-items: center; }
.mine .mine_finance .mine_finance_total .mine_finance_total_item .number { font-size: 40rpx; font-family: Roboto, Roboto-Bold; font-weight: 700; color: #ff5c5c; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; max-width: 230rpx; }
.mine .mine_finance .mine_finance_total .mine_finance_total_item .tip { margin-top: 12rpx; font-family: Roboto, Roboto-Regular; font-size: 26rpx; color: #b9b9b9; }
.mine .mine_menulist { background: #fff; margin: 24rpx 16rpx; border-radius: 16rpx; padding: 24rpx 24rpx 28rpx 28rpx; }
.mine .mine_menulist .mar_top { margin-top: 54rpx; }
.mine .mine_menulist .mine_menulist_item { display: flex; justify-content: space-between; }
.mine .mine_menulist .mine_menulist_item .mine_menulist_item_left { display: flex; align-items: center; }
.mine .mine_menulist .mine_menulist_item .mine_menulist_item_left .mine_menulist_item_icon { margin-right: 22rpx; }
.mine .mine_menulist .mine_menulist_item .iconsize { width: 44rpx; height: 44rpx; }
.mine .mine_menulist .mine_menulist_item .mine_menulist_item_title { font-family: Roboto, Roboto-Regular; font-weight: 400; font-size: 32rpx; height: 36rpx; line-height: 36rpx; color: #17273a; }
.mine .mine_menulist .mine_menulist_item .mine_menulist_item_right { width: 24rpx; height: 24rpx; }
.badge { height: 32rpx; background: #ff5c5c; border: 2rpx solid #fff; border-radius: 50%; }
</style>
