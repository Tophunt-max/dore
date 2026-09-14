package com.igexin.push.config;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.alibaba.android.bindingx.core.internal.BindingXConstants;
import com.igexin.push.core.a.s;
import com.igexin.push.core.r;
import com.igexin.sdk.PushBuildConfig;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
public class a implements com.igexin.push.core.c.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f126a = "com.igexin.push.config.a";
    private static a b;

    public static a a() {
        if (b == null) {
            b = new a();
        }
        return b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SQLiteDatabase sQLiteDatabase, int i, String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", Integer.valueOf(i));
        contentValues.put("value", str);
        sQLiteDatabase.replace(BindingXConstants.KEY_CONFIG, null, contentValues);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SQLiteDatabase sQLiteDatabase, int i, byte[] bArr) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", Integer.valueOf(i));
        contentValues.put("value", bArr);
        sQLiteDatabase.replace(BindingXConstants.KEY_CONFIG, null, contentValues);
    }

    @Override // com.igexin.push.core.c.a
    public void a(SQLiteDatabase sQLiteDatabase) {
    }

    public void a(String str) {
        com.igexin.b.a.b.c.b().a(new g(this, str), true, false);
    }

    public void b() {
        com.igexin.b.a.b.c.b().a(new b(this), false, true);
    }

    @Override // com.igexin.push.core.c.a
    public void b(SQLiteDatabase sQLiteDatabase) {
        byte[] blob;
        String string;
        String str;
        Cursor cursor = null;
        try {
            Cursor cursorQuery = sQLiteDatabase.query(BindingXConstants.KEY_CONFIG, new String[]{"id", "value"}, null, null, null, null, "id");
            if (cursorQuery != null) {
                while (cursorQuery.moveToNext()) {
                    try {
                        int i = cursorQuery.getInt(0);
                        if (i == 20 || i == 21 || i == 22 || i == 24 || i == 26 || i == 45 || i == 51 || i == 56 || i == 58 || i == 62) {
                            blob = cursorQuery.getBlob(1);
                            if (blob != null) {
                                blob = com.igexin.b.a.a.a.c(blob, com.igexin.push.core.f.B);
                            }
                            string = null;
                        } else {
                            try {
                                string = cursorQuery.getString(1);
                                blob = null;
                            } catch (Throwable th) {
                                str = f126a + "|" + th.toString();
                            }
                        }
                        if (blob != null || string != null) {
                            switch (i) {
                                case 1:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.f136a = Integer.valueOf(string).intValue();
                                    }
                                    break;
                                case 2:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.b = Integer.valueOf(string).intValue();
                                    }
                                    break;
                                case 3:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.c = Long.valueOf(string).longValue();
                                    }
                                    break;
                                case 4:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.f = Boolean.valueOf(string).booleanValue();
                                    }
                                    break;
                                case 6:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.g = Boolean.valueOf(string).booleanValue();
                                    }
                                    break;
                                case 7:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.h = Boolean.valueOf(string).booleanValue();
                                    }
                                    break;
                                case 8:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.j = Boolean.valueOf(string).booleanValue();
                                    }
                                    break;
                                case 9:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.k = Boolean.valueOf(string).booleanValue();
                                    }
                                    break;
                                case 13:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.l = Boolean.valueOf(string).booleanValue();
                                    }
                                    break;
                                case 14:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.m = Boolean.valueOf(string).booleanValue();
                                    }
                                    break;
                                case 15:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.d = Integer.valueOf(string).intValue();
                                    }
                                    break;
                                case 16:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.e = Integer.valueOf(string).intValue();
                                    }
                                    break;
                                case 17:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.n = Boolean.valueOf(string).booleanValue();
                                    }
                                    break;
                                case 18:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.o = Boolean.valueOf(string).booleanValue();
                                    }
                                    break;
                                case 19:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.p = Boolean.valueOf(string).booleanValue();
                                    }
                                    break;
                                case 21:
                                    k.r = new String(blob);
                                    continue;
                                case 22:
                                    k.s = new String(blob);
                                    continue;
                                case 23:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.t = Boolean.valueOf(string).booleanValue();
                                    }
                                    break;
                                case 24:
                                    m.a(new String(blob), false);
                                    continue;
                                case 25:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.v = Boolean.valueOf(string).booleanValue();
                                    }
                                    break;
                                case 26:
                                    try {
                                        SDKUrlConfig.setIdcConfigUrl(s.a(new JSONArray(new String(blob))));
                                        continue;
                                    } catch (Exception unused) {
                                    }
                                    break;
                                case 27:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.C = Integer.valueOf(string).intValue();
                                    }
                                    break;
                                case 28:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.D = string;
                                    }
                                    break;
                                case 29:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.E = Boolean.valueOf(string).booleanValue();
                                    }
                                    break;
                                case 30:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.F = string;
                                    }
                                    break;
                                case 40:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.G = Integer.valueOf(string).intValue();
                                    }
                                    break;
                                case 41:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.H = Integer.valueOf(string).intValue();
                                    }
                                    break;
                                case 42:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.I = Integer.valueOf(string).intValue();
                                    }
                                    break;
                                case 43:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.J = Integer.valueOf(string).intValue();
                                    }
                                    break;
                                case 45:
                                    k.K = new String(blob);
                                    str = f126a + "|read from db hideRightIconBlackList = " + k.K;
                                    break;
                                case 46:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.P = Boolean.valueOf(string).booleanValue();
                                    }
                                    break;
                                case 47:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.Q = Boolean.valueOf(string).booleanValue();
                                    }
                                    break;
                                case 48:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.R = Boolean.valueOf(string).booleanValue();
                                    }
                                    break;
                                case 49:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.S = Boolean.valueOf(string).booleanValue();
                                    }
                                    break;
                                case 50:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.T = Boolean.valueOf(string).booleanValue();
                                    }
                                    break;
                                case 51:
                                    k.L = new String(blob);
                                    com.igexin.b.a.c.b.a(f126a + "|read from db IDBlackList =" + k.L);
                                    if (TextUtils.isEmpty(k.L)) {
                                        continue;
                                    } else {
                                        r.a().d();
                                    }
                                    break;
                                case 52:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.U = Boolean.valueOf(string).booleanValue();
                                    }
                                    break;
                                case 53:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.X = string;
                                    }
                                    break;
                                case 54:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.V = Boolean.valueOf(string).booleanValue();
                                    }
                                    break;
                                case 55:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.M = Boolean.valueOf(string).booleanValue();
                                    }
                                    break;
                                case 56:
                                    k.N = new String(blob);
                                    str = f126a + "|read from db applinkDomains =" + k.N;
                                    break;
                                case 58:
                                    k.O = new String(blob);
                                    continue;
                                case 60:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.aa = string;
                                    }
                                    break;
                                case 61:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.i = Boolean.valueOf(string).booleanValue();
                                    }
                                    break;
                                case 62:
                                    k.Y = new String(blob);
                                    continue;
                                case 65:
                                    if (string.equals("null")) {
                                        continue;
                                    } else {
                                        k.W = Boolean.valueOf(string).booleanValue();
                                    }
                                    break;
                            }
                            com.igexin.b.a.c.b.a(str);
                        }
                    } catch (Throwable unused2) {
                        cursor = cursorQuery;
                        if (cursor != null) {
                            cursor.close();
                        }
                    }
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        } catch (Throwable unused3) {
        }
        com.igexin.b.a.c.b.a(f126a + "|current ver = " + PushBuildConfig.sdk_conf_version + ", last ver = " + com.igexin.push.core.f.L);
        if (PushBuildConfig.sdk_conf_version.equals(com.igexin.push.core.f.L)) {
            return;
        }
        com.igexin.push.core.c.h.a().f(PushBuildConfig.sdk_conf_version);
        com.igexin.push.core.c.h.a().e(0L);
    }

    public void b(String str) {
        com.igexin.b.a.b.c.b().a(new h(this, str), true, false);
    }

    public void c() {
        com.igexin.b.a.b.c.b().a(new c(this), false, true);
    }

    @Override // com.igexin.push.core.c.a
    public void c(SQLiteDatabase sQLiteDatabase) {
        a(sQLiteDatabase, 1, String.valueOf(k.f136a));
        a(sQLiteDatabase, 2, String.valueOf(k.b));
        a(sQLiteDatabase, 3, String.valueOf(k.c));
        a(sQLiteDatabase, 4, String.valueOf(k.f));
        a(sQLiteDatabase, 6, String.valueOf(k.g));
        a(sQLiteDatabase, 7, String.valueOf(k.h));
        a(sQLiteDatabase, 8, String.valueOf(k.j));
        a(sQLiteDatabase, 9, String.valueOf(k.k));
        a(sQLiteDatabase, 13, String.valueOf(k.l));
        a(sQLiteDatabase, 14, String.valueOf(k.m));
        a(sQLiteDatabase, 15, String.valueOf(k.d));
        a(sQLiteDatabase, 3, String.valueOf(k.c));
        a(sQLiteDatabase, 17, String.valueOf(k.n));
        a(sQLiteDatabase, 18, String.valueOf(k.o));
        a(sQLiteDatabase, 19, String.valueOf(k.p));
        a(sQLiteDatabase, 25, String.valueOf(k.v));
    }

    public void d() {
        com.igexin.b.a.b.c.b().a(new d(this), false, true);
    }

    public void e() {
        com.igexin.b.a.b.c.b().a(new e(this), false, true);
    }

    public void f() {
        com.igexin.b.a.b.c.b().a(new f(this), false, true);
    }
}
