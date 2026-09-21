<template>
  <view class="detail">
    <navbar :title="$t('account.detailtitle')" background="#ffffff"></navbar>
    <view class="detail_count">
      <view class="detail_count_march">
        <view class="detail_count_march_item">
          <view class="detail_count_march_title" @click="open">{{ showMonth }}</view>
          <view class="detail_count_march_select" @click="openYear">
            {{ search.year }}
            <image :src="'/static/image/account/icon_Downarrow.png'" />
          </view>
        </view>
        <view class="detail_count_march_rew otw">Rewards(₹): {{ count.reward }}</view>
      </view>
      <view class="detail_count_money">
        <view class="detail_count_money_item">
          <view class="money">{{ count.myachievement }}</view>
          <view class="title">{{ $t('account.teamcon') }}(₹)</view>
        </view>
        <view class="detail_count_money_item">
          <view class="money">{{ count.teamachievement }}</view>
          <view class="title">{{ $t('account.teamper') }}(₹)</view>
        </view>
      </view>
    </view>
    <view class="detail_tab">
      <view class="detail_list_tab">
        <view
          v-for="(item, index) in tabList"
          :key="index"
          class="detail_list_tab_item"
          @click="changeTab(item.type)"
        >
          <view class="detail_list_tab_item_title" :class="{ item_active: search.type == item.type }">{{ item.title }}</view>
          <image v-if="search.type == item.type" src="/static/image/icon_Select.png" />
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
        <view class="detail_list_content">
          <view v-for="(item, index) in detailList" :key="index" class="detail_list_content_item">
            <view class="detail_list_content_item_user">
              <view class="detail_list_content_item_avatar">
                <image :src="item.headimg" />
              </view>
              <view class="detail_list_content_item_name otw">{{ item.nickname }}</view>
              <view class="detail_list_content_item_vipimg">
                <image :src="item.vip_img" />
              </view>
              <view class="detail_list_content_item_team">
                {{ $t('account.liteam') }}
                <text>{{ item.count }}</text>
                {{ $t('account.lipeople') }}
              </view>
            </view>
            <view class="detail_list_content_item_count">
              <view class="detail_list_content_item_count_tab">
                <view class="title">{{ $t('account.mance1') }}</view>
                <view class="money">{{ item.myachievement }}</view>
              </view>
              <view class="detail_list_content_item_count_tab">
                <view class="title">{{ $t('account.mance2') }}</view>
                <view class="money">{{ item.teamachievement }}</view>
              </view>
            </view>
          </view>
        </view>
      </mescroll-body>
    </view>
    <u-select
      mode="single-column"
      :list="monthList"
      :default-value="[monthDefault]"
      confirm-text="Confirm"
      cancel-text="Cancel"
      @confirm="confirm"
      v-model="show"
    ></u-select>
    <u-select
      mode="single-column"
      :list="yearList"
      :default-value="[yearDefault]"
      confirm-text="Confirm"
      cancel-text="Cancel"
      @confirm="confirmYear"
      v-model="showYear"
    ></u-select>
  </view>
</template>

<script>
import { interopDefault as d_4df3 } from '@/utils/mescroll-mixin';
import { myTeam } from '@/api/orich';

