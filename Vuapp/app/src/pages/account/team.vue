<template>
  <view class="team">
    <view class="team_nav">
      <navbar :title="$t('account.teamtitle')" backColor="#fff" titleColor="#fff" background="transparent">
        <template #right>
          <view class="team_nav_rule" @click="handleRule" slot="right">{{ $t('account.rules') }}</view>
        </template>
      </navbar>
    </view>
    <view class="team_top">
      <view class="team_main">
        <view class="team_main_item">
          <view class="team_main_item_title">{{ $t('account.numteam') }}</view>
          <view class="team_main_item_num">
            {{ people }}
            <text>{{ $t('account.people') }}</text>
          </view>
        </view>
        <view class="team_main_item">
          <view class="team_main_item_title">{{ $t('account.amount') }}</view>
          <view class="team_main_item_num">
            {{ people }}
            <text></text>
          </view>
        </view>
      </view>
      <view class="team_personal">
        <view class="team_personal_item">
          {{ $t('account.personal') }}
          <text>{{ people }}</text>
          <text></text>
        </view>
        <view class="team_personal_line"></view>
        <view class="team_personal_item">
          {{ $t('account.teamcom') }}
          <text>{{ people }}</text>
          <text></text>
        </view>
      </view>
      <view class="team_direct">
        <view class="team_direct_item">
          {{ $t('account.direct') }}
          <text>{{ people }}</text>
        </view>
        <view class="team_direct_line"></view>
        <view class="team_direct_item">
          {{ $t('account.direct') }}
          <text>{{ people }}</text>
        </view>
      </view>
    </view>
    <view class="team_invite">
      <view class="team_invite_step">
        <view class="team_invite_step_item">
          <view class="team_invite_step_item_icon">
            <image :src="'/static/image/account/icon_Sharelink.png'" />
          </view>
          <view class="team_invite_step_item_title">{{ $t('account.step1') }}</view>
        </view>
        <text></text>
        <view class="team_invite_step_item">
          <view class="team_invite_step_item_icon">
            <image :src="'/static/image/account/icon_Registion.png'" />
          </view>
          <view class="team_invite_step_item_title">{{ $t('account.step2') }}</view>
        </view>
        <text></text>
        <view class="team_invite_step_item">
          <view class="team_invite_step_item_icon">
            <image :src="'/static/image/account/icon_Earnrewards.png'" />
          </view>
          <view class="team_invite_step_item_title">{{ $t('account.step3') }}</view>
        </view>
      </view>
      <view class="team_invite_url">
        <view class="team_invite_url_title">{{ $t('account.urltitle') }}</view>
        <view class="team_invite_url_main">
          <view class="team_invite_url_main_link">{{ link }}</view>
          <view class="team_invite_url_main_btn">{{ $t('invite.cy') }}</view>
        </view>
      </view>
      <view class="team_invite_button">
        <overbtn :btnText="$t('prize.btnTitle')"></overbtn>
      </view>
    </view>
    <view class="team_list">
      <view class="team_list_tab">
        <view
          v-for="(item, index) in tabList"
          :key="index"
          class="team_list_tab_item"
          @click="changeTab(item.type)"
        >
          <view class="team_list_tab_item_title" :class="{ item_active: tabIndex == item.type }">{{ item.title }}</view>
          <image v-if="tabIndex == item.type" src="/static/image/icon_Select.png" />
        </view>
      </view>
      <mescroll-body
        ref="mescrollRef"
        :down="downOption"
        :up="upOption"
        @init="mescrollInit"
        @down="downCallback"
        @up="upCallback"
      >
        <view class="team_list_content">
          <view v-if="teamList.length && 1 == tabIndex" class="team_list_content_ranking">
            <view class="item">{{ $t('account.phonetime') }}</view>
            <view class="item">{{ $t('account.consumption') }}</view>
          </view>
          <view v-for="(item, index) in teamList" :key="index" class="team_list_content_item">
            <view class="team_list_content_item_left">
              <view class="rank">
                <view v-if="index < 3" class="rank_img">
                  <image :src="rankImg[index]" />
                </view>
                <view v-else></view>
                <view class="rank_user">
                  <view class="title">{{ item.mobile }}</view>
                  <view class="time">{{ item.time }}</view>
                </view>
              </view>
            </view>
            <view class="team_list_content_item_right">{{ item.reward }}</view>
          </view>
        </view>
      </mescroll-body>
    </view>
  </view>
