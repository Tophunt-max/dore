<template>
  <view class="detail">
    <navbar :title="$t('help.detailTitle')" background="#ffffff"></navbar>
    <u-parse :html="detail"></u-parse>
  </view>
</template>

<script>
import { getAnswer } from '@/api/orich';

export default {
  data: function () {
    return {
      detail: '',
      deId: ''
    };
  },
  onLoad: function (t) {
    this.deId = t.id;
    this.getDetail();
  },
  methods: {
    getDetail: function () {
      var t = this;
      uni.showLoading({
        mask: true
      });
      getAnswer({
        id: this.deId
      }).then(function (e) {
        t.detail = e.que_info;
        uni.hideLoading();
      }).catch(function () {
        uni.hideLoading();
      });
    }
  }
};
</script>

<style scoped>
.detail { padding:30rpx 30rpx }
</style>
