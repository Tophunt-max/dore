<template>
  <view class="about">
    <navbar :title="$t('account.aboutus')" background="#ffffff"></navbar>
    <view class="about_main">
      <view class="about_main_item border_bottom" @click="toRich">
        <view class="about_main_item_title">{{ $t('account.user') }}</view>
        <view class="about_main_item_right">
          <view class="about_main_item_icon">
            <image class="img" :src="iconRight" mode="widthFix" />
          </view>
        </view>
      </view>
      <view class="about_main_item" @click="checkVersion">
        <view class="about_main_item_title">{{ $t('account.update') }}</view>
        <view class="about_main_item_right">
          <text>{{ $t('account.version') }}{{ version }}</text>
          <view class="about_main_item_icon">
            <image class="img" :src="iconRight" mode="widthFix" />
          </view>
        </view>
      </view>
    </view>
  </view>
</template>

<script>
export default {
  data: function () {
    return {
      version: '-',
      iconRight: '../../static/image/icon_CaretRight.png'
    };
  },
  onShow: function () {
    this.version = uni.getStorageSync('ORichVersion') || '-';
  },
  methods: {
    toRich: function () {
      uni.navigateTo({
        url: '/pages/richtext/rule?type=1'
      });
    },
    checkVersion: function () {
      var t = this, e = this;
    }
  }
};
</script>

<style scoped>
.about { min-height:100vh;background:#f8f8f8 }
.about .img { width:100% }
.about .about_top { padding-bottom:20rpx;padding-left:38rpx;margin-top:112rpx;background:#fff;border-bottom:1rpx solid #ececec }
.about .about_top .about_top_title { display:inline-block;margin-left:214rpx;font-size:32rpx;font-weight:700;font-family:Roboto,Roboto-Bold;color:#000 }
.about .about_main { background:#fff;margin-left:2rpx;padding:0 24rpx 0 30rpx }
.about .about_main .border_bottom { border-bottom:1rpx solid #ececec }
.about .about_main .about_main_item { display:flex;align-items:center;justify-content:space-between;padding:37rpx 0 }
.about .about_main .about_main_item .about_main_item_title { font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#444;letter-spacing:0rpx }
.about .about_main .about_main_item .about_main_item_right { display:flex;align-items:center }
.about .about_main .about_main_item .about_main_item_right uni-text { margin-right:16rpx;opacity:1;font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#b9b9b9;letter-spacing:0rpx }
.about .about_main .about_main_item .about_main_item_right .about_main_item_icon { width:32rpx;height:32rpx }
</style>
