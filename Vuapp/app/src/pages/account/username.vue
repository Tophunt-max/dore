<template>
  <view class="username">
    <navbar :title="$t('account.editname')" background="#ffffff"></navbar>
    <view class="list">
      <view class="item">
        <view class="item-key">{{ $t('account.name') }}</view>
        <input v-model="userName" class="item-name" type="text" />
      </view>
    </view>
    <view class="logout">
      <overbtn
        :btnText="$t('account.confirm')"
        :fontSize="28"
        btnType="submit"
        :loading="loading"
        @btnAction="confirm"
      ></overbtn>
    </view>
  </view>
</template>

<script>
import { AccountEdit, userAccount } from '@/api/orich';

export default {
  data: function () {
    return {
      userName: '',
      loading: false
    };
  },
  mounted: function () {
    this.userData();
  },
  methods: {
    userData: function () {
      var t = this;
      userAccount().then(function (e) {
        t.userName = e.nickname;
      });
    },
    confirm: function () {
      var t = this;
      if (this.userName.length > 16) return (uni.showToast({
        icon: 'none',
        title: this.$t('account.nametip')
      }), false);
      this.loading = true;
      AccountEdit({
        name: this.userName
      }).then(function (e) {
        t.loading = false;
        uni.showToast({
          icon: 'none',
          title: t.$t('account.editS')
        });
        uni.redirectTo({
          url: './setting'
        });
      }).catch(function () {
        t.loading = false;
        uni.showToast({
          icon: 'none',
          title: t.$t('account.editF')
        });
      });
    }
  }
};
</script>

<style scoped>
.username { position:relative;min-height:100vh;background:#f8f8f8 }
.username .list { width:100%;padding:14rpx 30rpx;background:#fff }
.username .list .item { display:flex;flex-direction:row;align-items:center;justify-content:center;width:100% }
.username .list .item .item-key { width:136rpx;text-align:left;font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#444 }
.username .list .item .item-name { flex:1;height:84rpx;padding:0 20rpx;border:1rpx solid #e0dfdf;border-radius:7rpx }
.username .logout { position:fixed;bottom:38rpx;left:74rpx;width:600rpx;height:90rpx }
</style>
