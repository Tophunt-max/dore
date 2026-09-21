<template>
  <view class="u-image" :style="[wrapStyle, backgroundStyle]" @click="onClick">
    <image
      v-if="!isError"
      class="u-image__image"
      :style="{ borderRadius: 'circle' == shape ? '50%' : $u.addUnit(borderRadius) }"
      :src="src"
      :mode="mode"
      :lazy-load="lazyLoad"
      @error="onErrorHandler"
      @load="onLoadHandler"
     />
    <view
      v-if="showLoading && loading"
      class="u-image__loading"
      :style="{ borderRadius: 'circle' == shape ? '50%' : $u.addUnit(borderRadius), backgroundColor: this.bgColor }"
    >
      <slot v-if="$slots.loading" name="loading"></slot>
      <u-icon v-else :name="loadingIcon" :width="width" :height="height"></u-icon>
    </view>
    <view
      v-if="showError && isError && !loading"
      class="u-image__error"
      :style="{ borderRadius: 'circle' == shape ? '50%' : $u.addUnit(borderRadius) }"
    >
      <slot v-if="$slots.error" name="error"></slot>
      <u-icon v-else :name="errorIcon" :width="width" :height="height"></u-icon>
    </view>
  </view>
</template>

<script>
export default {
  name: 'u-image',
  props: {
    src: {
      type: String,
      default: ''
    },
    mode: {
      type: String,
      default: 'aspectFill'
    },
    width: {
      type: [String, Number],
      default: '100%'
    },
    height: {
      type: [String, Number],
      default: 'auto'
    },
    shape: {
      type: String,
      default: 'square'
    },
    borderRadius: {
      type: [String, Number],
      default: 0
    },
    lazyLoad: {
      type: Boolean,
      default: true
    },
    showMenuByLongpress: {
      type: Boolean,
      default: true
    },
    loadingIcon: {
      type: String,
      default: 'photo'
    },
    errorIcon: {
      type: String,
      default: 'error-circle'
    },
    showLoading: {
      type: Boolean,
      default: true
    },
    showError: {
      type: Boolean,
      default: true
    },
    fade: {
      type: Boolean,
      default: true
    },
    webp: {
      type: Boolean,
      default: false
    },
    duration: {
      type: [String, Number],
      default: 500
    },
    bgColor: {
      type: String,
      default: '#f3f4f6'
    }
  },
  data: function () {
    return {
      isError: false,
      loading: true,
      opacity: 1,
      durationTime: this.duration,
      backgroundStyle: {}
    };
  },
  watch: {
    src: {
      immediate: true,
      handler: function (t) {
        t ? this.isError = false : (this.isError = true, this.loading = false);
      }
    }
  },
  computed: {
    wrapStyle: function () {
      var t = {};
      return (t.width = this.$u.addUnit(this.width), t.height = this.$u.addUnit(this.height), t.borderRadius = 'circle' == this.shape ? '50%' : this.$u.addUnit(this.borderRadius), t.overflow = this.borderRadius > 0 ? 'hidden' : 'visible', this.fade && (t.opacity = this.opacity, t.transition = ('opacity ').concat(Number(this.durationTime) / 1e3, 's ease-in-out')), t);
    }
  },
  methods: {
    onClick: function () {
      this.$emit('click');
    },
    onErrorHandler: function () {
      this.loading = false;
      this.isError = true;
      this.$emit('error');
    },
    onLoadHandler: function () {
      var t = this;
      if ((this.loading = false, this.isError = false, this.$emit('load'), !this.fade)) return this.removeBgColor();
      this.opacity = 0;
      this.durationTime = 0;
      setTimeout(function () {
        t.durationTime = t.duration;
        t.opacity = 1;
        setTimeout(function () {
          t.removeBgColor();
        }, t.durationTime);
      }, 50);
    },
    removeBgColor: function () {
      this.backgroundStyle = {
        backgroundColor: 'transparent'
      };
    }
  }
};
</script>

<style scoped>
.u-image { position:relative;transition:opacity .5s ease-in-out }
.u-image__image { width:100%;height:100% }
.u-image__loading, .u-image__error { position:absolute;top:0;left:0;width:100%;height:100%;
display:flex;flex-direction:row;
align-items:center;justify-content:center;background-color:#f3f4f6;color:#909399;font-size:46rpx }
</style>
