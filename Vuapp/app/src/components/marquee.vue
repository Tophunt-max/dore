<template>
  <view class="marquee_box" @touchstart="touchstartFn" @touchend="touchendFn">
    <view v-if="'right' == direction || 'left' == direction">
      <view
        v-if="'text' == broadcastType"
        class="marquee_container"
        :style="'background:' + broadcastStylees.back_color + ';'"
      >
        <view
          v-if="broadcastIconIsDisplay"
          class="broadIcon"
          :style="'background:' + broadcastStylees.back_color + ';font-size:28rpx;'"
        >
          <text class="iconfont icon-guangbozheng-"></text>
          <text>{{ broadcast_tit }}:</text>
        </view>
        <view
          class="boradcast_text_left_rig"
          :class="['left' == direction ? 'marquee_text_left' : 'right' == direction ? 'marquee_text_right' : '', animation_paused ? 'animation_pausedcss' : '']"
          :style="'--marqueeWidth--:' + -broadcastStylees.width_mal + 'px;--speed--:' + broadcastStylees.time + 's;width:' + broadcastStylees.width_mal + 'px;'"
        >
          <view
            v-for="(item, index) in broadcastDataes"
            :key="index"
            :style="'color:' + broadcastStylees.text_color + ';margin-left:' + (0 != index ? item.starspos : 0) + 'px;font-size:' + broadcastStylees.font_size + 'rpx;'"
            @click.stop="click_event(index)"
          >
            {{ item.text }}
          </view>
        </view>
      </view>
      <view v-if="'mould' == broadcastType" class="mould">
        <view :style="'height:' + viewHeight + 'rpx;'">
          <view
            class="broadcastTopBtm dsf"
            :class="['left' == direction ? 'broadcastDataTopBtmDatacss_let' : 'right' == direction ? 'broadcastDataTopBtmDatacss_rig' : '', animation_paused ? 'animation_pausedcss' : '']"
            :style="'--scrollWidth--:' + -scrlloWidth / 2 + 'px;--scrollSpeed2--:' + scrlloWidth / broadcastStyle.speed + 's;width:' + 2 * scrlloWidth + 'px;'"
          >
            <view ref="mouldRef" class="bml01">
              <slot></slot>
            </view>
          </view>
        </view>
      </view>
    </view>
    <view
      v-if="'top' == direction || 'bottom' == direction"
      class="broadcastTopBtm"
      :style="'font-size:' + broadcastStyle.font_size + 'rpx;color:' + broadcastStyle.text_color + ';background:' + broadcastStyle.back_color + ';height:' + viewHeight + 'rpx;--scrollHeight--:' + -broadcastTopBtmHeight / 2 + 'px;--scrollSpeed--:' + broadcastTopBtmHeight / 2 / broadcastStyle.speed + 's;'"
    >
      <view
        v-if="'text' == broadcastType"
        :class="['top' == direction ? 'broadcastDataTopBtmDatacss_top' : 'bottom' == direction ? 'broadcastDataTopBtmDatacss_bottom' : '', animation_paused ? 'animation_pausedcss' : '']"
      >
        <view
          v-for="(item, index) in broadcastDataTopBtmDataes"
          :key="index"
          class="bdbd_item"
          @click.stop="click_event()"
        >
          {{ item }}
        </view>
      </view>
      <view
        v-if="'mould' == broadcastType"
        :class="['top' == direction ? 'broadcastDataTopBtmDatacss_top' : 'bottom' == direction ? 'broadcastDataTopBtmDatacss_bottom' : '', animation_paused ? 'animation_pausedcss' : '']"
      >
        <slot></slot>
      </view>
    </view>
  </view>
</template>

