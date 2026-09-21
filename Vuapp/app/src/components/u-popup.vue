<template>
  <view v-if="visibleSync" class="u-drawer" :style="[customStyle, { zIndex: uZindex - 1 }]">
    <u-mask
      :duration="duration"
      :custom-style="maskCustomStyle"
      :maskClickAble="maskCloseAble"
      :z-index="uZindex - 2"
      :show="showDrawer && mask"
      @click="maskClick"
    ></u-mask>
    <view
      class="u-drawer-content"
      :class="[safeAreaInsetBottom ? 'safe-area-inset-bottom' : '', 'u-drawer-' + mode, showDrawer ? 'u-drawer-content-visible' : '', zoom && 'center' == mode ? 'u-animation-zoom' : '']"
      :style="[style]"
      @touchmove="stopPropagation(), preventDefault()"
      @click="[function (e) { return modeCenterClose(mode); }, function (t) { (stopPropagation(), preventDefault()); }]"
    >
      <view
        v-if="'center' == mode"
        class="u-mode-center-box"
        :style="[centerStyle]"
        @touchmove="stopPropagation(), preventDefault()"
        @click="stopPropagation(), preventDefault()"
      >
        <u-icon
          v-if="closeable"
          class="u-close"
          :class="['u-close--' + closeIconPos]"
          :name="closeIcon"
          :color="closeIconColor"
          :size="closeIconSize"
          @click="close"
        ></u-icon>
        <scroll-view class="u-drawer__scroll-view">
          <slot></slot>
        </scroll-view>
      </view>
      <scroll-view v-else class="u-drawer__scroll-view">
        <slot></slot>
      </scroll-view>
      <view class="u-close" :class="['u-close--' + closeIconPos]" @click="close">
        <u-icon
          v-if="'center' != mode && closeable"
          :name="closeIcon"
          :color="closeIconColor"
          :size="closeIconSize"
        ></u-icon>
      </view>
    </view>
  </view>
</template>

