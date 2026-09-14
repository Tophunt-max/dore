package com.appsflyer.internal;

import android.app.Application;
import com.appsflyer.AFLogger;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class bu implements Runnable {
    private static String AFInAppEventType = "https://%sgcdsdk.%s/install_data/v4.0/";
    private static final List<String> values = Arrays.asList("googleplay", "playstore", "googleplaystore");
    private final String AFInAppEventParameterName;
    private final Application AFKeystoreWrapper;
    private final int AFLogger$LogLevel;
    private final AtomicInteger AFVersionDeclaration;
    private final ag getLevel;
    final ScheduledExecutorService valueOf;

    bu(ag agVar, Application application, String str) {
        if (l.AFKeystoreWrapper == null) {
            l.AFKeystoreWrapper = new l();
        }
        this.valueOf = l.AFKeystoreWrapper.AFInAppEventType();
        this.AFVersionDeclaration = new AtomicInteger(0);
        this.getLevel = agVar;
        this.AFKeystoreWrapper = application;
        this.AFInAppEventParameterName = str;
        this.AFLogger$LogLevel = 0;
    }

    private bu(bu buVar) {
        if (l.AFKeystoreWrapper == null) {
            l.AFKeystoreWrapper = new l();
        }
        this.valueOf = l.AFKeystoreWrapper.AFInAppEventType();
        this.AFVersionDeclaration = new AtomicInteger(0);
        this.getLevel = buVar.getLevel;
        this.AFKeystoreWrapper = buVar.AFKeystoreWrapper;
        this.AFInAppEventParameterName = buVar.AFInAppEventParameterName;
        this.AFLogger$LogLevel = buVar.AFLogger$LogLevel + 1;
    }

    static void valueOf(Map<String, Object> map) {
        StringBuilder sb = new StringBuilder("[GCD-A02] Calling onConversionDataSuccess with:\n");
        sb.append(map.toString());
        AFLogger.AFInAppEventType(sb.toString());
        ag.AFInAppEventParameterName.onConversionDataSuccess(map);
    }

    public static void AFInAppEventParameterName(String str) {
        if (ag.AFInAppEventParameterName != null) {
            AFLogger.AFInAppEventType("[GCD-A02] Calling onConversionFailure with:\n".concat(String.valueOf(str)));
            ag.AFInAppEventParameterName.onConversionDataFail(str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00ca A[Catch: all -> 0x029f, TryCatch #3 {all -> 0x029f, blocks: (B:12:0x002c, B:14:0x0030, B:17:0x0040, B:20:0x0050, B:22:0x005c, B:25:0x0075, B:27:0x00ca, B:28:0x00d1, B:23:0x0067), top: B:107:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0118 A[Catch: all -> 0x029c, TryCatch #2 {all -> 0x029c, blocks: (B:29:0x00f8, B:31:0x0118, B:32:0x011f, B:43:0x0155, B:40:0x0141, B:42:0x0145, B:44:0x0164, B:46:0x01a4, B:48:0x01b2, B:50:0x01cc, B:52:0x01d2, B:53:0x01df, B:56:0x01e9, B:58:0x01ef, B:59:0x0203, B:60:0x0214, B:62:0x021a, B:63:0x022d, B:66:0x023f, B:68:0x024a, B:70:0x024e, B:72:0x0256, B:74:0x026a, B:78:0x0277, B:77:0x0272, B:67:0x0245), top: B:106:0x00f8, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0136 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0164 A[Catch: all -> 0x029c, TryCatch #2 {all -> 0x029c, blocks: (B:29:0x00f8, B:31:0x0118, B:32:0x011f, B:43:0x0155, B:40:0x0141, B:42:0x0145, B:44:0x0164, B:46:0x01a4, B:48:0x01b2, B:50:0x01cc, B:52:0x01d2, B:53:0x01df, B:56:0x01e9, B:58:0x01ef, B:59:0x0203, B:60:0x0214, B:62:0x021a, B:63:0x022d, B:66:0x023f, B:68:0x024a, B:70:0x024e, B:72:0x0256, B:74:0x026a, B:78:0x0277, B:77:0x0272, B:67:0x0245), top: B:106:0x00f8, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01a4 A[Catch: all -> 0x029c, TryCatch #2 {all -> 0x029c, blocks: (B:29:0x00f8, B:31:0x0118, B:32:0x011f, B:43:0x0155, B:40:0x0141, B:42:0x0145, B:44:0x0164, B:46:0x01a4, B:48:0x01b2, B:50:0x01cc, B:52:0x01d2, B:53:0x01df, B:56:0x01e9, B:58:0x01ef, B:59:0x0203, B:60:0x0214, B:62:0x021a, B:63:0x022d, B:66:0x023f, B:68:0x024a, B:70:0x024e, B:72:0x0256, B:74:0x026a, B:78:0x0277, B:77:0x0272, B:67:0x0245), top: B:106:0x00f8, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0298  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() {
        /*
            Method dump skipped, instruction units count: 749
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.bu.run():void");
    }
}
