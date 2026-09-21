package com.appsflyer.internal;

import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import com.appsflyer.AppsFlyerProperties;
import com.taobao.weex.common.RenderTypes;
import com.taobao.weex.el.parse.Operators;
import com.taobao.weex.utils.tools.TimeCalculator;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class ak {
    public static ak valueOf;
    private Map<String, Object> AFInAppEventParameterName;
    private List<String> values = new ArrayList();
    private boolean AFKeystoreWrapper = true;
    private String getLevel = "-1";
    boolean AFInAppEventType = true ^ AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.DPM, false);
    private int AFLogger$LogLevel = 0;
    private boolean init = false;

    final synchronized void valueOf(String str) {
        this.getLevel = str;
    }

    final synchronized void AFInAppEventType() {
        this.init = true;
        AFKeystoreWrapper("r_debugging_on", new SimpleDateFormat("yyyy-MM-dd HH:mm:ssZ", Locale.ENGLISH).format(Long.valueOf(System.currentTimeMillis())), new String[0]);
    }

    final synchronized void AFInAppEventParameterName() {
        AFKeystoreWrapper("r_debugging_off", new SimpleDateFormat("yyyy-MM-dd HH:mm:ssZ", Locale.ENGLISH).format(Long.valueOf(System.currentTimeMillis())), new String[0]);
        this.init = false;
        this.AFKeystoreWrapper = false;
    }

    final synchronized void values() {
        this.AFInAppEventParameterName = null;
        valueOf = null;
    }

    private boolean AFLogger$LogLevel() {
        if (this.AFInAppEventType) {
            return this.AFKeystoreWrapper || this.init;
        }
        return false;
    }

    private synchronized void values(String str, String str2, String str3) {
        try {
            this.AFInAppEventParameterName.put("brand", Build.BRAND);
            this.AFInAppEventParameterName.put("model", Build.MODEL);
            this.AFInAppEventParameterName.put(RenderTypes.RENDER_TYPE_NATIVE, TimeCalculator.PLATFORM_ANDROID);
            this.AFInAppEventParameterName.put("platform_version", Build.VERSION.RELEASE);
            if (str != null && str.length() > 0) {
                this.AFInAppEventParameterName.put("advertiserId", str);
            }
            if (str2 != null && str2.length() > 0) {
                this.AFInAppEventParameterName.put("imei", str2);
            }
            if (str3 != null && str3.length() > 0) {
                this.AFInAppEventParameterName.put("android_id", str3);
            }
        } catch (Throwable unused) {
        }
    }

    private synchronized void values(String str, String str2, String str3, String str4) {
        try {
            this.AFInAppEventParameterName.put("sdk_version", str);
            if (str2 != null && str2.length() > 0) {
                this.AFInAppEventParameterName.put("devkey", str2);
            }
            if (str3 != null && str3.length() > 0) {
                this.AFInAppEventParameterName.put("originalAppsFlyerId", str3);
            }
            if (str4 != null && str4.length() > 0) {
                this.AFInAppEventParameterName.put("uid", str4);
            }
        } catch (Throwable unused) {
        }
    }

    private synchronized void valueOf(String str, String str2, String str3, String str4) {
        if (str != null) {
            try {
                if (str.length() > 0) {
                    this.AFInAppEventParameterName.put("app_id", str);
                }
            } catch (Throwable unused) {
                return;
            }
        }
        if (str2 != null && str2.length() > 0) {
            this.AFInAppEventParameterName.put("app_version", str2);
        }
        if (str3 != null && str3.length() > 0) {
            this.AFInAppEventParameterName.put("channel", str3);
        }
        if (str4 != null && str4.length() > 0) {
            this.AFInAppEventParameterName.put("preInstall", str4);
        }
    }

    public final synchronized void AFKeystoreWrapper(String str, String str2, String... strArr) {
        String string;
        if (AFLogger$LogLevel()) {
            if (this.AFLogger$LogLevel < 98304) {
                try {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    String strJoin = TextUtils.join(", ", strArr);
                    if (str != null) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(jCurrentTimeMillis);
                        sb.append(Operators.SPACE_STR);
                        sb.append(Thread.currentThread().getId());
                        sb.append(" _/AppsFlyer_6.4.2 [");
                        sb.append(str);
                        sb.append("] ");
                        sb.append(str2);
                        sb.append(Operators.SPACE_STR);
                        sb.append(strJoin);
                        string = sb.toString();
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(jCurrentTimeMillis);
                        sb2.append(Operators.SPACE_STR);
                        sb2.append(Thread.currentThread().getId());
                        sb2.append(Operators.SPACE_STR);
                        sb2.append(str2);
                        sb2.append("/AppsFlyer_6.4.2 ");
                        sb2.append(strJoin);
                        string = sb2.toString();
                    }
                    this.values.add(string);
                    this.AFLogger$LogLevel += string.length() << 1;
                } catch (Throwable unused) {
                }
            }
        }
    }

    final synchronized Map<String, Object> AFKeystoreWrapper() {
        this.AFInAppEventParameterName.put("data", this.values);
        AFVersionDeclaration();
        return this.AFInAppEventParameterName;
    }

    final synchronized void values(String str, PackageManager packageManager) {
        AppsFlyerProperties appsFlyerProperties = AppsFlyerProperties.getInstance();
        String string = appsFlyerProperties.getString("remote_debug_static_data");
        if (string != null) {
            try {
                this.AFInAppEventParameterName = n.valueOf(new JSONObject(string));
            } catch (Throwable unused) {
            }
        } else {
            this.AFInAppEventParameterName = new HashMap();
            ag agVarAFInAppEventType = ag.AFInAppEventType();
            values(appsFlyerProperties.getString("advertiserId"), agVarAFInAppEventType.init, agVarAFInAppEventType.getLevel);
            StringBuilder sb = new StringBuilder("6.4.2.");
            sb.append(ag.AFInAppEventType);
            values(sb.toString(), appsFlyerProperties.getString(AppsFlyerProperties.AF_KEY), appsFlyerProperties.getString("KSAppsFlyerId"), appsFlyerProperties.getString("uid"));
            try {
                int i = packageManager.getPackageInfo(str, 0).versionCode;
                valueOf(str, String.valueOf(i), appsFlyerProperties.getString("channel"), appsFlyerProperties.getString("preInstallName"));
            } catch (Throwable unused2) {
            }
            appsFlyerProperties.set("remote_debug_static_data", new JSONObject(this.AFInAppEventParameterName).toString());
        }
        this.AFInAppEventParameterName.put("launch_counter", this.getLevel);
    }

    public static String[] AFKeystoreWrapper(String str, StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr == null) {
            return new String[]{str};
        }
        String[] strArr = new String[stackTraceElementArr.length + 1];
        strArr[0] = str;
        for (int i = 1; i < stackTraceElementArr.length; i++) {
            strArr[i] = stackTraceElementArr[i].toString();
        }
        return strArr;
    }

    private synchronized void AFVersionDeclaration() {
        this.values = new ArrayList();
        this.AFLogger$LogLevel = 0;
    }

    final synchronized void valueOf() {
        this.AFKeystoreWrapper = false;
        AFVersionDeclaration();
    }

    final boolean AppsFlyer2dXConversionCallback() {
        return this.init;
    }
}
