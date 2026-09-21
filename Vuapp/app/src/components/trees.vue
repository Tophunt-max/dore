<template>
  <view :class="'interlayer ' + (c || '')" :style="s">
    <template v-for="(item, index) in nodes" :key="index">
      <view
        v-if="'img' == item.name"
        :key="index + '_0'"
        :class="'_img ' + item.attrs.class"
        :style="item.attrs.style"
        :data-attrs="item.attrs"
        @click.stop="imgtap(item)"
      >
        <rich-text
          v-if="0 != ctrl[index]"
          :nodes="[{ attrs: { src: loading && (ctrl[index] || 0) < 2 ? loading : lazyLoad && !ctrl[index] ? placeholder : 3 == ctrl[index] ? errorImg : item.attrs.src || '', alt: item.attrs.alt || '', width: item.attrs.width || '', style: '-webkit-touch-callout:none;max-width:100%;display:block' + (item.attrs.height ? ';height:' + item.attrs.height : '') }, name: 'img' }]"
        ></rich-text>
        <image
          class="_image"
          :src="lazyLoad && !ctrl[index] ? placeholder : item.attrs.src"
          :lazy-load="lazyLoad"
          :show-menu-by-longpress="!item.attrs.ignore"
          :data-i="index"
          :data-index="item.attrs.index"
          @load="loadImg"
          @error="error"
          data-source="img"
         />
      </view>
      <text v-else-if="'text' == item.type" :key="'1--1' + __gen" :decode="true">{{ item.text }}</text>
      <text v-else-if="'br' == item.name" :key="'1--1' + __gen"></text>
      <view
        v-else-if="(item.lazyLoad && !item.attrs.autoplay || 'video' == item.name && !loadVideo) && void 0 == ctrl[index]"
        :key="'1--1' + __gen"
        :class="'_video ' + (item.attrs.class || '')"
        :style="item.attrs.style"
        :id="item.attrs.id"
        :data-i="index"
        @click.stop="_loadVideo(item)"
      ></view>
      <video
        v-else-if="'video' == item.name"
        :key="'1--1' + __gen"
        :class="item.attrs.class"
        :style="item.attrs.style"
        :id="item.attrs.id"
        :autoplay="item.attrs.autoplay || 0 == ctrl[index]"
        :controls="item.attrs.controls"
        :loop="item.attrs.loop"
        :muted="item.attrs.muted"
        :poster="item.attrs.poster"
        :src="item.attrs.source[ctrl[index] || 0]"
        :unit-id="item.attrs['unit-id']"
        :data-id="item.attrs.id"
        :data-i="index"
        @error="error"
        @play="play"
        data-source="video"
      ></video>
      <audio
        v-else-if="'audio' == item.name"
        :key="'1--1' + __gen"
        :class="item.attrs.class"
        :style="item.attrs.style"
        :author="item.attrs.author"
        :autoplay="item.attrs.autoplay"
        :controls="item.attrs.controls"
        :loop="item.attrs.loop"
        :name="item.attrs.name"
        :poster="item.attrs.poster"
        :src="item.attrs.source[ctrl[index] || 0]"
        :data-i="index"
        :data-id="item.attrs.id"
        @error.native="error(item)"
        @play.native="play(item)"
        data-source="audio"
      ></audio>
      <view
        v-else-if="'a' == item.name"
        :key="'1--1' + __gen"
        :class="'_a ' + (item.attrs.class || '')"
        :style="item.attrs.style"
        :id="item.attrs.id"
        :data-attrs="item.attrs"
        @click.stop="linkpress(item)"
        hover-class="_hover"
      >
        <trees class="_span" c="_span" :nodes="item.children"></trees>
      </view>
      <view
        v-else-if="'li' == item.name"
        :key="'1--1' + __gen"
        :class="item.attrs.class"
        :style="(item.attrs.style || '') + ';display:flex;flex-direction:row'"
        :id="item.attrs.id"
      >
        <view v-if="'ol' == item.type" class="_ol-bef">{{ item.num }}</view>
        <view v-else class="_ul-bef">
          <view v-if="item.floor % 3 == 0" class="_ul-p1"></view>
          <view v-else-if="item.floor % 3 == 2" class="_ul-p2"></view>
          <view v-else class="_ul-p1"></view>
        </view>
        <trees class="_li" c="_li" :nodes="item.children" :lazyLoad="lazyLoad" :loading="loading"></trees>
      </view>
      <view
        v-else-if="'table' == item.name && item.c && item.flag"
        :key="'1--1' + __gen"
        :class="item.attrs.class"
        :style="(item.attrs.style || '') + ';display:grid'"
        :id="item.attrs.id"
      >
        <trees
          v-for="(item2, index2) in item.children"
          :key="index2"
          :class="item2.attrs.class"
          :style="item2.attrs.style"
          :c="item2.attrs.class"
          :s="item2.attrs.style"
          :nodes="item2.children"
        ></trees>
      </view>
      <view
        v-else-if="'table' == item.name && item.c"
        :key="'1--1' + __gen"
        :class="item.attrs.class"
        :style="(item.attrs.style || '') + ';display:table'"
        :id="item.attrs.id"
      >
        <view
          v-for="(item2, index2) in item.children"
          :key="index2"
          :class="item2.attrs.class"
          :style="(item2.attrs.style || '') + ('t' == item2.name[0] ? ';display:table-' + ('tr' == item2.name ? 'row' : 'row-group') : '')"
        >
          <view
            v-for="(item3, index3) in item2.children"
            :key="index3"
            :class="item3.attrs.class"
            :style="(item3.attrs.style || '') + ('t' == item3.name[0] ? ';display:table-' + ('tr' == item3.name ? 'row' : 'cell') : '')"
          >
            <trees v-if="'td' == item3.name" :nodes="item3.children"></trees>
            <trees
              v-else
              v-for="(item4, index4) in item3.children"
              :key="index4"
              :class="item4.attrs.class"
              :style="(item4.attrs.style || '') + ('t' == item4.name[0] ? ';display:table-' + ('tr' == item4.name ? 'row' : 'cell') : '')"
              :c="item4.attrs.class"
              :s="(item4.attrs.style || '') + ('t' == item4.name[0] ? ';display:table-' + ('tr' == item4.name ? 'row' : 'cell') : '')"
              :nodes="item4.children"
            ></trees>
          </view>
        </view>
      </view>
      <iframe
        v-else-if="'iframe' == item.name"
        :key="'1--1' + __gen"
        :style="item.attrs.style"
        :allowfullscreen="item.attrs.allowfullscreen"
        :frameborder="item.attrs.frameborder"
        :width="item.attrs.width"
        :height="item.attrs.height"
        :src="item.attrs.src"
      ></iframe>
      <embed
        v-else-if="'embed' == item.name"
        :key="'1--1' + __gen"
        :style="item.attrs.style"
        :width="item.attrs.width"
        :height="item.attrs.height"
        :src="item.attrs.src"
      ></embed>
      <rich-text
        v-else-if="handler.use(item)"
        :key="'1--1' + __gen"
        :class="'_p __' + item.name"
        :id="item.attrs.id"
        :nodes="[item]"
      ></rich-text>
      <trees
        v-else
        :key="'1--1' + __gen"
        :class="(item.attrs.id || '') + ' _' + item.name + ' ' + (item.attrs.class || '')"
        :style="item.attrs.style"
        :c="(item.attrs.id || '') + ' _' + item.name + ' ' + (item.attrs.class || '')"
        :s="item.attrs.style"
        :nodes="item.children"
        :lazyLoad="lazyLoad"
        :loading="loading"
      ></trees>
    </template>
  </view>
