<template>
  <view
    class="mescroll-body mescroll-render-touch"
    :class="{ 'mescorll-sticky': sticky }"
    :style="{ minHeight: minHeight, 'padding-top': padTop, 'padding-bottom': padBottom }"
    :prop="wxsProp"
  >
    <view
      v-if="topbar && statusBarHeight"
      class="mescroll-topbar"
      :style="{ height: statusBarHeight + 'px', background: topbar }"
    ></view>
    <view
      class="mescroll-body-content mescroll-wxs-content"
      :style="{ transform: translateY, transition: transition }"
      :prop="callProp"
    >
      <view
        v-if="mescroll.optDown.use"
        class="mescroll-downwarp"
        :style="{ background: mescroll.optDown.bgColor, color: mescroll.optDown.textColor }"
      >
        <view class="downwarp-content">
          <view
            class="downwarp-progress mescroll-wxs-progress"
            :class="{ 'mescroll-rotate': isDownLoading }"
            :style="{ 'border-color': mescroll.optDown.textColor, transform: downRotate }"
          ></view>
          <view class="downwarp-tip">{{ downText }}</view>
        </view>
      </view>
      <slot></slot>
      <mescroll-empty v-if="isShowEmpty" :option="mescroll.optUp.empty" @emptyclick="emptyClick"></mescroll-empty>
      <view
        v-if="mescroll.optUp.use && !isDownLoading && 3 !== upLoadType"
        class="mescroll-upwarp"
        :style="{ background: mescroll.optUp.bgColor, color: mescroll.optUp.textColor }"
      >
        <view v-show="1 === upLoadType">
          <view class="upwarp-progress mescroll-rotate" :style="{ 'border-color': mescroll.optUp.textColor }"></view>
          <view class="upwarp-tip">{{ mescroll.optUp.textLoading }}</view>
        </view>
        <view v-if="2 === upLoadType" class="upwarp-nodata">{{ mescroll.optUp.textNoMore }}</view>
      </view>
    </view>
    <view v-if="safearea" class="mescroll-safearea"></view>
    <mescroll-top :option="mescroll.optUp.toTop" @click="toTopClick" v-model="isShowToTop"></mescroll-top>
    <view :prop="wxsProp"></view>
  </view>
</template>

<script>
import { interopDefault as d_8689 } from '@/vendor/8689';
import { interopDefault as d_19f9 } from '@/vendor/19f9';
import { interopDefault as d_d62e } from '@/vendor/d62e';

export default {
  mixins: [d_8689],
  data: function () {
    return {
      mescroll: {
        optDown: {},
        optUp: {}
      },
      downHight: 0,
      downRate: 0,
      downLoadType: 0,
      upLoadType: 0,
      isShowEmpty: false,
      isShowToTop: false,
      windowHeight: 0,
      windowBottom: 0,
      statusBarHeight: 0
    };
  },
  props: {
    down: Object,
    up: Object,
    top: [String, Number],
    topbar: [Boolean, String],
    bottom: [String, Number],
    safearea: Boolean,
    height: [String, Number],
    bottombar: {
      type: Boolean,
      default: true
    },
    sticky: Boolean
  },
  computed: {
    minHeight: function () {
      return this.toPx(this.height || '100%') + 'px';
    },
    numTop: function () {
      return this.toPx(this.top);
    },
    padTop: function () {
      return this.numTop + 'px';
    },
    numBottom: function () {
      return this.toPx(this.bottom);
    },
    padBottom: function () {
      return this.numBottom + 'px';
    },
    isDownReset: function () {
      return 3 === this.downLoadType || 4 === this.downLoadType;
    },
    transition: function () {
      return this.isDownReset ? 'transform 300ms' : '';
    },
    translateY: function () {
      return this.downHight > 0 ? 'translateY(' + this.downHight + 'px)' : '';
    },
    isDownLoading: function () {
      return 3 === this.downLoadType;
    },
    downRotate: function () {
      return 'rotate(' + 360 * this.downRate + 'deg)';
    },
    downText: function () {
      if (!this.mescroll) return '';
      switch (this.downLoadType) {
        case 1:
          return this.mescroll.optDown.textInOffset;
        case 2:
          return this.mescroll.optDown.textOutOffset;
        case 3:
          return this.mescroll.optDown.textLoading;
        case 4:
          return this.mescroll.isDownEndSuccess ? this.mescroll.optDown.textSuccess : 0 == this.mescroll.isDownEndSuccess ? this.mescroll.optDown.textErr : this.mescroll.optDown.textInOffset;
        default:
          return this.mescroll.optDown.textInOffset;
      }
    }
  },
  methods: {
    toPx: function (t) {
      if ('string' === typeof t) if (-1 !== t.indexOf('px')) if (-1 !== t.indexOf('rpx')) t = t.replace('rpx', ''); else {
        if (-1 === t.indexOf('upx')) return Number(t.replace('px', ''));
        t = t.replace('upx', '');
      } else if (-1 !== t.indexOf('%')) {
        var e = Number(t.replace('%', '')) / 100;
        return this.windowHeight * e;
      }
      return t ? uni.upx2px(Number(t)) : 0;
    },
    emptyClick: function () {
      this.$emit('emptyclick', this.mescroll);
    },
    toTopClick: function () {
      this.mescroll.scrollTo(0, this.mescroll.optUp.toTop.duration);
      this.$emit('topclick', this.mescroll);
    }
  },
  created: function () {
    var e = this, s = {
      down: {
        inOffset: function () {
          e.downLoadType = 1;
        },
        outOffset: function () {
          e.downLoadType = 2;
        },
        onMoving: function (t, s, i) {
          e.downHight = i;
          e.downRate = s;
        },
        showLoading: function (t, s) {
          e.downLoadType = 3;
          e.downHight = s;
        },
        beforeEndDownScroll: function (t) {
          return (e.downLoadType = 4, t.optDown.beforeEndDelay);
        },
        endDownScroll: function () {
          e.downLoadType = 4;
          e.downHight = 0;
          e.downResetTimer && (clearTimeout(e.downResetTimer), e.downResetTimer = null);
          e.downResetTimer = setTimeout(function () {
            4 === e.downLoadType && (e.downLoadType = 0);
          }, 300);
        },
        callback: function (t) {
          e.$emit('down', t);
        }
      },
      up: {
        showLoading: function () {
          e.upLoadType = 1;
        },
        showNoMore: function () {
          e.upLoadType = 2;
        },
        hideUpScroll: function (t) {
          e.upLoadType = t.optUp.hasNext ? 0 : 3;
        },
        empty: {
          onShow: function (t) {
            e.isShowEmpty = t;
          }
        },
        toTop: {
          onShow: function (t) {
            e.isShowToTop = t;
          }
        },
        callback: function (t) {
          e.$emit('up', t);
        }
      }
    };
    d_19f9.extend(s, d_d62e);
    var n = JSON.parse(JSON.stringify({
      down: e.down,
      up: e.up
    }));
    d_19f9.extend(n, s);
    e.mescroll = new d_19f9(n, true);
    e.$emit('init', e.mescroll);
    var r = uni.getSystemInfoSync();
    r.windowHeight && (e.windowHeight = r.windowHeight);
    r.windowBottom && (e.windowBottom = r.windowBottom);
    r.statusBarHeight && (e.statusBarHeight = r.statusBarHeight);
    e.mescroll.setBodyHeight(r.windowHeight);
    e.mescroll.resetScrollTo(function (s, i) {
      'string' === typeof s ? setTimeout(function () {
        var a;
        -1 == s.indexOf('#') && -1 == s.indexOf('.') ? a = '#' + s : (a = s, -1 != s.indexOf('>>>') && (a = s.split('>>>')[1].trim()));
        uni.createSelectorQuery().select(a).boundingClientRect(function (s) {
          if (s) {
            var n = s.top;
            n += e.mescroll.getScrollTop();
            uni.pageScrollTo({
              scrollTop: n,
              duration: i
            });
          } else console.error(a + ' does not exist');
        }).exec();
      }, 30) : uni.pageScrollTo({
        scrollTop: s,
        duration: i
      });
    });
    e.up && e.up.toTop && null != e.up.toTop.safearea || (e.mescroll.optUp.toTop.safearea = e.safearea);
  }
};
</script>

