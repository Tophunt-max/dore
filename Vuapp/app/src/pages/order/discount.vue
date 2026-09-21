<template>
  <view class="discount">
    <navbar :title="$t('discount.navtitle')" background="transparent" titleColor="#fff" backColor="#FFF"></navbar>
    <view class="discount_main">
      <view v-for="(item, index) in rankList" :key="index" class="discount_main_item">
        <view class="discount_main_item_bg_1" :style="{ height: +index > 0 ? '300rpx' : '240rpx' }">
          <image :src="bgList[index]" />
        </view>
        <view class="discount_main_item_name">
          <view>{{ toRank(index) }} prize</view>
          <view>₹ {{ item[index].winnerprice }}</view>
        </view>
        <view v-if="0 == index" class="discount_main_item_info">
          <view class="discount_main_item_info_avatar">
            <view class="avatar_king">
              <image :src="'/static/image/discount/icon_Crown.png'" />
            </view>
            <view class="avatar_main">
              <image :src="item[0].headimg" />
            </view>
          </view>
          <view class="discount_main_item_info_code">
            <view class="winner">{{ item[index].winner }}</view>
            <view class="code">{{ item[index].winnercode }}</view>
          </view>
        </view>
        <view v-else class="discount_main_item_second">
          <view v-for="(item2, index2) in item" :key="index2" class="discount_main_item_second_box">
            <text class="second_name">{{ item2.winner }}</text>
            <text class="second_code">{{ item2.winnercode }}</text>
          </view>
        </view>
      </view>
    </view>
  </view>
</template>

<script>
import { GetLottery } from '@/api/orich';

export default {
  data: function () {
    return {
      rankList: [],
      bgList: ['../../static/image/discount/bg_red.png', '../../static/image/discount/bg_Yellow.png', '../../static/image/discount/bg_Cyan.png', '../../static/image/discount/bg_Purple.png', '../../static/image/discount/bg_Green.png'],
      disId: ''
    };
  },
  onLoad: function (t) {
    this.disId = t.id;
    this.getData();
  },
  methods: {
    getData: function () {
      var t = this;
      GetLottery({
        id: this.disId
      }).then(function (e) {
        t.rankList = e.win;
      });
    },
    toRank: function (t) {
      var e = ['First', 'Second', 'Third', 'Fourth', 'Fifth', 'Sixth', 'Seventh', 'Eighth', 'Ninth', 'Tenth'], s = parseInt(t) + 1;
      if (s <= 10) return e[s - 1];
    }
  }
};
</script>

<style scoped>
.discount { background:#fe995d;min-height:100vh }
.discount .discount_main { margin-top:82rpx;padding:0 28rpx 0 32rpx }
.discount .discount_main .discount_main_item { margin-bottom:58rpx;height:100%;width:100%;border-radius:16rpx;position:relative }
.discount .discount_main .discount_main_item .discount_main_item_ranking { height:66rpx;background:linear-gradient(103deg,#ffe44b,#fea326);border-radius:8rpx;box-shadow:0rpx -4rpx 8rpx 0rpx rgba(255,125,0,.5) inset;position:absolute;top:-34rpx;left:50%;-webkit-transform:translateX(-50%);transform:translateX(-50%);font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:500;text-align:CENTER;color:#fff;line-height:66rpx;white-space:nowrap }
.discount .discount_main .discount_main_item .discount_main_item_bg_1 { width:691rpx }
.discount .discount_main .discount_main_item .discount_main_item_bg_1 uni-image { width:100%;height:100% }
.discount .discount_main .discount_main_item .discount_main_item_name { position:absolute;top:8rpx;left:36rpx;font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#fff }
.discount .discount_main .discount_main_item .discount_main_item_second { position:absolute;top:80rpx;left:0;height:220rpx;width:100%;padding-left:60rpx;padding-top:16rpx;display:flex;flex-wrap:wrap;overflow-y:auto }
.discount .discount_main .discount_main_item .discount_main_item_second .discount_main_item_second_box { width:50% }
.discount .discount_main .discount_main_item .discount_main_item_second .second_name { font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#ee5016;line-height:48rpx }
.discount .discount_main .discount_main_item .discount_main_item_second .second_code { margin-left:22rpx;font-size:24rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#ee5016;line-height:48rpx }
.discount .discount_main .discount_main_item .discount_main_item_info { display:flex;align-items:center;justify-content:space-between;position:absolute;left:50%;top:98rpx;-webkit-transform:translateX(-50%);transform:translateX(-50%) }
.discount .discount_main .discount_main_item .discount_main_item_info .discount_main_item_info_avatar { width:72rpx;display:flex;align-items:center;flex-direction:column }
.discount .discount_main .discount_main_item .discount_main_item_info .discount_main_item_info_avatar .avatar_king { width:28rpx;height:28rpx }
.discount .discount_main .discount_main_item .discount_main_item_info .discount_main_item_info_avatar .avatar_king uni-image { width:100%;height:100% }
.discount .discount_main .discount_main_item .discount_main_item_info .discount_main_item_info_avatar .avatar_main { width:72rpx;height:72rpx;border:4rpx solid #ffcf5c;border-radius:50%;overflow:hidden }
.discount .discount_main .discount_main_item .discount_main_item_info .discount_main_item_info_avatar .avatar_main uni-image { width:100%;height:100% }
.discount .discount_main .discount_main_item .discount_main_item_info .discount_main_item_info_code { margin-left:14rpx;margin-top:22rpx }
.discount .discount_main .discount_main_item .discount_main_item_info .discount_main_item_info_code .winner { font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#ee5016 }
.discount .discount_main .discount_main_item .discount_main_item_info .discount_main_item_info_code .code { font-size:24rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#ee5016;margin-top:10rpx }
.discount .discount_main .discount_main_item .discount_main_item_info .right { margin-left:4rpx;font-weight:500;text-align:left }
.discount .discount_main .discount_main_item .discount_main_item_info .discount_main_item_info_name { display:flex;font-size:28rpx;font-family:Roboto,Roboto-Bold;font-weight:700;text-align:CENTER;color:#fff;line-height:48rpx }
.discount .discount_main .discount_main_item .discount_main_item_info .discount_main_item_info_name uni-text { white-space:nowrap }
</style>
