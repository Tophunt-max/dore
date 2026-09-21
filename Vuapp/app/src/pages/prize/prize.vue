<template>
  <view class="prize">
    <navbar
      :title="$t('prize.navtitle')"
      :titleColor="titleColor"
      :background="navColor"
      :backColor="backColor"
    ></navbar>
    <view class="prize_bg">
      <image :src="'/static/image/prize/bg_partition.png'" mode="widthFix" />
    </view>
    <view class="prize_people">{{ peopleTotal }} {{ $t('prize.people') }}</view>
    <view class="prize_amount">
      <view class="prize_amount_title">{{ $t('prize.amountTitle') }}</view>
      <view class="prize_amount_money">
        <text></text>
        {{ money }}
      </view>
      <view v-if="drawin" class="prize_amount_time">
        {{ $t('prize.drawin') }}
        <text>{{ showDrawin }}</text>
      </view>
    </view>
    <view class="prize_invite">
      <view class="prize_invite_avatar">
        <view v-for="(item, index) in avatarList" :key="index" class="prize_invite_avatar_item">
          <image :src="item" mode="" />
        </view>
      </view>
      <view class="prize_invite_tips">{{ $t('prize.inviteTip') }}</view>
      <view class="prize_invite_btn" @click="btnInvite">{{ btnTitle }}</view>
    </view>
    <view class="prize_tabs">
      <view v-for="(item, index) in tabList" :key="index" class="prize_tabs_item" @click="changeTab(index)">
        <view :class="{ active: index + 1 == tabIndex }">{{ item.title }}</view>
        <view v-if="index + 1 == tabIndex" class="prize_tabs_item_icon"></view>
      </view>
    </view>
    <view class="prize_main">
      <view class="prize_main_users">
        <marquee
          v-if="1 == tabIndex"
          ref="quee"
          broadcastType="mould"
          direction="top"
          :viewHeight="550"
          :broadcastIconIsDisplay="false"
          :touchEvent="true"
          :imgdata="avatarList"
          :broadcastStyle="broadcastStyle"
          @changeEvent="testClick"
        >
          <view
            v-for="(item2, index2) in partList"
            :key="index2 + '_' + item + '_0'"
            class="prize_main_users_item"
          >
            <view class="prize_main_users_item_left">
              <image :src="item2.headimg" mode="" />
            </view>
            <view class="prize_main_users_item_right">
              <view class="top">
                <view class="name">{{ item2.nickname }}</view>
                <view class="time">{{ item2.time }}</view>
              </view>
              <view class="bottom">{{ $t('prize.successfullyTip') }}</view>
            </view>
          </view>
        </marquee>
        <view v-else class="rule-list">
          <view v-for="(item, index) in ruleList" :key="index" class="rule-list-item">
            <view class="list-icon"></view>
            <view class="list-main">{{ item }}</view>
          </view>
        </view>
      </view>
    </view>
    <view v-if="prizeShow" class="mask" @click="hidePrize">
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
            <view class="m-btn-item m-btn-left" @click="toHome">{{ $t('home.back') }}</view>
            <view class="m-btn-item m-btn-right" @click.stop="toAccount($event)">
              <text>{{ $t('home.tocheck') }}</text>
            </view>
          </view>
        </view>
      </view>
    </view>
    <sharepopup ref="pop" :showPopup="showpop" shareType="3"></sharepopup>
  </view>
</template>

