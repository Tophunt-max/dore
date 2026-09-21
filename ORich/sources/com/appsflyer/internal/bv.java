package com.appsflyer.internal;

import android.content.Context;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class bv extends f {
    public boolean onConversionDataFail;
    private final boolean onDeepLinkingNative;
    private final boolean onInstallConversionFailureNative;

    bv() {
        this(null, null, null, null, null, null);
    }

    public bv(String str, String str2, Boolean bool, Boolean bool2, Boolean bool3, Context context) {
        super(str, str2, Boolean.valueOf(bool3 != null ? bool3.booleanValue() : false), context);
        this.onDeepLinkingNative = bool != null ? bool.booleanValue() : true;
        this.onInstallConversionFailureNative = bool2 != null ? bool2.booleanValue() : true;
    }

    public final boolean AppsFlyer2dXConversionCallback() {
        return this.onConversionDataFail;
    }

    public final boolean AFLogger$LogLevel() {
        return this.onDeepLinkingNative;
    }

    public final boolean getLevel() {
        return this.onInstallConversionFailureNative;
    }

    public final String AFVersionDeclaration() {
        return n.AFKeystoreWrapper((Map<String, ?>) AFInAppEventParameterName()).toString();
    }
}
