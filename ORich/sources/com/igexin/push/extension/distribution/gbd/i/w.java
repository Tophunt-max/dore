package com.igexin.push.extension.distribution.gbd.i;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.database.Cursor;
import android.net.Uri;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
public class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f416a = "OaidManager";
    private static w b;
    private Context c;
    private y d;
    private volatile boolean e;
    private Lock f;
    private Condition g;
    private CopyOnWriteArrayList<String> h;
    private String i;
    private String j;
    private String k;
    private String l;
    private String m;
    private String n;
    private String o;
    private ServiceConnection p;

    private w() {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f = reentrantLock;
        this.g = reentrantLock.newCondition();
        this.h = new CopyOnWriteArrayList<>();
        this.p = new x(this);
        this.i = k.r().toLowerCase();
        this.c = com.igexin.push.extension.distribution.gbd.c.c.f373a;
        this.h.add("xiaomi");
        this.h.add("redmi");
        this.h.add("blackshark");
        this.h.add("huawei");
        this.h.add("hua_wei");
        this.h.add("honor");
        this.h.add("vivo");
        this.h.add("oppo");
        this.h.add("meizu");
        this.h.add("samsung");
    }

    public static w a() {
        if (b == null) {
            synchronized (w.class) {
                if (b == null) {
                    b = new w();
                }
            }
        }
        return b;
    }

    private void b(Context context) {
        try {
            j.b(f416a, "start bind oaidForHUAWEI service");
            Intent intent = new Intent("com.uodis.opendevice.OPENIDS_SERVICE");
            intent.setPackage("com.huawei.hwid");
            this.c.bindService(intent, this.p, 1);
        } catch (Throwable th) {
            j.a(th);
        }
    }

    private String c(Context context) {
        try {
            Class<?> cls = Class.forName("com.android.id.impl.IdProviderImpl");
            Object objInvoke = cls.getMethod("getOAID", Context.class).invoke(cls.newInstance(), context);
            this.e = true;
            return String.valueOf(objInvoke);
        } catch (Throwable th) {
            j.a(th);
            return "";
        }
    }

    private String d(Context context) {
        Cursor cursorQuery = context.getContentResolver().query(Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID"), null, null, null, null);
        try {
            if (cursorQuery == null) {
                cursorQuery.close();
                return "";
            }
            try {
                cursorQuery.moveToFirst();
                String string = cursorQuery.getString(cursorQuery.getColumnIndex("value"));
                this.e = true;
                try {
                    cursorQuery.close();
                } catch (Throwable th) {
                    j.a(th);
                }
                return string;
            } catch (Throwable th2) {
                try {
                    j.a(th2);
                    cursorQuery.close();
                    return "";
                } catch (Throwable th3) {
                    try {
                        cursorQuery.close();
                    } catch (Throwable th4) {
                        j.a(th4);
                    }
                    throw th3;
                }
            }
        } catch (Throwable th5) {
            j.a(th5);
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        try {
            this.j = this.d.a();
            this.e = true;
            j.a(f416a, "get oaidForHUAWEI result>> oaidForHUAWEI:" + this.j);
        } catch (Throwable th) {
            j.a(th);
        }
    }

    private String e(Context context) {
        try {
            Cursor cursorQuery = context.getContentResolver().query(Uri.parse("content://com.meizu.flyme.openidsdk/"), null, null, new String[]{"oaid"}, null);
            if (cursorQuery == null) {
                return "";
            }
            cursorQuery.moveToFirst();
            String string = cursorQuery.getString(cursorQuery.getColumnIndex("value"));
            this.e = true;
            return string;
        } catch (Throwable th) {
            j.a(th);
            return "";
        }
    }

    private String f(Context context) {
        try {
            z zVar = new z();
            if (!zVar.a(context) || !zVar.b(context)) {
                return "";
            }
            String strC = zVar.c(context);
            this.e = true;
            return strC;
        } catch (Throwable th) {
            j.a(th);
            return "";
        }
    }

    private String g(Context context) {
        try {
            aa aaVar = new aa();
            if (!aaVar.a(context) || !aaVar.b(context)) {
                return "";
            }
            String strC = aaVar.c(context);
            this.e = true;
            return strC;
        } catch (Throwable th) {
            j.a(th);
            return "";
        }
    }

    public void a(Context context) {
        try {
            switch (this.i) {
                case "xiaomi":
                case "redmi":
                case "blackshark":
                    this.k = c(context);
                    break;
                case "huawei":
                case "hua_wei":
                case "honor":
                    b(context);
                    break;
                case "vivo":
                    this.l = d(context);
                    break;
                case "meizu":
                    this.n = e(context);
                    break;
                case "oppo":
                    this.m = f(context);
                    break;
                case "samsung":
                    this.o = g(context);
                    break;
            }
        } catch (Throwable th) {
            j.a(th);
        }
    }

    public boolean a(String str) {
        return this.h.contains(str.toLowerCase());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String b() {
        /*
            Method dump skipped, instruction units count: 262
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.gbd.i.w.b():java.lang.String");
    }
}
