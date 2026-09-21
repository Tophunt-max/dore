package com.appsflyer.internal;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.FirebaseMessagingServiceListener;
import com.appsflyer.internal.b;
import io.dcloud.common.constant.AbsoluteConst;
import io.dcloud.common.constant.IntentConst;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class bp extends bv {
    private static String onDeepLinkingNative;
    private final SharedPreferences onInstallConversionFailureNative;

    static {
        StringBuilder sb = new StringBuilder("https://%sregister.%s/api/v");
        sb.append(ag.values);
        onDeepLinkingNative = sb.toString();
    }

    public bp(Context context) {
        StringBuilder sb = new StringBuilder();
        sb.append(String.format(onDeepLinkingNative, AppsFlyerLib.getInstance().getHostPrefix(), ag.AFInAppEventType().getHostName()));
        sb.append(context.getPackageName());
        super(null, sb.toString(), null, null, null, context);
        this.onInstallConversionFailureNative = ag.AFKeystoreWrapper(context);
    }

    public static boolean values(Context context) {
        if (AppsFlyerLib.getInstance().isStopped()) {
            return false;
        }
        try {
            Class.forName("com.google.firebase.messaging.FirebaseMessagingService");
        } catch (ClassNotFoundException unused) {
        } catch (Throwable th) {
            AFLogger.valueOf("An error occurred while trying to verify manifest declarations: ", th);
        }
        return aa.values(context, new Intent("com.google.firebase.MESSAGING_EVENT", null, context, FirebaseMessagingServiceListener.class));
    }

    public static boolean valueOf(SharedPreferences sharedPreferences) {
        return sharedPreferences.getBoolean("sentRegisterRequestToAF", false);
    }

    public final void valueOf(String str) {
        if (str != null) {
            AFLogger.AFKeystoreWrapper("Firebase Refreshed Token = ".concat(String.valueOf(str)));
            ac acVarValues = values();
            if (acVarValues == null || !str.equals(acVarValues.values)) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                boolean z = ag.AFInAppEventParameterName(this.onInstallConversionFailureNative) && (acVarValues == null || jCurrentTimeMillis - acVarValues.valueOf > TimeUnit.SECONDS.toMillis(2L));
                AFKeystoreWrapper(new ac(str, jCurrentTimeMillis, !z));
                if (z) {
                    AFKeystoreWrapper(str);
                }
            }
        }
    }

    public ac values() {
        String string;
        String string2;
        String string3 = this.onInstallConversionFailureNative.getString("afUninstallToken", null);
        long j = this.onInstallConversionFailureNative.getLong("afUninstallToken_received_time", 0L);
        boolean z = this.onInstallConversionFailureNative.getBoolean("afUninstallToken_queued", false);
        this.onInstallConversionFailureNative.edit().putBoolean("afUninstallToken_queued", false).apply();
        if (string3 == null && (string2 = AppsFlyerProperties.getInstance().getString("afUninstallToken")) != null) {
            string3 = string2.split(",")[r0.length - 1];
        }
        if (j == 0 && (string = AppsFlyerProperties.getInstance().getString("afUninstallToken")) != null) {
            String[] strArrSplit = string.split(",");
            if (strArrSplit.length >= 2) {
                try {
                    j = Long.parseLong(strArrSplit[strArrSplit.length - 2]);
                } catch (NumberFormatException unused) {
                }
            }
        }
        if (string3 != null) {
            return new ac(string3, j, z);
        }
        return null;
    }

    private void AFKeystoreWrapper(ac acVar) {
        this.onInstallConversionFailureNative.edit().putString("afUninstallToken", acVar.values).putLong("afUninstallToken_received_time", acVar.valueOf).putBoolean("afUninstallToken_queued", acVar.AFInAppEventType()).apply();
    }

    public void AFKeystoreWrapper(String str) {
        Application application = this.values;
        final ag agVarAFInAppEventType = ag.AFInAppEventType();
        if (agVarAFInAppEventType.valueOf()) {
            AFLogger.AFKeystoreWrapper("CustomerUserId not set, Tracking is disabled", true);
            return;
        }
        String strAFInAppEventParameterName = ag.AFInAppEventParameterName(AppsFlyerProperties.AF_KEY);
        if (strAFInAppEventParameterName == null) {
            AFLogger.init("[registerUninstall] AppsFlyer's SDK cannot send any event without providing DevKey.");
            return;
        }
        PackageManager packageManager = application.getPackageManager();
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(application.getPackageName(), 0);
            this.AFKeystoreWrapper.put("app_version_code", Integer.toString(packageInfo.versionCode));
            this.AFKeystoreWrapper.put("app_version_name", packageInfo.versionName);
            this.AFKeystoreWrapper.put(IntentConst.WEBAPP_ACTIVITY_APPNAME, packageManager.getApplicationLabel(packageInfo.applicationInfo).toString());
            long j = packageInfo.firstInstallTime;
            this.AFKeystoreWrapper.put("installDate", ag.AFKeystoreWrapper(new SimpleDateFormat("yyyy-MM-dd_HHmmssZ", Locale.US), j));
        } catch (Throwable th) {
            AFLogger.valueOf("Exception while collecting application version info.", th);
        }
        ag.AFInAppEventParameterName(application, (Map<String, ? super String>) this.AFKeystoreWrapper);
        String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.APP_USER_ID);
        if (string != null) {
            this.AFKeystoreWrapper.put("appUserId", string);
        }
        try {
            this.AFKeystoreWrapper.put("model", Build.MODEL);
            this.AFKeystoreWrapper.put("brand", Build.BRAND);
        } catch (Throwable th2) {
            AFLogger.valueOf("Exception while collecting device brand and model.", th2);
        }
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, false)) {
            this.AFKeystoreWrapper.put(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, AbsoluteConst.TRUE);
        }
        b.e.a aVarValueOf = z.valueOf(application.getContentResolver());
        if (aVarValueOf != null) {
            this.AFKeystoreWrapper.put("amazon_aid", aVarValueOf.valueOf);
            this.AFKeystoreWrapper.put("amazon_aid_limit", String.valueOf(aVarValueOf.AFInAppEventParameterName));
        }
        String string2 = AppsFlyerProperties.getInstance().getString("advertiserId");
        if (string2 != null) {
            this.AFKeystoreWrapper.put("advertiserId", string2);
        }
        this.AFKeystoreWrapper.put("devkey", strAFInAppEventParameterName);
        this.AFKeystoreWrapper.put("uid", al.AFInAppEventParameterName(new WeakReference(application)));
        this.AFKeystoreWrapper.put("af_gcm_token", str);
        this.AFKeystoreWrapper.put("launch_counter", Integer.toString(ag.valueOf(this.onInstallConversionFailureNative, "appsFlyerCount", false)));
        this.AFKeystoreWrapper.put("sdk", Integer.toString(Build.VERSION.SDK_INT));
        String strAFInAppEventParameterName2 = agVarAFInAppEventType.AFInAppEventParameterName(application);
        if (strAFInAppEventParameterName2 != null) {
            this.AFKeystoreWrapper.put("channel", strAFInAppEventParameterName2);
        }
        new Thread(new Runnable() { // from class: com.appsflyer.internal.bp.2
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    bp bpVar = bp.this;
                    bpVar.onConversionDataFail = agVarAFInAppEventType.isStopped();
                    HttpURLConnection httpURLConnectionAFKeystoreWrapper = new af(bpVar).AFKeystoreWrapper();
                    if (httpURLConnectionAFKeystoreWrapper != null) {
                        if (httpURLConnectionAFKeystoreWrapper.getResponseCode() == 200) {
                            bp.values(bp.this);
                        }
                        httpURLConnectionAFKeystoreWrapper.disconnect();
                    }
                } catch (Throwable th3) {
                    AFLogger.valueOf(th3.getMessage(), th3);
                }
            }
        }).start();
    }

    static /* synthetic */ void values(bp bpVar) {
        bpVar.onInstallConversionFailureNative.edit().putBoolean("sentRegisterRequestToAF", true).apply();
        AFLogger.AFInAppEventType("Successfully registered for Uninstall Tracking");
    }
}
