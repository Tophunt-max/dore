package com.igexin.push.config;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SDKUrlConfig {
    private static String[] b = null;
    private static String c = "HZ";
    private static volatile String e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f125a = new Object();
    private static String[] d = {"socket://sdk.open.talk.igexin.com:5224", "socket://sdk.open.talk.getui.net:5224", "socket://sdk.open.talk.gepush.com:5224"};
    public static String[] XFR_ADDRESS_BAK = {"socket://43.231.145.10:5224"};
    public static String[] BI_ADDRESS_IPS = {"https://sdk-open-phone.getui.com/api.php"};
    public static String[] CONFIG_ADDRESS_IPS = {"https://c-hzgt2.getui.com/api.php"};

    public static String getBiUploadServiceUrl() {
        return BI_ADDRESS_IPS[0] + "?format=json&t=1";
    }

    public static String getCmAddress() {
        return e == null ? d[0] : e;
    }

    public static String getConfigServiceUrl() {
        return CONFIG_ADDRESS_IPS[0] + "?format=json&t=1";
    }

    public static List<String> getDefaultXfrList() {
        String[] xfrAddress = getXfrAddress();
        ArrayList arrayList = new ArrayList();
        for (String str : xfrAddress) {
            if (!arrayList.contains(str)) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    public static String[] getIdcConfigUrl() {
        return b;
    }

    public static String getLocation() {
        return c;
    }

    public static String[] getXfrAddress() {
        String[] strArr;
        synchronized (f125a) {
            strArr = d;
        }
        return strArr;
    }

    public static boolean hasMultipleXfr() {
        return getDefaultXfrList().size() > 1;
    }

    public static void setCmAddress(String str) {
        com.igexin.b.a.c.b.a("set cm address : " + str);
        e = str;
    }

    public static void setIdcConfigUrl(String[] strArr) {
        b = strArr;
    }

    public static void setLocation(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.igexin.push.core.f.d = str;
        c = str;
    }

    public static void setXfrAddressIps(String[] strArr) {
        synchronized (f125a) {
            d = strArr;
        }
    }
}
