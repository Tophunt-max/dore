package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import com.taobao.weex.el.parse.Operators;

/* JADX INFO: loaded from: classes.dex */
public final class am {
    private static String AFKeystoreWrapper;
    private static String valueOf;

    static void valueOf(String str) {
        AFKeystoreWrapper = str;
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            if (i == 0 || i == str.length() - 1) {
                sb.append(str.charAt(i));
            } else {
                sb.append(Operators.MUL);
            }
        }
        valueOf = sb.toString();
    }

    public static void AFInAppEventParameterName(String str) {
        if (AFKeystoreWrapper == null) {
            valueOf(AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY));
        }
        String str2 = AFKeystoreWrapper;
        if (str2 != null) {
            AFLogger.AFKeystoreWrapper(str.replace(str2, valueOf));
        }
    }
}
