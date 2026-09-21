<template>
  <view class="u-collapse">
    <slot></slot>
  </view>
</template>

<script>
export default {
  name: 'u-collapse',
  props: {
    accordion: {
      type: Boolean,
      default: true
    },
    headStyle: {
      type: Object,
      default: function () {
        return {};
      }
    },
    bodyStyle: {
      type: Object,
      default: function () {
        return {};
      }
    },
    itemStyle: {
      type: Object,
      default: function () {
        return {};
      }
    },
    arrow: {
      type: Boolean,
      default: true
    },
    arrowColor: {
      type: String,
      default: '#909399'
    },
    hoverClass: {
      type: String,
      default: 'u-hover-class'
    }
  },
  created: function () {
    this.childrens = [];
  },
  data: function () {
    return {};
  },
  methods: {
    init: function () {
      this.childrens.forEach(function (t, e) {
        t.init();
      });
    },
    onChange: function () {
      var t = [];
      this.childrens.forEach(function (e, s) {
        e.isShow && t.push(e.nameSync);
      });
      this.accordion && (t = t.join(''));
      this.$emit('change', t);
    }
  }
};
</script>
