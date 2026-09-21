<template>
  <view class="tabbar">
    <view
      v-for="(item, index) in $store.state.tabList"
      :key="index"
      class="tabbar-item"
      :class="{ active: page == item.pagePath }"
      @click="toPage(item.pagePath)"
    >
      <image
        :class="{ winner: 1 == index }"
        :src="page == item.pagePath ? item.selectedIconPath : item.iconPath"
       />
      <view>{{ item.text }}</view>
      <view v-show="1 == $store.state.takeIcon && 2 == index" class="tabbar-item-icon"></view>
    </view>
  </view>
</template>

<script>
export default {
  inheritAttrs: false,
  props: {
    page: {
      type: String,
      default: ''
    }
  },
  data: function () {
    return {
      tabList: []
    };
  },
  methods: {
    toPage: function (e) {
      console.log(e);
      uni.navigateTo({
        url: e
      });
    }
  }
};
</script>

<style scoped>
.tabbar { display:flex;flex-direction:row;align-items:center;justify-content:space-between;position:fixed;left:0;bottom:0;z-index:9999;width:100vw;height:98rpx;padding:0 60rpx;background:#fff;box-shadow:0 0 24px 35rpx rgba(194,192,193,.08) }
.tabbar .tabbar-item { display:flex;flex-direction:column;align-items:center;justify-content:center;width:100rpx;position:relative;font-size:20rpx;font-family:PingFang SC,PingFang SC-Bold;font-weight:700;text-align:CENTER;color:#17273a }
.tabbar .tabbar-item .tabbar-item-icon { width:16rpx;height:16rpx;border-radius:50%;background:#ff1f1f;position:absolute;right:30rpx;top:4rpx }
.tabbar .tabbar-item uni-image { width:46rpx;height:46rpx }
.tabbar .active { color:#de6436 }
</style>
