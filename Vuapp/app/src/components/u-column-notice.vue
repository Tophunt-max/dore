<template>
  <view
    class="u-notice-bar"
    :class="[type ? 'u-type-' + type + '-light-bg' : '']"
    :style="{ background: computeBgColor, padding: padding }"
  >
    <view class="u-icon-wrap">
      <u-icon
        v-if="volumeIcon"
        class="u-left-icon"
        name="volume-fill"
        :size="volumeSize"
        :color="computeColor"
      ></u-icon>
    </view>
    <swiper
      class="u-swiper"
      :disable-touch="disableTouch"
      :autoplay="autoplay && 'play' == playState"
      :vertical="vertical"
      :interval="duration"
      @change="change"
      :circular="true"
    >
      <swiper-item v-for="(item, index) in list" :key="index" class="u-swiper-item">
        <view
          class="u-news-item u-line-1"
          :class="['u-type-' + type]"
          :style="[textStyle]"
          @click="click(index)"
        >
          {{ item }}
        </view>
      </swiper-item>
    </swiper>
    <view class="u-icon-wrap">
      <u-icon
        v-if="moreIcon"
        class="u-right-icon"
        name="arrow-right"
        :size="26"
        :color="computeColor"
        @click="getMore"
      ></u-icon>
      <u-icon
        v-if="closeIcon"
        class="u-right-icon"
        name="close"
        :size="24"
        :color="computeColor"
        @click="close"
      ></u-icon>
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
    type: {
      type: String,
      default: 'warning'
    },
    volumeIcon: {
      type: Boolean,
      default: true
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
    direction: {
      type: String,
      default: 'row'
    },
    show: {
      type: Boolean,
      default: true
    },
    fontSize: {
      type: [Number, String],
      default: 26
    },
    duration: {
      type: [Number, String],
      default: 2e3
    },
    volumeSize: {
      type: [Number, String],
      default: 34
    },
    speed: {
      type: Number,
      default: 160
    },
    isCircular: {
      type: Boolean,
      default: true
    },
    mode: {
      type: String,
      default: 'horizontal'
    },
    playState: {
      type: String,
      default: 'play'
    },
    disableTouch: {
      type: Boolean,
      default: true
    },
    padding: {
      type: [Number, String],
      default: '18rpx 24rpx'
    }
  },
  computed: {
    computeColor: function () {
      return this.color ? this.color : 'none' == this.type ? '#606266' : this.type;
    },
    textStyle: function () {
      var t = {};
      return (this.color ? t.color = this.color : 'none' == this.type && (t.color = '#606266'), t.fontSize = this.fontSize + 'rpx', t);
    },
    vertical: function () {
      return 'horizontal' != this.mode;
    },
    computeBgColor: function () {
      return this.bgColor ? this.bgColor : 'none' == this.type ? 'transparent' : void 0;
    }
  },
  data: function () {
    return {};
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
    change: function (t) {
      var e = t.detail.current;
      e == this.list.length - 1 && this.$emit('end');
    }
  }
};
</script>

<style scoped>
.u-notice-bar { width:100%;
display:flex;flex-direction:row;
align-items:center;justify-content:center;flex-wrap:nowrap;padding:18rpx 24rpx;overflow:hidden }
.u-swiper { font-size:26rpx;height:32rpx;
display:flex;flex-direction:row;
align-items:center;flex:1;margin-left:12rpx }
.u-swiper-item { display:flex;flex-direction:row;
align-items:center;overflow:hidden }
.u-news-item { overflow:hidden }
.u-right-icon { margin-left:12rpx;display:inline-flex;align-items:center }
.u-left-icon { display:inline-flex;align-items:center }
</style>
