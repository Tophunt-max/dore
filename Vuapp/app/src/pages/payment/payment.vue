<template>
  <view class="payment">
    <navbar
      :title="isEdit ? $t('common.mancard') : $t('payment.cards')"
      background="#ffffff"
      :isComfirm="true"
      @beforeBack="handleBack"
    >
      <template #right>
        <view v-if="!isEdit && +cardList.length" class="nav_right" @click="changeOper" slot="right">{{ $t('common.manage') }}</view>
      </template>
    </navbar>
    <view class="payment_main">
      <mescroll-body
        ref="mescrollRef"
        :down="downOption"
        :up="upOption"
        @init="mescrollInit"
        @down="downCallback"
        @up="upCallback"
      >
        <view
          v-if="cardList.length"
          v-for="(item, index) in cardList"
          :key="index"
          class="payment_card"
          @click="handleCard(item.id)"
        >
          <view class="payment_card_top">
            <view class="payment_card_top_img">
              <image class="img" :src="item.imageurl" mode="widthFix" />
            </view>
            <view class="payment_card_top_name">{{ item.name }}</view>
          </view>
          <view class="payment_card_number">
            <view class="payment_card_number_item">{{ bankNum(item.bankno) }}</view>
          </view>
        </view>
      </mescroll-body>
    </view>
    <view v-if="!isEdit" class="payment_add">
      <overbtn :btnText="$t('payment.add')" @btnAction="btnAdd"></overbtn>
    </view>
  </view>
</template>

<script>
import { interopDefault as d_4df3 } from '@/utils/mescroll-mixin';
import { bankList } from '@/api/orich';

export default {
  mixins: [d_4df3],
  data: function () {
    return {
      cardList: [],
      downOption: {
        use: true,
        auto: true
      },
      upOption: {
        use: true,
        auto: true,
        page: {
          num: 0,
          size: 10
        }
      },
      type: 1,
      money: 0,
      firstLoad: true,
      isEdit: false
    };
  },
  onLoad: function (t) {
    t.type && (this.type = t.type);
    t.money && (this.money = t.money);
  },
  onShow: function () {
    !this.firstLoad && this.mescroll.resetUpScroll();
  },
  methods: {
    changeOper: function () {
      this.isEdit = true;
    },
    bankNum: function (t) {
      return t.toString().replace(/(.{4})/g, '$1 ');
    },
    handleBack: function () {
      this.isEdit ? this.isEdit = false : 2 == this.type ? uni.navigateTo({
        url: ('./cashOut?money=').concat(this.money)
      }) : uni.navigateTo({
        url: '../account/setting'
      });
    },
    btnAdd: function () {
      uni.navigateTo({
        url: './add'
      });
    },
    upCallback: function (t) {
      var e = this, s = (t.num - 1) * t.size, i = t.size;
      bankList({
        start: s,
        limit: i
      }).then(function (s) {
        e.firstLoad = false;
        var i = s.list, a = i.length, n = +s.count;
        1 == t.num && (e.cardList = []);
        e.cardList = e.cardList.concat(i);
        e.mescroll.endBySize(a, n);
      }).catch(function (t) {
        e.mescroll.endErr();
      });
    },
    handleCard: function (t) {
      var e = this;
      this.$store.dispatch('checkLogin').then(function () {
        e.isEdit || 1 == e.type ? uni.navigateTo({
          url: ('./add?id=').concat(t)
        }) : uni.navigateTo({
          url: ('./cashOut?money=').concat(e.money, '&id=').concat(t)
        });
      }).catch(function () {});
    }
  }
};
</script>

<style scoped>
.payment { min-height:100vh;background:#f8f8f8 }
.payment .nav_right { position:absolute;right:20rpx }
.payment .img { width:100% }
.payment .payment_top { padding-left:38rpx;padding-bottom:20rpx;margin-top:112rpx;background:#fff;border-bottom:1rpx solid #f8f8f8 }
.payment .payment_top .payment_top_title { display:inline-block;margin-left:238rpx;ont-size:32rpx;font-family:Roboto,Roboto-Bold;font-weight:700;color:#000 }
.payment .payment_main { margin-left:2rpx;padding:30rpx 25rpx 0 34rpx }
.payment .payment_main .payment_card { width:686rpx;height:220rpx;margin-bottom:16rpx;border-radius:16rpx }
.payment .payment_main .payment_card:nth-child(odd) { background:linear-gradient(75deg,#8cdcff,#10c7ff) }
.payment .payment_main .payment_card:nth-child(even) { background:linear-gradient(82deg,#f76955,#ffb44e) }
.payment .payment_main .payment_card .payment_card_top { padding:30rpx 0 0 40rpx;display:flex;align-items:center }
.payment .payment_main .payment_card .payment_card_top .payment_card_top_img { width:74rpx;height:74rpx;border-radius:50%;overflow:hidden }
.payment .payment_main .payment_card .payment_card_top .payment_card_top_name { color:#fff;margin-left:20rpx;font-size:40rpx }
.payment .payment_main .payment_card .payment_card_number { display:flex;align-items:center;margin-left:69rpx;margin-top:38rpx }
.payment .payment_main .payment_card .payment_card_number .payment_card_number_circular { width:18rpx;height:18rpx;opacity:.5;background:#fff;border-radius:50%;margin-right:12rpx }
.payment .payment_main .payment_card .payment_card_number .payment_card_number_circular:nth-child(4n) { margin-right:40rpx }
.payment .payment_main .payment_card .payment_card_number .payment_card_number_item { font-size:40rpx;font-family:Roboto,Roboto-Medium;font-weight:700;color:#fff;letter-spacing:0rpx }
.payment .payment_add { width:600rpx;height:90rpx;border-radius:8rpx;position:fixed;left:74rpx;bottom:40rpx }
</style>
