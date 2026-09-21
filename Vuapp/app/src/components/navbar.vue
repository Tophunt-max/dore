<template>
  <u-navbar>
    <slot name="center"></slot>
    <slot name="right"></slot>
  </u-navbar>
</template>

<script>
export default {
  inheritAttrs: false,
  props: {
    title: {
      type: String,
      default: ''
    },
    titleColor: {
      type: String,
      default: '#17273a'
    },
    titleSize: {
      type: [String, Number],
      default: 32
    },
    backIcon: {
      type: String,
      default: 'arrow-left'
    },
    backColor: {
      type: String,
      default: '#919191'
    },
    isBack: {
      type: Boolean,
      default: true
    },
    background: {
      type: String,
      default: 'transparent'
    },
    isComfirm: {
      type: Boolean,
      default: false
    },
    borderBottom: {
      type: Boolean,
      default: false
    }
  },
  computed: {
    backgroundObj: function () {
      return 'transparent' == this.background ? {
        background: 'rgba(0,0,0,0)'
      } : {
        background: this.background
      };
    }
  },
  data: function () {
    return {};
  },
  methods: {
    back: function () {
      if (this.isComfirm) this.$emit('beforeBack'); else {
        var e = getCurrentPages();
        console.log(e);
        1 == e.length ? uni.navigateTo({
          url: '/pages/home/home'
        }) : uni.navigateBack({});
      }
    }
  }
};
</script>
