<template>
  <view class="detail">
    <navbar :title="title" background="#ffffff"></navbar>
    <view class="loading">
      <u-loading mode="circle" color="#409eff" size="40" :show="loading"></u-loading>
    </view>
    <view v-if="!loading" class="text" v-html="content"></view>
  </view>
</template>

<script>
import { mapGetters } from 'vuex';
import { interopDefault as d_a34a } from '@/vendor/a34a';

// Helpers the reference bundle hoisted out of the component.
function r(t, e, s, i, a, n, r) {
  try {
    var o = t[n](r), c = o.value;
  } catch (l) {
    return void s(l);
  }
  o.done ? e(c) : Promise.resolve(c).then(i, a);
}
function u(t, e, s) {
  return ((e in t) ? Object.defineProperty(t, e, {
    value: s,
    enumerable: true,
    configurable: true,
    writable: true
  }) : t[e] = s, t);
}
function c(t, e) {
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
function o(t) {
  return function () {
    var e = this, s = arguments;
    return new Promise(function (i, a) {
      var n = t.apply(e, s);
      function o(t) {
        r(n, i, a, o, c, 'next', t);
      }
      function c(t) {
        r(n, i, a, o, c, 'throw', t);
      }
      o(void 0);
    });
  };
}
function l(t) {
  for (var e = 1; e < arguments.length; e++) {
    var s = null != arguments[e] ? arguments[e] : {};
    e % 2 ? c(Object(s), true).forEach(function (e) {
      u(t, e, s[e]);
    }) : Object.getOwnPropertyDescriptors ? Object.defineProperties(t, Object.getOwnPropertyDescriptors(s)) : c(Object(s)).forEach(function (e) {
      Object.defineProperty(t, e, Object.getOwnPropertyDescriptor(s, e));
    });
  }
  return t;
}

export default {
  computed: l({}, mapGetters(['systemInfo'])),
  onLoad: function (e) {
    var s = this;
    return o(d_a34a.mark(function a() {
      var n;
      return d_a34a.wrap(function (i) {
        while (1) switch (i.prev = i.next) {
          case 0:
            return (i.next = 2, s.$store.dispatch('getSystemInfo'));
          case 2:
            s.loading = false;
            n = e.type;
            i.t0 = +n;
            i.next = 1 === i.t0 ? 7 : 2 === i.t0 ? 11 : 3 === i.t0 ? 14 : 17;
            break;
          case 7:
            return (s.title = 'User Agreement', s.content = s.systemInfo.agreement, console.log(s.content, 'this.content'), i.abrupt('break', 17));
          case 11:
            return (s.title = 'Help Center', s.content = s.systemInfo.about, i.abrupt('break', 17));
          case 14:
            return (s.title = 'Invitation rules', s.content = s.systemInfo.inviteregular, i.abrupt('break', 17));
          case 17:
            s.imgWidth(s.content);
          case 18:
          case 'end':
            return i.stop();
        }
      }, a);
    }))();
  },
  data: function () {
    return {
      title: '',
      content: '',
      loading: true
    };
  },
  methods: {
    imgWidth: function (t) {
      var e = t.split('<img'), s = e.length - 1;
      if (s) for (var i = 0; i < s; i++) t = t.replace('<img src', '<img style="max-width: 100%;height:auto" src');
      this.content = t;
    }
  }
};
</script>

<style scoped>
.detail { width:100%;min-height:100vh;padding:16rpx 30rpx;background:#f8f8f8 }
.detail .text { background:#fff;padding:40rpx 58rpx;font-size:28rpx;font-family:Roboto,Roboto-Regular;font-weight:400;color:#17273a;word-break:keep-all }
.loading { display:flex;justify-content:center }
</style>
