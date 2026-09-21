<template>
  <view class="order">
    <view v-for="(item, index) in list" :key="index" class="order_item">
      <view class="order_item_strip">
        <view class="order_item_strip_title">
          <text></text>
          <text class="price">{{ item.price }}</text>
        </view>
        <view class="order_item_strip_title">{{ $t('game.createtime') }} {{ item.created }}</view>
      </view>
      <view class="order_item_strip">
        <view class="order_item_strip_ntr">{{ $t('game.contr') }}</view>
      </view>
      <view class="order_item_strip">
        <view class="order_item_strip_le">
          <view class="title">{{ $t('game.period') }}</view>
          <view class="content">{{ item.pid }}</view>
        </view>
        <view class="order_item_strip_le">
          <view class="title">{{ $t('game.select') }}</view>
          <view class="content">
            <text v-if="item.number" class="s_num">{{ item.number }}</text>
            <text
              v-else
              :class="{ s_green: 1 == item.color, s_violet: 2 == item.color, s_red: 3 == item.color }"
            >
              {{ 1 == item.color ? $t('game.cgreen') : 2 == item.color ? $t('game.cviolet') : $t('game.cred') }}
            </text>
          </view>
        </view>
      </view>
      <view class="order_item_strip">
        <view class="order_item_strip_le">
          <view class="title">{{ $t('game.status') }}</view>
          <view class="content" :class="[1 == item.status ? 's_green' : 's_wait']">
            {{ 1 == item.status ? $t('game.win') : 2 == item.status ? $t('game.lose') : $t('game.waiting') }}
          </view>
        </view>
        <view class="order_item_strip_le">
          <view class="title">{{ $t('game.pay') }}</view>
          <view class="content">{{ item.price }}</view>
        </view>
      </view>
      <view class="order_item_strip">
        <view class="order_item_strip_le">
          <view class="title">{{ $t('game.result') }}</view>
          <view class="content">
            <text class="u-m-r-10">{{ item.lucky_number }}</text>
            <text
              v-for="(item2, index2) in item.lucky_color"
              :key="'30-' + __gen + '-0' + __gen"
              class="u-m-r-10"
              :class="{ s_green: 1 == item2, s_violet: 2 == item2, s_red: 3 == item2 }"
            >
              {{ 1 == item2 ? $t('game.cgreen') : 2 == item2 ? $t('game.cviolet') : $t('game.cred') }}
            </text>
          </view>
        </view>
        <view class="order_item_strip_le">
          <view class="title">{{ $t('finance.amount') }}</view>
          <view class="content">{{ item.amount }}</view>
        </view>
      </view>
      <view class="order_item_strip">
        <view class="order_item_strip_le">
          <view class="title">{{ $t('game.opentime') }}</view>
          <view class="content">{{ item.created }}</view>
        </view>
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
    return {};
  },
  methods: {}
};
</script>

<style scoped>
.order { width:100%;height:100% }
.order .order_item { margin-bottom:16rpx;padding:32rpx 28rpx 32rpx 50rpx;background-color:#fff }
.order .order_item .order_item_strip { display:flex;align-items:center;justify-content:space-between }
.order .order_item .order_item_strip .order_item_strip_title { font-size:26rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#919191;letter-spacing:0rpx }
.order .order_item .order_item_strip .order_item_strip_title .price { margin-left:6rpx;font-size:36rpx;color:#ff5c5c }
.order .order_item .order_item_strip .order_item_strip_le { flex:1;margin-bottom:12rpx;display:flex;align-items:center;justify-content:flex-start }
.order .order_item .order_item_strip .order_item_strip_le .title { flex-shrink:0;min-width:124rpx;font-size:26rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#b9b9b9;letter-spacing:0rpx }
.order .order_item .order_item_strip .order_item_strip_le .content { font-size:26rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#17273a;letter-spacing:0rpx;margin-left:10rpx }
.order .order_item .order_item_strip .order_item_strip_le .s_green { color:#55e273;font-weight:500 }
.order .order_item .order_item_strip .order_item_strip_le .s_violet { font-weight:500;color:#ff62ff }
.order .order_item .order_item_strip .order_item_strip_le .s_red { color:#ff4343;font-weight:500 }
.order .order_item .order_item_strip .order_item_strip_le .s_wait { color:#ee5016;font-weight:500 }
.order .order_item .order_item_strip .order_item_strip_le .s_num { color:#649dff;font-weight:500 }
.order .order_item .order_item_strip_ntr { margin-top:28rpx;margin-bottom:16rpx;font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:500;color:#17273a;letter-spacing:0rpx }
</style>
