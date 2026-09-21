package com.appsflyer.internal;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

/* JADX INFO: loaded from: classes.dex */
final class d {
    private IntentFilter values = new IntentFilter("android.intent.action.BATTERY_CHANGED");

    static final class e {
        static final d values = new d();
    }

    d() {
    }

    final b AFKeystoreWrapper(Context context) {
        String str = null;
        float f = 0.0f;
        try {
            Intent intentRegisterReceiver = context.registerReceiver(null, this.values);
            if (intentRegisterReceiver != null) {
                if (2 == intentRegisterReceiver.getIntExtra("status", -1)) {
                    int intExtra = intentRegisterReceiver.getIntExtra("plugged", -1);
                    str = intExtra != 1 ? intExtra != 2 ? intExtra != 4 ? "other" : "wireless" : "usb" : "ac";
                } else {
                    str = "no";
                }
                int intExtra2 = intentRegisterReceiver.getIntExtra("level", -1);
                int intExtra3 = intentRegisterReceiver.getIntExtra("scale", -1);
                if (-1 != intExtra2 && -1 != intExtra3) {
                    f = (intExtra2 * 100.0f) / intExtra3;
                }
            }
        } catch (Throwable unused) {
        }
        return new b(f, str);
    }

    static final class b {
        final float AFInAppEventParameterName;
        final String valueOf;

        b(float f, String str) {
            this.AFInAppEventParameterName = f;
            this.valueOf = str;
        }
    }
}
