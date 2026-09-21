<template>
  <view class="invitation">
    <view class="top_title">
      <navbar :title="$t('invite.rtitle')" backColor="#fff" titleColor="#fff" background="transparent"></navbar>
    </view>
    <view class="middle_rule">
      <view class="middle_rule_item" @click="handleRule">
        <view class="middle_rule_item_title"></view>
        <u-icon name="arrow-right" color="rgba(254,98,50,0.87)" size="10"></u-icon>
      </view>
    </view>
    <view class="middle_invited">
      <view class="earn">
        <view class="earn_left">
          <view class="inv">{{ $t('invite.inv') }}</view>
          <view class="inv_bom">
            <text class="unum">{{ invPeople }}</text>
            <view class="people">{{ $t('invite.peo') }}</view>
          </view>
        </view>
        <view class="earn_right">
          <view class="rew">{{ $t('invite.rew') }}</view>
          <view class="rew_bom">
            <view class="mark"></view>
            <text class="nums">{{ rewPeople }}</text>
          </view>
        </view>
      </view>
      <view class="mylink">
        <view class="my">{{ $t('invite.mlink') }}</view>
        <view class="bg">
          <view class="msg">{{ myLink }}</view>
          <view class="copy" @click="handleCopy">{{ $t('invite.cy') }}</view>
        </view>
      </view>
      <view class="invite_btn">
        <overbtn btnText="INVITE" @btnAction="handleInvite"></overbtn>
      </view>
    </view>
    <view class="middle_reg">
      <template v-if="'en_us' == lang">
        <view class="middle_top">
          <view class="link_img">
            <image :src="'/static/image/invite/icon_Sharelink.png'" mode="" />
          </view>
          <view class="point"></view>
          <view class="reg_img">
            <image :src="'/static/image/invite/icon_Registion.png'" mode="" />
          </view>
          <view class="point"></view>
          <view class="earn_img">
            <image :src="'/static/image/invite/icon_Earnrewards.png'" mode="" />
          </view>
        </view>
        <view class="middle_bottom">
          <view class="link_text">{{ $t('invite.slink') }}</view>
          <view class="reg_text">{{ $t('invite.reg') }}</view>
          <view class="earn_text">{{ $t('invite.rew') }}</view>
        </view>
      </template>
      <buystep v-else type="2" page="invitePage"></buystep>
    </view>
    <view class="bottom">
      <view class="tab_item">
        <view class="item_left">
          <view :class="1 == tabStyle ? 'tab_rec' : 'tab_rul'" @click="changeTab(1)">{{ $t('invite.fri') }}</view>
          <image v-if="1 == tabStyle" src="/static/image/icon_Select.png" mode="" />
        </view>
        <view class="item_right">
          <view :class="2 == tabStyle ? 'tab_rec' : 'tab_rul'" @click="changeTab(2)">{{ $t('invite.reb') }}</view>
          <image v-if="2 == tabStyle" src="/static/image/icon_Select.png" mode="" />
        </view>
      </view>
      <mescroll-body
        ref="mescrollRef"
        :down="downOption"
        :up="upOption"
        :height="400"
        @init="mescrollInit"
        @down="downCallback"
        @up="upCallback"
      >
        <view v-for="(item, index) in invitadList" :key="index" class="tabs">
          <view class="tabs_rank">
            <view v-if="1 == tabStyle" class="tabs_rank_icon">
              <image v-if="index < 3" :src="rankImg[index]" mode="" />
              <view v-else class="tabs_rank_num">{{ index + 1 }}</view>
            </view>
            <view class="tabs_left">
              <view class="tabs_user">
                <text v-if="1 == tabStyle">{{ item.mobile }}</text>
                <text v-else>{{ item.user }}</text>
                <image :src="item.vip_img" mode="" />
              </view>
              <view class="tabs_time">{{ item.time }}</view>
            </view>
          </view>
          <view class="tabs_right">
            <view class="tabs_num">{{ 1 == tabStyle ? '' : '+' }}
						₹</view>
            <view class="tabs_nums">
              <text v-if="1 == tabStyle">{{ item.reward }}</text>
              <text v-else>{{ item.price }}</text>
            </view>
          </view>
        </view>
      </mescroll-body>
    </view>
    <sharepopup ref="pop" :showPopup="showpop" shareType="3"></sharepopup>
  </view>
