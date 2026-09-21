<template>
  <view v-if="cardList.length" class="cardlist">
    <view
      v-for="(item, index) in cardList"
      :key="index"
      class="cardlist_item"
      :style="{ 'border-radius': shareValue ? '20rpx' : '0', background: background, 'margin-top': 0 == index ? '' : marTop + 'rpx' }"
      @click="toDetail(item.dumid)"
    >
      <view class="cardlist_item_info">
        <view v-if="shareValue" class="cardlist_item_lefttop">
          <image v-if="1 === +item.dumstatus" class="img" :src="'/static/image/record/img_Finish.png'" />
          <image v-if="2 === +item.dumstatus" class="img" :src="'/static/image/record/img_YouWon.png'" />
        </view>
        <view class="cardlist_item_left" :class="shareValue ? 'imgorder_padd' : 'imgdetail_padd'">
          <view
            class="cardlist_item_left_img"
            :class="shareValue ? 'list' : 'detail'"
            @click="imgToDetail(item.dumid)"
          >
            <view v-if="!shareValue" class="cardlist_item_left_mask">
              <image v-if="1 === +item.dumstatus" class="img" :src="'/static/image/record/img_Finish.png'" />
              <image v-if="2 === +item.dumstatus" class="img" :src="'/static/image/record/img_YouWon.png'" />
            </view>
            <image class="img" :src="item.iconurl" />
          </view>
        </view>
        <view class="cardlist_item_right">
          <view class="cardlist_item_right_top" :class="shareValue ? 'order_padd' : 'detail_padd'">
            <view
              class="cardlist_item_right_top_title"
              :class="{ ellipsis: shareValue }"
              :style="{ width: shareValue ? '370rpx' : '' }"
            >
              {{ item.dealname }}
            </view>
            <view v-if="shareValue" class="cardlist_item_right_top_share" @click.stop="handleShare(item)">
              <image class="img" :src="shareIcon" />
            </view>
          </view>
          <view class="cardlist_item_right_main">
            <view class="cardlist_item_right_main_total">
              <view class="gray">{{ $t('card.issue') }}{{ item.issue }}</view>
            </view>
            <view v-if="1 == item.status" class="cardlist_item_right_main_total linewidth">
              <lineprogress :percent="item.remain > 0 ? 100 - item.remain / item.need * 100 : 100"></lineprogress>
            </view>
            <view class="cardlist_item_right_main_total">
              <view class="gray">{{ $t('card.need') }}{{ item.need }}</view>
            </view>
            <view v-if="1 == item.status" class="cardlist_item_right_main_total">
              <view class="gray">
                {{ $t('card.remaining') }}
                <text class="red">{{ item.remain }}</text>
              </view>
            </view>
            <view v-if="shareValue" class="cardlist_item_right_main_total">
              <view class="gray">
                {{ $t('card.numbers') }}
                <text class="red">{{ item.numbers }}</text>
              </view>
            </view>
            <view v-if="3 == item.dumstatus && shareValue" class="cardlist_item_right_main_total">
              <template v-if="'00:00:00' != item.countdown">
                <view class="red">
                  {{ (item.has_lottery, $t('card.endin')) }}
                  <text class="red">{{ item.countdown }}</text>
                </view>
                <view v-if="0 == item.endin && 1 == item.status && 0 != item.remain"></view>
              </template>
            </view>
            <view
              v-if="item.winnerdetail && 1 != item.status && !shareValue"
              class="cardlist_item_right_main_winner"
              @click.stop="toDiscount(item.dumnormal, item.dumid)"
            >
              <view v-if="2 == item.dumnormal" class="items gray">
                {{ $t('card.youwon') }}
                <text class="red">{{ item.word }}{{ item.getprice }}</text>
              </view>
              <view class="items gray">
                {{ $t('card.winner') }}
                <text class="red">{{ item.winnerdetail.winner }}</text>
              </view>
              <view class="items gray">
                {{ $t('card.code') }}
                <text class="red">{{ item.winnerdetail.winnercode }}</text>
              </view>
              <view class="items gray">{{ $t('card.drawtime') }}{{ item.winnerdetail.winnertime }}</view>
            </view>
          </view>
        </view>
        <template v-if="shareValue">
          <view
            v-if="1 == item.status && 0 != item.remain || 2 == item.dumstatus && 2 != item.status && 7 != item.status && 6 != item.status"
            :class="1 == item.status ? 'cardlist_item_btn' : 'cardlist_item_reunite'"
          >
            <view
              class="cardlist_btn"
              :class="5 == item.status ? 'btn_size_2' : 'btn_size_1'"
              @click.stop="handleNav(item.status, item.dumid)"
            >
              <view>{{ btnTitle(item.status) }}</view>
              <image class="img" :src="'/static/image/icon_RightArrow.png'" />
            </view>
          </view>
        </template>
      </view>
      <view
        v-if="shareValue && 1 == item.auto_return && 1 == item.dumstatus && item.return_rate"
        class="cardlist_item_loser"
      >
        <view class="cardlist_item_loser_strip">
          <view class="title">
            {{ $t('card.principal') }}
            <text class="u-m-l-6">{{ item.return_amount }}</text>
          </view>
          <view class="title">
            {{ $t('card.ratio') }}
            <text class="u-m-l-6">{{ item.return_rate }}</text>
          </view>
        </view>
        <view class="cardlist_item_loser_strip">
          <view class="title">
            {{ $t('card.interest') }}
            <text class="u-m-l-6">{{ item.return_income }}</text>
          </view>
        </view>
        <view class="cardlist_item_loser_strip">
          <view class="title">{{ $t('card.ltime') }}{{ item.return_time }}</view>
        </view>
      </view>
    </view>
  </view>
