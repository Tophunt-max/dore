<template>
  <image
    v-if="mOption.src"
    class="mescroll-totop"
    :class="[value ? 'mescroll-totop-in' : 'mescroll-totop-out', { 'mescroll-totop-safearea': mOption.safearea }]"
    :style="{ 'z-index': mOption.zIndex, left: left, right: right, bottom: addUnit(mOption.bottom), width: addUnit(mOption.width), 'border-radius': addUnit(mOption.radius) }"
    :src="mOption.src"
    @click="toTopClick"
    mode="widthFix"
   />
</template>

<script>
export default {
  props: {
    option: Object,
    value: false
  },
  computed: {
    mOption: function () {
      return this.option || ({});
    },
    left: function () {
      return this.mOption.left ? this.addUnit(this.mOption.left) : 'auto';
    },
    right: function () {
      return this.mOption.left ? 'auto' : this.addUnit(this.mOption.right);
    }
  },
  methods: {
    addUnit: function (t) {
      return t ? 'number' === typeof t ? t + 'rpx' : t : 0;
    },
    toTopClick: function () {
      this.$emit('input', false);
      this.$emit('click');
    }
  }
};
</script>

<style scoped>
.mescroll-totop { z-index:9990;position:fixed!important;right:20rpx;bottom:120rpx;width:72rpx;height:auto;border-radius:50%;opacity:0;transition:opacity .5s;margin-bottom:var(--window-bottom) }
@supports (bottom:constant(safe-area-inset-bottom)) or (bottom:env(safe-area-inset-bottom)) {
  .mescroll-totop-safearea { margin-bottom:calc(var(--window-bottom) + constant(safe-area-inset-bottom));margin-bottom:calc(var(--window-bottom) + env(safe-area-inset-bottom)) }
}
.mescroll-totop-in { opacity:1 }
.mescroll-totop-out { opacity:0;pointer-events:none }
</style>