</template>

<script>
import { interopDefault as d_4df3 } from '@/utils/mescroll-mixin';
import { copyString } from '@/utils/orich';
import { userConsume, userInviteTop, userRebateList } from '@/api/orich';

export default {
  mixins: [d_4df3],
  data: function () {
    return {
      tabStyle: 1,
      invPeople: 5,
      rewPeople: 5,
      myLink: 'http://xxx/xxx/125410',
      invitadList: [],
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
      showpop: false,
      rankImg: ['../../static/image/account/icon_gold.png', '../../static/image/account/icon_silver.png', '../../static/image/account/icon_bronze.png'],
      lang: uni.getStorageSync('language'),
      firstLoad: true
    };
  },
  onLoad: function () {
    this.getCount();
  },
  onShow: function () {
    !this.firstLoad && this.mescroll.resetUpScroll();
    this.firstLoad = false;
  },
  watch: {
    tabStyle: function (t) {
      this.mescroll.resetUpScroll();
    }
  },
  methods: {
    changeTab: function (t) {
      this.invitadList = [];
      this.tabStyle = t;
    },
    handleCopy: function () {
      copyString(this.myLink);
    },
    handleInvite: function () {
      this.$refs.pop.open();
    },
    handleRule: function () {
      uni.navigateTo({
        url: '../richtext/rule?type=3'
      });
    },
    getCount: function () {
      var t = this;
      userInviteTop().then(function (e) {
        t.invPeople = e.invite;
        t.rewPeople = e.reward;
        t.myLink = e.inviteurl;
      });
    },
    upCallback: function (t) {
      var e = this, s = (t.num - 1) * t.size, i = t.size;
      1 == this.tabStyle ? userConsume({
        start: s,
        limit: i
      }).then(function (s) {
        var i = s.list, a = i.length, n = +s.count;
        1 == t.num && (e.invitadList = []);
        e.invitadList = e.invitadList.concat(i);
        e.mescroll.endBySize(a, n);
      }).catch(function (t) {
        e.mescroll.endErr();
      }) : userRebateList({
        start: s,
        limit: i
      }).then(function (s) {
        var i = s.list, a = i.length, n = +s.count;
        1 == t.num && (e.invitadList = []);
        e.invitadList = e.invitadList.concat(i);
        e.mescroll.endBySize(a, n);
      }).catch(function (t) {
        e.mescroll.endErr();
      });
    }
  }
};
</script>

