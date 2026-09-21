<template>
  <view
    class="u-mask"
    :class="{ 'u-mask-zoom': zoom, 'u-mask-show': show }"
    :style="[maskStyle, zoomStyle]"
    @touchmove="stopPropagation(), preventDefault()"
    @click="click"
  >
    <slot></slot>
  </view>
</template>

<script>
// Helpers the reference bundle hoisted out of the component.
function n(t, e, s) {
  return ((e in t) ? Object.defineProperty(t, e, {
    value: s,
    enumerable: true,
    configurable: true,
    writable: true
  }) : t[e] = s, t);
}
function i(t, e) {
  var s = Object.keys(t);
  if (Object.getOwnPropertySymbols) {
    var i = Object.getOwnPropertySymbols(t);
    e && (i = i.filter(function (e) {
      return Object.getOwnPropertyDescriptor(t, e).enumerable;
    }));
    s.push.apply(s, i);
  }
  return s;
}
function a(t) {
  for (var e = 1; e < arguments.length; e++) {
    var s = null != arguments[e] ? arguments[e] : {};
    e % 2 ? i(Object(s), true).forEach(function (e) {
      n(t, e, s[e]);
    }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(t, Object.getOwnPropertyDescriptors(s)) : i(Object(s)).forEach(function (e) {
      Object.defineProperty(t, e, Object.getOwnPropertyDescriptor(s, e));
    });
  }
  return t;
}

export default {
  name: 'u-mask',
  props: {
    show: {
      type: Boolean,
      default: false
    },
    zIndex: {
      type: [Number, String],
      default: ''
    },
    customStyle: {
      type: Object,
      default: function () {
        return {};
      }
    },
    zoom: {
      type: Boolean,
      default: true
    },
    duration: {
      type: [Number, String],
      default: 300
    },
    maskClickAble: {
      type: Boolean,
      default: true
    }
  },
  data: function () {
    return {
      zoomStyle: {
        transform: ''
      },
      scale: 'scale(1.2, 1.2)'
    };
  },
  watch: {
    show: function (t) {
      t && this.zoom ? this.zoomStyle.transform = 'scale(1, 1)' : !t && this.zoom && (this.zoomStyle.transform = this.scale);
    }
  },
  computed: {
    maskStyle: function () {
      var t = {
        backgroundColor: 'rgba(0, 0, 0, 0.6)'
      };
      return (this.show ? t.zIndex = this.zIndex ? this.zIndex : this.$u.zIndex.mask : t.zIndex = -1, t.transition = ('all ').concat(this.duration / 1e3, 's ease-in-out'), Object.keys(this.customStyle).length && (t = a(a({}, t), this.customStyle)), t);
    }
  },
  methods: {
    click: function () {
      this.maskClickAble && this.$emit('click');
    }
  }
};
</script>

<style scoped>
.u-mask { position:fixed;top:0;left:0;right:0;bottom:0;opacity:0;transition:-webkit-transform .3s;transition:transform .3s;transition:transform .3s,-webkit-transform .3s }
.u-mask-show { opacity:1 }
.u-mask-zoom { -webkit-transform:scale(1.2);transform:scale(1.2) }
</style>
