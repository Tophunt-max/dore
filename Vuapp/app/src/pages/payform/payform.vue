<template>
  <view class="form">
    <web-view :src="url"></web-view>
    <onepopup ref="poptip"></onepopup>
  </view>
</template>

<script>
export default {
  data: function () {
    return {
      url: ''
    };
  },
  onLoad: function (t) {
    this.url = uni.getStorageSync('formurl');
  },
  onBackPress: function () {
    return (uni.showModal({
      title: '',
      content: this.$t('payform.backtip'),
      cancelText: this.$t('payform.cancel'),
      confirmText: this.$t('payform.confirm'),
      success: function (t) {
        t.confirm && uni.redirectTo({
          url: '../payment/recharge'
        });
      }
    }), true);
  },
  methods: {
    toNavBack: function () {
      'http://orich.in' != this.url && 'http://orich.in/#/pages/success/index?type=4' != this.url || uni.redirectTo({
        url: '../payment/recharge'
      });
    }
  }
};
</script>

<style scoped>
.form { padding-top:200rpx }
</style>
