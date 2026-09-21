<template>
  <view class="payrecord">
    <navbar :title="$t('payment.recordtitle')" background="#fff"></navbar>
    <view class="payrecord_tab">
      <view v-for="(item, index) in tabList" :key="index" class="payrecord_tab_item">
        <view
          class="payrecord_tab_item_title"
          :class="{ active: item.type == tabIndex }"
          @click="changeTab(item.type)"
        >
          {{ item.title }}
        </view>
        <image v-show="item.type == tabIndex" :src="'/static/image/icon_Select.png'" mode="" />
      </view>
    </view>
    <mescroll-body
      ref="mescrollRef"
      :down="downOption"
      :up="upOption"
      @init="mescrollInit"
      @down="downCallback"
      @up="upCallback"
    >
      <view v-for="(item, index) in dataList" :key="index" class="payrecord_list">
        <view class="payrecord_list_item border">
          <view class="payrecord_list_item_title">{{ item.time }}</view>
          <view class="payrecord_list_item_content">{{ item.statushow }}</view>
        </view>
        <view class="payrecord_list_item border">
          <view class="payrecord_list_item_title">{{ $t('payment.orderno') }}</view>
          <view class="payrecord_list_item_content">{{ item.orderid }}</view>
        </view>
        <view class="payrecord_list_item border">
          <view class="payrecord_list_item_title">{{ $t('payment.phonenum') }}</view>
          <view class="payrecord_list_item_content">{{ item.mobile }}</view>
        </view>
        <view class="payrecord_list_item">
          <view class="payrecord_list_item_title">{{ $t('payment.payamount') }}</view>
          <view class="payrecord_list_item_content">{{ item.price }}</view>
        </view>
      </view>
    </mescroll-body>
  </view>
</template>

<script>
import { interopDefault as d_4df3 } from '@/utils/mescroll-mixin';
import { rechargeList } from '@/api/orich';

export default {
  mixins: [d_4df3],
  data: function () {
    return {
      tabList: [{
        type: 3,
        title: this.$t('payment.tsuccess')
      }, {
        type: 2,
        title: this.$t('payment.tfail')
      }, {
        type: 1,
        title: this.$t('payment.tprocessing')
      }],
      tabIndex: 3,
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
      dataList: [],
      firstLoad: true
    };
  },
  onLoad: function (t) {
    t.type && (this.tabIndex = t.type);
  },
  onShow: function () {
    this.firstLoad || this.mescroll.resetUpScroll();
  },
  watch: {
    tabIndex: function (t) {
      this.firstLoad || this.mescroll.resetUpScroll();
    }
  },
  methods: {
    changeTab: function (t) {
      this.tabIndex = t;
    },
    upCallback: function (t) {
      var e = this;
      this.firstLoad = false;
      var s = (t.num - 1) * t.size, a = t.size;
      rechargeList({
        start: s,
        limit: a,
        status: this.tabIndex
      }).then(function (s) {
        var i = s.list, a = i.length, n = +s.count;
        1 == t.num && (e.dataList = []);
        e.dataList = e.dataList.concat(i);
        e.mescroll.endBySize(a, n);
      }).catch(function (t) {
        e.mescroll.endErr();
      });
    }
  }
};
</script>

<style scoped>
.payrecord { padding:20rpx 30rpx;font-family:Roboto,Roboto-Regular }
.payrecord .payrecord_tab { display:flex;align-items:center;justify-content:space-between;margin-bottom:30rpx }
.payrecord .payrecord_tab .payrecord_tab_item { font-size:28rpx;font-family:Roboto,Roboto-Medium;font-weight:700;color:#b9b9b9;letter-spacing:0rpx;display:flex;flex-direction:column;align-items:center }
.payrecord .payrecord_tab .active { color:#17273a }
.payrecord .payrecord_tab uni-image { width:34rpx;height:12rpx;margin-left:6rpx }
.payrecord .payrecord_list { border:2rpx solid #ee5016;border-radius:10rpx;margin-bottom:30rpx;box-shadow:0rpx 8rpx 8rpx 0rpx rgba(238,80,22,.16) }
.payrecord .payrecord_list .payrecord_list_item { display:flex;align-items:center;justify-content:space-between;padding:16rpx 6rpx }
.payrecord .payrecord_list .payrecord_list_item .payrecord_list_item_content { color:#a9a9a9 }
.payrecord .payrecord_list .border { border-bottom:2rpx solid #dcdcdc }
</style>