<script>
import { interopDefault as d_a34a } from '@/vendor/a34a';
import { activityDetail, getActivity, joinActivity } from '@/api/orich';
import { countDown } from '@/utils/orich';

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
      navColor: '#35A2FF',
      titleColor: '#fff',
      backColor: '#fff',
      btnTitle: '',
      peopleTotal: 0,
      money: 0,
      drawin: null,
      nowtime: null,
      timer: null,
      avatar: '../../static/image/prize/default_avatar.png',
      avatarList: [],
      userStatus: 0,
      tabList: [{
        title: this.$t('prize.users'),
        type: 1
      }, {
        title: this.$t('prize.rules'),
        type: 2
      }],
      tabIndex: 1,
      partList: [],
      rules: '',
      broadcastStyle: {
        speed: 50,
        back_color: '#FFF'
      },
      scrollHeight: 0,
      height: 0,
      animationData: {},
      showpop: false,
      prizeShow: false,
      activityPrice: 0,
      isActivityTimer: null,
      isActivity: false,
      showDrawin: null,
      showDrawinTimer: null,
      ruleList: []
    };
  },
  onPullDownRefresh: function () {
    this.getDetail();
  },
  onLoad: function () {
    this.ruleList.push(this.$t('prize.rule1'));
    this.ruleList.push(this.$t('prize.rule2'));
    this.ruleList.push(this.$t('prize.rule3'));
    this.ruleList.push(this.$t('prize.rule4'));
  },
  watch: {
    userStatus: function (t) {
      switch (+t) {
        case 1:
          this.btnTitle = this.$t('prize.btnTitle2');
          break;
        case 2:
          this.btnTitle = this.$t('prize.btnTitle3');
          break;
        case 3:
          this.btnTitle = this.$t('prize.btnTitle');
          break;
      }
    },
    isActivity: function (t) {
      var e = this;
      t && (this.isActivityTimer = setInterval(function () {
        e.getActive();
      }, 1e3));
    }
  },
  mounted: function () {
    var t = this;
    return c(d_a34a.mark(function e() {
      return d_a34a.wrap(function (e) {
        while (1) switch (e.prev = e.next) {
          case 0:
            return (e.next = 2, t.getDetail());
          case 2:
            t.timer && clearInterval(t.timer);
            t.beginTimer();
          case 4:
          case 'end':
            return e.stop();
        }
      }, e);
    }))();
  },
  methods: {
    changeEvent: function (e, s) {
      console.log(e, s);
    },
    getActive: function () {
      var t = this;
      getActivity().then(function (e) {
        e.price && (t.prizeShow = true, t.activityPrice = e.price, setTimeout(function () {
          clearInterval(t.isActivityTimer);
        }, 200));
      });
    },
    toAccount: function () {
      this.prizeShow = false;
      uni.navigateTo({
        url: '../account/account'
      });
    },
    hidePrize: function () {
      this.prizeShow = false;
    },
    toHome: function () {
      uni.navigateTo({
        url: '../home/home'
      });
    },
    beginTimer: function () {
      var t = this;
      this.timer = setInterval(function () {
        t.$forceUpdate();
        '00:00:00' == t.drawin && (t.isActivity = true, clearInterval(t.timer));
      }, 1e3);
    },
    btnInvite: function () {
      var e = this;
      if ((console.log('邀请按钮'), this.$store.state.token)) switch (+this.userStatus) {
        case 1:
          joinActivity().then(function () {
            uni.showToast({
              icon: 'none',
              title: e.$t('prize.joinsuccess')
            });
            e.getDetail();
          });
          break;
        case 2:
          break;
        case 3:
          this.$refs.pop.open();
          break;
      } else (uni.showToast({
        icon: 'none',
        title: 'Please log in first'
      }), setTimeout(function () {
        uni.navigateTo({
          url: '../../pages/login/login'
        });
      }, 1e3));
    },
    changeTab: function (t) {
      this.tabIndex = t + 1;
    },
    getDetail: function () {
      var t = this;
      return c(d_a34a.mark(function e() {
        return d_a34a.wrap(function (e) {
          while (1) switch (e.prev = e.next) {
            case 0:
              return (t.avatarList = [], e.next = 3, activityDetail({
                start: 0,
                limit: 10
              }).then(function (e) {
                e.activity || (uni.stopPullDownRefresh(), uni.navigateTo({
                  url: '../home/home'
                }));
                t.partList = e.list;
                t.peopleTotal = e.activity.number;
                t.money = parseInt(e.activity.price);
                t.drawin = e.activity.end;
                t.nowtime = e.activity.nowtime;
                t.rules = e.activity.rule;
                for (var s = 0; s < e.activity.neednum; s++) t.avatarList.push(t.avatar);
                if (e.user.headimg.length) for (var i = e.user.headimg, n = 0; n < i.length; n++) t.avatarList[n] = i[n];
                e.user.headimg.length < e.activity.neednum ? t.userStatus = 3 : t.userStatus = e.user.status;
                t.showDrawinTimer = setInterval(function () {
                  t.nowtime++;
                  t.showDrawin = countDown(t.drawin, t.nowtime);
                }, 1e3);
                uni.stopPullDownRefresh();
                setTimeout(function () {
                  t.$refs.quee.initialization();
                }, 300);
              }).catch(function () {
                uni.stopPullDownRefresh();
              }));
            case 3:
            case 'end':
              return e.stop();
          }
        }, e);
      }))();
    },
    getHeight: function (t) {
      var e = this, s = uni.createSelectorQuery().in(this);
      s.selectAll(t).boundingClientRect(function (t) {
        e.height = t[0].height;
      }).exec();
    },
    prizeScroll: function () {
      var t = this, e = 10, s = uni.createAnimation({
        duration: this.getHeight('.prize_main_users') / e,
        timingFunction: 'linear',
        delay: 0
      });
      this.animation = s;
      setInterval(function () {
        t.scrollHeight >= t.height ? (s.translateY(0).step(), t.scrollHeight = 0, t.animationData = s.export()) : (t.scrollHeight = t.scrollHeight + 1, s.translateY(-t.scrollHeight).step(), t.animationData = s.export());
      }, e);
    }
  },
  onPageScroll: function (t) {
    var e = t.scrollTop;
    e > 50 ? (this.navColor = '#fff', this.titleColor = '#000', this.backColor = '#000') : (this.navColor = '#35A2FF', this.titleColor = '#fff', this.backColor = '#fff');
  },
  unmounted: function () {
    clearInterval(this.showDrawinTimer);
  }
};
</script>

