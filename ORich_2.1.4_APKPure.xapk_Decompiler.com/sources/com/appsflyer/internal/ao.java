package com.appsflyer.internal;

import android.content.Context;
import com.appsflyer.AFLogger;
import com.appsflyer.deeplink.DeepLinkResult;
import com.appsflyer.internal.b;
import com.appsflyer.internal.cj;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class ao extends bv {
    private static String onAppOpenAttribution = "https://%sdlsdk.%s/v1.0/android/";
    public static long onDeepLinkingNative;
    private final JSONObject AppsFlyerConversionListener;
    private int AppsFlyerLib;
    private final CountDownLatch onAttributionFailure;
    private final List<cj> onConversionDataSuccess;
    private final au onDeepLinking;
    public int onInstallConversionFailureNative;
    private int onValidateInApp;
    private boolean onValidateInAppFailure;

    public ao(Context context, au auVar) {
        super(null, onAppOpenAttribution, Boolean.FALSE, Boolean.TRUE, null, context);
        this.onConversionDataSuccess = new ArrayList();
        this.onAttributionFailure = new CountDownLatch(1);
        this.AppsFlyerConversionListener = new JSONObject();
        this.onDeepLinking = auVar;
    }

    public final void values(DeepLinkResult deepLinkResult) {
        try {
            this.AppsFlyerConversionListener.put("status", deepLinkResult.getStatus().toString());
            this.AppsFlyerConversionListener.put("timeout_value", onDeepLinkingNative);
        } catch (JSONException unused) {
        }
        au auVar = this.onDeepLinking;
        auVar.valueOf.edit().putString("ddl", this.AppsFlyerConversionListener.toString()).apply();
        aq.AFInAppEventType(deepLinkResult);
    }

    private boolean values() {
        List list = (List) this.AFKeystoreWrapper.get("referrers");
        return (list != null ? list.size() : 0) < this.AppsFlyerLib && !this.AFKeystoreWrapper.containsKey("referrers");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0122  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void AFInAppEventType(android.content.Context r9) {
        /*
            Method dump skipped, instruction units count: 417
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.ao.AFInAppEventType(android.content.Context):void");
    }

    /* JADX INFO: renamed from: com.appsflyer.internal.ao$5, reason: invalid class name */
    static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] AFKeystoreWrapper;

        static {
            int[] iArr = new int[cj.e.values().length];
            AFKeystoreWrapper = iArr;
            try {
                iArr[cj.e.FINISHED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                AFKeystoreWrapper[cj.e.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void AFInAppEventParameterName(cj cjVar) {
        if (AFInAppEventType(cjVar)) {
            this.onConversionDataSuccess.add(cjVar);
            this.onAttributionFailure.countDown();
            StringBuilder sb = new StringBuilder("[DDL] Added non-organic ");
            sb.append(cjVar.getClass().getSimpleName());
            AFLogger.AFInAppEventType(sb.toString());
            return;
        }
        int i = this.onValidateInApp + 1;
        this.onValidateInApp = i;
        if (i == this.AppsFlyerLib) {
            this.onAttributionFailure.countDown();
        }
    }

    private static boolean AFInAppEventType(cj cjVar) {
        Long l = (Long) cjVar.AFKeystoreWrapper.get("click_ts");
        return l != null && System.currentTimeMillis() - TimeUnit.SECONDS.toMillis(l.longValue()) < TimeUnit.DAYS.toMillis(1L);
    }

    private Map<String, Object> AFInAppEventType(final b.e.a aVar) {
        Boolean bool;
        boolean z = false;
        if (aVar != null && aVar.valueOf != null && ((bool = aVar.AFInAppEventParameterName) == null || !bool.booleanValue())) {
            z = true;
        }
        if (z) {
            return new HashMap<String, Object>() { // from class: com.appsflyer.internal.ao.1
                {
                    put("type", "unhashed");
                    put("value", aVar.valueOf);
                }
            };
        }
        return null;
    }

    static /* synthetic */ void valueOf(ao aoVar) {
        ArrayList<cj> arrayList = new ArrayList();
        for (cj cjVar : ag.AFInAppEventType().AFVersionDeclaration) {
            if (cjVar != null && cjVar.valueOf != cj.e.NOT_STARTED) {
                arrayList.add(cjVar);
            }
        }
        aoVar.AppsFlyerLib = arrayList.size();
        for (final cj cjVar2 : arrayList) {
            int i = AnonymousClass5.AFKeystoreWrapper[cjVar2.valueOf.ordinal()];
            if (i == 1) {
                StringBuilder sb = new StringBuilder("[DDL] ");
                sb.append(cjVar2.AFKeystoreWrapper.get("source"));
                sb.append(" referrer collected earlier");
                AFLogger.AFInAppEventType(sb.toString());
                aoVar.AFInAppEventParameterName(cjVar2);
            } else if (i == 2) {
                cjVar2.addObserver(new Observer() { // from class: com.appsflyer.internal.ao.4
                    @Override // java.util.Observer
                    public final void update(Observable observable, Object obj) {
                        StringBuilder sb2 = new StringBuilder("[DDL] ");
                        sb2.append(cjVar2.AFKeystoreWrapper.get("source"));
                        sb2.append(" referrer collected via observer");
                        AFLogger.AFInAppEventType(sb2.toString());
                        ao.this.AFInAppEventParameterName((cj) observable);
                    }
                });
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00c1, code lost:
    
        return new com.appsflyer.deeplink.DeepLinkResult(null, null);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static /* synthetic */ com.appsflyer.deeplink.DeepLinkResult values(com.appsflyer.internal.ao r9, android.content.Context r10) throws org.json.JSONException, java.lang.InterruptedException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 223
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.ao.values(com.appsflyer.internal.ao, android.content.Context):com.appsflyer.deeplink.DeepLinkResult");
    }
}
