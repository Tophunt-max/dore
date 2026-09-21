package com.taobao.weex.utils;

import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public class OsVersion {
    private static boolean sIsAtLeastJB_MR2;

    static {
        sIsAtLeastJB_MR2 = getApiVersion() >= 18;
    }

    public static boolean isAtLeastJB_MR2() {
        return sIsAtLeastJB_MR2;
    }

    public static int getApiVersion() {
        return Build.VERSION.SDK_INT;
    }
}
