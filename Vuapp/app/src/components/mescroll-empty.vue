<template>
  <view
    class="mescroll-empty"
    :class="{ 'empty-fixed': option.fixed }"
    :style="{ 'z-index': option.zIndex, top: option.top }"
  >
    <view>
      <image v-if="icon" class="empty-icon" :src="icon" mode="widthFix" />
    </view>
    <view v-if="tip" class="empty-tip">{{ tip }}</view>
    <view v-if="option.btnText" class="empty-btn" @click="emptyClick">{{ option.btnText }}</view>
  </view>
</template>

<script>
import { interopDefault as d_d62e } from '@/vendor/d62e';

export default {
  props: {
    option: {
      type: Object,
      default: function () {
        return {};
      }
    }
  },
  computed: {
    icon: function () {
      return null == this.option.icon ? d_d62e.up.empty.icon : this.option.icon;
    },
    tip: function () {
      return null == this.option.tip ? d_d62e.up.empty.tip : this.option.tip;
    }
  },
  methods: {
    emptyClick: function () {
      this.$emit('emptyclick');
    }
  }
};
</script>

<style scoped>
.mescroll-empty { box-sizing:border-box;width:100%;padding:100rpx 50rpx;text-align:center }
.mescroll-empty.empty-fixed { z-index:99;position:absolute;top:100rpx;left:0 }
.mescroll-empty .empty-icon { width:361rpx;height:361rpx }
.mescroll-empty .empty-tip { font-size:28rpx;color:#17273a }
.mescroll-empty .empty-btn { display:inline-block;margin-top:40rpx;min-width:200rpx;padding:18rpx;font-size:28rpx;border:1rpx solid #e04b28;border-radius:60rpx;color:#e04b28 }
.mescroll-empty .empty-btn:active { opacity:.75 }
</style>
