package com.appsflyer.internal;

import android.content.Context;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class cc extends cj {
    cc(String str, Runnable runnable) {
        super(str, runnable);
    }

    final void AFKeystoreWrapper(Context context, at<Map<String, Object>> atVar) {
        ag.AFInAppEventType();
        if (ag.valueOf(ag.AFKeystoreWrapper(context), "appsFlyerCount", false) > 0 || !atVar.AFInAppEventType()) {
            return;
        }
        new Thread(atVar.AFKeystoreWrapper).start();
        AFInAppEventParameterName();
    }
}
