<template>
  <button
    class="u-btn u-line-1 u-fix-ios-appearance"
    :class="['u-size-' + size, plain ? 'u-btn--' + type + '--plain' : '', loading ? 'u-loading' : '', 'circle' == shape ? 'u-round-circle' : '', hairLine ? showHairLineBorder : 'u-btn--bold-border', 'u-btn--' + type, disabled ? 'u-btn--' + type + '--disabled' : '']"
    :style="[customStyle, { overflow: ripple ? 'hidden' : 'visible' }]"
    id="u-wave-btn"
    :hover-start-time="Number(hoverStartTime)"
    :hover-stay-time="Number(hoverStayTime)"
    :disabled="disabled"
    :form-type="formType"
    :open-type="openType"
    :app-parameter="appParameter"
    :hover-stop-propagation="hoverStopPropagation"
    :send-message-title="sendMessageTitle"
    :lang="lang"
    :data-name="dataName"
    :session-from="sessionFrom"
    :send-message-img="sendMessageImg"
    :show-message-card="showMessageCard"
    :hover-class="getHoverClass"
    :loading="loading"
    @getphonenumber="getphonenumber"
    @getuserinfo="getuserinfo"
    @error="error"
    @opensetting="opensetting"
    @launchapp="launchapp"
    @click.stop="click($event)"
  >
    <slot></slot>
    <view
      v-if="ripple"
      class="u-wave-ripple"
      :class="[waveActive ? 'u-wave-active' : '']"
      :style="{ top: rippleTop + 'px', left: rippleLeft + 'px', width: fields.targetWidth + 'px', height: fields.targetWidth + 'px', 'background-color': rippleBgColor || 'rgba(0, 0, 0, 0.15)' }"
    ></view>
  </button>
</template>

<script>
export default {
  name: 'u-button',
  props: {
    hairLine: {
      type: Boolean,
      default: true
    },
    type: {
      type: String,
      default: 'default'
    },
    size: {
      type: String,
      default: 'default'
    },
    shape: {
      type: String,
      default: 'square'
    },
    plain: {
      type: Boolean,
      default: false
    },
    disabled: {
      type: Boolean,
      default: false
    },
    loading: {
      type: Boolean,
      default: false
    },
    openType: {
      type: String,
      default: ''
    },
    formType: {
      type: String,
      default: ''
    },
    appParameter: {
      type: String,
      default: ''
    },
    hoverStopPropagation: {
      type: Boolean,
      default: false
    },
    lang: {
      type: String,
      default: 'en'
    },
    sessionFrom: {
      type: String,
      default: ''
    },
    sendMessageTitle: {
      type: String,
      default: ''
    },
    sendMessagePath: {
      type: String,
      default: ''
    },
    sendMessageImg: {
      type: String,
      default: ''
    },
    showMessageCard: {
      type: Boolean,
      default: false
    },
    hoverBgColor: {
      type: String,
      default: ''
    },
    rippleBgColor: {
      type: String,
      default: ''
    },
    ripple: {
      type: Boolean,
      default: false
    },
    hoverClass: {
      type: String,
      default: ''
    },
    customStyle: {
      type: Object,
      default: function () {
        return {};
      }
    },
    dataName: {
      type: String,
      default: ''
    },
    throttleTime: {
      type: [String, Number],
      default: 1e3
    },
    hoverStartTime: {
      type: [String, Number],
      default: 20
    },
    hoverStayTime: {
      type: [String, Number],
      default: 150
    }
  },
  computed: {
    getHoverClass: function () {
      if (this.loading || this.disabled || this.ripple || this.hoverClass) return '';
      var t = '';
      return (t = this.plain ? 'u-' + this.type + '-plain-hover' : 'u-' + this.type + '-hover', t);
    },
    showHairLineBorder: function () {
      return ['primary', 'success', 'error', 'warning'].indexOf(this.type) >= 0 && !this.plain ? '' : 'u-hairline-border';
    }
  },
  data: function () {
    return {
      rippleTop: 0,
      rippleLeft: 0,
      fields: {},
      waveActive: false
    };
  },
  methods: {
    click: function (t) {
      var e = this;
      this.$u.throttle(function () {
        true !== e.loading && true !== e.disabled && (e.ripple && (e.waveActive = false, e.$nextTick(function () {
          this.getWaveQuery(t);
        })), e.$emit('click', t));
      }, this.throttleTime);
    },
    getWaveQuery: function (t) {
      var e = this;
      this.getElQuery().then(function (s) {
        var i = s[0];
        if (i.width && i.width && (i.targetWidth = i.height > i.width ? i.height : i.width, i.targetWidth)) {
          e.fields = i;
          var a = '', n = '';
          a = t.touches[0].clientX;
          n = t.touches[0].clientY;
          e.rippleTop = n - i.top - i.targetWidth / 2;
          e.rippleLeft = a - i.left - i.targetWidth / 2;
          e.$nextTick(function () {
            e.waveActive = true;
          });
        }
      });
    },
    getElQuery: function () {
      var t = this;
      return new Promise(function (e) {
        var s = '';
        s = uni.createSelectorQuery().in(t);
        s.select('.u-btn').boundingClientRect();
        s.exec(function (t) {
          e(t);
        });
      });
    },
    getphonenumber: function (t) {
      this.$emit('getphonenumber', t);
    },
    getuserinfo: function (t) {
      this.$emit('getuserinfo', t);
    },
    error: function (t) {
      this.$emit('error', t);
    },
    opensetting: function (t) {
      this.$emit('opensetting', t);
    },
    launchapp: function (t) {
      this.$emit('launchapp', t);
    }
  }
};
</script>