<script>
// Helpers the reference bundle hoisted out of the component.
function u(t, e) {
  (null == e || e > t.length) && (e = t.length);
  for (var s = 0, i = new Array(e); s < e; s++) i[s] = t[s];
  return i;
}
function a(t, e, s) {
  return ((e in t) ? Object.defineProperty(t, e, {
    value: s,
    enumerable: true,
    configurable: true,
    writable: true
  }) : t[e] = s, t);
}
function s(t, e) {
  var s = Object.keys(t);
  if (Object.getOwnPropertySymbols) {
    var i = Object.getOwnPropertySymbols(t);
    e && (i = i.filter(function (e) {
      return Object.getOwnPropertyDescriptor(t, e).enumerable;
    }));
    s.push.apply(s, i);
  }
  return s;
}
function r() {
  throw new TypeError('Invalid attempt to spread non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.');
}
function o(t, e) {
  if (t) {
    if ('string' === typeof t) return u(t, e);
    var s = Object.prototype.toString.call(t).slice(8, -1);
    return ('Object' === s && t.constructor && (s = t.constructor.name), 'Map' === s || 'Set' === s ? Array.from(t) : 'Arguments' === s || (/^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/).test(s) ? u(t, e) : void 0);
  }
}
function c(t) {
  if ('undefined' !== typeof Symbol && (Symbol.iterator in Object(t))) return Array.from(t);
}
function l(t) {
  if (Array.isArray(t)) return u(t);
}
function i(t) {
  for (var e = 1; e < arguments.length; e++) {
    var i = null != arguments[e] ? arguments[e] : {};
    e % 2 ? s(Object(i), true).forEach(function (e) {
      a(t, e, i[e]);
    }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(t, Object.getOwnPropertyDescriptors(i)) : s(Object(i)).forEach(function (e) {
      Object.defineProperty(t, e, Object.getOwnPropertyDescriptor(i, e));
    });
  }
  return t;
}
function n(t) {
  return l(t) || c(t) || o(t) || r();
}

export default {
  data: function () {
    return {
      broadcastDataes: [],
      broadcastDataTopBtmDataes: [],
      broadcastStylees: {},
      broadcastTopBtmHeight: 0,
      scrlloWidth: 0,
      animation_paused: false,
      qualifications: true,
      isShow: false
    };
  },
  props: {
    broadcastType: {
      type: String,
      default: 'text'
    },
    imgdata: {
      type: Array
    },
    broadcastData: {
      type: Array
    },
    broadcastStyle: {
      type: Object,
      default: function () {
        return {
          speed: 90,
          font_size: '28',
          text_color: '#fff',
          back_color: '#815CD4'
        };
      }
    },
    broadcastIconIsDisplay: {
      type: Boolean,
      default: false
    },
    broadcast_tit: {
      type: String,
      default: '今日热点'
    },
    direction: {
      type: String,
      default: 'left'
    },
    viewHeight: {
      type: Number,
      default: 200
    },
    touchEvent: {
      type: true,
      default: false
    }
  },
  watch: {
    broadcastData: function (e) {
      console.log(e, '---');
      e.length && (this.isShow = true, this.initialization());
    },
    imgdata: function (e) {
      console.log(e, '---');
      this.isShow = true;
      this.initialization();
    }
  },
  created: function () {},
  mounted: function () {
    this.initialization();
  },
  methods: {
    initialization: function () {
      var e = this;
      if ('text' == e.broadcastType) if ('right' == e.direction || 'left' == e.direction) e.initial_let_rig(); else {
        var s = n(e.broadcastData);
        s = s.concat(s);
        e.broadcastDataTopBtmDataes = s;
      }
      'top' != e.direction && 'bottom' != e.direction || e.$nextTick(function () {
        var s = ('.broadcastDataTopBtmDatacss_').concat(e.direction), i = uni.createSelectorQuery().in(e);
        i.select(s).boundingClientRect(function (s) {
          e.broadcastTopBtmHeight = s.height;
          console.log(s, '==rect.height');
          e.viewHeight - s.height > 10 && (e.qualifications = false, e.animation_paused = true, e.broadcastDataTopBtmDataes.splice(e.broadcastDataTopBtmDataes.length / 2, e.broadcastDataTopBtmDataes.length - 1));
        }).exec();
      });
      'left' != e.direction && 'right' != e.direction || this.$nextTick(function () {
        try {
          if ('mould' == e.broadcastType) {
            var s = uni.createSelectorQuery().in(e);
            s.select('.bml01').boundingClientRect(function (s) {
              e.scrlloWidth = s.width;
              console.log(s, '===================rect.width');
            }).exec();
          }
        } catch (i) {
          e.scrlloWidth = 2 * e.$refs.mouldRef.$el.clientWidth;
        }
      });
    },
    touchendFn: function (t) {
      this.touchEvent && this.qualifications && (this.animation_paused = false);
    },
    touchstartFn: function (t) {
      this.touchEvent && this.qualifications && (this.animation_paused = true);
    },
    initial_let_rig: function () {
      var e = n(this.broadcastData);
      console.log(this.direction, 'this.direction');
      'right' == this.direction && e.reverse();
      var s = e.map(function (t) {
        return {
          text: t,
          starspos: uni.getSystemInfoSync().windowWidth - 103
        };
      }), a = i({}, this.broadcastStyle), r = 0, o = 0, c = a.speed * a.font_size;
      for (var l in s) (r += s[l].text.length * a.font_size, l != s.length - 1 && (o += s[l].starspos));
      var u = r / 2 + o;
      a.time = u / c;
      a.width_mal = u;
      this.broadcastDataes = s;
      this.broadcastStylees = a;
    },
    click_event: function (t) {
      var e;
      e = t > broadcastDataTopBtmDataes.length / 2 - 1 ? t - broadcastDataTopBtmDataes.length / 2 : t;
      this.$emit('changeEvent', {
        i: e,
        msg: ('你点击了').concat(e + 1, '条')
      });
    }
  }
};
</script>

<style scoped>
.marquee_box { width:100%;position:inherit;height:auto }
.mould { width:750rpx;position:inherit }
.dsf { display:flex;justify-content:space-between }
.broadIcon { padding:0 22rpx;height:60rpx;display:flex;justify-content:center;align-items:center;position:absolute;left:0;top:0;color:#fff;z-index:999;line-height:60rpx }
.marquee_container { position:relative;width:100%;height:60rpx }
.marquee_text_left { display:flex;white-space:nowrap;-webkit-animation-name:around_left-data-v-1407b820;animation-name:around_left-data-v-1407b820;-webkit-animation-duration:var(--speed--);animation-duration:var(--speed--);-webkit-animation-iteration-count:infinite;animation-iteration-count:infinite;-webkit-animation-timing-function:linear;animation-timing-function:linear;line-height:60rpx;position:absolute }
@-webkit-keyframes around_left-data-v-1407b820 {
  from { left:100% }
  to { left:var(--marqueeWidth--) }
}
@keyframes around_left-data-v-1407b820 {
  from { left:100% }
  to { left:var(--marqueeWidth--) }
}
.marquee_text_right { display:flex;white-space:nowrap;-webkit-animation-name:around_right-data-v-1407b820;animation-name:around_right-data-v-1407b820;-webkit-animation-duration:var(--speed--);animation-duration:var(--speed--);-webkit-animation-iteration-count:infinite;animation-iteration-count:infinite;-webkit-animation-timing-function:linear;animation-timing-function:linear;line-height:60rpx;position:absolute }
@-webkit-keyframes around_right-data-v-1407b820 {
  from { right:100% }
  to { right:var(--marqueeWidth--) }
}
@keyframes around_right-data-v-1407b820 {
  from { right:100% }
  to { right:var(--marqueeWidth--) }
}
.marquee_tit { height:60rpx;line-height:60rpx }
.broadcastTopBtm { padding:12rx;position:relative }
.broadcastDataTopBtmDatacss_top { width:100%;-webkit-animation-name:around_top-data-v-1407b820;animation-name:around_top-data-v-1407b820;-webkit-animation-duration:var(--scrollSpeed--);animation-duration:var(--scrollSpeed--);-webkit-animation-iteration-count:infinite;animation-iteration-count:infinite;-webkit-animation-timing-function:linear;animation-timing-function:linear;position:absolute;left:0 }
@-webkit-keyframes around_top-data-v-1407b820 {
  from { top:0 }
  to { top:var(--scrollHeight--) }
}
@keyframes around_top-data-v-1407b820 {
  from { top:0 }
  to { top:var(--scrollHeight--) }
}
.broadcastDataTopBtmDatacss_bottom { width:100%;-webkit-animation-name:around_Bottom-data-v-1407b820;animation-name:around_Bottom-data-v-1407b820;-webkit-animation-duration:var(--scrollSpeed--);animation-duration:var(--scrollSpeed--);-webkit-animation-iteration-count:infinite;animation-iteration-count:infinite;-webkit-animation-timing-function:linear;animation-timing-function:linear;position:absolute;left:0 }
@-webkit-keyframes around_Bottom-data-v-1407b820 {
  from { bottom:0 }
  to { bottom:var(--scrollHeight--) }
}
@keyframes around_Bottom-data-v-1407b820 {
  from { bottom:0 }
  to { bottom:var(--scrollHeight--) }
}
.broadcastDataTopBtmDatacss_let { width:100%;-webkit-animation-name:around_let-data-v-1407b820;animation-name:around_let-data-v-1407b820;-webkit-animation-duration:var(--scrollSpeed2--);animation-duration:var(--scrollSpeed2--);-webkit-animation-iteration-count:infinite;animation-iteration-count:infinite;-webkit-animation-timing-function:linear;animation-timing-function:linear;position:absolute;left:0;top:0 }
.broadcastDataTopBtmDatacss_rig { width:100%;-webkit-animation-name:around_rig-data-v-1407b820;animation-name:around_rig-data-v-1407b820;-webkit-animation-duration:var(--scrollSpeed2--);animation-duration:var(--scrollSpeed2--);-webkit-animation-iteration-count:infinite;animation-iteration-count:infinite;-webkit-animation-timing-function:linear;animation-timing-function:linear;position:absolute;right:0;top:0;display:flex;justify-content:flex-end }
.animation_pausedcss { -webkit-animation-play-state:paused;animation-play-state:paused }
@-webkit-keyframes around_let-data-v-1407b820 {
  from { left:0 }
  to { left:var(--scrollWidth--) }
}
@keyframes around_let-data-v-1407b820 {
  from { left:0 }
  to { left:var(--scrollWidth--) }
}
@-webkit-keyframes around_rig-data-v-1407b820 {
  from { right:0 }
  to { right:var(--scrollWidth--) }
}
@keyframes around_rig-data-v-1407b820 {
  from { right:0 }
  to { right:var(--scrollWidth--) }
}
.bdbd_item { padding:0 12rpx;line-height:60rpx;overflow:hidden;white-space:nowrap;text-overflow:ellipsis }
.iconfont { font-family:iconfont!important;font-size:16px;font-style:normal;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale }
.icon-guangbozheng-:before { content:"\e640" }
</style>