export default {
  mixins: [d_4df3],
  data: function () {
    return {
      show: false,
      showYear: false,
      monthDefault: 0,
      yearDefault: 0,
      params: {
        year: true,
        month: true,
        day: false,
        hour: false,
        minute: false,
        second: false
      },
      showMonth: '',
      detailList: [],
      search: {
        year: '',
        month: '',
        type: '1'
      },
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
      count: {
        count_1: '',
        count_2: '',
        myachievement: '',
        teamachievement: '',
        reward: 0
      },
      monthList: [{
        value: '1',
        label: '01'
      }, {
        value: '2',
        label: '03'
      }, {
        value: '3',
        label: '03'
      }, {
        value: '4',
        label: '04'
      }, {
        value: '5',
        label: '05'
      }, {
        value: '6',
        label: '06'
      }, {
        value: '7',
        label: '07'
      }, {
        value: '8',
        label: '08'
      }, {
        value: '9',
        label: '09'
      }, {
        value: '10',
        label: '10'
      }, {
        value: '11',
        label: '11'
      }, {
        value: '12',
        label: '12'
      }],
      yearList: []
    };
  },
  computed: {
    tabList: function () {
      var t = [];
      return (t = [{
        title: ('').concat(this.$t('account.detailtab1'), '( ').concat(this.count.count_1, ' )'),
        type: 1
      }, {
        title: ('').concat(this.$t('account.detailtab2'), '( ').concat(this.count.count_2, ' )'),
        type: 2
      }], t);
    }
  },
  watch: {
    'search.type': function (t) {
      this.mescroll.resetUpScroll();
    },
    'search.month': function (t) {
      var e = '';
      switch (+t) {
        case 1:
          e = 'January';
          break;
        case 2:
          e = 'February';
          break;
        case 3:
          e = 'March';
          break;
        case 4:
          e = 'April';
          break;
        case 5:
          e = 'May';
          break;
        case 6:
          e = 'June';
          break;
        case 7:
          e = 'July';
          break;
        case 8:
          e = 'August';
          break;
        case 9:
          e = 'September';
          break;
        case 10:
          e = 'October';
          break;
        case 11:
          e = 'November';
          break;
        case 12:
          e = 'December';
          break;
      }
      this.monthDefault = +t - 1;
      this.showMonth = e;
    }
  },
  onLoad: function () {
    this.nowDay();
  },
  methods: {
    changeTab: function (t) {
      this.search.type = t;
    },
    upCallback: function (t) {
      var e = this, s = (t.num - 1) * t.size, i = t.size;
      myTeam(Object.assign({}, this.search, {
        start: s,
        limit: i
      })).then(function (s) {
        var i = s.list, a = i.length, n = 1 == e.search.type ? s.count_1 : s.count_2;
        e.count.count_1 = s.count_1;
        e.count.count_2 = s.count_2;
        e.count.myachievement = s.myachievement;
        e.count.teamachievement = s.teamachievement;
        e.count.reward = s.reward;
        1 == t.num && (e.detailList = []);
        e.detailList = e.detailList.concat(i);
        e.mescroll.endBySize(a, n);
      }).catch(function (t) {
        e.mescroll.endErr();
      });
    },
    open: function () {
      this.show = true;
    },
    openYear: function () {
      for (var t = 0, e = this.yearList.length; t < e; t++) this.search.year == this.yearList[t].value && (this.yearDefault = t);
      this.showYear = true;
    },
    confirm: function (t) {
      this.search.month = t[0].value;
      this.mescroll.resetUpScroll();
    },
    confirmYear: function (t) {
      this.search.year = t[0].value;
      this.mescroll.resetUpScroll();
    },
    nowDay: function () {
      var e = new Date(), s = {
        year: e.getFullYear(),
        month: e.getMonth() + 1,
        date: e.getDate()
      };
      console.log(s);
      this.search.year = s.year;
      this.search.month = s.month;
      this.getYearList(this.search.year);
    },
    getYearList: function (t) {
      for (var e = [], s = t - 10; s < t + 1; s++) e.push({
        value: s,
        label: s
      });
      this.yearList = e;
    }
  }
};
</script>

