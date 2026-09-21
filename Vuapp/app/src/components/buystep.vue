<template>
  <view class="step" :class="page">
    <template v-if="1 == type">
      <view class="step-op1"></view>
      <view class="step-op2"></view>
      <view class="step-item">
        <image src="/static/image/home/icon_1GroupBuy.png" mode="widthFix" />
        <view>{{ $t('home.step1') }}</view>
      </view>
      <view class="step-item">
        <image src="/static/image/home/icon_WinnerDrawn.png" mode="widthFix" />
        <view>{{ $t('home.step2') }}</view>
      </view>
      <view class="step-item">
        <image src="/static/image/home/icon_FreeShipping.png" mode="widthFix" />
        <view>{{ $t('home.step3') }}</view>
      </view>
    </template>
    <template v-else-if="3 == type">
      <view class="step-op3"></view>
      <view class="step-op4"></view>
      <view class="step-item">
        <view class="step-item-num"></view>
        <view class="step-item-fcolor">{{ $t('finance.step1') }}</view>
      </view>
      <view class="step-item u-m-l-30">
        <view class="step-item-num"></view>
        <view class="step-item-fcolor">{{ $t('finance.step2') }}</view>
      </view>
      <view class="step-item">
        <view class="step-item-num"></view>
        <view class="step-item-fcolor">{{ $t('finance.step3') }}</view>
      </view>
    </template>
    <template v-else>
      <view class="step-op1"></view>
      <view class="step-op2"></view>
      <view class="step-item">
        <image src="/static/image/invite/icon_Sharelink.png" mode="widthFix" />
        <view>{{ $t('invite.slink') }}</view>
      </view>
      <view class="step-item">
        <image src="/static/image/invite/icon_Registion.png" mode="widthFix" />
        <view>{{ $t('invite.reg') }}</view>
      </view>
      <view class="step-item">
        <image src="/static/image/invite/icon_Earnrewards.png" mode="widthFix" />
        <view>{{ $t('invite.rew') }}</view>
      </view>
    </template>
  </view>
</template>

<script>
export default {
  props: {
    page: {
      type: String,
      default: 'homePage'
    },
    type: {
      type: [String, Number],
      default: 1
    }
  },
  data: function () {
    return {};
  },
  methods: {}
};
</script>

<style scoped>
.step { position:relative;display:flex;flex-direction:row;align-items:center;justify-content:space-between;width:100%;height:100%;padding:0 30rpx }
.step .step-item { display:flex;flex-direction:column;align-items:center;justify-content:center;font-size:26rpx;font-family:Roboto,Roboto-Regular;font-weight:400;text-align:CENTER;color:#566c82 }
.step .step-item uni-image { width:80rpx;margin-bottom:14rpx;border-radius:50% }
.step .step-item .step-item-num { width:80rpx;height:80rpx;line-height:80rpx;background:#fe8a6d;border-radius:50%;font-size:48rpx;font-weight:500;text-align:CENTER;color:#fff;letter-spacing:0rpx;margin-bottom:14rpx }
.step .step-item .step-item-fcolor { color:#fff }
.step .step-op1, .step .step-op2 { position:absolute;width:116rpx;height:4rpx;border-top:1rpx dashed #de6436;opacity:.3 }
.step .step-op3, .step .step-op4 { position:absolute;width:116rpx;height:4rpx;border-top:1rpx dashed #fff;opacity:.3 }
.homePage .step-op1 { top:40rpx;left:174rpx }
.homePage .step-op2 { top:40rpx;left:450rpx }
.goodsPage .step-op1 { top:40rpx;left:174rpx }
.goodsPage .step-op2 { top:40rpx;left:406rpx }
.invitePage .step-op1 { top:80rpx;left:164rpx }
.invitePage .step-op2 { top:80rpx;left:406rpx }
.flist .step-op3 { top:90rpx;left:120rpx }
.flist .step-op4 { top:90rpx;left:356rpx }
</style>