</template>

<script>
import m_fb05 from '@/vendor/fb05';
import { nativePlus } from '@/utils/native';

// Helpers the reference bundle hoisted out of the component.
var n = m_fb05.errorImg;

export default {
  name: 'trees',
  data: function () {
    return {
      ctrl: [],
      placeholder: 'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="300" height="225"/>',
      errorImg: n,
      loadVideo: 'undefined' == typeof nativePlus,
      c: '',
      s: ''
    };
  },
  props: {
    nodes: Array,
    lazyLoad: Boolean,
    loading: String
  },
  mounted: function () {
    for (this.top = this.$parent; 'parser' != this.top.$options.name; this.top = this.top.$parent) ;
    this.init();
  },
  beforeUnmount: function () {
    this.observer && this.observer.disconnect();
  },
  methods: {
    init: function () {
      for (var t, e = this, s = this.nodes.length; t = this.nodes[--s]; ) if ('img' == t.name) (this.top.imgList.setItem(t.attrs.i, t.attrs['original-src'] || t.attrs.src), this.lazyLoad && !this.observer && (this.observer = uni.createIntersectionObserver(this).relativeToViewport({
        top: 500,
        bottom: 500
      }), setTimeout(function () {
        e.observer.observe('._img', function (t) {
          if (t.intersectionRatio) {
            for (var s = e.nodes.length; s--; ) 'img' == e.nodes[s].name && (e.ctrl[s] = 1);
            e.observer.disconnect();
          }
        });
      }, 0))); else if ('video' == t.name || 'audio' == t.name) {
        var i;
        'video' == t.name ? i = uni.createVideoContext(t.attrs.id, this) : this.$refs[t.attrs.id] && (i = this.$refs[t.attrs.id][0]);
        i && (i.id = t.attrs.id, this.top.videoContexts.push(i));
      }
      setTimeout(function () {
        e.loadVideo = true;
      }, 1e3);
    },
    play: function (t) {
      var e = this.top.videoContexts;
      if (e.length > 1 && this.top.autopause) for (var s = e.length; s--; ) e[s].id != t.currentTarget.dataset.id && e[s].pause();
    },
    imgtap: function (e) {
      var s = e.currentTarget.dataset.attrs;
      if (!s.ignore) {
        var i = true, a = {
          id: e.target.id,
          src: s.src,
          ignore: function () {
            return i = false;
          }
        };
        if ((t.Parser.onImgtap && t.Parser.onImgtap(a), this.top.$emit('imgtap', a), i)) {
          var n = this.top.imgList, r = n[s.i] ? parseInt(s.i) : (n = [s.src], 0);
          uni.previewImage({
            current: r,
            urls: n
          });
        }
      }
    },
    loadImg: function (t) {
      var e = t.currentTarget.dataset.i;
      this.lazyLoad && !this.ctrl[e] || this.loading && 2 != this.ctrl[e] && (this.ctrl[e] = 2);
    },
    linkpress: function (e) {
      var s = true, i = e.currentTarget.dataset.attrs;
      i.ignore = function () {
        return s = false;
      };
      t.Parser.onLinkpress && t.Parser.onLinkpress(i);
      this.top.$emit('linkpress', i);
      s && i.href && ('#' == i.href[0] ? this.top.useAnchor && this.top.navigateTo({
        id: i.href.substring(1)
      }) : 0 == i.href.indexOf('http') || 0 == i.href.indexOf('//') ? nativePlus.runtime.openWeb(i.href) : uni.navigateTo({
        url: i.href,
        fail: function () {
          uni.switchTab({
            url: i.href
          });
        }
      }));
    },
    error: function (t) {
      var e = t.currentTarget, s = e.dataset.source, i = e.dataset.i;
      if ('video' == s || 'audio' == s) {
        var a = this.ctrl[i] ? this.ctrl[i].i + 1 : 1;
        a < this.nodes[i].attrs.source.length && (this.ctrl[i] = a);
        t.detail.__args__ && (t.detail = t.detail.__args__[0]);
      } else n && 'img' == s && (this.top.imgList.setItem(e.dataset.index, n), this.ctrl[i] = 3);
      this.top && this.top.$emit('error', {
        source: s,
        target: e,
        errMsg: t.detail.errMsg
      });
    },
    _loadVideo: function (t) {
      this.ctrl[t.target.dataset.i] = 0;
    }
  }
};
</script>

