<template>
  <view v-if="isShow" class="u-notice-bar-wrap" :style="{ borderRadius: borderRadius + 'rpx' }">
    <u-row-notice
      v-if="'horizontal' == mode && isCircular"
      :type="type"
      :color="color"
      :bgColor="bgColor"
      :list="list"
      :volumeIcon="volumeIcon"
      :moreIcon="moreIcon"
      :volumeSize="volumeSize"
      :closeIcon="closeIcon"
      :mode="mode"
      :fontSize="fontSize"
      :speed="speed"
      :playState="playState"
      :padding="padding"
      @getMore="getMore"
      @close="close"
      @click="click"
    ></u-row-notice>
    <u-column-notice
      v-if="'vertical' == mode || 'horizontal' == mode && !isCircular"
      :type="type"
      :color="color"
      :bgColor="bgColor"
      :list="list"
      :volumeIcon="volumeIcon"
      :moreIcon="moreIcon"
      :closeIcon="closeIcon"
      :mode="mode"
      :volumeSize="volumeSize"
      :disable-touch="disableTouch"
      :fontSize="fontSize"
      :duration="duration"
      :playState="playState"
      :padding="padding"
      @getMore="getMore"
      @close="close"
      @click="click"
      @end="end"
    ></u-column-notice>
  </view>
</template>

<script>
export default {
  name: 'u-notice-bar',
  props: {
    list: {
      type: Array,
      default: function () {
        return [];
      }
    },
    type: {
      type: String,
      default: 'warning'
    },
    volumeIcon: {
      type: Boolean,
      default: true
    },
    volumeSize: {
      type: [Number, String],
      default: 34
    },
    moreIcon: {
      type: Boolean,
      default: false
    },
    closeIcon: {
      type: Boolean,
      default: false
    },
    autoplay: {
      type: Boolean,
      default: true
    },
    color: {
      type: String,
      default: ''
    },
    bgColor: {
      type: String,
      default: ''
    },
    mode: {
      type: String,
      default: 'horizontal'
    },
    show: {
      type: Boolean,
      default: true
    },
    fontSize: {
      type: [Number, String],
      default: 28
    },
    duration: {
      type: [Number, String],
      default: 2e3
    },
    speed: {
      type: [Number, String],
      default: 160
    },
    isCircular: {
      type: Boolean,
      default: true
    },
    playState: {
      type: String,
      default: 'play'
    },
    disableTouch: {
      type: Boolean,
      default: true
    },
    borderRadius: {
      type: [Number, String],
      default: 0
    },
    padding: {
      type: [Number, String],
      default: '18rpx 24rpx'
    },
    noListHidden: {
      type: Boolean,
      default: true
    }
  },
  computed: {
    isShow: function () {
      return 0 != this.show && (1 != this.noListHidden || 0 != this.list.length);
    }
  },
  methods: {
    click: function (t) {
      this.$emit('click', t);
    },
    close: function () {
      this.$emit('close');
    },
    getMore: function () {
      this.$emit('getMore');
    },
    end: function () {
      this.$emit('end');
    }
  }
};
</script>

<style scoped>
.u-notice-bar-wrap { overflow:hidden }
.u-notice-bar { padding:18rpx 24rpx;overflow:hidden }
.u-direction-row { display:flex;flex-direction:row;
align-items:center;justify-content:space-between }
.u-left-icon { display:flex;flex-direction:row;
align-items:center }
.u-notice-box { flex:1;
display:flex;flex-direction:row;
overflow:hidden;margin-left:12rpx }
.u-right-icon { margin-left:12rpx;
display:flex;flex-direction:row;
align-items:center }
.u-notice-content { line-height:1;white-space:nowrap;font-size:26rpx;-webkit-animation:u-loop-animation-data-v-386306c2 10s linear infinite both;animation:u-loop-animation-data-v-386306c2 10s linear infinite both;text-align:right;padding-left:100% }
@-webkit-keyframes u-loop-animation-data-v-386306c2 {
  0% { -webkit-transform:translateZ(0);transform:translateZ(0) }
  100% { -webkit-transform:translate3d(-100%,0,0);transform:translate3d(-100%,0,0) }
}
@keyframes u-loop-animation-data-v-386306c2 {
  0% { -webkit-transform:translateZ(0);transform:translateZ(0) }
  100% { -webkit-transform:translate3d(-100%,0,0);transform:translate3d(-100%,0,0) }
}
</style>