<style scoped>
.invitation { background-image:url('/static/image/invite/invite_bg.png');background-size:100%;background-repeat:no-repeat;width:100vw;min-height:100vh;padding-bottom:20rpx;background-color:#fe5541 }
.invitation .invitation_backimg uni-image { width:100%!important }
.top_title { background:transparent!important }
.middle_rule { display:flex;align-items:center;justify-content:flex-end;margin-top:186rpx }
.middle_rule .middle_rule_item { width:142rpx;height:62rpx;background:#ffeda8;border-radius:200rpx 0rpx 0rpx 200rpx;box-shadow:0rpx 0rpx 22rpx 0rpx rgba(250,104,75,.5);display:flex;align-items:center }
.middle_rule .middle_rule_item .middle_rule_item_title { font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#fe6232;margin-left:34rpx;margin-right:8rpx }
.middle_invited { margin-top:470rpx;margin-left:20rpx;width:712rpx;height:418rpx;background:#fff;border-radius:16rpx;box-shadow:0rpx 0rpx 14rpx 0rpx rgba(0,0,0,.05) }
.earn { display:flex }
.earn_left, .earn_right { display:flex;flex:1;flex-direction:column;align-items:center;margin-top:40rpx }
.inv, .rew { font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#17273a }
.nums { margin-left:-30rpx }
.inv_bom, .rew_bom { display:flex;align-items:center;margin-top:16rpx }
.unum, .nums { font-size:40rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#ee5016 }
.unum { margin-right:16rpx }
.nums { margin-left:16rpx }
.people, .mark { font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#b9b9b9 }
.mylink { display:flex;align-items:center;margin-top:44rpx }
.my { margin-left:36rpx;margin-right:18rpx;font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#17273a }
.bg { display:flex;padding:22rpx 26rpx;width:450rpx;height:76rpx;background:#f5f5f5;border-radius:16rpx }
.msg { padding-right:14rpx;width:350rpx;font-size:28rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#7d7d7d;white-space:nowrap;text-overflow:ellipsis;overflow:hidden;word-break:break-all }
.copy { font-size:28rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#649dff }
.invite_btn { margin-top:38rpx;margin-left:52rpx;width:600rpx;height:84rpx }
.middle_reg { margin-top:18rpx;margin-left:20rpx;width:712rpx;height:202rpx;background:#fff;border-radius:16rpx;box-shadow:0rpx 0rpx 14rpx 0rpx rgba(0,0,0,.05);position:relative }
.middle_top { display:flex }
.link_img, .reg_img, .earn_img { display:flex;justify-content:center;align-items:center;margin-top:36rpx;width:80rpx;height:80rpx;background:#ffe6e2;border-radius:50% }
.link_img uni-image, .reg_img uni-image, .earn_img uni-image { width:100%;height:100% }
.link_img { margin-left:38rpx;margin-right:32rpx }
.reg_img { margin-left:40rpx;margin-right:36rpx }
.earn_img { margin-left:36rpx }
.point { margin-top:76rpx;width:116rpx;height:4rpx;opacity:.3;border:1rpx dashed #de6436 }
.middle_bottom { display:flex }
.link_text, .reg_text, .earn_text { margin-top:14rpx;font-size:26rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#566c82 }
.link_text { margin-left:42rpx }
.reg_text { margin-left:194rpx }
.earn_text { margin-left:100rpx }
.bottom { margin-top:16rpx;margin-left:20rpx;margin-bottom:40rpx;padding-bottom:26rpx;width:712rpx;opacity:1;background:#fff;border-radius:16rpx;box-shadow:0rpx 0rpx 14rpx 0rpx rgba(0,0,0,.05) }
.tab_item { display:flex;margin-bottom:36rpx }
.tab_item uni-image { margin-top:12rpx;width:28rpx;height:10rpx }
.item_left, .item_right { display:flex;flex:1;align-items:center;flex-direction:column;margin-top:32rpx }
.tab_rul { font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#b9b9b9 }
.tab_rec { font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#17273a }
.tabs { display:flex;justify-content:space-between;margin:14rpx 26rpx 0;padding-bottom:22rpx;border-bottom:1rpx solid #ececec }
.tabs .tabs_rank { display:flex;align-items:center;justify-content:flex-start }
.tabs .tabs_rank .tabs_rank_icon { width:32rpx;height:42rpx;margin-right:24rpx;flex-shrink:0 }
.tabs .tabs_rank .tabs_rank_icon uni-image { width:100%;height:100% }
.tabs .tabs_rank .tabs_rank_num { width:42rpx;height:42rpx;line-height:42rpx;background:#ffe6e2;border-radius:50%;text-align:center;font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#fc573b }
.tabs_left, .tabs_right { display:flex;display:1 }
.tabs_left { flex-direction:column }
.tabs_right { align-items:center;justify-content:space-around }
.tabs_user { font-size:28rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#17273a;display:flex;align-items:center }
.tabs_user uni-text { margin-right:16rpx }
.tabs_user uni-image { width:100rpx;height:46rpx }
.tabs_time { margin-top:16rpx;font-size:26rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#b9b9b9 }
.tabs_num, .tabs_nums { font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#ee5016 }
.tabs_num { margin-right:4rpx }
</style>
