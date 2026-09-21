<template>
  <view>
    <slot v-if="!nodes.length"></slot>
    <view :style="showAm + (selectable ? ';user-select:text;-webkit-user-select:text' : '')" id="_top">
      <trees :nodes="nodes" :lazyLoad="lazyLoad" :loading="loadingImg"></trees>
    </view>
  </view>
</template>

<script>
import m_7d4e from '@/vendor/7d4e';
import { childComponents } from '@/utils/vue2-compat';
import { nativePlus } from '@/utils/native';

// Helpers the reference bundle hoisted out of the component.
var o = {};
function l(t) {
  for (var e = t.length, s = 5381; e--; ) s += (s << 5) + t.charCodeAt(e);
  return s;
}
var i;
var r;

export default {
  name: 'parser',
  data: function () {
    return {
      showAm: '',
      nodes: []
    };
  },
  props: {
    html: String,
    autopause: {
      type: Boolean,
      default: true
    },
    autoscroll: Boolean,
    autosetTitle: {
      type: Boolean,
      default: true
    },
    compress: Number,
    loadingImg: String,
    useCache: Boolean,
    domain: String,
    lazyLoad: Boolean,
    selectable: Boolean,
    tagStyle: Object,
    showWithAnimation: Boolean,
    useAnchor: Boolean
  },
  watch: {
    html: function (t) {
      this.setContent(t);
    }
  },
  created: function () {
    this.imgList = [];
    this.imgList.each = function (t) {
      for (var e = 0, s = this.length; e < s; e++) this.setItem(e, t(this[e], e, this));
    };
    this.imgList.setItem = function (t, e) {
      var s = this;
      if (void 0 != t && e && (this[t] = e, e.includes('data:image'))) {
        var i, a = e.match(/data:image\/(\S+?);(\S+?),(.+)/);
        if (!a) return;
        i = ('_doc/parser_tmp/').concat(Date.now(), '.').concat(a[1]);
        var n = new nativePlus.nativeObj.Bitmap();
        n.loadBase64Data(e, function () {
          n.save(i, {}, function () {
            n.clear();
            s[t] = i;
          });
        });
      }
    };
  },
  mounted: function () {
    var t = this;
    r && (this.document = new r(this));
    i && (this.search = function (e) {
      return i(t, e);
    });
    this.html && this.setContent(this.html);
  },
  beforeUnmount: function () {
    this.imgList.each(function (t) {
      t && t.includes('_doc') && nativePlus.io.resolveLocalFileSystemURL(t, function (t) {
        t.remove();
      });
    });
    clearInterval(this._timer);
  },
  methods: {
    setContent: function (t, e) {
      var s, i = this;
      if (!t) return this.nodes = [];
      var a, n = new m_7d4e(t, this);
      if (this.useCache) {
        var r = l(t);
        o[r] ? s = o[r] : (s = n.parse(), o[r] = s);
      } else s = n.parse();
      this.$emit('parse', s);
      this.nodes = e ? this.nodes.concat(s) : s;
      s.length && s.title && this.autosetTitle && uni.setNavigationBarTitle({
        title: s.title
      });
      this.imgList && (this.imgList.length = 0);
      this.videoContexts = [];
      this.$nextTick(function () {
        (function t(e) {
          for (var s = e.length; s--; ) e[s].top && (e[s].controls = [], e[s].init(), t(childComponents(e[s])));
        })(childComponents(i));
        i.$emit('load');
      });
      clearInterval(this._timer);
      this._timer = setInterval(function () {
        uni.createSelectorQuery().in(i).select('#_top').boundingClientRect().exec(function (t) {
          t && (i.rect = t[0], i.rect.height == a && (i.$emit('ready', i.rect), clearInterval(i._timer)), a = i.rect.height);
        });
      }, 350);
      this.showWithAnimation && !e && (this.showAm = 'animation:_show .5s');
    },
    getText: function () {
      for (var t, e = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : this.nodes, s = '', i = 0; t = e[i++]; ) if ('text' == t.type) s += t.text.replace(/&nbsp;/g, ' ').replace(/&lt;/g, '<').replace(/&gt;/g, '>').replace(/&amp;/g, '&'); else if ('br' == t.type) s += '\n'; else {
        var a = 'p' == t.name || 'div' == t.name || 'tr' == t.name || 'li' == t.name || 'h' == t.name[0] && t.name[1] > '0' && t.name[1] < '7';
        a && s && '\n' != s[s.length - 1] && (s += '\n');
        t.children && (s += this.getText(t.children));
        a && '\n' != s[s.length - 1] ? s += '\n' : 'td' != t.name && 'th' != t.name || (s += '	');
      }
      return s;
    },
    in: function (t) {
      t.page && t.selector && t.scrollTop && (this._in = t);
    },
    navigateTo: function (t) {
      var e = this;
      if (!this.useAnchor) return t.fail && t.fail('Anchor is disabled');
      var s = ' ', i = uni.createSelectorQuery().in(this._in ? this._in.page : this).select((this._in ? this._in.selector : '#_top') + (t.id ? ('').concat(s, '#').concat(t.id, ',').concat(this._in ? this._in.selector : '#_top').concat(s, '.').concat(t.id) : '')).boundingClientRect();
      this._in ? i.select(this._in.selector).scrollOffset().select(this._in.selector).boundingClientRect() : i.selectViewport().scrollOffset();
      i.exec(function (s) {
        if (!s[0]) return t.fail && t.fail('Label not found');
        var i = s[1].scrollTop + s[0].top - (s[2] ? s[2].top : 0) + (t.offset || 0);
        e._in ? e._in.page[e._in.scrollTop] = i : uni.pageScrollTo({
          scrollTop: i,
          duration: 300
        });
        t.success && t.success();
      });
    },
    getVideoContext: function (t) {
      if (!t) return this.videoContexts;
      for (var e = this.videoContexts.length; e--; ) if (this.videoContexts[e].id == t) return this.videoContexts[e];
    }
  }
};
</script>

<style scoped>
@-webkit-keyframes _show-data-v-01dfbd2e {
  0% { opacity:0 }
  100% { opacity:1 }
}
@keyframes _show-data-v-01dfbd2e {
  0% { opacity:0 }
  100% { opacity:1 }
}
</style>
