package com.igexin.push.core.e;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private static volatile a b = null;
    private static Context c = null;
    private static boolean d = false;
    private static boolean e = false;
    private static String g;
    private static ThreadPoolExecutor f = new ThreadPoolExecutor(0, 1, 10, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c f230a = d.a(Build.MANUFACTURER.toUpperCase());

    public static a a() {
        if (b == null) {
            synchronized (a.class) {
                if (b == null) {
                    b = new a();
                }
            }
        }
        return b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context) {
        c cVar = f230a;
        if (cVar == null || context == null) {
            return;
        }
        c = context.getApplicationContext();
        boolean zC = c();
        e = zC;
        if (zC) {
            d = cVar.c(c);
        }
    }

    private boolean c() {
        c cVar;
        try {
            Context context = c;
            if (context == null || (cVar = f230a) == null) {
                return false;
            }
            return cVar.a(context);
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String d() {
        c cVar;
        try {
            Context context = c;
            if (context != null && (cVar = f230a) != null && d) {
                return cVar.b(context);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public void a(Context context, e eVar) {
        if (!TextUtils.isEmpty(g) && eVar != null) {
            eVar.a(true, g);
        } else {
            try {
                f.execute(new b(this, context, eVar));
            } catch (Throwable unused) {
            }
        }
    }
}