<style scoped>
.mescroll-body { position:relative;height:auto;overflow:hidden;box-sizing:border-box }
.mescroll-body.mescorll-sticky { overflow:unset!important }
@supports (bottom:constant(safe-area-inset-bottom)) or (bottom:env(safe-area-inset-bottom)) {
  .mescroll-safearea { padding-bottom:constant(safe-area-inset-bottom);padding-bottom:env(safe-area-inset-bottom) }
}
.mescroll-downwarp { position:absolute;top:-100%;left:0;width:100%;height:100%;text-align:center }
.mescroll-downwarp .downwarp-content { position:absolute;left:0;bottom:0;width:100%;min-height:60rpx;padding:20rpx 0;text-align:center }
.mescroll-downwarp .downwarp-tip { display:inline-block;font-size:28rpx;vertical-align:middle;margin-left:16rpx }
.mescroll-downwarp .downwarp-progress { display:inline-block;width:32rpx;height:32rpx;border-radius:50%;border:2rpx solid grey;border-bottom-color:transparent!important;vertical-align:middle }
.mescroll-downwarp .mescroll-rotate { -webkit-animation:mescrollDownRotate-data-v-4cc6b119 .6s linear infinite;animation:mescrollDownRotate-data-v-4cc6b119 .6s linear infinite }
@-webkit-keyframes mescrollDownRotate-data-v-4cc6b119 {
  0% { -webkit-transform:rotate(0deg);transform:rotate(0deg) }
  100% { -webkit-transform:rotate(1turn);transform:rotate(1turn) }
}
@keyframes mescrollDownRotate-data-v-4cc6b119 {
  0% { -webkit-transform:rotate(0deg);transform:rotate(0deg) }
  100% { -webkit-transform:rotate(1turn);transform:rotate(1turn) }
}
.mescroll-upwarp { box-sizing:border-box;min-height:110rpx;padding:30rpx 0;text-align:center;clear:both }
.mescroll-upwarp .upwarp-tip, .mescroll-upwarp .upwarp-nodata { display:inline-block;font-size:28rpx;vertical-align:middle }
.mescroll-upwarp .upwarp-tip { margin-left:16rpx }
.mescroll-upwarp .upwarp-progress { display:inline-block;width:32rpx;height:32rpx;border-radius:50%;border:2rpx solid grey;border-bottom-color:transparent!important;vertical-align:middle }
.mescroll-upwarp .mescroll-rotate { -webkit-animation:mescrollUpRotate-data-v-4cc6b119 .6s linear infinite;animation:mescrollUpRotate-data-v-4cc6b119 .6s linear infinite }
@-webkit-keyframes mescrollUpRotate-data-v-4cc6b119 {
  0% { -webkit-transform:rotate(0deg);transform:rotate(0deg) }
  100% { -webkit-transform:rotate(1turn);transform:rotate(1turn) }
}
@keyframes mescrollUpRotate-data-v-4cc6b119 {
  0% { -webkit-transform:rotate(0deg);transform:rotate(0deg) }
  100% { -webkit-transform:rotate(1turn);transform:rotate(1turn) }
}
</style>