<style scoped>
._a { display:inline;padding:1.5px 0 1.5px 0;color:#366092;word-break:break-all }
._hover { text-decoration:underline;opacity:.7 }
._img { display:inline-block;max-width:100%;overflow:hidden }
._b, ._strong { font-weight:700 }
._blockquote, ._div, ._p, ._ol, ._ul, ._li { display:block }
._code { font-family:monospace }
._del { text-decoration:line-through }
._em, ._i { font-style:italic }
._h1 { font-size:2em }
._h2 { font-size:1.5em }
._h3 { font-size:1.17em }
._h5 { font-size:.83em }
._h6 { font-size:.67em }
._h1, ._h2, ._h3, ._h4, ._h5, ._h6 { display:block;font-weight:700 }
._image { display:block;width:100%;height:360px;margin-top:-360px;opacity:0 }
._ins { text-decoration:underline }
._li { flex:1;width:0 }
._ol-bef { width:36px;margin-right:5px;text-align:right }
._ul-bef { display:block;margin:0 12px 0 23px;line-height:normal }
._ol-bef, ._ul-bef { flex:none;-webkit-user-select:none;user-select:none }
._ul-p1 { display:inline-block;width:.3em;height:.3em;overflow:hidden;line-height:.3em }
._ul-p2 { display:inline-block;width:.23em;height:.23em;border:.05em solid #000;border-radius:50% }
._q::before { content:'"' }
._q::after { content:'"' }
._sub { font-size:smaller;vertical-align:sub }
._sup { font-size:smaller;vertical-align:super }
._abbr, ._b, ._code, ._del, ._em, ._i, ._ins, ._label, ._q, ._span, ._strong, ._sub, ._sup { display:inline }
._video { position:relative;display:inline-block;width:300px;height:225px;background-color:#000 }
._video::after { position:absolute;top:50%;left:50%;margin:-15px 0 0 -15px;content:"";border-color:transparent transparent transparent #fff;border-style:solid;border-width:15px 0 15px 30px }
</style>
