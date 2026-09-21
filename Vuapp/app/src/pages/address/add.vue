<template>
  <view class="add">
    <view class="add">
      <navbar :title="navTitle" background="#ffffff">
        <template #right>
          <view v-if="addressId" class="navbar-more" @click="del" slot="right">
            <image :src="'/static/image/address/icon_Delete.png'" />
          </view>
        </template>
      </navbar>
      <view class="content">
        <u-form ref="uForm" :model="addform" label-position="top">
          <u-form-item :label="$t('address.rece')">
            <u-input :placeholder="$t('common.name')" v-model="addform.name"></u-input>
          </u-form-item>
          <u-form-item :label="$t('common.phone')">
            <u-input :placeholder="$t('common.phone')" v-model="addform.mobile"></u-input>
          </u-form-item>
          <u-form-item :label="$t('address.city')">
            <u-input :placeholder="$t('address.citytip')" v-model="addform.zip"></u-input>
          </u-form-item>
          <u-form-item :label="$t('common.flat')">
            <u-input :placeholder="$t('common.flat')" v-model="addform.address"></u-input>
          </u-form-item>
          <u-form-item :label="$t('payment.area')">
            <u-input :placeholder="$t('payment.area')" v-model="addform.area"></u-input>
          </u-form-item>
          <u-form-item :label="$t('payment.landmark')">
            <u-input :placeholder="$t('payment.landmark')" v-model="addform.landmark"></u-input>
          </u-form-item>
          <u-form-item :label="$t('address.towncity')">
            <u-input :placeholder="$t('address.towncity')" v-model="addform.city"></u-input>
          </u-form-item>
          <u-form-item :label="$t('payment.state')">
            <u-input
              type="select"
              :placeholder="$t('payment.state')"
              @click="changeState"
              v-model="addform.state"
            ></u-input>
            <u-select
              :list="stateList"
              :confirm-text="$t('payment.confirmtext')"
              :cancel-text="$t('payment.canceltext')"
              :default-value="[selectIndex]"
              @confirm="selConfirm"
              v-model="showState"
            ></u-select>
          </u-form-item>
        </u-form>
      </view>
      <view class="addbtn">
        <overbtn :btnText="$t('address.btnt')" @btnAction="addAccount"></overbtn>
      </view>
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
import { AddAddress, DelAddress, EditAddress } from '@/api/orich';

