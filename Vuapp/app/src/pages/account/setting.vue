<template>
  <view class="setting">
    <navbar :title="$t('account.settitle')" background="#ffffff" :isComfirm="true" @beforeBack="handleBack"></navbar>
    <view class="middle">
      <view class="avatar" @click="changeHead">
        <span class="avatar_title">{{ $t('common.avatar') }}</span>
        <span class="avatar_img">
          <image class="img" :src="headImg" />
        </span>
        <u-icon class="avatar_icon" name="arrow-right" color="#B9B9B9" size="30"></u-icon>
      </view>
      <view class="name" @click="toUser">
        <span class="name_title">{{ $t('common.name') }}</span>
        <span class="name_info">{{ userName }}</span>
        <u-icon class="name_icon" name="arrow-right" color="#B9B9B9" size="30"></u-icon>
      </view>
      <view class="phone">
        <span class="phone_name">{{ $t('common.phone') }}</span>
        <span class="phone_number">{{ numDeal }}</span>
      </view>
      <view class="check" @click="toAddress">
        <span class="check_updates">{{ $t('common.address') }}</span>
        <u-icon class="check_icon" name="arrow-right" color="#B9B9B9" size="30"></u-icon>
      </view>
      <view class="user" @click="toBank">
        <span class="user_updates">{{ $t('account.bank') }}</span>
        <u-icon class="user_icon" name="arrow-right" color="#B9B9B9" size="30"></u-icon>
      </view>
    </view>
    <view class="logout">
      <overbtn
        :btnText="$t('account.logout')"
        :fontSize="28"
        btnType="submit"
        :loading="loading"
        @btnAction="logout"
      ></overbtn>
    </view>
  </view>
</template>

<script>
import { AccountEdit, Logout, userAccount } from '@/api/orich';

export default {
  onLoad: function (t) {},
  computed: {},
  data: function () {
    return {
      headImg: '',
      phoneNumber: '101****500',
      userName: '',
      loading: false
    };
  },
  mounted: function () {
    this.userData();
  },
  computed: {
    numDeal: function () {
      if (void 0 != this.phoneNumber) {
        var t = /(\d{2})\d*(\d{3})/;
        return this.phoneNumber.replace(t, '$1****$2');
      }
      return '';
    }
  },
  methods: {
    handleBack: function () {
      uni.navigateTo({
        url: '../account/account'
      });
    },
    userData: function () {
      var t = this;
      userAccount().then(function (e) {
        t.headImg = e.headimgurl;
        t.phoneNumber = e.mobile;
        t.userName = e.nickname;
      });
    },
    toUser: function () {
      uni.navigateTo({
        url: './username'
      });
    },
    toAddress: function () {
      uni.navigateTo({
        url: '../address/address'
      });
    },
    toBank: function () {
      uni.navigateTo({
        url: '../payment/payment'
      });
    },
    changeHead: function () {
      var e = this;
      uni.chooseImage({
        count: 1,
        success: function (t) {
          var s = t.tempFilePaths;
          uni.showLoading({
            mask: true,
            title: e.$t('common.loading')
          });
          uni.uploadFile({
            url: e.$apiAddr + '/api/index/upload',
            name: 'file',
            filePath: s[0],
            success: function (t) {
              var s = JSON.parse(t.data), i = s.data.path;
              AccountEdit({
                headimg: i
              }).then(function (t) {
                uni.hideLoading();
                uni.showToast({
                  icon: 'none',
                  title: e.$t('account.editS')
                });
                e.userData();
              }).catch(function () {
                uni.showToast({
                  icon: 'none',
                  title: e.$t('account.editF')
                });
                uni.hideLoading();
              });
            },
            fail: function () {
              uni.hideLoading();
            }
          });
        },
        fail: function () {
          uni.hideLoading();
        },
        complete: function () {
          console.log(123132);
        }
      });
    },
    logout: function () {
      var t = this;
      this.logout = true;
      Logout().then(function (e) {
        t.$store.dispatch('removeToken');
        t.logout = false;
        uni.reLaunch({
          url: '/pages/login/login'
        });
      }).catch(function () {
        t.logout = false;
      });
    }
  }
};
</script>

<style scoped>
.setting { position:relative;min-height:100vh;background-color:#f8f8f8 }
.img { width:100%;height:100% }
.top { padding-bottom:20rpx;margin-top:112rpx;background-color:#fff }
.top .title_top { display:inline-block;margin-left:258rpx;font-size:32rpx;font-family:Roboto,Roboto-Bold;font-weight:700;color:#000 }
.top .icon_top { margin-left:30rpx;vertical-align:bottom }
.middle { border-top:2rpx solid #f8f8f8;background-color:#fff }
.avatar { display:flex;align-items:center;position:relative;padding:20rpx 0 20rpx 30rpx }
.avatar .avatar_title { font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#444;display:block }
.avatar .avatar_img { margin-left:452rpx;font-size:32rpx;width:90rpx;height:90rpx;display:inline-block;border-radius:50%;overflow:hidden }
.avatar .avatar_icon { position:absolute;right:33rpx }
.name { position:relative;margin:0 28rpx 0 30rpx;padding:33rpx 0 34rpx 0;border-top:2rpx solid #ececec }
.name .name_title { font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#444 }
.name .name_info { float:right;margin-right:60rpx;font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#b9b9b9;letter-spacing:0rpx }
.name .name_icon { position:absolute;top:40rpx;right:5rpx }
.phone { position:relative;margin:0 28rpx 0 30rpx;padding:33rpx 0 34rpx 0;border-top:2rpx solid #ececec }
.phone .phone_name { font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#444 }
.phone .phone_number { position:absolute;top:40rpx;right:5rpx;font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#b9b9b9;letter-spacing:0rpx }
.phone .phone_icon { position:absolute;top:40rpx;right:5rpx }
.check { position:relative;margin:0 28rpx 0 30rpx;padding:33rpx 0 34rpx 0;border-top:2rpx solid #ececec }
.check .check_updates { padding-top:33rpx;font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;text-align:CENTER;color:#444;letter-spacing:0rpx }
.check .check_icon { position:absolute;top:40rpx;right:5rpx }
.user { position:relative;margin:0 28rpx 0 30rpx;padding:33rpx 0 34rpx 0;border-top:2rpx solid #ececec }
.user .user_updates { padding-top:33rpx;font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;text-align:CENTER;color:#444;letter-spacing:0rpx }
.user .user_icon { position:absolute;top:40rpx;right:5rpx }
.about { position:relative;margin:0 28rpx 0 30rpx;padding:33rpx 0 34rpx 0;border-top:2rpx solid #ececec }
.about .about_updates { padding-top:33rpx;font-size:32rpx;font-family:PingFang SC,PingFang SC-Medium;font-weight:700;text-align:CENTER;color:#444;letter-spacing:0rpx }
.about .about_icon { position:absolute;top:40rpx;right:5rpx }
.logout { position:fixed;bottom:38rpx;left:74rpx;width:600rpx;height:90rpx }
</style>
