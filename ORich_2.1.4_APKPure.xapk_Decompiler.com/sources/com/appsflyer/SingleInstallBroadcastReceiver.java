package com.appsflyer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.appsflyer.internal.ag;

/* JADX INFO: loaded from: classes.dex */
public class SingleInstallBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String stringExtra;
        if (intent == null) {
            return;
        }
        try {
            stringExtra = intent.getStringExtra("referrer");
        } catch (Throwable th) {
            AFLogger.valueOf("error in BroadcastReceiver ", th);
            stringExtra = null;
        }
        if (stringExtra != null && ag.AFKeystoreWrapper(context).getString("referrer", null) != null) {
            ag.AFInAppEventType().AFInAppEventParameterName(context, stringExtra);
            return;
        }
        String string = AppsFlyerProperties.getInstance().getString("referrer_timestamp");
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (string == null || jCurrentTimeMillis - Long.valueOf(string).longValue() >= 2000) {
            AFLogger.AFKeystoreWrapper("SingleInstallBroadcastReceiver called");
            ag.AFInAppEventType().AFInAppEventType(context, intent);
            AppsFlyerProperties.getInstance().set("referrer_timestamp", String.valueOf(System.currentTimeMillis()));
        }
    }
}
