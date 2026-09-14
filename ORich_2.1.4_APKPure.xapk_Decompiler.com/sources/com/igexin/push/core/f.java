package com.igexin.push.core;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.database.Cursor;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import com.igexin.assist.sdk.AssistPushConsts;
import com.igexin.push.config.SDKUrlConfig;
import com.igexin.push.core.bean.PushTaskBean;
import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.Timer;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class f {
    public static String A = null;
    public static String B = null;
    public static String P = null;
    public static String S = null;
    public static String T = null;
    public static String U = null;
    public static String V = null;
    public static String W = null;
    public static String X = null;
    public static String Y = null;
    public static byte[] Z = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f238a = "";
    public static int aA = 0;
    public static byte[] aB = null;
    public static String aC = null;
    private static Map<String, Integer> aD = null;
    public static boolean aa = false;
    public static boolean ab = false;
    public static boolean ac = false;
    public static Map<String, PushTaskBean> ad = null;
    public static Map<String, Integer> ae = null;
    public static Set<String> af = null;
    public static HashMap<String, Timer> ag = null;
    public static HashMap<String, com.igexin.push.e.c.c> ah = null;
    public static HashMap<String, Long> ai = null;
    public static Map<String, String> ak = null;
    public static String ao = null;
    public static com.igexin.push.g.b.h ap = null;
    public static long aq = 0;
    public static String ar = null;
    public static String as = null;
    public static String at = null;
    public static String au = null;
    public static String av = null;
    public static String aw = null;
    public static long ax = 0;
    public static boolean ay = false;
    public static int az = 0;
    public static String b = "";
    public static String c = "";
    public static String d = "";
    public static String e = "";
    public static Context f;
    public static volatile boolean i;
    public static volatile boolean j;
    public static volatile boolean l;
    public static volatile boolean m;
    public static String s;
    public static String t;
    public static String u;
    public static String v;
    public static String w;
    public static String x;
    public static String y;
    public static String z;
    public static AtomicBoolean g = new AtomicBoolean(false);
    public static boolean h = true;
    public static boolean k = true;
    public static boolean n = true;
    public static int o = 0;
    public static int p = 0;
    public static int q = 0;
    public static long r = 0;
    public static String C = "";
    public static long D = -1;
    public static long E = -1;
    public static long F = 0;
    public static long G = 0;
    public static long H = 0;
    public static long I = 0;
    public static long J = 0;
    public static long K = 0;
    public static String L = null;
    public static boolean M = com.igexin.push.config.n.f138a.equals("debug");
    public static long N = 0;
    public static long O = 0;
    public static long Q = 0;
    public static int R = 0;
    public static int aj = 0;
    public static int al = 0;
    public static int am = 0;
    public static int an = 0;

    public static int a(String str, boolean z2) {
        int iIntValue;
        synchronized (f.class) {
            if (aD.get(str) == null) {
                aD.put(str, 0);
            }
            iIntValue = aD.get(str).intValue();
            if (z2) {
                iIntValue--;
                aD.put(str, Integer.valueOf(iIntValue));
                if (iIntValue == 0) {
                    aD.remove(str);
                }
            }
        }
        return iIntValue;
    }

    public static String a() {
        return SDKUrlConfig.getConfigServiceUrl();
    }

    public static void a(long j2) {
        r = j2;
        s = com.igexin.b.b.a.a(String.valueOf(j2));
    }

    public static boolean a(Context context) {
        f = context;
        e = context.getPackageName();
        if (!d()) {
            com.igexin.b.a.c.b.a("CoreRuntimeInfo|parseManifests failed");
            return false;
        }
        Z = com.igexin.b.b.a.a(f238a + c + b + context.getPackageName()).getBytes();
        c();
        b();
        e();
        h = com.igexin.push.util.a.g();
        ad = new ConcurrentHashMap();
        ae = new HashMap();
        af = new HashSet();
        ag = new HashMap<>();
        ah = new HashMap<>();
        ai = new HashMap<>();
        ak = new HashMap();
        i = new com.igexin.sdk.a.e(context).b();
        j = new com.igexin.sdk.a.d(context).c();
        aD = new HashMap();
        f();
        ay = true;
        com.igexin.b.a.c.b.a("CoreRuntimeInfo|getui sdk init success, isSdkOn = " + i + ", isPushOn = " + j);
        return true;
    }

    public static boolean a(String str, Integer num, boolean z2) {
        synchronized (f.class) {
            int iIntValue = num.intValue();
            if (z2 && aD.get(str) != null && (iIntValue = aD.get(str).intValue() + num.intValue()) == 0) {
                aD.remove(str);
                return false;
            }
            aD.put(str, Integer.valueOf(iIntValue));
            return true;
        }
    }

    private static void b() {
        File[] fileArrListFiles;
        if (com.igexin.push.util.t.a(f)) {
            try {
                File file = new File("/sdcard/libs/");
                if (file.exists() && file.isFile()) {
                    com.igexin.b.a.c.b.a("CoreRuntimeInfo|libs is file not directory, delete libs file ++++");
                    file.delete();
                }
                if (!file.exists() && !file.mkdir()) {
                    com.igexin.b.a.c.b.a("CoreRuntimeInfo|create libs directory failed ++++++");
                }
                f.getFilesDir();
                try {
                    File file2 = new File(Environment.getExternalStorageDirectory().getPath() + "/system/tmp/local");
                    if (file2.exists() && (fileArrListFiles = file2.listFiles(new g())) != null && fileArrListFiles.length > 0) {
                        for (File file3 : fileArrListFiles) {
                            file3.delete();
                        }
                    }
                } catch (Throwable th) {
                    com.igexin.b.a.c.b.a("CoreRuntimeInfo|" + th.toString());
                }
                T = "/sdcard/libs//" + e + ".db";
                U = "/sdcard/libs//com.igexin.sdk.deviceId.db";
                V = "/sdcard/libs//app.db";
                W = "/sdcard/libs//imsi.db";
                S = "/sdcard/libs//" + e + ".properties";
                Y = "/sdcard/libs//" + e + ".bin";
            } catch (Throwable th2) {
                com.igexin.b.a.c.b.a("CoreRuntimeInfo|initFile exception = " + th2.toString());
            }
        }
    }

    private static void c() {
        try {
            PackageInfo packageInfo = f.getPackageManager().getPackageInfo(e, 4096);
            if (packageInfo == null || packageInfo.requestedPermissions == null) {
                return;
            }
            for (String str : packageInfo.requestedPermissions) {
            }
        } catch (Exception e2) {
            com.igexin.b.a.c.b.a("CoreRuntimeInfo|init exception : " + e2.toString());
        }
    }

    private static boolean d() {
        try {
            ApplicationInfo applicationInfo = f.getPackageManager().getApplicationInfo(e, 128);
            if (applicationInfo != null && applicationInfo.metaData != null) {
                String string = applicationInfo.metaData.getString(AssistPushConsts.GETUI_APPID);
                String string2 = applicationInfo.metaData.getString(AssistPushConsts.GETUI_APPSECRET);
                String string3 = applicationInfo.metaData.getString(AssistPushConsts.GETUI_APPKEY);
                if (string != null) {
                    string = string.trim();
                }
                if (string2 != null) {
                    string2 = string2.trim();
                }
                if (string3 != null) {
                    string3 = string3.trim();
                }
                if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(string2) && !TextUtils.isEmpty(string3)) {
                    f238a = string;
                    b = string3;
                    c = string2;
                    d = SDKUrlConfig.getLocation();
                    return true;
                }
                com.igexin.b.a.c.b.a("CoreRuntimeInfo|getui sdk init error, missing parm #####");
            }
            return false;
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("CoreRuntimeInfo|get ApplicationInfo meta data exception :" + th.toString());
            return false;
        }
    }

    private static void e() {
        if (Build.VERSION.SDK_INT < 29 && com.igexin.push.util.t.a(f) && f.getPackageManager().checkPermission("android.permission.READ_PHONE_STATE", f.getPackageName()) == 0) {
            u = com.igexin.push.util.p.a(f);
            v = com.igexin.push.util.p.b(f);
        }
    }

    private static void f() {
        Cursor cursorA = null;
        try {
            try {
                cursorA = e.a().i().a("message", null, null, null, null);
                if (cursorA != null) {
                    aA = cursorA.getCount();
                }
                if (cursorA == null) {
                }
            } finally {
                if (cursorA != null) {
                    cursorA.close();
                }
            }
        } catch (Throwable unused) {
            com.igexin.b.a.c.b.a("CoreRuntimeInfogetMessageTableNum error");
        }
    }
}
