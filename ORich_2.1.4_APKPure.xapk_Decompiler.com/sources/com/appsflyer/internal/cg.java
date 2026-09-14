package com.appsflyer.internal;

import android.content.Context;
import androidx.core.app.NotificationCompat;
import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.android.installreferrer.api.ReferrerDetails;
import com.appsflyer.AFLogger;
import com.taobao.weex.ui.module.WXModalUIModule;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class cg extends cj {
    public final Map<String, Object> AFInAppEventType;

    public cg(Runnable runnable) {
        super("google", runnable);
        this.AFInAppEventType = new HashMap();
    }

    private static boolean values(Context context) {
        ag.AFInAppEventType();
        if (ag.valueOf(ag.AFKeystoreWrapper(context), "appsFlyerCount", false) > 0) {
            AFLogger.values("Install referrer will not load, the counter > 1, ");
            return false;
        }
        try {
            Class.forName("com.android.installreferrer.api.InstallReferrerClient");
            if (aa.valueOf(context, "com.google.android.finsky.permission.BIND_GET_INSTALL_REFERRER_SERVICE")) {
                AFLogger.AFInAppEventType("Install referrer is allowed");
                return true;
            }
            AFLogger.AFInAppEventType("Install referrer is not allowed");
            return false;
        } catch (ClassNotFoundException unused) {
            StringBuilder sb = new StringBuilder("Class ");
            sb.append("com.android.installreferrer.api.InstallReferrerClient");
            sb.append(" not found");
            AFLogger.values(sb.toString());
            return false;
        } catch (Throwable th) {
            AFLogger.valueOf("An error occurred while trying to verify manifest : ".concat("com.android.installreferrer.api.InstallReferrerClient"), th);
            return false;
        }
    }

    @Override // com.appsflyer.internal.cj
    public final void AFKeystoreWrapper(final Context context) {
        if (values(context)) {
            AFInAppEventParameterName();
            try {
                final InstallReferrerClient installReferrerClientBuild = InstallReferrerClient.newBuilder(context).build();
                AFLogger.AFInAppEventType("Connecting to Install Referrer Library...");
                installReferrerClientBuild.startConnection(new InstallReferrerStateListener() { // from class: com.appsflyer.internal.cg.1
                    @Override // com.android.installreferrer.api.InstallReferrerStateListener
                    public final void onInstallReferrerSetupFinished(int i) {
                        cg.this.AFInAppEventType.put("code", String.valueOf(i));
                        cg.this.AFKeystoreWrapper.put("api_ver", Long.valueOf(aa.AFInAppEventType(context, "com.android.vending")));
                        cg.this.AFKeystoreWrapper.put("api_ver_name", aa.AFInAppEventParameterName(context, "com.android.vending"));
                        if (i == -1) {
                            AFLogger.init("InstallReferrer SERVICE_DISCONNECTED");
                            cg.this.AFKeystoreWrapper.put("response", "SERVICE_DISCONNECTED");
                        } else if (i == 0) {
                            cg.this.AFKeystoreWrapper.put("response", WXModalUIModule.OK);
                            try {
                                AFLogger.AFInAppEventType("InstallReferrer connected");
                                if (installReferrerClientBuild.isReady()) {
                                    ReferrerDetails installReferrer = installReferrerClientBuild.getInstallReferrer();
                                    String installReferrer2 = installReferrer.getInstallReferrer();
                                    if (installReferrer2 != null) {
                                        cg.this.AFInAppEventType.put("val", installReferrer2);
                                        cg.this.AFKeystoreWrapper.put("referrer", installReferrer2);
                                    }
                                    long referrerClickTimestampSeconds = installReferrer.getReferrerClickTimestampSeconds();
                                    cg.this.AFInAppEventType.put("clk", Long.toString(referrerClickTimestampSeconds));
                                    cg.this.AFKeystoreWrapper.put("click_ts", Long.valueOf(referrerClickTimestampSeconds));
                                    long installBeginTimestampSeconds = installReferrer.getInstallBeginTimestampSeconds();
                                    cg.this.AFInAppEventType.put("install", Long.toString(installBeginTimestampSeconds));
                                    cg.this.AFKeystoreWrapper.put("install_begin_ts", Long.valueOf(installBeginTimestampSeconds));
                                    HashMap map = new HashMap();
                                    try {
                                        boolean googlePlayInstantParam = installReferrer.getGooglePlayInstantParam();
                                        cg.this.AFInAppEventType.put("instant", Boolean.valueOf(googlePlayInstantParam));
                                        map.put("instant", Boolean.valueOf(googlePlayInstantParam));
                                    } catch (NoSuchMethodError unused) {
                                    }
                                    try {
                                        map.put("click_server_ts", Long.valueOf(installReferrer.getReferrerClickTimestampServerSeconds()));
                                        map.put("install_begin_server_ts", Long.valueOf(installReferrer.getInstallBeginTimestampServerSeconds()));
                                        map.put("install_version", installReferrer.getInstallVersion());
                                    } catch (NoSuchMethodError unused2) {
                                    }
                                    if (!map.isEmpty()) {
                                        cg.this.AFKeystoreWrapper.put("google_custom", map);
                                    }
                                } else {
                                    AFLogger.init("ReferrerClient: InstallReferrer is not ready");
                                    cg.this.AFInAppEventType.put(NotificationCompat.CATEGORY_ERROR, "ReferrerClient: InstallReferrer is not ready");
                                }
                            } catch (Throwable th) {
                                AFLogger.init("Failed to get install referrer: " + th.getMessage());
                                cg.this.AFInAppEventType.put(NotificationCompat.CATEGORY_ERROR, th.getMessage());
                            }
                        } else if (i == 1) {
                            cg.this.AFKeystoreWrapper.put("response", "SERVICE_UNAVAILABLE");
                            AFLogger.init("InstallReferrer not supported");
                        } else if (i == 2) {
                            AFLogger.init("InstallReferrer FEATURE_NOT_SUPPORTED");
                            cg.this.AFKeystoreWrapper.put("response", "FEATURE_NOT_SUPPORTED");
                        } else if (i == 3) {
                            AFLogger.init("InstallReferrer DEVELOPER_ERROR");
                            cg.this.AFKeystoreWrapper.put("response", "DEVELOPER_ERROR");
                        } else {
                            AFLogger.init("responseCode not found.");
                        }
                        AFLogger.AFInAppEventType("Install Referrer collected locally");
                        cg.this.valueOf();
                        installReferrerClientBuild.endConnection();
                    }

                    @Override // com.android.installreferrer.api.InstallReferrerStateListener
                    public final void onInstallReferrerServiceDisconnected() {
                        AFLogger.AFInAppEventType("Install Referrer service disconnected");
                    }
                });
            } catch (Throwable th) {
                AFLogger.valueOf("referrerClient -> startConnection", th);
            }
        }
    }
}
