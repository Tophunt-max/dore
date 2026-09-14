package com.igexin.b.a.c;

import android.util.Log;
import com.igexin.push.config.n;
import com.igexin.push.core.f;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f87a = n.f138a.equals("debug");

    public static void a(String str) {
        if (f87a || (f.M && f.N >= System.currentTimeMillis())) {
            com.igexin.push.g.a.i().a(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SSS", Locale.getDefault()).format(new Date()) + "|" + str);
        }
    }

    public static void a(String str, String str2) {
        if (f87a) {
            Log.d(str, str2);
        }
    }

    public static void b(String str, String str2) {
        if (f87a) {
            Log.i(str, str2);
        }
    }
}
