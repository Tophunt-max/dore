<template>
  <view class="onepopup">
    <u-popup
      mode="center"
      border-radius="32"
      :width="width"
      :height="popHeight()"
      :custom-style="customStyle"
      @close="showPopup = false"
      v-model="show"
    >
      <view class="main" :class="addrPop ? 'addr_padd' : 'main_padd'">
        <template v-if="1 == popType">
          <view class="content">{{ conetnt }}</view>
          <view class="btnArr">
            <view class="btn">
              <overbtn :btnText="cancelText" :fontSize="28" btnType="plain" @btnAction="cancel"></overbtn>
            </view>
            <view class="btn">
              <overbtn :btnText="confirmText" :fontSize="28" btnType="submit" @btnAction="confirm"></overbtn>
            </view>
          </view>
        </template>
        <template v-if="2 == popType">
          <view v-if="2 == gtype" class="header"></view>
          <view v-else class="header"></view>
          <view class="btnArr">
            <view class="btn">
              <overbtn btnText="Leave" :fontSize="28" btnType="plain" @btnAction="back"></overbtn>
            </view>
            <view class="btn">
              <overbtn btnText="Continue" :fontSize="28" btnType="submit" @btnAction="topay"></overbtn>
            </view>
          </view>
        </template>
        <template v-if="3 == popType">
          <view class="icon">
            <view class="icon_addr">
              <image class="img" :src="'/static/image/goods/icon_MapPinLine.png'" mode="" />
            </view>
            <view class="line">
              <image class="img" :src="'/static/image/goods/img_Dividingline.png'" mode="widthFix" />
            </view>
          </view>
          <view v-if="list.name" class="info">
            <view class="info_top">
              <text class="info_top_name">{{ list.name }}</text>
              <text class="info_top_phone">{{ list.mobile }}</text>
            </view>
            <view class="info_main">{{ list.address }}</view>
          </view>
          <view v-else class="tips">{{ list.address }}</view>
          <view class="btnaddrArr">
            <view class="btn">
              <overbtn :btnText="cancelText" :fontSize="28" btnType="plain" @btnAction="addressEdit"></overbtn>
            </view>
            <view class="btn">
              <overbtn :btnText="confirmText" :fontSize="28" btnType="submit" @btnAction="btnConfirm"></overbtn>
            </view>
          </view>
        </template>
      </view>
    </u-popup>
  </view>
</template>

<script>
export default {
  props: {
    popType: {
      type: String,
      default: '1'
    },
    showPopup: {
      type: Boolean,
      default: false
    },
    width: {
      type: [Number, String],
      default: '552'
    },
    height: {
      type: [Number, String],
      default: '348'
    },
    conetnt: {
      type: String,
      default: 'content'
    },
    cancelText: {
      type: String,
      default: 'Cancel'
    },
    confirmText: {
      type: String,
      default: 'Confirm'
    },
    list: {
      type: Object,
      default: function () {
        return {};
      }
    },
    addrPop: {
      type: Boolean,
      default: false
    },
    gtype: {
      type: [String, Number],
      default: 1
    }
  },
  watch: {
    showPopup: function () {
      this.show = this.showPopup;
    }
  },
  data: function () {
    return {
      show: false,
      customStyle: {}
    };
  },
  mounted: function () {
    this.$emit('poploading', true);
  },
  methods: {
    popHeight: function () {
      return 3 == this.popType ? '-' : this.height;
    },
    open: function () {
      this.show = true;
    },
    close: function () {
      this.show = false;
    },
    cancel: function () {
      this.$emit('cancel');
    },
    confirm: function () {
      this.$emit('confirm');
    },
    back: function () {
      uni.navigateBack({});
    },
    topay: function () {
      this.show = false;
    },
    addressEdit: function () {
      this.$emit('addrEdit');
    },
    btnConfirm: function () {
      this.$emit('confirmb');
    }
  }
};
</script>

<style scoped>
.onepopup .img { width:100%;height:100% }
.onepopup .main_padd { padding:56rpx 44rpx }
.onepopup .addr_padd { padding:11rpx 44rpx 40rpx 44rpx }
.onepopup .main { display:flex;flex-direction:column;align-items:center;justify-content:space-between;width:100%;height:100%;background-color:#fff }
.onepopup .main .header { font-size:32rpx;font-family:PingFang SC,PingFang SC-Medium;text-align:CENTER;color:#ee5016 }
.onepopup .main .content { flex:1;display:flex;flex-direction:row;align-items:center;justify-content:center;font-size:32rpx;font-family:PingFang SC,PingFang SC-Medium;text-align:CENTER;color:#17273a }
.onepopup .main .btnArr { display:flex;flex-direction:row;align-items:center;justify-content:space-between;width:100%;margin-top:20rpx }
.onepopup .main .btnArr .btn { width:224rpx;height:72rpx }
.onepopup .main .btnaddrArr { display:flex;flex-direction:row;align-items:center;justify-content:space-around;width:100%;margin-top:20rpx }
.onepopup .main .btnaddrArr .btn { width:208rpx;height:78rpx }
.onepopup .main .icon { width:100%;text-align:center;display:flex;align-items:center;flex-direction:column }
.onepopup .main .icon .icon_addr { width:112rpx;height:112rpx;min-height:112rpx }
.onepopup .main .line { width:115% }
.onepopup .main .info { width:100%;margin-top:30rpx;margin-bottom:22rpx }
.onepopup .main .info .info_top .info_top_name { font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:700;color:#17273a;line-height:48rpx;margin-right:16rpx }
.onepopup .main .info .info_top .info_top_phone { font-size:28rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#b9b9b9;line-height:48rpx }
.onepopup .main .info .info_main { margin-top:6rpx;font-size:24rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#b9b9b9 }
.onepopup .main .tips { margin-top:10rpx;font-size:28rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#17273a }
</style>
