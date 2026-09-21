<template>
  <view class="member">
    <navbar :title="$t('member.vipname')" titleColor="#fff" backColor="#fff"></navbar>
    <template v-if="Object.keys(vipList).length">
      <view class="member_bg">
        <view class="member_user">
          <view class="member_user_item">
            <view class="avatar">
              <image :src="vipList.user_img" />
            </view>
            <view class="info">
              <view class="info_name">{{ vipList.user_name }}</view>
              <view class="info_number">{{ $t('member.numtips') }}: {{ vipList.invite_num }}</view>
            </view>
          </view>
          <view class="level">
            <text>{{ vipList.user_level_name }}</text>
          </view>
        </view>
      </view>
      <view v-if="vipList.user_level < vipList.count - 1" class="member_open">
        <view class="member_open_title">
          <image src="/static/image/member/group381.png" />
        </view>
        <view class="member_open_card">
          <view
            v-for="(item, index) in vipList.list"
            v-if="item.level > vipList.user_level"
            :key="index"
            class="member_open_card_item"
            :class="{ memactive: vipIndex == item.level }"
            @click="changeLevel(item)"
          >
            <view class="title">{{ item.name }}</view>
            <view class="u-m-t-22">
              <text class="price">{{ item.become_price }}</text>
            </view>
            <view class="detail u-m-t-22" :class="{ deactive: vipIndex == item.level }">{{ item.des_vip }}</view>
          </view>
        </view>
      </view>
      <view class="member_detail" :class="{ member_detailbg: !vipList.user_level < vipList.count - 1 }">
        <view class="member_detail_title">
          <view class="name">
            <image src="/static/image/member/group382.png" />
          </view>
        </view>
        <view class="member_detail_strip">
          <view v-for="(item, index) in vipList.stripList" :key="index" class="member_detail_strip_item">
            <view class="icon">
              <image :src="item.icon" />
            </view>
            <view class="info">{{ item.name }}</view>
          </view>
        </view>
        <view class="member_detail_enjoy">
          <view class="member_detail_enjoy_card">
            <view class="title">{{ $t('member.enjoy') }}</view>
            <view class="main" :class="{ m_bg: enjoyList.length > 4 }">
              <view
                v-for="(item, index) in enjoyList.des_card"
                :key="index"
                class="main_item"
                :class="{ 'u-m-t-22': index > 0 }"
              >
                <view class="main_item_icon">
                  <image src="/static/image/member/icon_select.png" />
                </view>
                <view class="main_item_des">{{ item }}</view>
              </view>
            </view>
          </view>
        </view>
        <view class="member_detail_invition">
          <view class="member_detail_invition_item titlebg">
            <view class="strip">{{ $t('member.ititle') }}</view>
            <view class="strip">{{ $t('member.dtitle') }}</view>
            <view class="strip">{{ $t('member.ttitle') }}</view>
          </view>
          <view
            v-for="(item, index) in enjoyList.reward_invite"
            :key="index"
            class="member_detail_invition_item pricebg"
          >
            <view class="strip">{{ $t('member.vipname') }}{{ item.level }}</view>
            <view class="strip">₹{{ item.direct }}</view>
            <view class="strip">₹{{ item.indirect }}</view>
          </view>
        </view>
      </view>
      <view v-if="vipList.user_level < vipList.count - 1" class="member_buy">
        <view class="member_buy_total">
          {{ $t('goods.need') }}
          <text>₹{{ enjoyList.become_price }}</text>
        </view>
        <view class="member_buy_btn" @click="buyVIP">{{ btnTitle }}</view>
      </view>
    </template>
    <tabbar page="/pages/task/member"></tabbar>
  </view>
</template>

<script>
import { vipBuy, vipLevel } from '@/api/orich';

