import { createSSRApp } from 'vue';
import { createI18n } from 'vue-i18n';
import App from './App.vue';
import store from './store';
// uView 1.x: importing the library sets `uni.$u`, which every u-* component
// reads. Its own installer is Vue 2 only (Vue.prototype / Vue.filter), so the
// pieces are attached here the Vue 3 way instead.
import './vendor/68e5.js';
import uviewMixin from './vendor/99e7.js';
import vue2Compat from './utils/vue2-compat';
import zh_cn from './locale/zh_cn.json';
import en_us from './locale/en_us.json';
import hi_di from './locale/hi_di.json';

export const i18n = createI18n({
  legacy: true,
  globalInjection: true,
  locale: (function () {
    try {
      return uni.getStorageSync('language') || 'en_us';
    } catch (e) {
      return 'en_us';
    }
  })(),
  fallbackLocale: 'en_us',
  silentTranslationWarn: true,
  silentFallbackWarn: true,
  messages: {
    'zh_cn': zh_cn,
    'en_us': en_us,
    'hi_di': hi_di,
  },
});

export function createApp() {
  const app = createSSRApp(App);
  app.use(store);
  app.use(i18n);
  app.config.globalProperties.$u = uni.$u;
  app.mixin(uviewMixin.default || uviewMixin);
  // Vue 2's $on / $children / self-$emit, which uView's form components use
  app.mixin(vue2Compat);
  return { app };
}
