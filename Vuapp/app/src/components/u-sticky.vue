<template>
  <view>
    <view
      class="u-sticky-wrap"
      :class="[elClass]"
      :style="{ height: fixed ? height + 'px' : 'auto', backgroundColor: bgColor }"
    >
      <view
        class="u-sticky"
        :style="{ position: fixed ? 'fixed' : 'static', top: stickyTop + 'px', left: left + 'px', width: 'auto' == width ? 'auto' : width + 'px', zIndex: uZIndex }"
      >
        <slot></slot>
      </view>
    </view>
  </view>
</template>

<script>
export default {
  name: 'u-sticky',
  props: {
    offsetTop: {
      type: [Number, String],
      default: 0
    },
    index: {
      type: [Number, String],
      default: ''
    },
    enable: {
      type: Boolean,
      default: true
    },
    h5NavHeight: {
      type: [Number, String],
      default: 44
    },
    bgColor: {
      type: String,
      default: '#ffffff'
    },
    zIndex: {
      type: [Number, String],
      default: ''
    }
  },
  data: function () {
    return {
      fixed: false,
      height: 'auto',
      stickyTop: 0,
      elClass: this.$u.guid(),
      left: 0,
      width: 'auto'
    };
  },
  watch: {
    offsetTop: function (t) {
      this.initObserver();
    },
    enable: function (t) {
      0 == t ? (this.fixed = false, this.disconnectObserver('contentObserver')) : this.initObserver();
    }
  },
  computed: {
    uZIndex: function () {
      return this.zIndex ? this.zIndex : this.$u.zIndex.sticky;
    }
  },
  mounted: function () {
    this.initObserver();
  },
  methods: {
    initObserver: function () {
      var t = this;
      this.enable && (this.stickyTop = 0 != this.offsetTop ? uni.upx2px(this.offsetTop) : 0, this.disconnectObserver('contentObserver'), this.$uGetRect('.' + this.elClass).then(function (e) {
        t.height = e.height;
        t.left = e.left;
        t.width = e.width;
        t.$nextTick(function () {
          t.observeContent();
        });
      }));
    },
    observeContent: function () {
      var t = this;
      this.disconnectObserver('contentObserver');
      var e = uni.createIntersectionObserver(this, {
        thresholds: [.95, .98, 1]
      });
      e.relativeToViewport({
        top: -this.stickyTop
      });
      e.observe('.' + this.elClass, function (e) {
        t.enable && t.setFixed(e.boundingClientRect.top);
      });
      this.contentObserver = e;
    },
    setFixed: function (t) {
      var e = t < this.stickyTop;
      e ? this.$emit('fixed', this.index) : this.fixed && this.$emit('unfixed', this.index);
      this.fixed = e;
    },
    disconnectObserver: function (t) {
      var e = this[t];
      e && e.disconnect();
    }
  },
  beforeUnmount: function () {
    this.disconnectObserver('contentObserver');
  }
};
</script>

<style scoped>
.u-sticky { z-index:9999999999 }
</style>