export default {
  data: function () {
    return {
      vipList: {},
      stripList: [],
      enjoyList: [],
      vipIndex: 0
    };
  },
  onShow: function () {
    this.getList();
  },
  computed: {
    btnTitle: function () {
      return +this.vipList.invite_num >= +this.enjoyList.become_invite && +this.enjoyList.become_invite >= 0 ? this.$t('common.btnfree') : this.$t('common.btnbuy');
    }
  },
  methods: {
    changeLevel: function (t) {
      this.vipIndex = t.level;
      this.enjoyList = t;
    },
    getList: function () {
      var t = this;
      uni.showLoading({
        mask: true
      });
      vipLevel().then(function (e) {
        var s, i;
        (t.vipList = e, t.vipIndex = +t.vipList.user_level + 1 < t.vipList.count ? +t.vipList.user_level + 1 : t.vipList.user_level, t.vipIndex <= t.vipList.count) && (t.enjoyList = (null === (s = t.vipList) || void 0 === s || null === (i = s.list) || void 0 === i ? void 0 : i[t.vipIndex]) || []);
        uni.hideLoading();
      }).catch(function () {
        uni.hideLoading();
      });
    },
    buyVIP: function () {
      var t = this;
      uni.showLoading({
        mask: true
      });
      vipBuy({
        id: this.enjoyList.id
      }).then(function () {
        uni.navigateTo({
          url: '../success/index?type=7'
        });
        uni.hideLoading();
        t.getList();
      }).catch(function () {
        uni.hideLoading();
      });
    }
  }
};
</script>

