<script>
import { analytics, nativePlus } from '@/utils/native';

export default {
  onLaunch: function () {
    var e = this;
    console.log('App Launch');
    this.$store.dispatch('getSystemInfo');
    var s = analytics;
    s.onAppOpenAttribution({}, function (t) {});
    s.registerDeepLink({}, function (t) {});
    s.initSdk({
      devKey: '',
      isDebug: false,
      appId: '41*****44',
      timeToWaitForATTUserAuthorization: 10,
      onInstallConversionDataListener: true,
      onDeepLinkListener: true,
      collectAndroidID: false,
      collectIMEI: false
    }, function (t) {});
    analytics;
    var i = nativePlus.push.getClientInfo();
    i.clientid && this.$store.commit('SET_CLIENTID', i.clientid);
    var a = '';
    nativePlus.push.addEventListener('receive', function (t) {
      a = t.payload.link;
    }, false);
    nativePlus.push.addEventListener('click', function (t) {
      setTimeout(function () {
        uni.navigateTo({
          url: a
        });
      }, 2e3);
      nativePlus.push.clear();
    }, false);
  },
  onShow: function () {
    console.log('App Show');
  },
  onHide: function () {
    console.log('App Hide');
  },
  watch: {
    $route: function (t, e, s) {
      t.path;
      e.path;
    }
  }
};
</script>

<style>
/* The reference app's global stylesheet (uView base + app-wide rules). */
@import './styles/global.css';
/* Deliberate changes for running in a browser rather than a webview. */
@import './styles/h5-adaptations.css';
</style>
