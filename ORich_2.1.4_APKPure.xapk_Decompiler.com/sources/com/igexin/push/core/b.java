package com.igexin.push.core;

import android.os.Environment;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f163a = a(6, "pre_burypoint.", new String[]{"co.", "mi.", "gex.", "ins.", "dka.", "cti.", "on.", "notifi.", "cation.", "burying.", "point."});
    public static final String b = a(5, "pre_doaction.", new String[]{"com.", "ige.", "xin.", "sdk.", "act.", "ion.", "do.", "act.", "tion."});
    public static final String c = Environment.getExternalStorageDirectory() + "/Sdk/ImgCache/";
    public static final String d = Environment.getExternalStorageDirectory() + "/Sdk/WebCache/";
    public static int e = 0;
    public static int f = 2;
    public static int g = 3;
    public static int h = 4;
    public static int i = 11;
    public static int j = 5;
    public static int k = 6;
    public static int l = 7;
    public static int m = 8;
    public static int n = 9;
    public static int o = 10;
    public static int p = 0;
    public static int q = 1;
    public static int r = 2;
    public static String s = "com.igexin.sdk.PushService";
    public static String t = "com.igexin.sdk.coordinator.SdkMsgService";
    public static String u = "com.igexin.sdk.coordinator.GexinMsgService";
    public static String v = "com.igexin.sdk.GTPushService";

    public static String a(int i2, String str, String[] strArr) {
        if (i2 <= 0 || strArr == null || strArr.length <= 0) {
            return str;
        }
        Random random = new Random();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        for (int i3 = 0; i3 < i2; i3++) {
            stringBuffer.append(strArr[random.nextInt(strArr.length)]);
        }
        return stringBuffer.toString().substring(0, stringBuffer.toString().length() - 1);
    }
}