<style scoped>
.member { min-height:100vh;background:#f9f9f9;padding-bottom:250rpx }
.member .member_bg { background:url('/static/image/member/bg_vip.png');background-size:100% 100%;height:400rpx;margin-top:-88rpx;padding-top:178rpx;overflow:hidden }
.member .member_user { margin:0 34rpx 0 36rpx;background:linear-gradient(89deg,#e7be76,#f6deae);border-radius:30rpx 30rpx 0rpx 0rpx;padding-top:32rpx;padding-left:46rpx;height:272rpx;position:relative }
.member .member_user .member_user_item { display:flex;align-items:center;justify-content:flex-start;overflow:hidden }
.member .member_user .member_user_item .avatar { width:120rpx;height:120rpx;flex-shrink:0;border-radius:50%;border:4rpx solid #fff;overflow:hidden }
.member .member_user .member_user_item .avatar uni-image { width:100%;height:100% }
.member .member_user .member_user_item .info { color:#a0743c;margin-left:18rpx }
.member .member_user .member_user_item .info .info_name { font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:500;letter-spacing:0rpx }
.member .member_user .member_user_item .info .info_number { font-size:26rpx;font-family:Roboto,Roboto-Regular;font-weight:400;letter-spacing:0rpx;margin-top:16rpx }
.member .member_user .level { width:148rpx;height:54rpx;line-height:54rpx;background:linear-gradient(89deg,#ebbe70,#fef0d5);border-radius:0rpx 30rpx 0rpx 30rpx;text-align:center;position:absolute;right:0;top:0 }
.member .member_user .level uni-text { font-size:36rpx;font-family:Roboto,Roboto-Bold;font-weight:700;color:#9c4d08;letter-spacing:0rpx;text-shadow:0rpx 2rpx 2rpx 0rpx #7b3a00 inset }
.member .member_open { width:100%;height:100%;position:relative;top:-50rpx;background:url('/static/image/member/bg_openvipj.png') no-repeat;background-size:100% 100%;padding-top:54rpx;padding-bottom:30rpx }
.member .member_open .member_open_title { margin-left:34rpx;width:216rpx;height:48rpx }
.member .member_open .member_open_title uni-image { width:100%;height:100% }
.member .member_open .member_open_card { margin-top:36rpx;padding-left:32rpx;display:flex;align-items:center;justify-content:flex-start;overflow-x:auto }
.member .member_open .member_open_card .member_open_card_item { flex-shrink:0;margin-right:20rpx;width:358rpx;border-radius:20rpx;padding:26rpx 6rpx 26rpx 32rpx;font-size:36rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#a5a2a1;background:url('/static/image/member/bg_vip_nor.png');background-size:100% 100% }
.member .member_open .member_open_card .member_open_card_item .price { font-size:52rpx;font-weight:700;margin-left:6rpx }
.member .member_open .member_open_card .member_open_card_item .detail { font-size:26rpx;font-family:Roboto,Roboto-Regular;font-weight:400;line-height:36rpx;letter-spacing:0rpx;color:#a5a2a1 }
.member .member_open .member_open_card .member_open_card_item .deactive { color:#a0743c }
.member .member_open .member_open_card .memactive { background:url('/static/image/member/bg_vip_sel.png');background-size:100% 100%;color:#9c4d08 }
.member .member_detailbg { background:url('/static/image/member/bg_openvipj.png');background-size:100% 400rpx;background-color:initial!important;margin-top:-50rpx }
.member .member_detail { width:100%;margin-top:-34rpx;padding-top:36rpx;background-color:#fff;position:relative }
.member .member_detail .member_detail_title { display:flex;align-items:center;justify-content:space-between;padding-left:36rpx;padding-right:53rpx }
.member .member_detail .member_detail_title .name { height:46rpx;width:316rpx }
.member .member_detail .member_detail_title .help { width:36rpx;height:36rpx }
.member .member_detail .member_detail_title uni-image { width:100%;height:100% }
.member .member_detail .member_detail_strip { margin-top:46rpx;padding:0 10rpx;display:flex;align-items:center;justify-content:space-between }
.member .member_detail .member_detail_strip .member_detail_strip_item { display:flex;align-items:center;justify-content:center;flex-direction:column }
.member .member_detail .member_detail_strip .member_detail_strip_item .icon { width:104rpx;height:104rpx }
.member .member_detail .member_detail_strip .member_detail_strip_item .icon uni-image { width:100%;height:100% }
.member .member_detail .member_detail_strip .member_detail_strip_item .info { margin-top:10rpx;font-size:24rpx;font-family:Roboto,Roboto-Regular;font-weight:400;text-align:center;color:#a0743c;letter-spacing:0rpx }
.member .member_detail .member_detail_enjoy { margin-top:36rpx;padding-left:10rpx;padding-right:18rpx;height:100% }
.member .member_detail .member_detail_enjoy .member_detail_enjoy_card { background:url('/static/image/member/bg_card.png');background-size:100% 488rpx;background-repeat:no-repeat;width:100%;min-height:488rpx }
.member .member_detail .member_detail_enjoy .member_detail_enjoy_card .title { font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#a0743c;letter-spacing:0rpx;padding-top:20rpx;padding-left:10rpx }
.member .member_detail .member_detail_enjoy .member_detail_enjoy_card .main { color:#fff;padding:30rpx 30rpx 30rpx 50rpx;margin-top:30rpx;margin-left:14rpx;border-radius:0 0 20rpx 20rpx }
.member .member_detail .member_detail_enjoy .member_detail_enjoy_card .main .main_item { display:flex;align-items:center;justify-content:flex-start }
.member .member_detail .member_detail_enjoy .member_detail_enjoy_card .main .main_item .main_item_icon { width:40rpx;height:40rpx;flex-shrink:0 }
.member .member_detail .member_detail_enjoy .member_detail_enjoy_card .main .main_item .main_item_icon uni-image { width:100%;height:100% }
.member .member_detail .member_detail_enjoy .member_detail_enjoy_card .main .main_item .main_item_des { margin-left:22rpx;font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#fff;letter-spacing:0rpx }
.member .member_detail .member_detail_enjoy .member_detail_enjoy_card .m_bg { min-height:488rpx;background:linear-gradient(180deg,#262932,#534f53 100%) }
.member .member_detail .member_detail_invition { margin:38rpx 20rpx 0 24rpx;padding-bottom:56rpx }
.member .member_detail .member_detail_invition .member_detail_invition_item { display:flex;align-items:center;justify-content:flex-start;text-align:center;border-bottom:2rpx solid #f4d8ab }
.member .member_detail .member_detail_invition .member_detail_invition_item:nth-child(1), .member .member_detail .member_detail_invition .member_detail_invition_item:last-child { border-bottom:none }
.member .member_detail .member_detail_invition .member_detail_invition_item .strip { flex:1;font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#a0743c;letter-spacing:0rpx;height:96rpx;line-height:96rpx }
.member .member_detail .member_detail_invition .member_detail_invition_item .strip:nth-child(2) { border-left:2rpx solid #f4d8ab;border-right:2rpx solid #f4d8ab }
.member .member_detail .member_detail_invition .titlebg { background:#f7e2c1 }
.member .member_detail .member_detail_invition .pricebg { background:#fcf9f0 }
.member .member_buy { width:100%;height:98rpx;background:#fff;box-shadow:0rpx 4rpx 24rpx 0rpx #fff;display:flex;align-items:center;justify-content:space-between;padding-left:24rpx;padding-right:30rpx;font-family:Roboto,Roboto-Bold;position:fixed;left:0;bottom:98rpx }
.member .member_buy .member_buy_total { font-size:32rpx;font-weight:400;color:#b9b9b9 }
.member .member_buy .member_buy_total uni-text { font-size:40rpx;font-weight:700;color:#ff5c5c }
.member .member_buy .member_buy_btn { width:252rpx;height:78rpx;background:linear-gradient(90deg,#f4c788,#f2a94a 100%);border-radius:200rpx;color:#fff;font-weight:700;font-size:28rpx;text-align:center;line-height:78rpx }
</style>
