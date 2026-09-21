<template>
  <view class="add">
    <navbar :title="bankTitle" background="#ffffff" :borderBottom="true">
      <template #right>
        <view v-if="payId" class="nav_right" @click="handleOpen">
          <image class="img" :src="'/static/image/icon_Delete.png'" mode="widthFix" />
        </view>
      </template>
    </navbar>
    <view class="add_form">
      <u-form ref="uForm" :model="form" label-position="top">
        <u-form-item :label="$t('payment.ifsc')">
          <u-input
            :placeholder="$t('payment.ifsctip')"
            :keyup="this.form.ifsc = this.form.ifsc.replace(/[, ]/g, '')"
            v-model="form.ifsc"
          ></u-input>
        </u-form-item>
        <u-form-item :label="$t('payment.no')">
          <u-input
            :placeholder="$t('payment.card')"
            :keyup="this.form.bankno = this.form.bankno.replace(/[, ]/g, '')"
            v-model="form.bankno"
          ></u-input>
        </u-form-item>
        <u-form-item :label="$t('common.name')">
          <u-input :placeholder="$t('payment.namentip')" v-model="form.name"></u-input>
        </u-form-item>
        <u-form-item :label="$t('common.phone')">
          <u-input
            :placeholder="$t('payment.phonetip')"
            type="number"
            :keyup="this.form.phone = this.form.phone.replace(/[, ]/g, '')"
            v-model="form.phone"
          ></u-input>
        </u-form-item>
        <u-form-item :label="$t('payment.mailbox')">
          <u-input
            :placeholder="$t('payment.mailtip')"
            :keyup="this.form.mailbox = this.form.mailbox.replace(/[, ]/g, '')"
            v-model="form.mailbox"
          ></u-input>
        </u-form-item>
        <u-form-item :label="$t('payment.address')">
          <u-input :placeholder="$t('payment.address')" v-model="form.address"></u-input>
        </u-form-item>
      </u-form>
    </view>
    <view class="add_submin">
      <overbtn :btnText="$t('payment.btnsub')" @btnAction="handleSubmin"></overbtn>
    </view>
    <onepopup
      ref="popup"
      popType="1"
      :conetnt="this.$t('common.delcard')"
      confirmText="Yes"
      @cancel="popCancel"
      @confirm="popConfirm"
    ></onepopup>
  </view>
</template>

<script>
import { bankDel, bankEdit, bankList, bankadd } from '@/api/orich';

export default {
  data: function () {
    return {
      form: {
        bankname: '-',
        bankno: '',
        name: '',
        phone: '',
        mailbox: '',
        ifsc: '',
        address: ''
      },
      payId: ''
    };
  },
  onLoad: function (t) {
    this.payId = t.id;
    this.payId && this.getData();
  },
  computed: {
    bankTitle: function () {
      return this.payId ? this.$t('payment.cardedit') : this.$t('payment.cardadd');
    }
  },
  methods: {
    getData: function () {
      var t = this;
      bankList({
        id: this.payId
      }).then(function (e) {
        t.form = e.list[0];
      });
    },
    phoneNum: function (t) {
      return (/^\d{10}$/).test(t);
    },
    ifscRex: function (t) {
      return (/^[A-z]{4}0[0-9A-z]{6}/).test(t);
    },
    emailRex: function (t) {
      return (/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/).test(t);
    },
    nameRex: function (t) {
      return (/^[\s\u4E00-\u9FA5A-Za-z0-9]+$/).test(t);
    },
    handleSubmin: function () {
      var t = this;
      return '' != this.form.ifsc && this.ifscRex(this.form.ifsc) ? '' == this.form.bankno ? (uni.showToast({
        icon: 'none',
        mask: true,
        title: this.$t('payment.bankerr')
      }), false) : '' != this.form.name && this.nameRex(this.form.name) ? '' != this.form.phone && this.phoneNum(this.form.phone) ? '' != this.form.mailbox && this.emailRex(this.form.mailbox) ? '' == this.form.address ? (uni.showToast({
        icon: 'none',
        mask: true,
        title: this.$t('payment.banktip')
      }), false) : void (this.payId ? bankEdit(this.form).then(function (e) {
        uni.showToast({
          icon: 'none',
          mask: true,
          title: t.$t('payment.successE')
        });
        setTimeout(function () {
          uni.navigateBack({});
        }, 500);
      }) : bankadd(this.form).then(function (e) {
        uni.showToast({
          icon: 'none',
          mask: true,
          title: t.$t('payment.successA')
        });
        setTimeout(function () {
          uni.navigateBack({});
        }, 500);
      })) : (uni.showToast({
        icon: 'none',
        mask: true,
        title: this.form.mailbox ? this.$t('payment.mailerr') : this.$t('payment.banktip')
      }), false) : (uni.showToast({
        icon: 'none',
        mask: true,
        title: this.form.phone ? this.$t('payment.phoneerr') : this.$t('payment.banktip')
      }), false) : (uni.showToast({
        icon: 'none',
        mask: true,
        title: this.form.name ? this.$t('payment.nameerr') : this.$t('payment.banktip')
      }), false) : (uni.showToast({
        icon: 'none',
        mask: true,
        title: this.form.ifsc ? this.$t('payment.ifscerr') : this.$t('payment.banktip')
      }), false);
    },
    handleOpen: function () {
      this.$refs.popup.open();
    },
    popCancel: function () {
      this.$refs.popup.close();
    },
    popConfirm: function () {
      var t = this;
      bankDel({
        id: this.payId
      }).then(function () {
        uni.showToast({
          icon: 'none',
          mask: true,
          title: t.$t('payment.successD')
        });
        setTimeout(function () {
          uni.redirectTo({
            url: './payment'
          });
          t.$refs.popup.close();
        }, 500);
      }).catch(function () {
        t.$refs.popup.close();
      });
    }
  }
};
</script>

<style scoped>
.add { min-height:100vh;background:#f8f8f8;padding-bottom:200rpx }
.add .img { width:100% }
.add .nav_right { width:29rpx;height:31rpx;display:inline-block;position:absolute;right:60rpx }
.add .add_top { padding-bottom:20rpx;padding-left:38rpx;height:88rpx;line-height:88rpx;background:#fff;border-bottom:1rpx solid #ececec }
.add .add_top .add_top_title { display:inline-block;margin-left:214rpx;font-weight:700 }
.add .add_top .add_top_del { width:29rpx;height:31rpx;display:inline-block;margin-left:208rpx }
.add .add_form { background-color:#fff;margin-left:2rpx;padding-left:30rpx;padding-right:28rpx }
.add .add_form .border_bottom { border-bottom:1rpx solid #ececec }
.add .add_form .add_form_item { height:122rpx;line-height:122rpx;display:flex;align-items:center }
.add .add_form .add_form_item .add_form_item_left { width:122rpx }
.add .add_form .add_form_item .add_form_item_right { margin-left:50rpx;height:70rpx;width:75% }
.add .add_submin { width:600rpx;height:90rpx;position:fixed;left:78rpx;bottom:38rpx;z-index:999 }
</style>
