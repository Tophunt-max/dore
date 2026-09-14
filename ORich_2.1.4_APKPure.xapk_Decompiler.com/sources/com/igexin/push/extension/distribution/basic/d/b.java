package com.igexin.push.extension.distribution.basic.d;

import android.content.ContentValues;
import android.database.Cursor;
import com.alibaba.android.bindingx.core.internal.BindingXConstants;
import com.igexin.push.extension.distribution.basic.c.g;
import com.taobao.weex.el.parse.Operators;
import io.dcloud.common.DHInterface.IApp;
import io.dcloud.common.constant.AbsoluteConst;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static b f306a;
    private static final String b = "EXT-" + b.class.getName();
    private static int c = 0;
    private static String d = g.n;
    private static boolean e = g.j;
    private static long f = g.k;
    private static long g = g.l;
    private static int h = g.o;
    private static String i = g.p;
    private static String j = g.q;
    private static boolean k = g.u;
    private static com.igexin.push.extension.distribution.basic.e.a l = null;

    public static b a() {
        if (f306a == null) {
            f306a = new b();
            l = new com.igexin.push.extension.distribution.basic.e.a(g.f304a);
        }
        return f306a;
    }

    public void a(int i2, String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(IApp.ConfigProperty.CONFIG_KEY, Integer.valueOf(i2));
        contentValues.put("value", str);
        l.a("extconfig", (String) null, contentValues);
    }

    public void a(int i2, byte[] bArr) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(IApp.ConfigProperty.CONFIG_KEY, Integer.valueOf(i2));
        contentValues.put("value", bArr);
        l.a("extconfig", (String) null, contentValues);
    }

    public void a(long j2) {
        g.g = j2;
        a(3, String.valueOf(j2));
    }

    public void a(byte[] bArr) {
        String str;
        try {
            StringBuilder sb = new StringBuilder();
            str = b;
            sb.append(str);
            sb.append("|parseSdkConfig resp data len = ");
            sb.append(bArr.length);
            com.igexin.b.a.c.b.a(sb.toString());
        } catch (Exception e2) {
            e = e2;
        }
        try {
            a(System.currentTimeMillis());
            JSONObject jSONObject = new JSONObject(new String(bArr));
            com.igexin.b.a.c.b.a(str + "|parseSdkConfig : " + jSONObject);
            if (jSONObject.has("result") && "ok".equals(jSONObject.getString("result"))) {
                c = g.e;
                if (jSONObject.has(BindingXConstants.KEY_CONFIG)) {
                    JSONObject jSONObject2 = new JSONObject(jSONObject.getString(BindingXConstants.KEY_CONFIG));
                    if (jSONObject2.has("sdk.ext.startservice.limit")) {
                        g.h = jSONObject2.getString("sdk.ext.startservice.limit");
                    }
                    if (jSONObject2.has("sdk.ext.guard.brandsdkrombl")) {
                        g.i = jSONObject2.getString("sdk.ext.guard.brandsdkrombl");
                    }
                    if (jSONObject2.has("sdk.ext.deviceid.sync.interval")) {
                        c = Integer.parseInt(jSONObject2.getString("sdk.ext.deviceid.sync.interval"));
                    }
                    if (jSONObject2.has("sdk.ext.guardactivity.first")) {
                        String string = jSONObject2.getString("sdk.ext.guardactivity.first");
                        if (string.equals(AbsoluteConst.TRUE) || string.equals(AbsoluteConst.FALSE)) {
                            e = Boolean.valueOf(string).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.ext.reportcid.offline.interval")) {
                        try {
                            f = Integer.valueOf(jSONObject2.getString("sdk.ext.reportcid.offline.interval")).intValue() * 1000;
                        } catch (Exception unused) {
                        }
                    }
                    if (jSONObject2.has("sdk.ext.reportcid.restart.interval")) {
                        try {
                            g = Integer.valueOf(jSONObject2.getString("sdk.ext.reportcid.restart.interval")).intValue() * 1000;
                        } catch (Exception unused2) {
                        }
                    }
                    if (jSONObject2.has("sdk.ext.foreground.phonelist")) {
                        d = jSONObject2.getString("sdk.ext.foreground.phonelist");
                    }
                    if (jSONObject2.has("sdk.ext.httpdata.maxsize")) {
                        try {
                            h = Integer.valueOf(jSONObject2.getString("sdk.ext.httpdata.maxsize")).intValue();
                        } catch (Exception unused3) {
                        }
                    }
                    if (jSONObject2.has("sdk.ext.guardgactivity.blacklist")) {
                        i = jSONObject2.getString("sdk.ext.guardgactivity.blacklist").replace(Operators.SPACE_STR, "");
                    }
                    if (jSONObject2.has("sdk.ext.guardgactivity.pmblacklist")) {
                        j = jSONObject2.getString("sdk.ext.guardgactivity.pmblacklist");
                    }
                    if (jSONObject2.has("sdk.miui.wakeup.enable")) {
                        k = jSONObject2.optBoolean("sdk.miui.wakeup.enable", false);
                    }
                    c();
                }
            }
        } catch (Exception e3) {
            e = e3;
            com.igexin.b.a.c.b.a(b + "|parseSdkConfig error|" + e.getMessage());
        }
    }

    public void b() {
        String str;
        Cursor cursorA = null;
        try {
            cursorA = g.f.a("select key, value from extconfig order by key", (String[]) null);
            if (cursorA != null) {
                while (cursorA.moveToNext()) {
                    int i2 = cursorA.getInt(cursorA.getColumnIndex(IApp.ConfigProperty.CONFIG_KEY));
                    if (i2 == 11 || i2 == 12 || i2 == 14) {
                        byte[] blob = cursorA.getBlob(cursorA.getColumnIndex("value"));
                        if (blob != null) {
                            blob = com.igexin.b.b.a.c(blob);
                        }
                        if (blob != null) {
                            str = new String(blob);
                        }
                    } else {
                        try {
                            str = cursorA.getString(cursorA.getColumnIndex("value"));
                        } catch (Throwable unused) {
                        }
                    }
                    switch (i2) {
                        case 2:
                            g.e = Integer.valueOf(str).intValue();
                            continue;
                        case 3:
                            g.g = Long.parseLong(str);
                            continue;
                        case 4:
                            g.d = str;
                            continue;
                        case 5:
                            g.j = Boolean.parseBoolean(str);
                            continue;
                        case 6:
                            g.m = Long.valueOf(str).longValue();
                            continue;
                        case 7:
                            g.k = Long.valueOf(str).longValue();
                            continue;
                        case 8:
                            g.l = Long.valueOf(str).longValue();
                            continue;
                        case 9:
                            g.n = str;
                            continue;
                        case 10:
                            g.o = Integer.valueOf(str).intValue();
                            continue;
                        case 11:
                            g.p = str;
                            continue;
                        case 12:
                            g.q = str;
                            continue;
                        case 13:
                            if (str.equals("null")) {
                                continue;
                            } else {
                                g.h = str;
                            }
                            break;
                        case 14:
                            g.i = str;
                            continue;
                        case 15:
                            g.u = Boolean.parseBoolean(str);
                            com.igexin.b.a.c.b.a(b + "|read miuiWakeupEnable = " + str);
                            continue;
                        default:
                            continue;
                    }
                }
            }
            if (cursorA == null) {
                return;
            }
        } catch (Exception unused2) {
            if (cursorA == null) {
                return;
            }
        } catch (Throwable th) {
            if (cursorA != null) {
                cursorA.close();
            }
            throw th;
        }
        cursorA.close();
    }

    public void b(long j2) {
        g.m = j2;
        a(6, String.valueOf(j2));
    }

    public void c() {
        int i2 = g.e;
        int i3 = c;
        if (i2 != i3) {
            g.e = i3;
            a(2, String.valueOf(c));
        }
        boolean z = g.j;
        boolean z2 = e;
        if (z != z2) {
            g.j = z2;
            a(5, String.valueOf(e));
        }
        long j2 = g.k;
        long j3 = f;
        if (j2 != j3) {
            g.k = j3;
            a(7, String.valueOf(f));
        }
        long j4 = g.l;
        long j5 = g;
        if (j4 != j5) {
            g.l = j5;
            a(8, String.valueOf(g));
        }
        if (!g.n.equals(d)) {
            g.n = d;
            a(9, d);
        }
        int i4 = g.o;
        int i5 = h;
        if (i4 != i5) {
            g.o = i5;
            a(10, String.valueOf(h));
        }
        if (!g.p.equals(i)) {
            g.p = i;
            a(11, com.igexin.b.b.a.b(i.getBytes()));
        }
        if (!g.q.equals(j)) {
            g.q = j;
            a(12, com.igexin.b.b.a.b(j.getBytes()));
        }
        boolean z3 = g.u;
        boolean z4 = k;
        if (z3 != z4) {
            g.u = z4;
            a(15, String.valueOf(k));
        }
        a(13, g.h);
        a(14, com.igexin.b.b.a.b(g.i.getBytes()));
    }
}
