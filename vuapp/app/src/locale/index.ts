import { createI18n } from 'vue-i18n';
import en from './en.json';
import zh from './zh.json';

function detectLocale(): string {
  try {
    const saved = uni.getStorageSync('locale');
    if (saved) return saved;
  } catch {
    /* ignore */
  }
  return 'en';
}

export const i18n = createI18n({
  legacy: false,
  locale: detectLocale(),
  fallbackLocale: 'en',
  messages: { en, zh },
});

export function setLocale(l: string) {
  (i18n.global.locale as any).value = l;
  uni.setStorageSync('locale', l);
}