</template>

<script>
import { interopDefault as d_4df3 } from '@/utils/mescroll-mixin';
import { userConsume } from '@/api/orich';

export default {
  mixins: [d_4df3],
  data: function () {
    return {
      people: 5,
      link: 'http://xxx/xxx/125410',
      tabList: [{
        title: this.$t('account.tab1'),
        type: 1
      }, {
        title: this.$t('account.tab2'),
        type: 2
      }],
      tabIndex: 1,
      rankImg: ['../../static/image/account/icon_gold.png', '../../static/image/account/icon_silver.png', '../../static/image/account/icon_bronze.png'],
      teamList: [],
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
      }
    };
  },
  methods: {
    handleRule: function () {
      console.log('rule');
    },
    changeTab: function (t) {
      this.tabIndex = t;
    },
    upCallback: function (t) {
      var e = this, s = (t.num - 1) * t.size, a = t.size;
      userConsume({
        start: s,
        limit: a
      }).then(function (s) {
        var i = s.list, a = i.length, n = +s.count;
        1 == t.num && (e.teamList = []);
        e.teamList = e.teamList.concat(i);
        e.mescroll.endBySize(a, n);
      }).catch(function (t) {
        e.mescroll.endErr();
      });
    }
  }
};
</script>

<style scoped>
.team { background-image:url('/static/image/finance/bg_list.png');background-size:100%;background-repeat:no-repeat;width:100vw;min-height:100vh;padding-bottom:20rpx;background-color:#f9f9f9 }
.team .team_nav { position:relative;color:#fff }
.team .team_nav .team_nav_rule { position:absolute;right:58rpx;font-size:28rpx;font-family:PingFang SC,PingFang SC-Bold;font-weight:700 }
.team .team_top { height:440rpx;border:1px solid transparent!important }
.team .team_main { margin-top:44rpx;font-family:Roboto,Roboto-Bold;display:flex;align-items:center;justify-content:flex-start;font-weight:700;color:#fff;text-align:center;padding-left:82rpx }
.team .team_main .team_main_item .team_main_item_title { font-size:36rpx;height:48rpx }
.team .team_main .team_main_item .team_main_item_num { margin-top:12rpx;font-size:40rpx;height:48rpx;line-height:48rpx }
.team .team_main .team_main_item .team_main_item_num uni-text { margin-left:12rpx;font-size:28rpx;opacity:.8 }
.team .team_main .team_main_item:nth-child(2) { margin-left:48rpx }
.team .team_personal { margin-top:76rpx;padding-left:50rpx;font-size:26rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#fff;display:flex;align-items:center;justify-content:flex-start }
.team .team_personal .team_personal_line { margin:0 26rpx;opacity:.8;height:48rpx;line-height:48rpx }
.team .team_personal .team_personal_item { height:48rpx;line-height:48rpx }
.team .team_personal .team_personal_item uni-text { padding-left:4rpx }
.team .team_direct { margin-top:30rpx;font-size:26rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#fff;padding-left:124rpx;display:flex;align-items:center;justify-content:flex-start }
.team .team_direct .team_direct_line { height:48rpx;line-height:48rpx;opacity:.8;margin:0 100rpx }
.team .team_direct .team_direct_item { height:48rpx;line-height:48rpx }
.team .team_direct .team_direct_item uni-text { margin-left:4rpx }
.team .team_invite { padding:16rpx 30rpx 42rpx 30rpx;background-color:#fff }
.team .team_invite uni-text { margin-top:-30rpx;width:100rpx;height:4rpx;opacity:.3;border:1rpx dashed #de6436 }
.team .team_invite .team_invite_step { margin-top:50rpx;display:flex;align-items:center;justify-content:space-between }
.team .team_invite .team_invite_step .team_invite_step_item { display:flex;align-items:center;justify-content:center;flex-direction:column }
.team .team_invite .team_invite_step .team_invite_step_item .team_invite_step_item_icon { width:80rpx;height:80rpx }
.team .team_invite .team_invite_step .team_invite_step_item .team_invite_step_item_icon uni-image { width:100%;height:100% }
.team .team_invite .team_invite_step .team_invite_step_item .team_invite_step_item_title { margin-top:14rpx;font-size:26rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#566c82 }
.team .team_invite .team_invite_url { margin-top:42rpx;display:flex;align-items:center;justify-content:flex-start }
.team .team_invite .team_invite_url .team_invite_url_title { opacity:.9;font-size:28rpx;font-family:PingFang SC,PingFang SC-Medium;font-weight:500;color:#566c82 }
.team .team_invite .team_invite_url .team_invite_url_main { margin-left:62rpx;width:456rpx;height:68rpx;background:rgba(143,148,180,.1);border-radius:8rpx;padding:0 18rpx 0 16rpx;display:flex;align-items:center;justify-content:space-between }
.team .team_invite .team_invite_url .team_invite_url_main .team_invite_url_main_link { max-width:330rpx;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;font-size:28rpx;font-family:PingFang SC,PingFang SC-Medium;font-weight:500;color:#8f94b4 }
.team .team_invite .team_invite_url .team_invite_url_main .team_invite_url_main_btn { font-size:28rpx;font-family:PingFang SC,PingFang SC-Medium;font-weight:500;color:#58a5ff }
.team .team_invite .team_invite_button { margin-top:34rpx }
.team .team_list { margin-top:16rpx }
.team .team_list .team_list_tab { background-color:#fff;height:98rpx;display:flex;align-items:center;justify-content:space-around;font-family:Roboto,Roboto-Medium;font-weight:500;letter-spacing:0rpx }
.team .team_list .team_list_tab .team_list_tab_item { display:flex;align-items:center;justify-content:center;flex-direction:column }
.team .team_list .team_list_tab .team_list_tab_item .team_list_tab_item_title { color:#b9b9b9 }
.team .team_list .team_list_tab .team_list_tab_item .item_active { color:#17273a }
.team .team_list .team_list_tab .team_list_tab_item uni-image { margin-top:6rpx;width:28rpx;height:10rpx }
.team .team_list .team_list_content { margin-top:8rpx;background-color:#fff }
.team .team_list .team_list_content .team_list_content_ranking { padding:22rpx 26rpx 0 30rpx;display:flex;align-items:center;justify-content:space-between }
.team .team_list .team_list_content .team_list_content_ranking .item { font-size:26rpx;font-family:Roboto,Roboto-Regular;font-weight:400;text-align:CENTER;color:#b9b9b9;letter-spacing:0rpx }
.team .team_list .team_list_content .team_list_content_item { margin:0 28rpx;padding:28rpx 0;border-bottom:1px solid #f9f9f9;display:flex;align-items:center;justify-content:space-between }
.team .team_list .team_list_content .team_list_content_item .team_list_content_item_left .rank { display:flex;align-items:center;justify-content:flex-start }
.team .team_list .team_list_content .team_list_content_item .team_list_content_item_left .rank .rank_img { width:32rpx;height:42rpx }
.team .team_list .team_list_content .team_list_content_item .team_list_content_item_left .rank .rank_img uni-image { width:100%;height:100% }
.team .team_list .team_list_content .team_list_content_item .team_list_content_item_left .rank .rank_user { margin-left:24rpx }
.team .team_list .team_list_content .team_list_content_item .team_list_content_item_left .rank .rank_user .title { font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#17273a;letter-spacing:0rpx }
.team .team_list .team_list_content .team_list_content_item .team_list_content_item_left .rank .rank_user .time { margin-top:4rpx;font-size:26rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#b9b9b9 }
.team .team_list .team_list_content .team_list_content_item .team_list_content_item_right { font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#ff5c5c }
.team { background-image:url('/static/image/account/bg_reward.png');background-size:100%;background-repeat:no-repeat;width:100vw;min-height:100vh;padding-bottom:20rpx;background-color:#f9f9f9 }
</style>
