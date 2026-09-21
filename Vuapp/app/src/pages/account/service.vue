<template>
  <view class="setting">
    <navbar :title="$t('account.utitle')" background="#ffffff"></navbar>
    <view class="middle">
      <view v-if="data.whatsapp" class="name" @click="copyText('.copyText1', data.whatsapp)">
        <span class="name_title">{{ $t('account.whatsapp') }}</span>
        <span class="name_info copyText1">{{ data.whatsapp }}</span>
      </view>
      <view v-if="data.facebook" class="name" @click="copyText('.copyText2', data.facebook)">
        <span class="name_title">{{ $t('account.facebook') }}</span>
        <span class="name_info copyText2">{{ data.facebook }}</span>
      </view>
      <view v-if="data.phone" class="name" @click="copyText('.copyText3', data.phone)">
        <span class="name_title">{{ $t('account.phone') }}</span>
        <span class="name_info copyText3">{{ data.phone }}</span>
      </view>
      <view v-if="data.email" class="name" @click="copyText('.copyText4', data.email)">
        <span class="name_title">{{ $t('account.mailbox') }}</span>
        <span class="name_info copyText4">{{ data.email }}</span>
      </view>
    </view>
  </view>
</template>

<script>
import { SystemInfo } from '@/api/orich';

export default {
  onLoad: function (t) {},
  computed: {},
  data: function () {
    return {
      data: {}
    };
  },
  mounted: function () {
    this.getData();
  },
  methods: {
    getData: function () {
      var t = this;
      SystemInfo().then(function (e) {
        t.data = e;
      }).catch(function () {});
    },
    copyText: function (e, s) {
      console.log(e);
      uni.setClipboardData({
        data: s,
        success: function () {
          uni.showToast({
            icon: 'none',
            title: this.$t('account.copysuc')
          });
        }
      });
    }
  }
};
</script>

<style scoped>
.setting { min-height:100vh;background-color:#f8f8f8 }
.middle { border-top:2rpx solid #f8f8f8;background-color:#fff }
.name { display:flex;flex-direction:row;align-items:center;justify-content:space-between;position:relative;width:100%;padding:37rpx 30rpx 37rpx 30rpx }
.name .name_title { font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#444 }
.name .name_info { font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#b9b9b9 }
.name:not(:last-child) { border-bottom:2rpx solid #ececec }
</style>