<style scoped>
.detail { width:100%;background:#f9f9f9;min-height:100vh }
.detail .detail_count { margin-top:12rpx;padding:0 34rpx 0 30rpx;width:100%;height:234rpx;background-image:url('/static/image/account/bg_myteam.png');background-size:686rpx 234rpx;background-repeat:no-repeat;background-position:30rpx }
.detail .detail_count .detail_count_march { display:flex;align-items:center;justify-content:space-between;padding-top:34rpx;padding-left:26rpx;padding-right:52rpx }
.detail .detail_count .detail_count_march .detail_count_march_item { display:flex;align-items:center;justify-content:flex-start }
.detail .detail_count .detail_count_march .detail_count_march_title { font-size:36rpx;font-family:Roboto,Roboto-Bold;font-weight:700;color:#fff }
.detail .detail_count .detail_count_march .detail_count_march_rew { color:#fff;max-width:300rpx }
.detail .detail_count .detail_count_march .detail_count_march_select { margin-left:26rpx;font-size:28rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#fff;position:relative }
.detail .detail_count .detail_count_march .detail_count_march_select uni-image { margin-left:8rpx;width:18rpx;height:10rpx;position:absolute;top:50%;-webkit-transform:translateY(-50%);transform:translateY(-50%) }
.detail .detail_count .detail_count_money { padding:0 52rpx 0 54rpx;margin-top:32rpx;display:flex;align-items:center;justify-content:space-between }
.detail .detail_count .detail_count_money .detail_count_money_item { display:flex;align-items:center;justify-content:center;flex-direction:column;white-space:nowrap }
.detail .detail_count .detail_count_money .detail_count_money_item .money { font-size:36rpx;font-family:Roboto,Roboto-Bold;font-weight:700;color:#fff }
.detail .detail_count .detail_count_money .detail_count_money_item .title { margin-top:16rpx;font-size:26rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#fff }
.detail .detail_tab { margin-top:24rpx }
.detail .detail_tab .detail_list_tab { background-color:#fff;height:98rpx;display:flex;align-items:center;justify-content:space-around;font-family:Roboto,Roboto-Medium;font-weight:500;letter-spacing:0rpx }
.detail .detail_tab .detail_list_tab .detail_list_tab_item { display:flex;align-items:center;justify-content:center;flex-direction:column }
.detail .detail_tab .detail_list_tab .detail_list_tab_item .detail_list_tab_item_title { color:#b9b9b9 }
.detail .detail_tab .detail_list_tab .detail_list_tab_item .item_active { color:#17273a }
.detail .detail_tab .detail_list_tab .detail_list_tab_item uni-image { margin-top:6rpx;width:28rpx;height:10rpx }
.detail .detail_tab .detail_list_content { margin-top:8rpx;background-color:#fff }
.detail .detail_tab .detail_list_content .detail_list_content_item { padding:30rpx 0;margin-right:30rpx;margin-left:30rpx;border-bottom:2rpx solid #f9f9f9 }
.detail .detail_tab .detail_list_content .detail_list_content_item .detail_list_content_item_user { display:flex;align-items:center;justify-content:flex-start }
.detail .detail_tab .detail_list_content .detail_list_content_item .detail_list_content_item_user .detail_list_content_item_avatar { width:64rpx;height:64rpx }
.detail .detail_tab .detail_list_content .detail_list_content_item .detail_list_content_item_user .detail_list_content_item_avatar uni-image { width:100%;height:100% }
.detail .detail_tab .detail_list_content .detail_list_content_item .detail_list_content_item_user .detail_list_content_item_name { margin-left:14rpx;font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#17273a;letter-spacing:0rpx;max-width:200rpx }
.detail .detail_tab .detail_list_content .detail_list_content_item .detail_list_content_item_user .detail_list_content_item_vipimg { width:100rpx;height:46rpx;margin-left:16rpx }
.detail .detail_tab .detail_list_content .detail_list_content_item .detail_list_content_item_user .detail_list_content_item_vipimg uni-image { width:100%;height:100% }
.detail .detail_tab .detail_list_content .detail_list_content_item .detail_list_content_item_user .detail_list_content_item_team { margin-left:38rpx;font-size:28rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#17273a;letter-spacing:0rpx }
.detail .detail_tab .detail_list_content .detail_list_content_item .detail_list_content_item_user .detail_list_content_item_team uni-text { color:#ff5c5c;margin:0 6rpx }
.detail .detail_tab .detail_list_content .detail_list_content_item .detail_list_content_item_count { margin-top:32rpx;padding-left:26rpx;padding-right:32rpx;display:flex;align-items:center;justify-content:space-between }
.detail .detail_tab .detail_list_content .detail_list_content_item .detail_list_content_item_count .detail_list_content_item_count_tab { display:flex;align-items:center;justify-content:center;flex-direction:column;font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#17273a;letter-spacing:0rpx }
.detail .detail_tab .detail_list_content .detail_list_content_item .detail_list_content_item_count .detail_list_content_item_count_tab .money { margin-top:10rpx;color:#ff5c5c }
</style>