export default {
  onLoad: function (t) {
    if ((this.addressId = t.id || '', this.type = t.type || 1, this.orderid = t.orderid || '', this.addressId)) {
      this.navTitle = this.$t('address.edittitle');
      var e = JSON.parse(uni.getStorageSync('OneAddress'));
      this.addform = e;
    }
  },
  computed: {
    contentText: function () {
      return this.$t('address.deltip');
    }
  },
  data: function () {
    return {
      navTitle: this.$t('address.addtitle'),
      addressId: '',
      addform: {
        name: '',
        mobile: '',
        zip: '',
        address: '',
        area: '',
        landmark: '',
        state: '',
        city: ''
      },
      stateList: [{
        value: 'ANDAMAN & NICOBAR ISLANDS',
        label: 'ANDAMAN & NICOBAR ISLANDS'
      }, {
        value: 'ANDHRA PRADESH',
        label: 'ANDHRA PRADESH'
      }, {
        value: 'ARUNACHAL PRADESH',
        label: 'ARUNACHAL PRADESH'
      }, {
        value: 'ASSAM',
        label: 'ASSAM'
      }, {
        value: 'BIHAR',
        label: 'BIHAR'
      }, {
        value: 'CHANDIGARH',
        label: 'CHANDIGARH'
      }, {
        value: 'CHHATTISGARH',
        label: 'CHHATTISGARH'
      }, {
        value: 'DADRA AND NAGAR HAVELI AND DAMAN AND DIU',
        label: 'DADRA AND NAGAR HAVELI AND DAMAN AND DIU'
      }, {
        value: 'DELHI',
        label: 'DELHI'
      }, {
        value: 'GOA',
        label: 'GOA'
      }, {
        value: 'GUJARAT',
        label: 'GUJARAT'
      }, {
        value: 'HARYANA',
        label: 'HARYANA'
      }, {
        value: 'HIMACHAL PRADESH',
        label: 'HIMACHAL PRADESH'
      }, {
        value: 'JAMMU & KASHMIR',
        label: 'JAMMU & KASHMIR'
      }, {
        value: 'JHARKHAND',
        label: 'JHARKHAND'
      }, {
        value: 'KARNATAKA',
        label: 'KARNATAKA'
      }, {
        value: 'KERALA',
        label: 'KERALA'
      }, {
        value: 'LADAKH',
        label: 'LADAKH'
      }, {
        value: 'LAKSHADWEEP',
        label: 'LAKSHADWEEP'
      }, {
        value: 'MADHYA PRADESH',
        label: 'MADHYA PRADESH'
      }, {
        value: 'MAHARASHTRA',
        label: 'MAHARASHTRA'
      }, {
        value: 'MANIPUR',
        label: 'MANIPUR'
      }, {
        value: 'MEGHALAYA',
        label: 'MEGHALAYA'
      }, {
        value: 'MIZORAM',
        label: 'MIZORAM'
      }, {
        value: 'NAGALAND',
        label: 'NAGALAND'
      }, {
        value: 'ODISHA',
        label: 'ODISHA'
      }, {
        value: 'PUDUCHERRY',
        label: 'PUDUCHERRY'
      }, {
        value: 'PUNJAB',
        label: 'PUNJAB'
      }, {
        value: 'RAJASTHAN',
        label: 'RAJASTHAN'
      }, {
        value: 'SIKKIM',
        label: 'SIKKIM'
      }, {
        value: 'TAMIL NADU',
        label: 'TAMIL NADU'
      }, {
        value: 'TELANGANA',
        label: 'TELANGANA'
      }, {
        value: 'TRIPURA',
        label: 'TRIPURA'
      }, {
        value: 'UTTAR PRADESH',
        label: 'UTTAR PRADESH'
      }, {
        value: 'UTTARAKHAND',
        label: 'UTTARAKHAND'
      }, {
        value: 'WEST BENGAL',
        label: 'WEST BENGAL'
      }],
      loading: false,
      type: 1,
      orderid: '',
      showState: false,
      selectIndex: 0
    };
  },
  watch: {},
  mounted: function () {},
  methods: {
    changeState: function () {
      if (this.addform.state) for (var t = 0, e = this.stateList.length; t < e; t++) this.addform.state == this.stateList[t].value && (this.selectIndex = t);
      this.showState = true;
    },
    selConfirm: function (e) {
      console.log(e[0].value);
      this.addform.state = e[0].value;
    },
    addAccount: function () {
      var t = this, e = false;
      if (('' != this.addform.name && '' != this.addform.mobile && '' != this.addform.zip && '' != this.addform.address && '' != this.addform.area && '' != this.addform.landmark && '' != this.addform.state && '' != this.addform.city || (e = true), e)) return (uni.showToast({
        icon: 'none',
        title: this.$t('address.toast')
      }), false);
      this.addressId ? (this.loading = true, EditAddress(Object.assign({
        id: this.addressId
      }, this.addform)).then(function (e) {
        t.loading = false;
        uni.showToast({
          icon: 'none',
          mask: true,
          title: t.$t('address.successE')
        });
        setTimeout(function () {
          uni.redirectTo({
            url: './address'
          });
        }, 500);
      }).catch(function () {
        t.loading = false;
      })) : (this.loading = true, AddAddress(this.addform).then(function (e) {
        t.loading = false;
        uni.showToast({
          icon: 'none',
          mask: true,
          title: t.$t('address.successA')
        });
        setTimeout(function () {
          uni.redirectTo({
            url: 2 == t.type ? ('../order/detail?id=').concat(t.orderid) : './address'
          });
        }, 500);
      }).catch(function () {
        t.loading = false;
      }));
    },
    closePopup: function () {
      this.$refs.onepopup.close();
    },
    del: function () {
      this.$refs.onepopup.open();
    },
    confirm: function () {
      DelAddress({
        id: this.addressId
      }).then(function (t) {
        uni.navigateBack({
          delta: 1
        });
      });
    }
  }
};
</script>

<style scoped>
.add { min-height:100vh;background-color:#f8f8f8;padding-bottom:180rpx }
.title { position:relative;padding-left:38rpx;margin-top:112rpx;background-color:#fff }
.title uni-image { position:absolute;top:6rpx;right:34rpx;width:34rpx;height:35rpx }
.title_content { display:inline-block;margin-left:200rpx;margin-bottom:20rpx;vertical-align:middle;color:#000;font-family:Roboto,Roboto-Bold;font-weight:700;font-size:32rpx }
.content { border-top:1rpx solid #ececec;background:#fff;padding:0 20rpx }
.receiver { margin:0 30rpx;border-bottom:1rpx solid #ececec }
.receiver .input .uni-input-input { font-size:32rpx!important;font-family:Roboto,Roboto-Regular!important;font-weight:400!important }
.receiver_left { font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#444 }
.receiver_left_pla { font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#b9b9b9 }
.reces { margin-right:55rpx }
.phone { margin-right:85rpx }
.city { margin-right:122rpx }
.address { margin-right:59rpx }
.bottom_address { margin:0 30rpx }
.bottom_address .input .uni-input-input { font-size:32rpx!important;font-family:Roboto,Roboto-Regular!important;font-weight:400!important;color:#7b7b7b!important }
.popup_edit { position:relative;width:552rpx;height:270rpx }
.popup_edit .popup_title { position:absolute;top:10rpx;left:90rpx;width:374rpx;font-size:32rpx;font-family:PingFang SC,PingFang SC-Medium;font-weight:700;text-align:center;color:#17273a }
.popup_edit .del_btn { position:absolute;bottom:48rpx;right:58rpx;width:186rpx;height:72rpx }
.popup_edit .cancel_btn { position:absolute;bottom:48rpx;left:60rpx;width:186rpx;height:72rpx }
.addbtn { position:fixed;bottom:36rpx;left:50%;-webkit-transform:translate(-50%);transform:translate(-50%);width:600rpx;height:90rpx;z-index:999 }
</style>
