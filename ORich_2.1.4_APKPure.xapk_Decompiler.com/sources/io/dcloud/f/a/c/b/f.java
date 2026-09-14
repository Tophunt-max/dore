package io.dcloud.f.a.c.b;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import io.dcloud.ads.base.entry.AdData;
import io.dcloud.f.b.a;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f623a = 1;
    private static io.dcloud.f.b.a b;
    private static SharedPreferences c;
    private static f d;
    private static Map<String, io.dcloud.ads.base.entry.a> e = new ConcurrentHashMap();

    f() {
    }

    private io.dcloud.f.b.a a(Context context) {
        if (b == null) {
            synchronized (f.class) {
                if (b == null) {
                    try {
                        b = io.dcloud.f.b.a.a(new File(context.getFilesDir(), "dcloudcache"), f623a, 1, 10240L);
                    } catch (IOException unused) {
                    }
                }
            }
        }
        return b;
    }

    private static void c(Context context) {
        if (c == null) {
            synchronized (f.class) {
                if (c == null) {
                    c = context.getSharedPreferences("dcloudcache", 0);
                }
            }
        }
    }

    public Map<String, io.dcloud.ads.base.entry.a> b(Context context) {
        c(context);
        Map<String, ?> all = c.getAll();
        if (all != null) {
            for (String str : all.keySet()) {
                if (!TextUtils.isEmpty(str) && !e.containsKey(str)) {
                    io.dcloud.ads.base.entry.a aVar = new io.dcloud.ads.base.entry.a(str);
                    aVar.a((String) all.get(str));
                    e.put(str, aVar);
                }
            }
        }
        return e;
    }

    public static f a() {
        if (d == null) {
            synchronized (f.class) {
                if (d == null) {
                    d = new f();
                    e.clear();
                }
            }
        }
        return d;
    }

    public void b(Context context, String str) {
        e.remove(str);
        c(context);
        SharedPreferences.Editor editorEdit = c.edit();
        editorEdit.remove(str);
        editorEdit.apply();
        try {
            a(context).d(str);
        } catch (IOException unused) {
        }
    }

    private void a(Context context, String str, String str2) {
        c(context);
        SharedPreferences.Editor editorEdit = c.edit();
        editorEdit.putString(str, str2);
        editorEdit.apply();
    }

    public void a(Context context, AdData adData, String str) {
        io.dcloud.ads.base.entry.a aVar = new io.dcloud.ads.base.entry.a(adData.j());
        aVar.a(adData.h());
        aVar.a(adData);
        e.put(adData.j(), aVar);
        try {
            a(context, adData.j(), adData.h());
            a.c cVarA = a(context).a(adData.j());
            OutputStream outputStreamA = cVarA.a(0);
            outputStreamA.write(str.getBytes());
            outputStreamA.close();
            cVarA.b();
            a(context).flush();
        } catch (Exception unused) {
        }
    }

    public String a(Context context, String str) {
        try {
            return a(context).b(str).b(0);
        } catch (Exception unused) {
            return null;
        }
    }
}
