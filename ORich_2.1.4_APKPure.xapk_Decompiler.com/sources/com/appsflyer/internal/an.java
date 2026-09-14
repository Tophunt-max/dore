package com.appsflyer.internal;

import com.appsflyer.AFLogger;

/* JADX INFO: loaded from: classes.dex */
final class an {
    private final b valueOf = new b() { // from class: com.appsflyer.internal.an.3
        @Override // com.appsflyer.internal.an.b
        public final Class<?> values(String str) throws ClassNotFoundException {
            return Class.forName(str);
        }
    };

    interface b {
        Class<?> values(String str) throws ClassNotFoundException;
    }

    an() {
    }

    final String AFInAppEventType() {
        for (e eVar : e.values()) {
            if (values(eVar.onDeepLinking)) {
                return eVar.onDeepLinkingNative;
            }
        }
        return e.DEFAULT.onDeepLinkingNative;
    }

    private boolean values(String str) {
        try {
            this.valueOf.values(str);
            StringBuilder sb = new StringBuilder("Class: ");
            sb.append(str);
            sb.append(" is found.");
            AFLogger.values(sb.toString());
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        } catch (Throwable th) {
            AFLogger.valueOf(th.getMessage(), th);
            return false;
        }
    }

    enum e {
        ADOBE_AIR("android_adobe_air", "com.appsflyer.adobeair.AppsFlyerExtension"),
        ADOBE_MOBILE_SDK("android_adobe_mobile", "com.appsflyer.adobeextension.AppsFlyerAdobeExtension"),
        COCOS2DX("android_cocos2dx", "org.cocos2dx.lib.Cocos2dxActivity"),
        CORDOVA("android_cordova", "com.appsflyer.cordova.plugin.AppsFlyerPlugin"),
        DEFAULT("android_native", "android_native"),
        FLUTTER("android_flutter", "com.appsflyer.appsflyersdk.AppsflyerSdkPlugin"),
        M_PARTICLE("android_mparticle", "com.mparticle.kits.AppsFlyerKit"),
        NATIVE_SCRIPT("android_native_script", "com.tns.NativeScriptActivity"),
        REACT_NATIVE("android_reactNative", "com.appsflyer.reactnative.RNAppsFlyerModule"),
        SEGMENT("android_segment", "com.segment.analytics.android.integrations.appsflyer.AppsflyerIntegration"),
        UNITY("android_unity", "com.appsflyer.unity.AppsFlyerAndroidWrapper"),
        UNREAL_ENGINE("android_unreal", "com.epicgames.ue4.GameActivity"),
        XAMARIN("android_xamarin", "mono.android.Runtime"),
        CAPACITOR("android_capacitor", "capacitor.plugin.appsflyer.sdk.AppsFlyerPlugin");

        private final String onDeepLinking;
        private final String onDeepLinkingNative;

        e(String str, String str2) {
            this.onDeepLinkingNative = str;
            this.onDeepLinking = str2;
        }
    }
}
