<template>
  <view
    class="u-progress"
    :style="{ borderRadius: round ? '100rpx' : 0, height: height + 'rpx', backgroundColor: inactiveColor }"
  >
    <view
      class="u-active"
      :class="[type ? 'u-type-' + type + '-bg' : '', striped ? 'u-striped' : '', striped && stripedActive ? 'u-striped-active' : '']"
      :style="[progressStyle]"
    >
      <slot v-if="$slots.default || $slots.$default"></slot>
      <template v-else-if="showPercent">{{ percent + '%' }}</template>
    </view>
  </view>
</template>

<script>
export default {
  name: 'u-line-progress',
  props: {
    round: {
      type: Boolean,
      default: true
    },
    type: {
      type: String,
      default: ''
    },
    activeColor: {
      type: String,
      default: '#19be6b'
    },
    inactiveColor: {
      type: String,
      default: '#ececec'
    },
    percent: {
      type: Number,
      default: 0
    },
    showPercent: {
      type: Boolean,
      default: true
    },
    height: {
      type: [Number, String],
      default: 28
    },
    striped: {
      type: Boolean,
      default: false
    },
    stripedActive: {
      type: Boolean,
      default: false
    }
  },
  data: function () {
    return {};
  },
  computed: {
    progressStyle: function () {
      var t = {};
      return (t.width = this.percent + '%', this.activeColor && (t.backgroundColor = this.activeColor), t);
    }
  },
  methods: {}
};
</script>

<style scoped>
.u-progress { overflow:hidden;height:15px;display:inline-flex;align-items:center;width:100%;border-radius:100rpx }
.u-active { width:0;height:100%;align-items:center;
display:flex;flex-direction:row;
justify-items:flex-end;justify-content:space-around;font-size:20rpx;color:#fff;transition:all .4s ease }
.u-striped { background-image:linear-gradient(45deg,hsla(0,0%,100%,.15) 25%,transparent 0,transparent 50%,hsla(0,0%,100%,.15) 0,hsla(0,0%,100%,.15) 75%,transparent 0,transparent);background-size:39px 39px }
.u-striped-active { -webkit-animation:progress-stripes-data-v-7a31a046 2s linear infinite;animation:progress-stripes-data-v-7a31a046 2s linear infinite }
@-webkit-keyframes progress-stripes-data-v-7a31a046 {
  0% { background-position:0 0 }
  100% { background-position:39px 0 }
}
@keyframes progress-stripes-data-v-7a31a046 {
  0% { background-position:0 0 }
  100% { background-position:39px 0 }
}
</style>
