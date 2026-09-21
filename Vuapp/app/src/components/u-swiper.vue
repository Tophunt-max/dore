<template>
  <view class="u-swiper-wrap" :style="{ borderRadius: borderRadius + 'rpx' }">
    <swiper
      :style="{ height: height + 'rpx', backgroundColor: bgColor }"
      :current="elCurrent"
      :interval="interval"
      :circular="circular"
      :duration="duration"
      :autoplay="autoplay"
      :previous-margin="effect3d ? effect3dPreviousMargin + 'rpx' : '0'"
      :next-margin="effect3d ? effect3dPreviousMargin + 'rpx' : '0'"
      @change="change"
      @animationfinish="animationfinish"
    >
      <swiper-item v-for="(item, index) in list" :key="index" class="u-swiper-item">
        <view
          class="u-list-image-wrap"
          :class="[uCurrent != index ? 'u-list-scale' : '']"
          :style="{ borderRadius: borderRadius + 'rpx', transform: effect3d && uCurrent != index ? 'scaleY(0.9)' : 'scaleY(1)', margin: effect3d && uCurrent != index ? '0 20rpx' : 0 }"
          @click.stop.prevent="listClick(index)"
        >
          <image class="u-swiper-image" :src="item[name] || item" :mode="imgMode" />
          <view
            v-if="title && item.title"
            class="u-swiper-title u-line-1"
            :style="[{ 'padding-bottom': titlePaddingBottom }, titleStyle]"
          >
            {{ item.title }}
          </view>
        </view>
      </swiper-item>
    </swiper>
    <view
      class="u-swiper-indicator"
      :style="{ top: 'topLeft' == indicatorPos || 'topCenter' == indicatorPos || 'topRight' == indicatorPos ? '12rpx' : 'auto', bottom: 'bottomLeft' == indicatorPos || 'bottomCenter' == indicatorPos || 'bottomRight' == indicatorPos ? '12rpx' : 'auto', justifyContent: justifyContent, padding: '0 ' + (effect3d ? '74rpx' : '24rpx') }"
    >
      <view
        v-if="'rect' == mode"
        v-for="(item, index) in list"
        :key="index"
        class="u-indicator-item-rect"
        :class="{ 'u-indicator-item-rect-active': index == uCurrent }"
      ></view>
      <view
        v-if="'dot' == mode"
        v-for="(item, index) in list"
        :key="index"
        class="u-indicator-item-dot"
        :class="{ 'u-indicator-item-dot-active': index == uCurrent }"
      ></view>
      <view
        v-if="'round' == mode"
        v-for="(item, index) in list"
        :key="index"
        class="u-indicator-item-round"
        :class="{ 'u-indicator-item-round-active': index == uCurrent }"
      ></view>
      <view v-if="'number' == mode" class="u-indicator-item-number">{{ uCurrent + 1 }}/{{ list.length }}</view>
    </view>
  </view>
</template>

<script>
export default {
  name: 'u-swiper',
  props: {
    list: {
      type: Array,
      default: function () {
        return [];
      }
    },
    title: {
      type: Boolean,
      default: false
    },
    indicator: {
      type: Object,
      default: function () {
        return {};
      }
    },
    borderRadius: {
      type: [Number, String],
      default: 8
    },
    interval: {
      type: [String, Number],
      default: 3e3
    },
    mode: {
      type: String,
      default: 'round'
    },
    height: {
      type: [Number, String],
      default: 250
    },
    indicatorPos: {
      type: String,
      default: 'bottomCenter'
    },
    effect3d: {
      type: Boolean,
      default: false
    },
    effect3dPreviousMargin: {
      type: [Number, String],
      default: 50
    },
    autoplay: {
      type: Boolean,
      default: true
    },
    duration: {
      type: [Number, String],
      default: 500
    },
    circular: {
      type: Boolean,
      default: true
    },
    imgMode: {
      type: String,
      default: 'aspectFill'
    },
    name: {
      type: String,
      default: 'image'
    },
    bgColor: {
      type: String,
      default: '#f3f4f6'
    },
    current: {
      type: [Number, String],
      default: 0
    },
    titleStyle: {
      type: Object,
      default: function () {
        return {};
      }
    }
  },
  watch: {
    list: function (t, e) {
      t.length !== e.length && (this.uCurrent = 0);
    },
    current: function (t) {
      this.uCurrent = t;
    }
  },
  data: function () {
    return {
      uCurrent: this.current
    };
  },
  computed: {
    justifyContent: function () {
      return 'topLeft' == this.indicatorPos || 'bottomLeft' == this.indicatorPos ? 'flex-start' : 'topCenter' == this.indicatorPos || 'bottomCenter' == this.indicatorPos ? 'center' : 'topRight' == this.indicatorPos || 'bottomRight' == this.indicatorPos ? 'flex-end' : void 0;
    },
    titlePaddingBottom: function () {
      var t = 0;
      return 'none' == this.mode ? '12rpx' : (t = ['bottomLeft', 'bottomCenter', 'bottomRight'].indexOf(this.indicatorPos) >= 0 && 'number' == this.mode ? '60rpx' : ['bottomLeft', 'bottomCenter', 'bottomRight'].indexOf(this.indicatorPos) >= 0 && 'number' != this.mode ? '40rpx' : '12rpx', t);
    },
    elCurrent: function () {
      return Number(this.current);
    }
  },
  methods: {
    listClick: function (t) {
      this.$emit('click', t);
    },
    change: function (t) {
      var e = t.detail.current;
      this.uCurrent = e;
      this.$emit('change', e);
    },
    animationfinish: function (t) {}
  }
};
</script>

<style scoped>
.u-swiper-wrap { position:relative;overflow:hidden;-webkit-transform:translateY(0);transform:translateY(0) }
.u-swiper-image { width:100%;will-change:transform;height:100%;display:block }
.u-swiper-indicator { padding:0 24rpx;position:absolute;
display:flex;flex-direction:row;
width:100%;z-index:1 }
.u-indicator-item-rect { width:26rpx;height:8rpx;margin:0 6rpx;transition:all .5s;background-color:rgba(0,0,0,.3) }
.u-indicator-item-rect-active { background-color:hsla(0,0%,100%,.8) }
.u-indicator-item-dot { width:14rpx;height:14rpx;margin:0 6rpx;border-radius:20rpx;transition:all .5s;background-color:rgba(0,0,0,.3) }
.u-indicator-item-dot-active { background-color:hsla(0,0%,100%,.8) }
.u-indicator-item-round { width:14rpx;height:14rpx;margin:0 6rpx;border-radius:20rpx;transition:all .5s;background-color:rgba(0,0,0,.3) }
.u-indicator-item-round-active { width:34rpx;background-color:hsla(0,0%,100%,.8) }
.u-indicator-item-number { padding:6rpx 16rpx;line-height:1;background-color:rgba(0,0,0,.3);border-radius:100rpx;font-size:26rpx;color:hsla(0,0%,100%,.8) }
.u-list-scale { -webkit-transform-origin:center center;transform-origin:center center }
.u-list-image-wrap { width:100%;height:100%;flex:1;transition:all .5s;overflow:hidden;box-sizing:initial;position:relative }
.u-swiper-title { position:absolute;background-color:rgba(0,0,0,.3);bottom:0;left:0;width:100%;font-size:28rpx;padding:12rpx 24rpx;color:hsla(0,0%,100%,.9) }
.u-swiper-item { display:flex;flex-direction:row;
overflow:hidden;align-items:center }
</style>
