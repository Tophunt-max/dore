<template>
  <view>
    <view
      class="u-navbar"
      :class="{ 'u-navbar-fixed': isFixed, 'u-border-bottom': borderBottom }"
      :style="[navbarStyle]"
    >
      <view class="u-status-bar" :style="{ height: statusBarHeight + 'px' }"></view>
      <view class="u-navbar-inner" :style="[navbarInnerStyle]">
        <view v-if="isBack" class="u-back-wrap" @click="goBack">
          <view class="u-icon-wrap">
            <u-icon :name="backIconName" :color="backIconColor" :size="backIconSize"></u-icon>
          </view>
          <view v-if="backText" class="u-icon-wrap u-back-text u-line-1" :style="[backTextStyle]">{{ backText }}</view>
        </view>
        <view v-if="title" class="u-navbar-content-title" :style="[titleStyle]">
          <view
            class="u-title u-line-1"
            :style="{ color: titleColor, fontSize: titleSize + 'rpx', fontWeight: titleBold ? 'bold' : 'normal' }"
          >
            {{ title }}
          </view>
        </view>
        <view class="u-slot-content">
          <slot></slot>
        </view>
        <view class="u-slot-right">
          <slot name="right"></slot>
        </view>
      </view>
    </view>
    <view
      v-if="isFixed && !immersive"
      class="u-navbar-placeholder"
      :style="{ width: '100%', height: Number(navbarHeight) + statusBarHeight + 'px' }"
    ></view>
  </view>
</template>

<script>
// Helpers the reference bundle hoisted out of the component.
var i = uni.getSystemInfoSync();
var a = {};

export default {
  name: 'u-navbar',
  props: {
    height: {
      type: [String, Number],
      default: ''
    },
    backIconColor: {
      type: String,
      default: '#606266'
    },
    backIconName: {
      type: String,
      default: 'nav-back'
    },
    backIconSize: {
      type: [String, Number],
      default: '44'
    },
    backText: {
      type: String,
      default: ''
    },
    backTextStyle: {
      type: Object,
      default: function () {
        return {
          color: '#606266'
        };
      }
    },
    title: {
      type: String,
      default: ''
    },
    titleWidth: {
      type: [String, Number],
      default: '250'
    },
    titleColor: {
      type: String,
      default: '#606266'
    },
    titleBold: {
      type: Boolean,
      default: false
    },
    titleSize: {
      type: [String, Number],
      default: 32
    },
    isBack: {
      type: [Boolean, String],
      default: true
    },
    background: {
      type: Object,
      default: function () {
        return {
          background: '#ffffff'
        };
      }
    },
    isFixed: {
      type: Boolean,
      default: true
    },
    immersive: {
      type: Boolean,
      default: false
    },
    borderBottom: {
      type: Boolean,
      default: true
    },
    zIndex: {
      type: [String, Number],
      default: ''
    },
    customBack: {
      type: Function,
      default: null
    }
  },
  data: function () {
    return {
      menuButtonInfo: a,
      statusBarHeight: i.statusBarHeight
    };
  },
  computed: {
    navbarInnerStyle: function () {
      var t = {};
      return (t.height = this.navbarHeight + 'px', t);
    },
    navbarStyle: function () {
      var t = {};
      return (t.zIndex = this.zIndex ? this.zIndex : this.$u.zIndex.navbar, Object.assign(t, this.background), t);
    },
    titleStyle: function () {
      var t = {};
      return (t.left = (i.windowWidth - uni.upx2px(this.titleWidth)) / 2 + 'px', t.right = (i.windowWidth - uni.upx2px(this.titleWidth)) / 2 + 'px', t.width = uni.upx2px(this.titleWidth) + 'px', t);
    },
    navbarHeight: function () {
      return this.height ? this.height : 44;
    }
  },
  created: function () {},
  methods: {
    goBack: function () {
      'function' === typeof this.customBack ? this.customBack.bind(this.$u.$parent.call(this))() : uni.navigateBack();
    }
  }
};
</script>

<style scoped>
.u-navbar { width:100% }
.u-navbar-fixed { position:fixed;left:0;right:0;top:0;z-index:991 }
.u-status-bar { width:100% }
.u-navbar-inner { display:flex;flex-direction:row;
justify-content:space-between;position:relative;align-items:center }
.u-back-wrap { display:flex;flex-direction:row;
align-items:center;flex:1;flex-grow:0;padding:14rpx 14rpx 14rpx 24rpx }
.u-back-text { padding-left:4rpx;font-size:30rpx }
.u-navbar-content-title { display:flex;flex-direction:row;
align-items:center;justify-content:center;flex:1;position:absolute;left:0;right:0;height:60rpx;text-align:center;flex-shrink:0 }
.u-navbar-centent-slot { flex:1 }
.u-title { line-height:60rpx;font-size:32rpx;flex:1 }
.u-navbar-right { flex:1;
display:flex;flex-direction:row;
align-items:center;justify-content:flex-end }
.u-slot-content { flex:1;
display:flex;flex-direction:row;
align-items:center }
</style>
