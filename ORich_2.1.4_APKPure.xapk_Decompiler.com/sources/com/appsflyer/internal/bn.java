package com.appsflyer.internal;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import com.appsflyer.AFLogger;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class bn {
    public static void AFInAppEventParameterName(ag agVar, f fVar, String str, Context context, SharedPreferences sharedPreferences, Integer num, Throwable th) {
        if (fVar.AFInAppEventType()) {
            if (ag.AFInAppEventParameterName == null) {
                AFLogger.AFInAppEventType("[GCD-E01] AppsFlyerConversionListener is null - skip gcd");
                return;
            }
            StringBuilder sb = new StringBuilder("[GCD-A01] Loading conversion data. Counter: ");
            sb.append(fVar.onAppOpenAttributionNative);
            AFLogger.AFInAppEventType(sb.toString());
            long j = sharedPreferences.getLong("appsflyerConversionDataCacheExpiration", 0L);
            if (j != 0 && System.currentTimeMillis() - j > 5184000000L) {
                AFLogger.AFInAppEventType("[GCD-E02] Cached conversion data expired");
                ag.AFKeystoreWrapper(context, "sixtyDayConversionData");
                ag.AFInAppEventType(context, "attributionId", null);
                agVar.valueOf(context, "appsflyerConversionDataCacheExpiration", 0L);
            }
            if (sharedPreferences.getString("attributionId", null) == null) {
                if (th != null) {
                    StringBuilder sb2 = new StringBuilder("Launch exception: ");
                    sb2.append(th.getMessage());
                    bu.AFInAppEventParameterName(sb2.toString());
                    return;
                } else if (num.intValue() != 200) {
                    bu.AFInAppEventParameterName("Launch status code: ".concat(String.valueOf(num)));
                    return;
                } else {
                    bu buVar = new bu(agVar, (Application) context.getApplicationContext(), str);
                    ag.AFInAppEventType(buVar.valueOf, buVar, 10L, TimeUnit.MILLISECONDS);
                    return;
                }
            }
            if (ag.valueOf(sharedPreferences, "appsFlyerCount", false) <= 1) {
                return;
            }
            try {
                Map<String, Object> mapValueOf = valueOf(context);
                if (mapValueOf == null) {
                    return;
                }
                try {
                    if (!mapValueOf.containsKey("is_first_launch")) {
                        mapValueOf.put("is_first_launch", Boolean.FALSE);
                    }
                    bu.valueOf(mapValueOf);
                } catch (Throwable th2) {
                    AFLogger.valueOf(th2.getLocalizedMessage(), th2);
                }
            } catch (bo e) {
                AFLogger.valueOf(e.getMessage(), e);
            }
        }
    }

    static Map<String, Object> valueOf(Context context) throws bo {
        String string = ag.AFKeystoreWrapper(context).getString("attributionId", null);
        if (string != null && string.length() > 0) {
            return values(string);
        }
        throw new bo();
    }

    static Map<String, Object> values(String str) {
        HashMap map = new HashMap();
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (!next.equals("is_cache")) {
                    map.put(next, jSONObject.isNull(next) ? null : jSONObject.get(next));
                }
            }
            return map;
        } catch (JSONException e) {
            AFLogger.valueOf(e.getMessage(), e);
            return null;
        }
    }
}
