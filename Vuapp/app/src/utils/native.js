// Native API compatibility layer.
//
// The reference app targeted a native App build and called `plus.*` plus two
// native analytics plugins directly. This app also runs on H5, so the ported
// screens go through this shim: native builds get the real APIs, the web gets a
// working fallback.

const hasPlus = typeof plus !== 'undefined' && plus;

const noop = () => {};

/** A `plus`-shaped object that is safe to touch on the web. */
export const nativePlus = hasPlus
  ? plus
  : {
      runtime: {
        openURL: (url) => {
          if (typeof window !== 'undefined') window.open(url, '_blank');
        },
        openWeb: (url) => {
          if (typeof window !== 'undefined') window.open(url, '_blank');
        },
        appid: '',
        version: '',
        quit: noop,
      },
      push: {
        getClientInfo: () => ({ clientid: '' }),
        addEventListener: noop,
        clear: noop,
      },
      io: { resolveLocalFileSystemURL: noop },
      nativeObj: { Bitmap: function Bitmap() { return { save: noop, clear: noop }; } },
    };

/**
 * Analytics stand-in for the reference app's native SDKs.
 *
 * The original bundled third-party SDKs (and their keys); this project does not,
 * so events are recorded as no-ops. Point this at your own analytics if needed.
 */
export const analytics = {
  initSdk: noop,
  onAppOpenAttribution: noop,
  registerDeepLink: noop,
  logEvent: noop,
  trackEvent: noop,
  setUserId: noop,
  setUserProperty: noop,
};

export default { nativePlus, analytics };
