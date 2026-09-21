<template>
  <view class="u-code-wrap"></view>
</template>

<script>
export default {
  name: 'u-verification-code',
  props: {
    seconds: {
      type: [String, Number],
      default: 60
    },
    startText: {
      type: String,
      default: '获取验证码'
    },
    changeText: {
      type: String,
      default: 'X秒重新获取'
    },
    endText: {
      type: String,
      default: '重新获取'
    },
    keepRunning: {
      type: Boolean,
      default: false
    },
    uniqueKey: {
      type: String,
      default: ''
    }
  },
  data: function () {
    return {
      secNum: this.seconds,
      timer: null,
      canGetCode: true
    };
  },
  mounted: function () {
    this.checkKeepRunning();
  },
  watch: {
    seconds: {
      immediate: true,
      handler: function (t) {
        this.secNum = t;
      }
    }
  },
  methods: {
    checkKeepRunning: function () {
      var t = Number(uni.getStorageSync(this.uniqueKey + '_$uCountDownTimestamp'));
      if (!t) return this.changeEvent(this.startText);
      var e = Math.floor(+new Date() / 1e3);
      this.keepRunning && t && t > e ? (this.secNum = t - e, uni.removeStorageSync(this.uniqueKey + '_$uCountDownTimestamp'), this.start()) : this.changeEvent(this.startText);
    },
    start: function () {
      var t = this;
      this.timer && (clearInterval(this.timer), this.timer = null);
      this.$emit('start');
      this.canGetCode = false;
      this.changeEvent(this.changeText.replace(/x|X/, this.secNum));
      this.setTimeToStorage();
      this.timer = setInterval(function () {
        --t.secNum ? t.changeEvent(t.changeText.replace(/x|X/, t.secNum)) : (clearInterval(t.timer), t.timer = null, t.changeEvent(t.endText), t.secNum = t.seconds, t.$emit('end'), t.canGetCode = true);
      }, 1e3);
    },
    reset: function () {
      this.canGetCode = true;
      clearInterval(this.timer);
      this.secNum = this.seconds;
      this.changeEvent(this.endText);
    },
    changeEvent: function (t) {
      this.$emit('change', t);
    },
    setTimeToStorage: function () {
      if (this.keepRunning && this.timer && this.secNum > 0 && this.secNum <= this.seconds) {
        var t = Math.floor(+new Date() / 1e3);
        uni.setStorage({
          key: this.uniqueKey + '_$uCountDownTimestamp',
          data: t + Number(this.secNum)
        });
      }
    }
  },
  beforeUnmount: function () {
    this.setTimeToStorage();
    clearTimeout(this.timer);
    this.timer = null;
  }
};
</script>

<style scoped>
.u-code-wrap { width:0;height:0;position:fixed;z-index:-1 }
</style>