</template>

<script>
import m_0765 from '@/vendor/0765';
import { countDown } from '@/utils/orich';

export default {
  inheritAttrs: false,
  props: {
    cardList: {
      type: Array,
      default: function () {
        return [];
      }
    },
    background: {
      type: String,
      default: '#ffffff'
    },
    marTop: {
      type: [Number, String],
      default: '22'
    },
    shareValue: {
      type: Boolean,
      default: true
    }
  },
  data: function () {
    return {
      shareIcon: '../../static/image/record/icon_Share.png',
      customStyle: {},
      countDownList: [],
      timer: null
    };
  },
  mounted: function () {
    this.countDownList = this.cardList;
    this.customStyle = m_0765.submitStyle;
    this.timer && clearInterval(this.timer);
    this.beginTimer();
  },
  filters: {
    countDownFilter: function (t) {
      return countDown(t);
    }
  },
  methods: {
    beginTimer: function () {
      var t = this;
      this.timer = setInterval(function () {
        for (var e = 0, s = t.cardList.length; e < s; e++) 1 == t.cardList[e].status && (t.$forceUpdate(), '00:00:00' == t.cardList[e].endin && clearInterval(t.timer));
      }, 1e3);
    },
    handleAppend: function (t) {
      this.$emit('navNext', t);
    },
    toDetail: function (t) {
      this.$emit('navToDetail', t);
    },
    handleShare: function (t) {
      this.$emit('share', t);
    },
    btnTitle: function (t) {
      var e = '';
      switch (+t) {
        case 1:
          e = this.$t('card.addmore');
          break;
        case 3:
          e = this.$t('order.confirm');
          break;
        case 4:
        case 6:
          e = this.$t('order.receive');
          break;
        case 5:
          e = this.$t('order.comment');
          break;
      }
      return e;
    },
    handleNav: function (t, e) {
      this.$emit('handleSkip', t, e);
    },
    imgToDetail: function (t) {
      this.$emit('imgToDetail', t);
    },
    countDownNow: function (t) {
      return countDown(t);
    },
    toDiscount: function (t, e) {
      this.$emit('navToDiscount', t, e);
    },
    toRank: function (t) {
      var e = ['First', 'Second', 'Third', 'Fourth', 'Fifth', 'Sixth', 'Seventh', 'Eighth', 'Ninth', 'Tenth'], s = parseInt(t);
      if (s <= 10) return e[s - 1];
    }
  }
};
</script>

