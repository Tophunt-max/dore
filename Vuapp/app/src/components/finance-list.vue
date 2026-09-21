<template>
  <view v-if="list.length" class="list">
    <view v-for="(item, index) in list" :key="index" class="list_item" @click="toBuy(item)">
      <view class="list_item_left">
        <view class="list_item_left_img">
          <image :src="item.img" />
        </view>
        <view class="list_item_left_avatar">
          <image v-for="(item2, index2) in item.userimgurl" :key="index2" :src="item2" />
        </view>
        <view v-if="item.countdown && '00:00:00' != item.countdown" class="list_item_left_time">{{ item.countdown }}</view>
      </view>
      <view class="list_item_right">
        <view class="list_item_right_title">{{ item.name }}</view>
        <view class="list_item_right_content m_top20">
          <view class="list_item_right_linepro_gress">
            <lineprogress :percent="100 * item.progress"></lineprogress>
          </view>
          <view class="list_item_right_linepro_num">{{ item.all_buy_num }}{{ item.max_buy }}</view>
        </view>
        <view class="list_item_right_content m_top20">
          <view class="list_item_right_content_total">
            <text class="c_title">{{ $t('finance.amount') }}</text>
            <text class="c_main">{{ item.amount }}</text>
          </view>
          <view class="list_item_right_content_total">
            <text class="c_title">{{ $t('finance.uprice') }}</text>
            <text class="c_main">{{ item.price }}</text>
          </view>
        </view>
        <view class="list_item_right_content">
          <view class="list_item_right_content_total">
            <text class="c_title">{{ $t('finance.rate') }}</text>
            <text class="c_main">{{ item.rate }}</text>
          </view>
          <view class="list_item_right_content_total">
            <text class="c_title">{{ $t('finance.due') }}</text>
            <text class="c_main">{{ item.day }}{{ $t('finance.day') }}</text>
          </view>
        </view>
        <view class="list_item_right_joined">{{ item.usernumber }}{{ $t('finance.joined') }}</view>
      </view>
      <view class="list_item_btn" @click="toBuy(item)">
        <text>{{ $t('home.snatch') }}</text>
        <image />
      </view>
      <view v-if="2 == item.status" class="list_item_finish">
        <image />
      </view>
    </view>
  </view>
</template>

<script>
export default {
  props: {
    list: {
      type: Array,
      default: function () {
        return [];
      }
    }
  },
  data: function () {
    return {
      timer: null
    };
  },
  methods: {
    toBuy: function (t) {
      this.$emit('buy', t);
    }
  },
  mounted: function () {
    var t = this;
    this.timer = setInterval(function () {
      t.$forceUpdate();
    }, 1e3);
  },
  unmounted: function () {
    clearInterval(this.timer);
  }
};
</script>

<style scoped>
.list { width:100%;font-family:Roboto,Roboto-Medium }
.list .list_item { display:flex;align-items:flex-start;justify-content:flex-start;margin:28rpx;padding-bottom:30rpx;border-bottom:2rpx solid #f5f5f5;position:relative }
.list .list_item .list_item_left { flex-shrink:0;max-width:184rpx;position:relative }
.list .list_item .list_item_left .list_item_left_img { width:184rpx;height:184rpx }
.list .list_item .list_item_left .list_item_left_img uni-image { width:100%;height:100% }
.list .list_item .list_item_left .list_item_left_avatar { margin-top:8rpx;margin-left:10rpx;padding-left:4rpx }
.list .list_item .list_item_left .list_item_left_avatar uni-image { width:40rpx;height:40rpx;border-radius:50%;margin-left:-10rpx;overflow:hidden }
.list .list_item .list_item_left .list_item_left_time { padding:0 4rpx;width:100%;height:38rpx;line-height:38rpx;background:#90b9ff;border-radius:20rpx 20rpx 0 0;font-size:24rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#fff;position:absolute;left:0;top:148rpx;white-space:nowrap;text-align:center }
.list .list_item .list_item_right { width:100%;margin-left:44rpx }
.list .list_item .list_item_right .list_item_right_title { max-width:440rpx;font-size:28rpx;font-weight:500;color:#000;letter-spacing:0rpx;overflow:hidden;white-space:nowrap;text-overflow:ellipsis }
.list .list_item .list_item_right .m_top20 { margin-top:20rpx }
.list .list_item .list_item_right .list_item_right_content { display:flex;align-items:center }
.list .list_item .list_item_right .list_item_right_content .list_item_right_linepro_gress { width:100%;padding-right:24rpx }
.list .list_item .list_item_right .list_item_right_content .list_item_right_linepro_num { font-size:28rpx;font-weight:500;color:#b9b9b9;letter-spacing:0rpx }
.list .list_item .list_item_right .list_item_right_content .list_item_right_content_total { width:50%;font-size:24rpx;line-height:36rpx;letter-spacing:0rpx;overflow:hidden;text-overflow:ellipsis;white-space:nowrap }
.list .list_item .list_item_right .list_item_right_content .list_item_right_content_total .c_title { font-weight:700;color:#b9b9b9 }
.list .list_item .list_item_right .list_item_right_content .list_item_right_content_total .c_main { margin-left:6rpx;font-weight:400;color:#ff5c5c }
.list .list_item .list_item_right .list_item_right_joined { font-size:24rpx;font-weight:700;color:#b9b9b9;line-height:36rpx;letter-spacing:0rpx;margin-top:26rpx }
.list .list_item_btn { position:absolute;bottom:18rpx;right:0;width:150rpx;height:60rpx;line-height:60rpx;background:linear-gradient(115deg,#ffe44b,#fea326);border-radius:8rpx;box-shadow:0rpx -4rpx 8rpx 0rpx rgba(255,125,0,.5) inset;display:flex;align-items:center;justify-content:center }
.list .list_item_btn uni-image { width:28rpx;height:28rpx;margin-left:28rpx }
.list .list_item_btn uni-text { font-size:28rpx;font-family:DIN,DIN-Medium;font-weight:500;color:#ad6701 }
.list .list_item_finish { width:118rpx;height:132rpx;position:absolute;left:0;top:-28rpx }
.list .list_item_finish uni-image { width:100%;height:100% }
</style>
