<template>
  <view
    v-if="show"
    class="u-notice-bar"
    :class="[type ? 'u-type-' + type + '-light-bg' : '']"
    :style="{ background: computeBgColor, padding: padding }"
  >
    <view class="u-direction-row">
      <view class="u-icon-wrap">
        <u-icon
          v-if="volumeIcon"
          class="u-left-icon"
          name="volume-fill"
          :size="volumeSize"
          :color="computeColor"
        ></u-icon>
      </view>
      <view class="u-notice-box" id="u-notice-box">
        <view
          class="u-notice-content"
          :style="{ animationDuration: animationDuration, animationPlayState: animationPlayState }"
          id="u-notice-content"
        >
          <text class="u-notice-text" :class="['u-type-' + type]" :style="[textStyle]" @click="click">{{ showText }}</text>
        </view>
      </view>
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
    show: {
      type: Boolean,
      default: true
    },
    fontSize: {
      type: [Number, String],
      default: 26
    },
    volumeSize: {
      type: [Number, String],
      default: 34
    },
    speed: {
      type: [Number, String],
      default: 160
    },
    playState: {
      type: String,
      default: 'play'
    },
    padding: {
      type: [Number, String],
      default: '18rpx 24rpx'
    }
  },
  data: function () {
    return {
      textWidth: 0,
      boxWidth: 0,
      animationDuration: '10s',
      animationPlayState: 'paused',
      showText: ''
    };
  },
  watch: {
    list: {
      immediate: true,
      handler: function (t) {
        var e = this;
        this.showText = t.join('，');
        this.$nextTick(function () {
          e.initSize();
        });
      }
    },
    playState: function (t) {
      this.animationPlayState = 'play' == t ? 'running' : 'paused';
    },
    speed: function (t) {
      this.initSize();
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
    computeBgColor: function () {
      return this.bgColor ? this.bgColor : 'none' == this.type ? 'transparent' : void 0;
    }
  },
  mounted: function () {
    var t = this;
    this.$nextTick(function () {
      t.initSize();
    });
  },
  methods: {
    initSize: function () {
      var t = this, e = [], s = new Promise(function (e, s) {
        uni.createSelectorQuery().in(t).select('#u-notice-content').boundingClientRect().exec(function (s) {
          t.textWidth = s[0].width;
          e();
        });
      });
      e.push(s);
      Promise.all(e).then(function () {
        t.animationDuration = ('').concat(t.textWidth / uni.upx2px(t.speed), 's');
        t.animationPlayState = 'paused';
        setTimeout(function () {
          'play' == t.playState && t.autoplay && (t.animationPlayState = 'running');
        }, 10);
      });
    },
    click: function (t) {
      this.$emit('click');
    },
    close: function () {
      this.$emit('close');
    },
    getMore: function () {
      this.$emit('getMore');
    }
  }
};
</script>

<style scoped>
.u-notice-bar { padding:18rpx 24rpx;overflow:hidden }
.u-direction-row { display:flex;flex-direction:row;
align-items:center;justify-content:space-between }
.u-left-icon { display:inline-flex;align-items:center }
.u-notice-box { flex:1;
display:flex;flex-direction:row;
overflow:hidden;margin-left:12rpx }
.u-right-icon { margin-left:12rpx;display:inline-flex;align-items:center }
.u-notice-content { -webkit-animation:u-loop-animation-data-v-4bc00da4 10s linear infinite both;animation:u-loop-animation-data-v-4bc00da4 10s linear infinite both;text-align:right;padding-left:100%;
display:flex;flex-direction:row;
flex-wrap:nowrap }
.u-notice-text { font-size:26rpx;word-break:keep-all;white-space:nowrap }
@-webkit-keyframes u-loop-animation-data-v-4bc00da4 {
  0% { -webkit-transform:translateZ(0);transform:translateZ(0) }
  100% { -webkit-transform:translate3d(-100%,0,0);transform:translate3d(-100%,0,0) }
}
@keyframes u-loop-animation-data-v-4bc00da4 {
  0% { -webkit-transform:translateZ(0);transform:translateZ(0) }
  100% { -webkit-transform:translate3d(-100%,0,0);transform:translate3d(-100%,0,0) }
}
</style>
