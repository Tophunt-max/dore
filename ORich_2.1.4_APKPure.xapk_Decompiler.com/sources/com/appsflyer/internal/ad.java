package com.appsflyer.internal;

import android.content.Context;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerInAppPurchaseValidatorListener;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerProperties;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.taobao.weex.el.parse.Operators;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class ad implements Runnable {
    private static String AFKeystoreWrapper = "https://%ssdk-services.%s/validate-android-signature";
    private static String valueOf;
    private String AFInAppEventParameterName;
    private WeakReference<Context> AFInAppEventType;
    private String AFLogger$LogLevel;
    private String AFVersionDeclaration;
    private String AppsFlyer2dXConversionCallback;
    private Map<String, String> getLevel;
    private String init;
    private String values;

    static {
        StringBuilder sb = new StringBuilder("https://%svalidate.%s/api/v");
        sb.append(ag.valueOf);
        sb.append("/androidevent?buildnumber=6.4.2&app_id=");
        valueOf = sb.toString();
    }

    ad(Context context, String str, String str2, String str3, String str4, String str5, String str6, Map<String, String> map) {
        this.AFInAppEventType = new WeakReference<>(context);
        this.values = str;
        this.AFInAppEventParameterName = str2;
        this.AppsFlyer2dXConversionCallback = str4;
        this.AFLogger$LogLevel = str5;
        this.AFVersionDeclaration = str6;
        this.getLevel = map;
        this.init = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = this.values;
        if (str == null || str.length() == 0 || AppsFlyerLib.getInstance().isStopped()) {
            return;
        }
        HttpURLConnection httpURLConnection = null;
        try {
            Context context = this.AFInAppEventType.get();
            if (context == null) {
                return;
            }
            HashMap map = new HashMap();
            map.put("public-key", this.AFInAppEventParameterName);
            map.put("sig-data", this.AppsFlyer2dXConversionCallback);
            map.put("signature", this.init);
            final HashMap map2 = new HashMap(map);
            new Thread(new Runnable() { // from class: com.appsflyer.internal.ad.1
                @Override // java.lang.Runnable
                public final void run() {
                    ad adVar = ad.this;
                    ad.values(adVar, map2, adVar.getLevel, ad.this.AFInAppEventType);
                }
            }).start();
            map.put("dev_key", this.values);
            map.put("app_id", context.getPackageName());
            map.put("uid", AppsFlyerLib.getInstance().getAppsFlyerUID(context));
            String string = AppsFlyerProperties.getInstance().getString("advertiserId");
            if (string != null) {
                map.put("advertiserId", string);
            }
            String string2 = new JSONObject(map).toString();
            String str2 = String.format(AFKeystoreWrapper, AppsFlyerLib.getInstance().getHostPrefix(), ag.AFInAppEventType().getHostName());
            if (ak.valueOf == null) {
                ak.valueOf = new ak();
            }
            ak.valueOf.AFKeystoreWrapper("server_request", str2, string2);
            HttpURLConnection httpURLConnectionValues = values((by) new ce().AFInAppEventParameterName(map).values(str2));
            int responseCode = httpURLConnectionValues != null ? httpURLConnectionValues.getResponseCode() : -1;
            ag.AFInAppEventType();
            String strValueOf = ag.valueOf(httpURLConnectionValues);
            if (ak.valueOf == null) {
                ak.valueOf = new ak();
            }
            ak.valueOf.AFKeystoreWrapper("server_response", str2, String.valueOf(responseCode), strValueOf);
            JSONObject jSONObject = new JSONObject(strValueOf);
            jSONObject.put("code", responseCode);
            if (responseCode == 200) {
                StringBuilder sb = new StringBuilder("Validate response 200 ok: ");
                sb.append(jSONObject.toString());
                AFLogger.AFKeystoreWrapper(sb.toString());
                AFInAppEventParameterName(jSONObject.optBoolean("result"), this.AppsFlyer2dXConversionCallback, this.AFLogger$LogLevel, this.AFVersionDeclaration, jSONObject.toString());
            } else {
                AFLogger.AFKeystoreWrapper("Failed Validate request");
                AFInAppEventParameterName(false, this.AppsFlyer2dXConversionCallback, this.AFLogger$LogLevel, this.AFVersionDeclaration, jSONObject.toString());
            }
            if (httpURLConnectionValues != null) {
                httpURLConnectionValues.disconnect();
            }
        } catch (Throwable th) {
            try {
                if (ag.AFKeystoreWrapper != null) {
                    AFLogger.valueOf("Failed Validate request + ex", th);
                    AFInAppEventParameterName(false, this.AppsFlyer2dXConversionCallback, this.AFLogger$LogLevel, this.AFVersionDeclaration, th.getMessage());
                }
                AFLogger.valueOf(th.getMessage(), th);
            } finally {
                if (0 != 0) {
                    httpURLConnection.disconnect();
                }
            }
        }
    }

    private static HttpURLConnection values(by byVar) {
        StringBuilder sb = new StringBuilder("Calling ");
        sb.append(byVar.onAttributionFailureNative);
        AFLogger.AFInAppEventType(sb.toString());
        byVar.onConversionDataFail = AppsFlyerLib.getInstance().isStopped();
        return new af(byVar).AFKeystoreWrapper();
    }

    private static void AFInAppEventParameterName(boolean z, String str, String str2, String str3, String str4) {
        if (ag.AFKeystoreWrapper != null) {
            StringBuilder sb = new StringBuilder("Validate callback parameters: ");
            sb.append(str);
            sb.append(Operators.SPACE_STR);
            sb.append(str2);
            sb.append(Operators.SPACE_STR);
            sb.append(str3);
            AFLogger.AFInAppEventType(sb.toString());
            if (z) {
                AFLogger.AFInAppEventType("Validate in app purchase success: ".concat(String.valueOf(str4)));
                ag.AFKeystoreWrapper.onValidateInApp();
                return;
            }
            AFLogger.AFInAppEventType("Validate in app purchase failed: ".concat(String.valueOf(str4)));
            AppsFlyerInAppPurchaseValidatorListener appsFlyerInAppPurchaseValidatorListener = ag.AFKeystoreWrapper;
            if (str4 == null) {
                str4 = "Failed validating";
            }
            appsFlyerInAppPurchaseValidatorListener.onValidateInAppFailure(str4);
        }
    }

    static /* synthetic */ void values(ad adVar, Map map, Map map2, WeakReference weakReference) {
        if (weakReference.get() != null) {
            ab.valueOf((Context) weakReference.get()).AFKeystoreWrapper();
            StringBuilder sb = new StringBuilder();
            sb.append(String.format(valueOf, AppsFlyerLib.getInstance().getHostPrefix(), ag.AFInAppEventType().getHostName()));
            sb.append(((Context) weakReference.get()).getPackageName());
            String string = sb.toString();
            String string2 = ag.AFKeystoreWrapper((Context) weakReference.get()).getString("referrer", "");
            f cfVar = new cf((Context) weakReference.get());
            cfVar.init = adVar.values;
            cfVar.getLevel = string2;
            f fVar = (cf) cfVar;
            ag agVarAFInAppEventType = ag.AFInAppEventType();
            Map<String, Object> mapValues = agVarAFInAppEventType.values(fVar);
            mapValues.put(FirebaseAnalytics.Param.PRICE, adVar.AFLogger$LogLevel);
            mapValues.put(FirebaseAnalytics.Param.CURRENCY, adVar.AFVersionDeclaration);
            mapValues.put("receipt_data", map);
            if (map2 != null) {
                mapValues.put("extra_prms", map2);
            }
            mapValues.putAll(agVarAFInAppEventType.values());
            String string3 = new JSONObject(mapValues).toString();
            if (ak.valueOf == null) {
                ak.valueOf = new ak();
            }
            ak.valueOf.AFKeystoreWrapper("server_request", string, string3);
            HttpURLConnection httpURLConnectionValues = null;
            try {
                httpURLConnectionValues = values((by) fVar.AFInAppEventParameterName((Map<String, ?>) mapValues).values(string));
                int responseCode = httpURLConnectionValues != null ? httpURLConnectionValues.getResponseCode() : -1;
                String strValueOf = ag.valueOf(httpURLConnectionValues);
                if (ak.valueOf == null) {
                    ak.valueOf = new ak();
                }
                ak.valueOf.AFKeystoreWrapper("server_response", string, String.valueOf(responseCode), strValueOf);
                StringBuilder sb2 = new StringBuilder("Validate-WH response - ");
                sb2.append(responseCode);
                sb2.append(": ");
                sb2.append(new JSONObject(strValueOf).toString());
                AFLogger.AFKeystoreWrapper(sb2.toString());
            } catch (Throwable th) {
                try {
                    AFLogger.valueOf(th.getMessage(), th);
                    if (httpURLConnectionValues != null) {
                        httpURLConnectionValues.disconnect();
                    }
                } finally {
                    if (httpURLConnectionValues != null) {
                        httpURLConnectionValues.disconnect();
                    }
                }
            }
        }
    }
}