<script>
export default {
  name: 'u-popup',
  props: {
    show: {
      type: Boolean,
      default: false
    },
    mode: {
      type: String,
      default: 'left'
    },
    mask: {
      type: Boolean,
      default: true
    },
    length: {
      type: [Number, String],
      default: 'auto'
    },
    zoom: {
      type: Boolean,
      default: true
    },
    safeAreaInsetBottom: {
      type: Boolean,
      default: false
    },
    maskCloseAble: {
      type: Boolean,
      default: true
    },
    customStyle: {
      type: Object,
      default: function () {
        return {};
      }
    },
    value: {
      type: Boolean,
      default: false
    },
    popup: {
      type: Boolean,
      default: true
    },
    borderRadius: {
      type: [Number, String],
      default: 0
    },
    zIndex: {
      type: [Number, String],
      default: ''
    },
    closeable: {
      type: Boolean,
      default: false
    },
    closeIcon: {
      type: String,
      default: 'close'
    },
    closeIconPos: {
      type: String,
      default: 'top-right'
    },
    closeIconColor: {
      type: String,
      default: '#909399'
    },
    closeIconSize: {
      type: [String, Number],
      default: '30'
    },
    width: {
      type: String,
      default: ''
    },
    height: {
      type: String,
      default: ''
    },
    negativeTop: {
      type: [String, Number],
      default: 0
    },
    maskCustomStyle: {
      type: Object,
      default: function () {
        return {};
      }
    },
    duration: {
      type: [String, Number],
      default: 250
    }
  },
  data: function () {
    return {
      visibleSync: false,
      showDrawer: false,
      timer: null,
      closeFromInner: false
    };
  },
  computed: {
    style: function () {
      var t = {};
      if (('left' == this.mode || 'right' == this.mode ? t = {
        width: this.width ? this.getUnitValue(this.width) : this.getUnitValue(this.length),
        height: '100%',
        transform: ('translate3D(').concat('left' == this.mode ? '-100%' : '100%', ',0px,0px)')
      } : 'top' != this.mode && 'bottom' != this.mode || (t = {
        width: '100%',
        height: this.height ? this.getUnitValue(this.height) : this.getUnitValue(this.length),
        transform: ('translate3D(0px,').concat('top' == this.mode ? '-100%' : '100%', ',0px)')
      }), t.zIndex = this.uZindex, this.borderRadius)) {
        switch (this.mode) {
          case 'left':
            t.borderRadius = ('0 ').concat(this.borderRadius, 'rpx ').concat(this.borderRadius, 'rpx 0');
            break;
          case 'top':
            t.borderRadius = ('0 0 ').concat(this.borderRadius, 'rpx ').concat(this.borderRadius, 'rpx');
            break;
          case 'right':
            t.borderRadius = ('').concat(this.borderRadius, 'rpx 0 0 ').concat(this.borderRadius, 'rpx');
            break;
          case 'bottom':
            t.borderRadius = ('').concat(this.borderRadius, 'rpx ').concat(this.borderRadius, 'rpx 0 0');
            break;
          default:
        }
        t.overflow = 'hidden';
      }
      return (this.duration && (t.transition = ('all ').concat(this.duration / 1e3, 's linear')), t);
    },
    centerStyle: function () {
      var t = {};
      return (t.width = this.width ? this.getUnitValue(this.width) : this.getUnitValue(this.length), t.height = this.height ? this.getUnitValue(this.height) : 'auto', t.zIndex = this.uZindex, t.marginTop = ('-').concat(this.$u.addUnit(this.negativeTop)), this.borderRadius && (t.borderRadius = ('').concat(this.borderRadius, 'rpx'), t.overflow = 'hidden'), t);
    },
    uZindex: function () {
      return this.zIndex ? this.zIndex : this.$u.zIndex.popup;
    }
  },
  watch: {
    value: function (t) {
      t ? this.open() : this.closeFromInner || this.close();
      this.closeFromInner = false;
    }
  },
  mounted: function () {
    this.value && this.open();
  },
  methods: {
    getUnitValue: function (t) {
      return (/(%|px|rpx|auto)$/).test(t) ? t : t + 'rpx';
    },
    maskClick: function () {
      this.close();
    },
    close: function () {
      this.closeFromInner = true;
      this.change('showDrawer', 'visibleSync', false);
    },
    modeCenterClose: function (t) {
      'center' == t && this.maskCloseAble && this.close();
    },
    open: function () {
      this.change('visibleSync', 'showDrawer', true);
    },
    change: function (t, e, s) {
      var i = this;
      1 == this.popup && this.$emit('input', s);
      this[t] = s;
      s ? this.$nextTick(function () {
        i[e] = s;
        i.$emit(s ? 'open' : 'close');
      }) : this.timer = setTimeout(function () {
        i[e] = s;
        i.$emit(s ? 'open' : 'close');
      }, this.duration);
    }
  }
};
</script>

<style scoped>
.u-drawer { display:block;position:fixed;top:0;left:0;right:0;bottom:0;overflow:hidden }
.u-drawer-content { display:block;position:absolute;z-index:1003;transition:all .25s linear }
.u-drawer__scroll-view { width:100%;height:100% }
.u-drawer-left { top:0;bottom:0;left:0;background-color:#fff }
.u-drawer-right { right:0;top:0;bottom:0;background-color:#fff }
.u-drawer-top { top:0;left:0;right:0;background-color:#fff }
.u-drawer-bottom { bottom:0;left:0;right:0;background-color:#fff }
.u-drawer-center { display:flex;flex-direction:row;
flex-direction:column;bottom:0;left:0;right:0;top:0;justify-content:center;align-items:center;opacity:0;z-index:99999 }
.u-mode-center-box { min-width:100rpx;min-height:100rpx;display:block;position:relative;background:#151e2e }
.u-drawer-content-visible.u-drawer-center { -webkit-transform:scale(1);transform:scale(1);opacity:1 }
.u-animation-zoom { -webkit-transform:scale(1.15);transform:scale(1.15) }
.u-drawer-content-visible { -webkit-transform:translateZ(0)!important;transform:translateZ(0)!important }
.u-close { position:absolute;z-index:3 }
.u-close--top-left { top:30rpx;left:30rpx }
.u-close--top-right { top:30rpx;right:30rpx }
.u-close--bottom-left { bottom:30rpx;left:30rpx }
.u-close--bottom-right { right:30rpx;bottom:30rpx }
</style>
