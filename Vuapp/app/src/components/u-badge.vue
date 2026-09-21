<template>
  <view
    v-if="show"
    class="u-badge"
    :class="[isDot ? 'u-badge-dot' : '', 'mini' == size ? 'u-badge-mini' : '', type ? 'u-badge--bg--' + type : '']"
    :style="[{ top: offset[0] + 'rpx', right: offset[1] + 'rpx', fontSize: fontSize + 'rpx', position: absolute ? 'absolute' : 'static', color: color, backgroundColor: bgColor }, boxStyle]"
  >
    {{ showText }}
  </view>
</template>

<script>
export default {
  name: 'u-badge',
  props: {
    type: {
      type: String,
      default: 'error'
    },
    size: {
      type: String,
      default: 'default'
    },
    isDot: {
      type: Boolean,
      default: false
    },
    count: {
      type: [Number, String]
    },
    overflowCount: {
      type: Number,
      default: 99
    },
    showZero: {
      type: Boolean,
      default: false
    },
    offset: {
      type: Array,
      default: function () {
        return [20, 20];
      }
    },
    absolute: {
      type: Boolean,
      default: true
    },
    fontSize: {
      type: [String, Number],
      default: '24'
    },
    color: {
      type: String,
      default: '#ffffff'
    },
    bgColor: {
      type: String,
      default: ''
    },
    isCenter: {
      type: Boolean,
      default: false
    }
  },
  computed: {
    boxStyle: function () {
      var t = {};
      return (this.isCenter ? (t.top = 0, t.right = 0, t.transform = 'translateY(-50%) translateX(50%)') : (t.top = this.offset[0] + 'rpx', t.right = this.offset[1] + 'rpx', t.transform = 'translateY(0) translateX(0)'), 'mini' == this.size && (t.transform = t.transform + ' scale(0.8)'), t);
    },
    showText: function () {
      return this.isDot ? '' : this.count > this.overflowCount ? ('').concat(this.overflowCount, '+') : this.count;
    },
    show: function () {
      return 0 != this.count || 0 != this.showZero;
    }
  }
};
</script>

<style scoped>
.u-badge { display:inline-flex;justify-content:center;align-items:center;line-height:24rpx;padding:4rpx 8rpx;border-radius:100rpx;z-index:9 }
.u-badge--bg--primary { background-color:#2979ff }
.u-badge--bg--error { background-color:#fa3534 }
.u-badge--bg--success { background-color:#19be6b }
.u-badge--bg--info { background-color:#909399 }
.u-badge--bg--warning { background-color:#f90 }
.u-badge-dot { height:16rpx;width:16rpx;border-radius:100rpx;line-height:1 }
.u-badge-mini { -webkit-transform:scale(.8);transform:scale(.8);-webkit-transform-origin:center center;transform-origin:center center }
.u-info { background-color:#909399;color:#fff }
</style>
