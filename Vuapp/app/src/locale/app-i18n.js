// mescroll's default option texts are built from the app's i18n instance.
// The reference bundle read them off the Vue app; this exposes the same shape.

import { i18n } from '../main';

export default {
  $i18n: {
    t: (key, ...args) => i18n.global.t(key, ...args),
  },
};
