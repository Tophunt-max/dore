<template>
  <view class="address">
    <navbar :title="$t('address.title')" background="#ffffff" :isComfirm="true" @beforeBack="handleBack"></navbar>
    <mescroll-body
      ref="mescrollRef"
      :down="downOption"
      :up="upOption"
      @init="mescrollInit"
      @down="downCallback"
      @up="upCallback"
    >
      <view v-for="(item, index) in addressList" :key="index" class="content" @click="toAction(item)">
        <view class="top">
          <span class="top_name">{{ item.name }}</span>
          <span class="top_number">{{ item.mobile }}</span>
          <image :src="'/static/image/address/icon_Editing.png'" @click.stop="toEdit(item)" mode="widthFix" />
        </view>
        <view class="middle">
          <view class="middle_content">{{ item.address }}</view>
        </view>
        <view class="bottom">
          <view
            class="bottom-radio"
            :class="1 == item.isdefault ? 'bottom-select' : ''"
            @click="setDefault(item)"
          >
            <view class="bottom-circle"></view>
            <view>{{ $t('address.round') }}</view>
          </view>
          <view class="delete" @click.stop="del(item.id)">{{ $t('address.deletes') }}</view>
        </view>
      </view>
    </mescroll-body>
    <view class="addbtn">
      <overbtn :btnText="$t('address.btntitle')" @btnAction="btnAdd"></overbtn>
    </view>
    <onepopup
      ref="onepopup"
      popType="1"
      :conetnt="contentText"
      confirmText="Delete"
      @cancel="closePopup"
      @confirm="confirm"
    ></onepopup>
  </view>
</template>

<script>
import m_0765 from '@/vendor/0765';
import * as ns_9fda from '@/api/orich';
import { interopDefault as d_4df3 } from '@/utils/mescroll-mixin';

// Helpers the reference bundle hoisted out of the component.
var n = (m_0765, ns_9fda);

export default {
  mixins: [d_4df3],
  onLoad: function (t) {
    this.fromType = t.type;
    this.orderId = t.id;
  },
  onShow: function () {
    this.mescroll.resetUpScroll();
  },
  computed: {
    contentText: function () {
      return this.$t('address.deltip');
    }
  },
  data: function () {
    return {
      downOption: {
        use: true,
        auto: true
      },
      upOption: {
        use: true,
        auto: true,
        page: {
          num: 0,
          size: 20
        }
      },
      fromType: 1,
      loading: false,
      addressList: [],
      delId: '',
      orderId: ''
    };
  },
  mounted: function () {},
  methods: {
    handleBack: function () {
      2 == this.fromType ? uni.navigateTo({
        url: ('../order/detail?id=').concat(this.orderId)
      }) : uni.navigateTo({
        url: '../account/setting'
      });
    },
    btnAdd: function () {
      uni.navigateTo({
        url: './add'
      });
    },
    closePopup: function () {
      this.$refs.onepopup.close();
    },
    del: function (t) {
      this.delId = t;
      this.$refs.onepopup.open();
    },
    confirm: function () {
      var t = this;
      (0, n.DelAddress)({
        id: this.delId
      }).then(function (e) {
        t.$refs.onepopup.close();
        uni.showToast({
          icon: 'none',
          mask: true,
          title: t.$t('address.successD')
        });
        t.mescroll.resetUpScroll();
      });
    },
    toEdit: function (t) {
      uni.setStorageSync('OneAddress', JSON.stringify(t));
      uni.navigateTo({
        url: ('./add?id=').concat(t.id)
      });
    },
    setDefault: function (t) {
      var e = this;
      1 != t.isdefault && (0, n.EditAccount)({
        id: t.id
      }).then(function (t) {
        uni.showToast({
          icon: 'none',
          mask: true,
          title: e.$t('address.successS')
        });
        e.mescroll.resetUpScroll();
      });
    },
    toAction: function (e) {
      console.log(e);
      2 == this.fromType && uni.navigateTo({
        url: ('../order/detail?id=').concat(this.orderId, '&addrId=').concat(e.id)
      });
    },
    upCallback: function (t) {
      var e = this, s = (t.num - 1) * t.size, i = t.size;
      (0, n.AddressList)({
        start: s,
        limit: i
      }).then(function (s) {
        var i = s.list, a = i.length, n = +s.count;
        1 == t.num && (e.addressList = []);
        e.addressList = e.addressList.concat(i);
        e.mescroll.endBySize(a, n);
      }).catch(function (t) {
        e.mescroll.endErr();
      });
    }
  }
};
</script>

<style scoped>
.address { min-height:100vh;padding-bottom:150rpx;background-color:#f8f8f8 }
.address_title { margin-top:112rpx;padding-left:38rpx;background-color:#fff }
.address_title .title-right { display:inline-block;margin-left:226rpx;margin-bottom:20rpx;vertical-align:middle;color:#000;font-family:Roboto,Roboto-Bold;font-weight:700;font-size:32rpx;line-height:48rpx }
.content { box-sizing:border-box;margin:22rpx 28rpx 16rpx 30rpx;width:690rpx;padding:0 0 20rpx 0;background:#fff;border-radius:16rpx }
.top { position:relative;padding:24rpx 30rpx 0 34rpx }
.top .top_name { width:90rpx;height:48rpx;font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:700;text-align:CENTER;color:#17273a;line-height:48rpx }
.top .top_number { margin-left:16rpx;margin-bottom:6rpx;width:190rpx;height:48rpx;font-size:28rpx;font-family:Roboto,Roboto-Regular;font-weight:400;text-align:CENTER;color:#b9b9b9;line-height:48rpx }
.top uni-image { position:absolute;right:29rpx;width:40rpx }
.middle { margin:6rpx 30rpx 0 34rpx;margin-bottom:34rpx }
.middle .middle_content { width:610rpx;font-size:24rpx;font-family:Roboto,Roboto-Regular;font-weight:400;text-align:left;color:#b9b9b9 }
.bottom { display:flex;flex-direction:row;align-items:center;justify-content:space-between;padding:0 34rpx;padding-top:20rpx;border-top:1rpx solid #ececec }
.bottom-radio { display:flex;flex-direction:row;align-items:center;justify-content:flex-start;font-size:28rpx;font-family:Roboto,Roboto-Regular;color:#b9b9b9 }
.bottom-radio .bottom-circle { width:34rpx;height:34rpx;margin-right:12rpx;border:2rpx solid #b9b9b9;border-radius:50% }
.bottom-select { color:#ee5016 }
.bottom-select .bottom-circle { background:#ee5016;border:2rpx solid #ee5016;border-radius:50% }
.delete { font-size:28rpx;font-weight:400;color:#17273a }
.addbtn { position:fixed;bottom:40rpx;left:50%;-webkit-transform:translate(-50%);transform:translate(-50%);width:600rpx;height:90rpx }
</style>
