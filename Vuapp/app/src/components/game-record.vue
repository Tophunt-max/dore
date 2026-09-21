<template>
  <view class="record">
    <view v-if="list.length" class="record_tab tabtitle">
      <view class="period">{{ $t('game.period') }}</view>
      <view class="price">{{ $t('game.price') }}</view>
      <view class="number">{{ $t('game.number') }}</view>
      <view class="result">{{ $t('game.result') }}</view>
    </view>
    <view v-for="(item, index) in list" :key="index" class="record_tab">
      <view class="period">{{ item.pid }}</view>
      <view class="price">{{ item.price }}</view>
      <view class="number">
        <text>{{ item.number }}</text>
      </view>
      <view class="result">
        <view
          v-for="(item2, index2) in item.color"
          :key="'12-' + __gen + '-0' + __gen"
          class="result_cicle"
          :class="[1 == item2 ? 'cgreen' : 2 == item2 ? 'cviolet' : 'cred']"
        ></view>
      </view>
    </view>
  </view>
</template>

<script>
export default {
  props: {
    list: {
      type: Array,
      default: function () {
        return [];
      }
    }
  },
  data: function () {
    return {};
  },
  methods: {}
};
</script>

<style scoped>
.record { padding:0 50rpx;background-color:#fff }
.record .cgreen { background:#55e273 }
.record .cviolet { background:#ff62ff }
.record .cred { background:#ff4343 }
.record .record_tab { display:flex;align-items:center;justify-content:space-between;padding:22rpx 0;border-top:2rpx solid #efefef;font-size:28rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#17273a;letter-spacing:0rpx }
.record .record_tab .period { flex:1.5 }
.record .record_tab .price { flex:1;text-align:center }
.record .record_tab .number { flex:1;text-align:center }
.record .record_tab .number uni-text { color:#ff4343 }
.record .record_tab .result { flex:1;text-align:center;display:flex;align-items:center;justify-content:center }
.record .record_tab .result .result_cicle { width:24rpx;height:24rpx;border-radius:50% }
.record .record_tab .result .result_cicle:nth-child(n+1) { margin-left:6rpx }
.record .tabtitle { color:#b9b9b9 }
</style>
