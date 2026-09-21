<template>
  <view class="funding">
    <navbar :title="$t('account.editname')" background="#ffffff"></navbar>
    <mescroll-body
      ref="mescrollRef"
      :down="downOption"
      :up="upOption"
      @init="mescrollInit"
      @down="downCallback"
      @up="upCallback"
    >
      <view class="list">
        <view v-for="(item, index) in dataList" :key="index" class="item">
          <view class="item-menu">
            <view class="item-key">{{ item.typeshow }}</view>
            <view class="item-value">{{ item.price.slice(0, 1) }}₹ {{ item.price.slice(1) }}</view>
          </view>
          <view class="item-menu">
            <view class="item-text">{{ item.time }}</view>
            <view v-if="3 == item.type" class="item-text">{{ item.balance }}</view>
            <view v-else class="item-text">{{ item.balance }}</view>
          </view>
        </view>
      </view>
    </mescroll-body>
  </view>
</template>

<script>
import { interopDefault as d_4df3 } from '@/utils/mescroll-mixin';
import { UserBalance } from '@/api/orich';

export default {
  mixins: [d_4df3],
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
      dataList: []
    };
  },
  mounted: function () {},
  methods: {
    upCallback: function (t) {
      var e = this, s = (t.num - 1) * t.size, i = t.size;
      UserBalance({
        start: s,
        limit: i
      }).then(function (s) {
        var i = s.list, a = i.length, n = +s.count;
        1 == t.num && (e.dataList = []);
        e.dataList = e.dataList.concat(i);
        e.dataList.forEach(function (t) {
          switch (+t.type) {
            case 1:
              t.typename = e.$t('account.recharge');
              break;
            case 2:
              t.typename = e.$t('account.treasure');
              break;
            case 3:
              t.typename = e.$t('account.treasure');
              break;
            case 4:
              t.typename = e.$t('account.withdraw');
              break;
            case 5:
              t.typename = e.$t('account.wreturn');
              break;
            case 6:
              t.typename = e.$t('account.operation');
              break;
          }
        });
        e.mescroll.endBySize(a, n);
      }).catch(function (t) {
        e.mescroll.endErr();
      });
    }
  }
};
</script>

<style scoped>
.funding { position:relative;background:#f8f8f8 }
.funding .list { background:#fff;padding:0 30rpx }
.funding .list .item { padding:20rpx 0 }
.funding .list .item .item-menu { display:flex;flex-direction:row;align-items:center;justify-content:space-between;width:100% }
.funding .list .item .item-key { width:400rpx;font-size:32rpx;font-family:Roboto,Roboto-Medium;font-weight:700;color:#444 }
.funding .list .item .item-value { font-size:32rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#ff5c5c;letter-spacing:0rpx }
.funding .list .item .item-text { font-size:32rpx;font-family:Roboto,Roboto-Regular;color:#ee5016 }
.funding .list .item .item-text { margin-top:10rpx;font-size:26rpx;font-family:Roboto,Roboto-Regular;color:#b9b9b9 }
.funding .list .item:not(:last-child) { border-bottom:1rpx solid #ececec }
</style>
