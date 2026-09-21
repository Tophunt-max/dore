package com.appsflyer.internal;

import android.app.Application;
import android.content.Context;
import android.net.Uri;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class f {
    String AFInAppEventParameterName;
    Map<String, Object> AFInAppEventType;
    public final Map<String, Object> AFKeystoreWrapper;
    byte[] AFLogger$LogLevel;
    String AFVersionDeclaration;
    String AppsFlyer2dXConversionCallback;
    String getLevel;
    public String init;
    public int onAppOpenAttributionNative;
    public String onAttributionFailureNative;
    boolean onInstallConversionDataLoadedNative;
    private final boolean onInstallConversionFailureNative;
    AppsFlyerRequestListener valueOf;
    public Application values;

    public f() {
        this(null, null, null, null);
    }

    public f(String str, String str2, Boolean bool, Context context) {
        this.AFKeystoreWrapper = new HashMap();
        this.AFVersionDeclaration = str;
        this.onAttributionFailureNative = str2;
        this.onInstallConversionFailureNative = bool != null ? bool.booleanValue() : true;
        if (context != null) {
            this.values = (Application) context.getApplicationContext();
        }
    }

    public f values(String str) {
        this.onAttributionFailureNative = str;
        return this;
    }

    public final boolean AFInAppEventType() {
        return this.onInstallConversionDataLoadedNative;
    }

    protected final f AFInAppEventParameterName(Map<String, ?> map) {
        this.AFKeystoreWrapper.putAll(map);
        return this;
    }

    public final Map<String, Object> AFInAppEventParameterName() {
        return this.AFKeystoreWrapper;
    }

    final byte[] AFKeystoreWrapper() {
        return this.AFLogger$LogLevel;
    }

    public final boolean valueOf() {
        return this.onInstallConversionFailureNative;
    }

    protected final String AFInAppEventParameterName(String str) {
        String strAFInAppEventParameterName = ag.AFInAppEventType().AFInAppEventParameterName(this.values);
        return strAFInAppEventParameterName != null ? Uri.parse(str).buildUpon().appendQueryParameter("channel", strAFInAppEventParameterName).build().toString() : str;
    }
}
