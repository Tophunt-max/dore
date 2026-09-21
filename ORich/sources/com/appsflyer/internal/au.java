package com.appsflyer.internal;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class au {
    public final Application AFInAppEventType;
    public final SharedPreferences valueOf;
    public final Map<String, Object> values = new ConcurrentHashMap();

    public au(Context context) {
        Application application = (Application) context.getApplicationContext();
        this.AFInAppEventType = application;
        this.valueOf = ag.AFKeystoreWrapper(application);
    }

    public final boolean AFKeystoreWrapper() {
        ag.AFInAppEventType();
        return ag.valueOf(this.valueOf, "appsFlyerCount", false) == 0;
    }
}
