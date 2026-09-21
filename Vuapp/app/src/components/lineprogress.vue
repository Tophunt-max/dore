<template>
  <u-line-progress
    class="progress"
    active-color="#EE5016"
    :percent="percent"
    inactive-color="#F8E0D7"
    :show-percent="false"
    :height="height"
  ></u-line-progress>
</template>

<script>
export default {
  inheritAttrs: false,
  props: {
    percent: {
      type: [Number, String],
      default: 80
    },
    height: {
      type: [String, Number],
      default: 16
    }
  },
  data: function () {
    return {};
  },
  methods: {}
};
</script>

<style scoped>
.progress { width:100% }
</style>
