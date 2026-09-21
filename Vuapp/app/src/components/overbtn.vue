<template>
  <u-button
    :custom-style="customStyle"
    :disabled="canSubmit"
    :ripple="ripple"
    :loading="loading"
    @click="action"
  >
    {{ btnText }}
  </u-button>
</template>

<script>
// Helpers the reference bundle hoisted out of the component.
function i(t, e, s) {
  return ((e in t) ? Object.defineProperty(t, e, {
    value: s,
    enumerable: true,
    configurable: true,
    writable: true
  }) : t[e] = s, t);
}

export default {
  props: {
    loading: {
      type: Boolean,
      default: false
    },
    canSubmit: {
      type: Boolean,
      default: false
    },
    ripple: {
      type: Boolean,
      default: true
    },
    btnText: {
      type: String,
      default: ''
    },
    fontSize: {
      type: Number,
      default: 28
    },
    fontWeight: {
      type: String,
      default: 'normal'
    },
    btnType: {
      type: String,
      default: 'submit'
    }
  },
  watch: {
    btnType: function () {
      this.changeStyle();
    }
  },
  computed: {
    customStyle: function () {
      var t, e = (t = {
        width: '100%',
        height: '100%',
        backgroundColor: '#ee5016',
        color: '#FFFFFF',
        fontSize: '32rpx',
        fontWeight: 'normal'
      }, i(t, 'fontWeight', '400'), i(t, 'borderRadius', '8rpx'), i(t, 'border', '1rpx solid #ee5016'), t);
      return e;
    }
  },
  data: function () {
    return {};
  },
  mounted: function () {
    this.changeStyle();
  },
  methods: {
    action: function () {
      this.$emit('btnAction');
    },
    changeStyle: function () {
      switch (this.btnType) {
        case 'submit':
          this.customStyle.backgroundColor = '#ee5016';
          this.customStyle.color = '#FFFFFF';
          this.customStyle.fontSize = this.fontSize + 'rpx';
          this.customStyle.border = '1rpx solid #ee5016';
          this.customStyle.fontWeight = this.fontWeight;
          break;
        case 'plain':
          this.customStyle.backgroundColor = '#ffffff';
          this.customStyle.color = '#EE5016';
          this.customStyle.fontSize = this.fontSize + 'rpx';
          this.customStyle.border = '1rpx solid #ee5016';
          this.customStyle.fontWeight = this.fontWeight;
          break;
        case 'disabled':
          this.customStyle.backgroundColor = '#dbdbdb';
          this.customStyle.color = '#FFFFFF';
          this.customStyle.fontSize = this.fontSize + 'rpx';
          this.customStyle.border = '1rpx solid #dbdbdb';
          this.customStyle.fontWeight = this.fontWeight;
          break;
      }
      this.$forceUpdate();
    }
  }
};
</script>

<style scoped>
.overbtn { width:100%;height:100% }
.overbtn .step-item { display:flex;flex-direction:column;align-items:center;justify-content:center }
.overbtn .step-item uni-image { width:80rpx;margin-bottom:14rpx;border-radius:50% }
.overbtn .step-op1, .overbtn .step-op2 { position:absolute;width:116rpx;height:4rpx;border:1rpx dashed #de6436;opacity:.3 }
.overbtn .step-op1 { top:40rpx;left:186rpx }
.overbtn .step-op2 { top:40rpx;left:446rpx }
</style>