<style scoped>
.cardlist .img { width:100%;height:100% }
.cardlist .red { color:#ee5016 }
.cardlist .gray { color:#b9b9b9 }
.cardlist .lightblue { color:#228afc }
.cardlist .linewidth { width:230rpx }
.cardlist .mar_40 { margin-left:40rpx }
.cardlist .cardlist_item { padding-bottom:26rpx }
.cardlist .cardlist_item .cardlist_item_info { font-family:Roboto,Roboto-Bold;position:relative;display:flex;padding-left:26rpx;overflow:hidden }
.cardlist .cardlist_item .cardlist_item_lefttop { width:102rpx;height:118rpx;position:absolute;top:-6rpx;left:0;z-index:99 }
.cardlist .cardlist_item .imgorder_padd { display:flex;flex-direction:column;justify-content:center;align-items:center }
.cardlist .cardlist_item .cardlist_item_left .cardlist_item_left_img { border-radius:8rpx;display:flex;align-items:center;overflow:hidden;position:relative }
.cardlist .cardlist_item .cardlist_item_left .cardlist_item_left_img .cardlist_item_left_mask { width:102rpx;height:118rpx;position:absolute;top:-8rpx;left:0;z-index:99 }
.cardlist .cardlist_item .cardlist_item_left .list { width:154rpx;height:154rpx }
.cardlist .cardlist_item .cardlist_item_left .detail { width:180rpx;height:180rpx }
.cardlist .cardlist_item .cardlist_item_right { margin-left:30rpx;margin-bottom:36rpx }
.cardlist .cardlist_item .cardlist_item_right .order_padd { padding-top:34rpx }
.cardlist .cardlist_item .cardlist_item_right .detail_padd { padding-top:0 }
.cardlist .cardlist_item .cardlist_item_right .cardlist_item_right_top { display:flex }
.cardlist .cardlist_item .cardlist_item_right .cardlist_item_right_top .cardlist_item_right_top_title { margin-right:32rpx;font-size:28rpx;font-weight:700;color:#000 }
.cardlist .cardlist_item .cardlist_item_right .cardlist_item_right_top .ellipsis { white-space:nowrap;text-overflow:ellipsis;overflow:hidden;word-break:break-all }
.cardlist .cardlist_item .cardlist_item_right .cardlist_item_right_top .cardlist_item_right_top_share { width:98rpx;height:102rpx;position:absolute;top:0;right:0 }
.cardlist .cardlist_item .cardlist_item_right .cardlist_item_right_main .cardlist_item_right_main_total { margin-top:10rpx;display:flex;align-items:center }
.cardlist .cardlist_item .cardlist_item_right .cardlist_item_right_main .cardlist_item_right_main_winner { width:448rpx;margin-top:24rpx;border-radius:16rpx;background:#f5f5f5;padding-left:28rpx;padding-bottom:16rpx }
.cardlist .cardlist_item .cardlist_item_right .cardlist_item_right_main .cardlist_item_right_main_winner .items { padding-top:16rpx }
.cardlist .cardlist_item .cardlist_item_reunite { position:absolute;bottom:40rpx;right:26rpx }
.cardlist .cardlist_item .cardlist_item_btn { position:absolute;bottom:46rpx;right:26rpx }
.cardlist .cardlist_item .btn_size_1 { width:170rpx;height:60rpx }
.cardlist .cardlist_item .btn_size_2 { width:172rpx;height:60rpx }
.cardlist .cardlist_item .cardlist_btn { display:flex;flex-direction:row;align-items:center;justify-content:center;opacity:1;background:linear-gradient(115deg,#ffe44b,#fea326);border-radius:8rpx;box-shadow:0rpx -4rpx 8rpx 0rpx rgba(255,125,0,.5) inset;font-size:26rpx;font-family:DIN,DIN-Medium;font-weight:400;color:#ad6701 }
.cardlist .cardlist_item .cardlist_btn uni-image { width:28rpx;height:28rpx;margin-left:6rpx }
.cardlist .cardlist_item .cardlist_item_loser { margin:-20rpx 26rpx 0 26rpx;padding:18rpx 22rpx 24rpx 22rpx;background:#ffece5;border-radius:16rpx }
.cardlist .cardlist_item .cardlist_item_loser .cardlist_item_loser_strip { display:flex;align-items:center;justify-content:space-between;flex-wrap:wrap;font-size:28rpx;font-family:Roboto,Roboto-Regular;font-weight:400 }
.cardlist .cardlist_item .cardlist_item_loser .cardlist_item_loser_strip .title { margin-top:16rpx;color:#bca39a }
.cardlist .cardlist_item .cardlist_item_loser .cardlist_item_loser_strip .title uni-text { color:#ff5c5c }
</style>
