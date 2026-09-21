import { createI18n } from 'vue-i18n';
import en_us from './en_us.json';
import hi_di from './hi_di.json';

// ORich ships English (en_us, default) and Hindi (hi_di). Messages are the
// exact strings recovered from the original bundle.
export const LOCALES = [
  { code: 'en_us', label: 'English' },
  { code: 'hi_di', label: 'हिंदी' },
];

function detectLocale(): string {
  try {
    const saved = uni.getStorageSync('language');
    if (saved) return saved;
  } catch {
    /* ignore */
  }
  return 'en_us';
}

export const i18n = createI18n({
  legacy: false,
  globalInjection: true,
  locale: detectLocale(),
  fallbackLocale: 'en_us',
  messages: { en_us, hi_di } as any,
});

export function setLocale(code: string) {
  (i18n.global.locale as any).value = code;
  uni.setStorageSync('language', code);
}

export function currentLocale(): string {
  return (i18n.global.locale as any).value;
}
