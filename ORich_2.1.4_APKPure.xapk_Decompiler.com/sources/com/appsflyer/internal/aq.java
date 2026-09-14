package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.deeplink.DeepLink;
import com.appsflyer.deeplink.DeepLinkResult;
import java.util.Map;
import org.json.JSONException;

/* JADX INFO: loaded from: classes.dex */
public final class aq {
    public static void valueOf(String str, DeepLinkResult.Error error) {
        if (j.AFInAppEventType().AFKeystoreWrapper != null) {
            AFLogger.AFInAppEventType("[DDL] Error occurred: ".concat(String.valueOf(str)));
            AFInAppEventType(new DeepLinkResult(null, error));
        } else {
            valueOf(str);
        }
    }

    public static void AFInAppEventParameterName(Map<String, String> map) {
        DeepLinkResult deepLinkResult;
        if (j.AFInAppEventType().AFKeystoreWrapper != null) {
            try {
                try {
                    DeepLink deepLinkValues = DeepLink.values(map);
                    deepLinkValues.AFKeystoreWrapper.put("is_deferred", false);
                    deepLinkResult = new DeepLinkResult(deepLinkValues, null);
                } catch (JSONException e) {
                    AFLogger.values("[DDL] Error occurred", e);
                    deepLinkResult = new DeepLinkResult(null, DeepLinkResult.Error.UNEXPECTED);
                }
                AFInAppEventType(deepLinkResult);
                return;
            } catch (Throwable th) {
                AFInAppEventType(new DeepLinkResult(null, null));
                throw th;
            }
        }
        AFInAppEventType(map);
    }

    static void AFInAppEventType(DeepLinkResult deepLinkResult) {
        if (j.AFInAppEventType().AFKeystoreWrapper != null) {
            StringBuilder sb = new StringBuilder("[DDL] Calling onDeepLinking with:\n");
            sb.append(deepLinkResult.toString());
            AFLogger.AFInAppEventType(sb.toString());
            try {
                j.AFInAppEventType().AFKeystoreWrapper.onDeepLinking(deepLinkResult);
                return;
            } catch (Throwable th) {
                AFLogger.valueOf(th.getLocalizedMessage(), th);
                return;
            }
        }
        AFLogger.AFInAppEventType("[DDL] skipping, no callback registered");
    }

    private static void AFInAppEventType(Map<String, String> map) {
        if (ag.AFInAppEventParameterName != null) {
            try {
                StringBuilder sb = new StringBuilder("Calling onAppOpenAttribution with:\n");
                sb.append(map.toString());
                AFLogger.AFInAppEventType(sb.toString());
                ag.AFInAppEventParameterName.onAppOpenAttribution(map);
            } catch (Throwable th) {
                AFLogger.valueOf(th.getLocalizedMessage(), th);
            }
        }
    }

    private static void valueOf(String str) {
        if (ag.AFInAppEventParameterName != null) {
            try {
                AFLogger.AFInAppEventType("Calling onAppOpenAttributionFailure with: ".concat(String.valueOf(str)));
                ag.AFInAppEventParameterName.onAttributionFailure(str);
            } catch (Throwable th) {
                AFLogger.valueOf(th.getLocalizedMessage(), th);
            }
        }
    }
}