<style scoped>
.prize { background:#35a2ff;padding-top:30rpx;position:relative }
.prize .prize_bg { width:100vw;background:#ffac41 }
.prize .prize_bg uni-image { width:100% }
.prize .prize_people { width:472rpx;height:56rpx;background:rgba(0,0,0,.2);border-radius:200rpx;position:absolute;top:120rpx;left:50%;-webkit-transform:translateX(-50%);transform:translateX(-50%);font-size:28rpx;font-family:Roboto,Roboto-Regular;font-weight:400;text-align:CENTER;color:#fff;line-height:56rpx;letter-spacing:0rpx }
.prize .prize_amount { display:flex;flex-direction:column;align-items:center;justify-content:center;width:100%;position:absolute;top:636rpx }
.prize .prize_amount .prize_amount_title { font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#bb451e;line-height:36rpx;letter-spacing:0rpx }
.prize .prize_amount .prize_amount_money { font-size:92rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#ff5c5c;letter-spacing:0rpx;line-height:120rpx }
.prize .prize_amount .prize_amount_money uni-text { margin-right:16rpx }
.prize .prize_amount .prize_amount_time { margin-top:6rpx;font-size:28rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#ee5016;line-height:36rpx;letter-spacing:0rpx }
.prize .prize_amount .prize_amount_time uni-text { margin-left:8rpx }
.prize .prize_invite { width:100%;position:absolute;top:940rpx;display:flex;flex-direction:column;align-items:center;justify-content:center }
.prize .prize_invite .prize_invite_avatar { width:100%;height:96rpx;display:flex;align-items:center;justify-content:center }
.prize .prize_invite .prize_invite_avatar .prize_invite_avatar_item { width:96rpx;height:96rpx;border:2rpx solid #fff;border-radius:50%;overflow:hidden;margin:0 22rpx }
.prize .prize_invite .prize_invite_avatar .prize_invite_avatar_item uni-image { width:100%;height:100% }
.prize .prize_invite .prize_invite_tips { font-size:28rpx;font-family:Roboto,Roboto-Regular;font-weight:400;text-align:CENTER;color:#ffdc93;line-height:36rpx;letter-spacing:0rpx;margin-top:40rpx;white-space:nowrap }
.prize .prize_invite .prize_invite_btn { width:100%;height:80rpx;margin-top:48rpx;font-size:32rpx;font-family:Roboto,Roboto-Bold;font-weight:700;text-align:CENTER;color:#c86904;line-height:80rpx;letter-spacing:0rpx }
.prize .prize_tabs { width:100%;display:flex;align-items:center;justify-content:center;position:absolute;top:1367rpx }
.prize .prize_tabs .prize_tabs_item { font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:400;text-align:CENTER;color:#ffc84e;line-height:36rpx;letter-spacing:0rpx }
.prize .prize_tabs .prize_tabs_item .active { color:#ffc84e;font-weight:500 }
.prize .prize_tabs .prize_tabs_item:nth-child(1) { margin-right:126rpx }
.prize .prize_tabs .prize_tabs_item .prize_tabs_item_icon { width:76rpx;height:8rpx;background:#ffc84e;margin:0 auto;margin-top:12rpx;border-radius:200rpx }
.prize .prize_main { width:100%;position:absolute;top:1490rpx }
.prize .prize_main .prize_main_users { width:85%;margin:0 auto;padding:0 24rpx;height:520rpx;overflow:hidden }
.prize .prize_main .prize_main_users .prize_main_rules { height:100%;overflow-y:auto }
.prize .prize_main .prize_main_users .prize_main_users_item { background:rgba(255,200,78,.2);border-radius:20rpx;padding:16rpx 18rpx 14rpx 20rpx;display:flex;margin-bottom:16rpx }
.prize .prize_main .prize_main_users .prize_main_users_item .prize_main_users_item_left { width:78rpx;height:78rpx;border:2rpx solid #fff;border-radius:50%;overflow:hidden;margin-right:16rpx }
.prize .prize_main .prize_main_users .prize_main_users_item .prize_main_users_item_left uni-image { width:100%;height:100% }
.prize .prize_main .prize_main_users .prize_main_users_item .prize_main_users_item_right { width:calc(100% - 94rpx) }
.prize .prize_main .prize_main_users .prize_main_users_item .prize_main_users_item_right .top { display:flex;justify-content:space-between }
.prize .prize_main .prize_main_users .prize_main_users_item .prize_main_users_item_right .top .name { font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#ee5016;letter-spacing:0rpx }
.prize .prize_main .prize_main_users .prize_main_users_item .prize_main_users_item_right .top .time { font-size:24rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#ee5016 }
.prize .prize_main .prize_main_users .prize_main_users_item .prize_main_users_item_right .bottom { margin-top:6rpx;font-size:22rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#17273a }
.mask { position:fixed;left:0;top:0;z-index:99999;display:flex;flex-direction:row;align-items:center;justify-content:center;width:100vw;height:100vh;background:rgba(0,0,0,.6) }
.mask .m-modal { z-index:100000;width:676rpx;height:1048rpx;margin-top:-10% }
.mask .m-modal-success { background:url('/static/image/home/img_Winning.png');background-size:100% 100% }
.mask .p-btn { display:flex;flex-direction:row;align-items:center;justify-content:space-between;width:100%;margin-top:250rpx }
.mask .p-btn .m-btn-item { display:flex;flex-direction:row;align-items:center;justify-content:center;width:207rpx;height:78rpx;border-radius:9rpx;font-size:28rpx;color:#fff;font-family:PingFang SC,PingFang SC-Bold }
.mask .p-btn .m-btn-left { background:transparent;border:2rpx solid #fff }
.mask .p-main { width:500rpx;margin:auto;margin-top:292rpx;display:flex;flex-direction:column;align-items:center }
.mask .p-main .p-main-icon { width:178rpx;height:178rpx }
.mask .p-main .p-main-icon uni-image { width:100%;height:100% }
.mask .p-main .p-main-tips { margin-top:34rpx;font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:500;text-align:CENTER;color:#6f3f3f }
.mask .p-main .p-main-price { margin-top:14rpx;font-size:52rpx;font-family:Roboto,Roboto-Black;font-weight:900;text-align:CENTER;color:#ff5c5c }
.mask .p-main .p-main-price uni-text { margin-right:8rpx }
.mask .p-main .p-main-tips2 { margin-top:12rpx;font-size:28rpx;font-family:Roboto,Roboto-Regular;font-weight:400;text-align:CENTER;color:#6f3f3f }
.mask .m-modal-success { position:relative }
.mask .m-modal-success .m-title { position:absolute;left:172rpx;top:242rpx;font-size:48rpx;font-family:YouSheBiaoTiHei,YouSheBiaoTiHei-Regular;color:#fff }
.mask .m-modal-success .p-title { position:absolute;left:172rpx;top:172rpx;font-size:40rpx;font-family:YouSheBiaoTiHei,YouSheBiaoTiHei-Regular;font-weight:400;color:#fff;text-shadow:0rpx 4rpx 8rpx 0rpx #bf2322 }
.mask .m-modal-success .m-btn-right { background:#fd583f;box-shadow:0rpx 8rpx 0rpx 0rpx #cd0413 }
.rule-list { padding-left:16rpx }
.rule-list .rule-list-item { display:flex;margin-bottom:26rpx }
.rule-list .rule-list-item .list-icon { width:8rpx;height:8rpx;background:#c86904;border-radius:50%;margin-top:10rpx }
.rule-list .rule-list-item .list-main { width:538rpx;margin-left:8rpx;font-size:24rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#c86904 }
</style>
