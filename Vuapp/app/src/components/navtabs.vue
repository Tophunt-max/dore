<template>
  <view class="tabs">
    <view v-for="(item, index) in list" :key="index" class="tabs_item" @click="changeActive(index)">
      <view class="tabs_item_title" :class="{ active: index == activeIndex }">{{ item.name }}</view>
      <view v-if="index == activeIndex" class="tabs_item_border"></view>
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
    },
    activeIndex: {
      type: [String, Number],
      default: 0
    }
  },
  data: function () {
    return {};
  },
  methods: {
    changeActive: function (t) {
      this.$emit('active', t);
    }
  }
};
</script>

<style scoped>
.tabs { width:100%;padding:22rpx 38rpx 0 42rpx;background:#fff;display:flex;justify-content:space-between }
.tabs .tabs_item { position:relative;padding-bottom:20rpx;white-space:nowrap }
.tabs .tabs_item:nth-child(n+2) { margin-left:36rpx }
.tabs .tabs_item .tabs_item_title { height:32rpx;line-height:32rpx;font-size:26rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#b9b9b9 }
.tabs .tabs_item .tabs_item_border { width:30rpx;height:6rpx;margin-top:20rpx;background:#ee5016;position:absolute;left:50%;bottom:0;-webkit-transform:translateX(-50%);transform:translateX(-50%) }
.tabs .active { color:#ee5016!important }
</style>