<style scoped>
.u-btn::after { border:none }
.u-btn { position:relative;border:0;display:inline-flex;overflow:visible;line-height:1;
display:flex;flex-direction:row;
align-items:center;justify-content:center;cursor:pointer;padding:0 40rpx;z-index:1;box-sizing:border-box;transition:all .15s }
.u-btn--bold-border { border:1px solid #fff }
.u-btn--default { color:#606266;border-color:#c0c4cc;background-color:#fff }
.u-btn--primary { color:#fff;border-color:#2979ff;background-color:#2979ff }
.u-btn--success { color:#fff;border-color:#19be6b;background-color:#19be6b }
.u-btn--error { color:#fff;border-color:#fa3534;background-color:#fa3534 }
.u-btn--warning { color:#fff;border-color:#f90;background-color:#f90 }
.u-btn--default--disabled { color:#fff;border-color:#e4e7ed;background-color:#fff }
.u-btn--primary--disabled { color:#fff!important;border-color:#a0cfff!important;background-color:#a0cfff!important }
.u-btn--success--disabled { color:#fff!important;border-color:#71d5a1!important;background-color:#71d5a1!important }
.u-btn--error--disabled { color:#fff!important;border-color:#fab6b6!important;background-color:#fab6b6!important }
.u-btn--warning--disabled { color:#fff!important;border-color:#fcbd71!important;background-color:#fcbd71!important }
.u-btn--primary--plain { color:#2979ff!important;border-color:#a0cfff!important;background-color:#ecf5ff!important }
.u-btn--success--plain { color:#19be6b!important;border-color:#71d5a1!important;background-color:#dbf1e1!important }
.u-btn--error--plain { color:#fa3534!important;border-color:#fab6b6!important;background-color:#fef0f0!important }
.u-btn--warning--plain { color:#f90!important;border-color:#fcbd71!important;background-color:#fdf6ec!important }
.u-hairline-border:after { content:" ";position:absolute;pointer-events:none;box-sizing:border-box;-webkit-transform-origin:0 0;transform-origin:0 0;left:0;top:0;width:199.8%;height:199.7%;-webkit-transform:scale(.5);transform:scale(.5);border:1px solid currentColor;z-index:1 }
.u-wave-ripple { z-index:0;position:absolute;border-radius:100%;background-clip:padding-box;pointer-events:none;-webkit-user-select:none;user-select:none;-webkit-transform:scale(0);transform:scale(0);opacity:1;-webkit-transform-origin:center;transform-origin:center }
.u-wave-ripple.u-wave-active { opacity:0;-webkit-transform:scale(2);transform:scale(2);transition:opacity 1s linear,-webkit-transform .4s linear;transition:opacity 1s linear,transform .4s linear;transition:opacity 1s linear,transform .4s linear,-webkit-transform .4s linear }
.u-round-circle { border-radius:100rpx }
.u-round-circle::after { border-radius:100rpx }
.u-loading::after { background-color:hsla(0,0%,100%,.35) }
.u-size-default { font-size:30rpx;height:80rpx;line-height:80rpx }
.u-size-medium { display:inline-flex;width:auto;font-size:26rpx;height:70rpx;line-height:70rpx;padding:0 80rpx }
.u-size-mini { display:inline-flex;width:auto;font-size:22rpx;padding-top:1px;height:50rpx;line-height:50rpx;padding:0 20rpx }
.u-primary-plain-hover { color:#fff!important;background:#2b85e4!important }
.u-default-plain-hover { color:#2b85e4!important;background:#ecf5ff!important }
.u-success-plain-hover { color:#fff!important;background:#18b566!important }
.u-warning-plain-hover { color:#fff!important;background:#f29100!important }
.u-error-plain-hover { color:#fff!important;background:#dd6161!important }
.u-info-plain-hover { color:#fff!important;background:#82848a!important }
.u-default-hover { color:#2b85e4!important;border-color:#2b85e4!important;background-color:#ecf5ff!important }
.u-primary-hover { background:#2b85e4!important;color:#fff }
.u-success-hover { background:#18b566!important;color:#fff }
.u-info-hover { background:#82848a!important;color:#fff }
.u-warning-hover { background:#f29100!important;color:#fff }
.u-error-hover { background:#dd6161!important;color:#fff }
</style>
