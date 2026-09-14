package com.appsflyer;

import android.util.Log;
import com.appsflyer.internal.ag;
import com.appsflyer.internal.ak;
import com.appsflyer.internal.bc;
import com.taobao.weex.common.WXConfig;
import com.taobao.weex.el.parse.Operators;

/* JADX INFO: loaded from: classes.dex */
public final class AFLogger {
    private static final long AFInAppEventParameterName = System.currentTimeMillis();

    public static void AFKeystoreWrapper(String str, boolean z) {
        if (AFInAppEventParameterName(LogLevel.INFO)) {
            Log.i("AppsFlyer_6.4.2", AFInAppEventType(str, false));
        }
        if (z) {
            if (ak.valueOf == null) {
                ak.valueOf = new ak();
            }
            ak.valueOf.AFKeystoreWrapper(null, "I", AFInAppEventType(str, true));
        }
    }

    private static String AFInAppEventType(String str, boolean z) {
        if (str == null) {
            str = "null";
        }
        if (!z && LogLevel.VERBOSE.getLevel() > AppsFlyerProperties.getInstance().getInt(WXConfig.logLevel, LogLevel.NONE.getLevel())) {
            return str;
        }
        StringBuilder sb = new StringBuilder(Operators.BRACKET_START_STR);
        sb.append(System.currentTimeMillis() - AFInAppEventParameterName);
        sb.append(") [");
        sb.append(Thread.currentThread().getName());
        sb.append("] ");
        sb.append(str);
        return sb.toString();
    }

    private static void valueOf(String str, Throwable th, boolean z, boolean z2) {
        if (AFInAppEventParameterName(LogLevel.ERROR)) {
            if (str == null) {
                StringBuilder sb = new StringBuilder();
                sb.append(th.getClass().getSimpleName());
                sb.append(" at ");
                sb.append(th.getStackTrace()[0].toString());
                str = sb.toString();
            }
            String strAFInAppEventType = AFInAppEventType(str, false);
            if (z2) {
                Log.e("AppsFlyer_6.4.2", strAFInAppEventType, th);
            } else if (z) {
                Log.d("AppsFlyer_6.4.2", strAFInAppEventType);
            }
        }
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak akVar = ak.valueOf;
        Throwable cause = th.getCause();
        akVar.AFKeystoreWrapper("exception", th.getClass().getSimpleName(), ak.AFKeystoreWrapper(cause == null ? th.getMessage() : cause.getMessage(), cause == null ? th.getStackTrace() : cause.getStackTrace()));
        if (bc.values != null) {
            ag.AFKeystoreWrapper(bc.values).edit().putLong("exception_number", (bc.values == null ? -1L : ag.AFKeystoreWrapper(bc.values).getLong("exception_number", 0L)) + 1).apply();
        }
    }

    public static void AFInAppEventParameterName(String str) {
        if (AFInAppEventParameterName(LogLevel.WARNING)) {
            Log.w("AppsFlyer_6.4.2", AFInAppEventType(str, false));
        }
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak.valueOf.AFKeystoreWrapper(null, "W", AFInAppEventType(str, true));
    }

    public static void values(String str) {
        if (AFInAppEventParameterName(LogLevel.VERBOSE)) {
            Log.v("AppsFlyer_6.4.2", AFInAppEventType(str, false));
        }
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak.valueOf.AFKeystoreWrapper(null, "V", AFInAppEventType(str, true));
    }

    private static boolean AFInAppEventParameterName(LogLevel logLevel) {
        return logLevel.getLevel() <= AppsFlyerProperties.getInstance().getInt(WXConfig.logLevel, LogLevel.NONE.getLevel());
    }

    public static void valueOf(String str) {
        if (!AFKeystoreWrapper()) {
            Log.d("AppsFlyer_6.4.2", AFInAppEventType(str, false));
        }
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak.valueOf.AFKeystoreWrapper(null, "F", str);
    }

    private static boolean AFKeystoreWrapper() {
        return AppsFlyerProperties.getInstance().isLogsDisabledCompletely();
    }

    public static void AFKeystoreWrapper(String str) {
        AFKeystoreWrapper(str, true);
    }

    public static void valueOf(String str, Throwable th) {
        valueOf(str, th, true, false);
    }

    public static void values(String str, Throwable th) {
        valueOf(str, th, true, true);
    }

    public static void AFKeystoreWrapper(Throwable th) {
        valueOf(null, th, false, false);
    }

    public static void init(String str) {
        AFInAppEventParameterName(str);
    }

    public enum LogLevel {
        NONE(0),
        ERROR(1),
        WARNING(2),
        INFO(3),
        DEBUG(4),
        VERBOSE(5);

        private int AFInAppEventParameterName;

        LogLevel(int i) {
            this.AFInAppEventParameterName = i;
        }

        public final int getLevel() {
            return this.AFInAppEventParameterName;
        }
    }

    public static void AFInAppEventType(String str) {
        if (AFInAppEventParameterName(LogLevel.DEBUG)) {
            Log.d("AppsFlyer_6.4.2", AFInAppEventType(str, false));
        }
        if (ak.valueOf == null) {
            ak.valueOf = new ak();
        }
        ak.valueOf.AFKeystoreWrapper(null, "D", AFInAppEventType(str, true));
    }
}
