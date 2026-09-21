<template>
  <view class="u-numberbox">
    <view
      class="u-icon-minus"
      :class="{ 'u-icon-disabled': disabled || inputVal <= min }"
      :style="{ background: bgColor, height: inputHeight + 'rpx', color: color }"
      @touchstart.stop.prevent="btnTouchStart('minus')"
      @touchend.stop.prevent="clearTimer($event)"
    >
      <u-icon name="minus" :size="size"></u-icon>
    </view>
    <input
      v-model="inputVal"
      class="u-number-input"
      :class="{ 'u-input-disabled': disabled }"
      :style="{ color: color, fontSize: size + 'rpx', background: bgColor, height: inputHeight + 'rpx', width: inputWidth + 'rpx' }"
      :disabled="disabledInput || disabled"
      :cursor-spacing="getCursorSpacing"
      @blur="onBlur"
      @focus="onFocus"
      type="number"
     />
    <view
      class="u-icon-plus"
      :class="{ 'u-icon-disabled': disabled || inputVal >= max }"
      :style="{ background: bgColor, height: inputHeight + 'rpx', color: color }"
      @touchstart.stop.prevent="btnTouchStart('plus')"
      @touchend.stop.prevent="clearTimer($event)"
    >
      <u-icon name="plus" :size="size"></u-icon>
    </view>
  </view>
</template>

<script>
export default {
  name: 'u-number-box',
  props: {
    value: {
      type: Number,
      default: 1
    },
    bgColor: {
      type: String,
      default: '#F2F3F5'
    },
    min: {
      type: Number,
      default: 0
    },
    max: {
      type: Number,
      default: 99999
    },
    step: {
      type: Number,
      default: 1
    },
    disabled: {
      type: Boolean,
      default: false
    },
    size: {
      type: [Number, String],
      default: 26
    },
    color: {
      type: String,
      default: '#323233'
    },
    inputWidth: {
      type: [Number, String],
      default: 80
    },
    inputHeight: {
      type: [Number, String],
      default: 50
    },
    index: {
      type: [Number, String],
      default: ''
    },
    disabledInput: {
      type: Boolean,
      default: false
    },
    cursorSpacing: {
      type: [Number, String],
      default: 100
    },
    longPress: {
      type: Boolean,
      default: true
    },
    pressTime: {
      type: [Number, String],
      default: 250
    },
    positiveInteger: {
      type: Boolean,
      default: true
    }
  },
  watch: {
    value: function (t, e) {
      this.changeFromInner || (this.inputVal = t, this.$nextTick(function () {
        this.changeFromInner = false;
      }));
    },
    inputVal: function (t, e) {
      var s = this;
      if ('' != t) {
        var i = 0, a = this.$u.test.number(t);
        i = a && t >= this.min && t <= this.max ? t : e;
        this.positiveInteger && (t < 0 || -1 !== String(t).indexOf('.')) && (i = e, this.$nextTick(function () {
          s.inputVal = e;
        }));
        this.handleChange(i, 'change');
      }
    }
  },
  data: function () {
    return {
      inputVal: 1,
      timer: null,
      changeFromInner: false,
      innerChangeTimer: null
    };
  },
  created: function () {
    this.inputVal = Number(this.value);
  },
  computed: {
    getCursorSpacing: function () {
      return Number(uni.upx2px(this.cursorSpacing));
    }
  },
  methods: {
    btnTouchStart: function (t) {
      var e = this;
      this[t]();
      this.longPress && (clearInterval(this.timer), this.timer = null, this.timer = setInterval(function () {
        e[t]();
      }, this.pressTime));
    },
    clearTimer: function () {
      var t = this;
      this.$nextTick(function () {
        clearInterval(t.timer);
        t.timer = null;
      });
    },
    minus: function () {
      this.computeVal('minus');
    },
    plus: function () {
      this.computeVal('plus');
    },
    calcPlus: function (t, e) {
      var s, i, a;
      try {
        i = t.toString().split('.')[1].length;
      } catch (r) {
        i = 0;
      }
      try {
        a = e.toString().split('.')[1].length;
      } catch (r) {
        a = 0;
      }
      s = Math.pow(10, Math.max(i, a));
      var n = i >= a ? i : a;
      return ((t * s + e * s) / s).toFixed(n);
    },
    calcMinus: function (t, e) {
      var s, i, a;
      try {
        i = t.toString().split('.')[1].length;
      } catch (r) {
        i = 0;
      }
      try {
        a = e.toString().split('.')[1].length;
      } catch (r) {
        a = 0;
      }
      s = Math.pow(10, Math.max(i, a));
      var n = i >= a ? i : a;
      return ((t * s - e * s) / s).toFixed(n);
    },
    computeVal: function (t) {
      if ((uni.hideKeyboard(), !this.disabled)) {
        var e = 0;
        'minus' === t ? e = this.calcMinus(this.inputVal, this.step) : 'plus' === t && (e = this.calcPlus(this.inputVal, this.step));
        e < this.min || e > this.max || (this.inputVal = e, this.handleChange(e, t));
      }
    },
    onBlur: function (t) {
      var e = this, s = 0, i = t.detail.value;
      (/(^\d+$)/).test(i) && 0 != i[0] || (s = this.min);
      s = +i;
      s > this.max ? s = this.max : s < this.min && (s = this.min);
      this.$nextTick(function () {
        e.inputVal = s;
      });
      this.handleChange(s, 'blur');
    },
    onFocus: function () {
      this.$emit('focus');
    },
    handleChange: function (t, e) {
      var s = this;
      this.disabled || (this.innerChangeTimer && (clearTimeout(this.innerChangeTimer), this.innerChangeTimer = null), this.changeFromInner = true, this.innerChangeTimer = setTimeout(function () {
        s.changeFromInner = false;
      }, 150), this.$emit('input', Number(t)), this.$emit(e, {
        value: Number(t),
        index: this.index
      }));
    }
  }
};
</script>

<style scoped>
.u-numberbox { display:inline-flex;align-items:center }
.u-number-input { position:relative;text-align:center;padding:0;margin:0 6rpx;
display:flex;flex-direction:row;
align-items:center;justify-content:center }
.u-icon-plus, .u-icon-minus { width:60rpx;
display:flex;flex-direction:row;
justify-content:center;align-items:center }
.u-icon-plus { border-radius:0 8rpx 8rpx 0 }
.u-icon-minus { border-radius:8rpx 0 0 8rpx }
.u-icon-disabled { color:#c8c9cc!important;background:#f7f8fa!important }
.u-input-disabled { color:#c8c9cc!important;background-color:#f2f3f5!important }
</style>
