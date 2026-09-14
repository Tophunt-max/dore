package com.igexin.push.core.c;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import com.igexin.push.util.EncryptUtils;
import com.taobao.weex.el.parse.Operators;
import java.util.Map;
import java.util.Random;
import java.util.TreeMap;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class h implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f202a = "com.igexin.push.core.c.h";
    private static h b;
    private Map<String, String> c = new TreeMap();
    private boolean d;

    private h() {
    }

    public static h a() {
        if (b == null) {
            b = new h();
        }
        return b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SQLiteDatabase sQLiteDatabase, int i, String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", Integer.valueOf(i));
        contentValues.put("value", str);
        sQLiteDatabase.replace("runtime", null, contentValues);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(SQLiteDatabase sQLiteDatabase, int i, byte[] bArr) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", Integer.valueOf(i));
        contentValues.put("value", bArr);
        sQLiteDatabase.replace("runtime", null, contentValues);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0051 A[PHI: r11
      0x0051: PHI (r11v3 android.database.Cursor) = (r11v2 android.database.Cursor), (r11v4 android.database.Cursor) binds: [B:21:0x004f, B:14:0x0044] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private byte[] a(android.database.sqlite.SQLiteDatabase r11, int r12) throws java.lang.Throwable {
        /*
            r10 = this;
            java.lang.String r0 = "value"
            r1 = 0
            java.lang.String r3 = "runtime"
            java.lang.String[] r4 = new java.lang.String[]{r0}     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L4e
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L4e
            r2.<init>()     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L4e
            java.lang.String r5 = "id="
            r2.append(r5)     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L4e
            r2.append(r12)     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L4e
            java.lang.String r5 = r2.toString()     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L4e
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            r2 = r11
            android.database.Cursor r11 = r2.query(r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L47 java.lang.Exception -> L4e
            if (r11 == 0) goto L44
            boolean r12 = r11.moveToFirst()     // Catch: java.lang.Throwable -> L3f java.lang.Exception -> L42
            if (r12 == 0) goto L44
            int r12 = r11.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L3f java.lang.Exception -> L42
            byte[] r12 = r11.getBlob(r12)     // Catch: java.lang.Throwable -> L3f java.lang.Exception -> L42
            java.lang.String r0 = com.igexin.push.core.f.B     // Catch: java.lang.Throwable -> L3f java.lang.Exception -> L42
            byte[] r12 = com.igexin.b.a.a.a.c(r12, r0)     // Catch: java.lang.Throwable -> L3f java.lang.Exception -> L42
            if (r11 == 0) goto L3e
            r11.close()
        L3e:
            return r12
        L3f:
            r12 = move-exception
            r1 = r11
            goto L48
        L42:
            goto L4f
        L44:
            if (r11 == 0) goto L54
            goto L51
        L47:
            r12 = move-exception
        L48:
            if (r1 == 0) goto L4d
            r1.close()
        L4d:
            throw r12
        L4e:
            r11 = r1
        L4f:
            if (r11 == 0) goto L54
        L51:
            r11.close()
        L54:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.core.c.h.a(android.database.sqlite.SQLiteDatabase, int):byte[]");
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x004b A[PHI: r11
      0x004b: PHI (r11v3 android.database.Cursor) = (r11v2 android.database.Cursor), (r11v4 android.database.Cursor) binds: [B:21:0x0049, B:14:0x003e] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String b(android.database.sqlite.SQLiteDatabase r11, int r12) throws java.lang.Throwable {
        /*
            r10 = this;
            java.lang.String r0 = "value"
            r1 = 0
            java.lang.String r3 = "runtime"
            java.lang.String[] r4 = new java.lang.String[]{r0}     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L48
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L48
            r2.<init>()     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L48
            java.lang.String r5 = "id="
            r2.append(r5)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L48
            r2.append(r12)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L48
            java.lang.String r5 = r2.toString()     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L48
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            r2 = r11
            android.database.Cursor r11 = r2.query(r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L48
            if (r11 == 0) goto L3e
            boolean r12 = r11.moveToFirst()     // Catch: java.lang.Throwable -> L39 java.lang.Exception -> L3c
            if (r12 == 0) goto L3e
            int r12 = r11.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L39 java.lang.Exception -> L3c
            java.lang.String r12 = r11.getString(r12)     // Catch: java.lang.Throwable -> L39 java.lang.Exception -> L3c
            if (r11 == 0) goto L38
            r11.close()
        L38:
            return r12
        L39:
            r12 = move-exception
            r1 = r11
            goto L42
        L3c:
            goto L49
        L3e:
            if (r11 == 0) goto L4e
            goto L4b
        L41:
            r12 = move-exception
        L42:
            if (r1 == 0) goto L47
            r1.close()
        L47:
            throw r12
        L48:
            r11 = r1
        L49:
            if (r11 == 0) goto L4e
        L4b:
            r11.close()
        L4e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.core.c.h.b(android.database.sqlite.SQLiteDatabase, int):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004b A[PHI: r1
      0x004b: PHI (r1v3 android.database.Cursor) = (r1v2 android.database.Cursor), (r1v4 android.database.Cursor) binds: [B:15:0x0049, B:8:0x003e] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void e(android.database.sqlite.SQLiteDatabase r11) {
        /*
            r10 = this;
            java.lang.String r0 = "value"
            r1 = 0
            java.lang.String r3 = "runtime"
            java.lang.String[] r4 = new java.lang.String[]{r0}     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L48
            java.lang.String r5 = "id=?"
            java.lang.String r2 = "25"
            java.lang.String[] r6 = new java.lang.String[]{r2}     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L48
            r7 = 0
            r8 = 0
            r9 = 0
            r2 = r11
            android.database.Cursor r1 = r2.query(r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L48
            if (r1 == 0) goto L3e
            boolean r11 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L48
            if (r11 == 0) goto L3e
            java.lang.String r11 = new java.lang.String     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L48
            int r0 = r1.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L48
            byte[] r0 = r1.getBlob(r0)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L48
            android.content.Context r2 = com.igexin.push.core.f.f     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L48
            java.lang.String r2 = r2.getPackageName()     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L48
            java.lang.String r2 = com.igexin.b.b.a.a(r2)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L48
            byte[] r0 = com.igexin.b.a.a.a.c(r0, r2)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L48
            r11.<init>(r0)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L48
            com.igexin.push.core.f.B = r11     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L48
        L3e:
            if (r1 == 0) goto L4e
            goto L4b
        L41:
            r11 = move-exception
            if (r1 == 0) goto L47
            r1.close()
        L47:
            throw r11
        L48:
            if (r1 == 0) goto L4e
        L4b:
            r1.close()
        L4e:
            java.lang.String r11 = com.igexin.push.core.f.B
            if (r11 != 0) goto L61
            java.lang.String r11 = com.igexin.push.core.f.u
            if (r11 != 0) goto L59
            java.lang.String r11 = "cantgetimei"
            goto L5b
        L59:
            java.lang.String r11 = com.igexin.push.core.f.u
        L5b:
            java.lang.String r11 = com.igexin.b.b.a.a(r11)
            com.igexin.push.core.f.B = r11
        L61:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.core.c.h.e(android.database.sqlite.SQLiteDatabase):void");
    }

    private void f() {
        String string = com.igexin.push.core.f.u;
        if (TextUtils.isEmpty(string) || string.length() <= 8) {
            if (Build.VERSION.SDK_INT < 26) {
                string = "V" + com.igexin.push.util.p.f();
            }
            if (string == null || string.length() <= 8) {
                try {
                    StringBuilder sb = new StringBuilder();
                    sb.append("V");
                    sb.append(com.igexin.b.b.a.a(i() + com.igexin.push.core.f.e + UUID.randomUUID()));
                    string = sb.toString();
                } catch (Throwable th) {
                    com.igexin.b.a.c.b.a(f202a + "|" + th.toString());
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("V");
                    sb2.append(i());
                    string = sb2.toString();
                }
            }
        }
        com.igexin.push.core.f.A = "A-" + string + Operators.SUB + System.currentTimeMillis();
        if (com.igexin.push.core.f.A.length() >= 64) {
            try {
                com.igexin.push.core.f.A = com.igexin.push.core.f.A.substring(0, 62);
            } catch (Throwable th2) {
                com.igexin.b.a.c.b.a(f202a + "|" + th2.toString());
            }
        }
    }

    private void f(SQLiteDatabase sQLiteDatabase) throws Throwable {
        String strB = b(sQLiteDatabase, 2);
        if (TextUtils.isEmpty(strB)) {
            return;
        }
        if (strB.equals("null")) {
            strB = null;
        }
        com.igexin.push.core.f.x = strB;
    }

    private void g(SQLiteDatabase sQLiteDatabase) throws Throwable {
        String strB = b(sQLiteDatabase, 46);
        if (TextUtils.isEmpty(strB)) {
            return;
        }
        if (strB.equals("null")) {
            strB = null;
        }
        com.igexin.push.core.f.y = strB;
    }

    private boolean g() {
        return com.igexin.b.a.b.c.b().a(new ad(this), false, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        com.igexin.push.core.f.d.a().b(com.igexin.push.core.f.f, com.igexin.push.core.f.s);
        com.igexin.push.core.f.d.a().a(com.igexin.push.core.f.f, com.igexin.push.core.f.r);
        String strC = com.igexin.push.util.g.c();
        if (strC == null || strC.length() <= 5) {
            com.igexin.push.util.g.e();
        }
    }

    private void h(SQLiteDatabase sQLiteDatabase) throws Throwable {
        String strB = b(sQLiteDatabase, 48);
        if (TextUtils.isEmpty(strB)) {
            return;
        }
        if (strB.equals("null")) {
            strB = null;
        }
        com.igexin.push.core.f.z = strB;
    }

    private String i() {
        Random random = new Random(Math.abs(new Random().nextLong()));
        String str = "";
        for (int i = 0; i < 15; i++) {
            str = str + random.nextInt(10);
        }
        return str;
    }

    private void i(SQLiteDatabase sQLiteDatabase) throws Throwable {
        String strB = b(sQLiteDatabase, 3);
        if (TextUtils.isEmpty(strB)) {
            return;
        }
        if (strB.equals("null")) {
            strB = null;
        }
        com.igexin.push.core.f.A = strB;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] i(String str) {
        return EncryptUtils.getBytesEncrypted(str.getBytes());
    }

    private void j(SQLiteDatabase sQLiteDatabase) throws Throwable {
        byte[] bArrA = a(sQLiteDatabase, 1);
        if (bArrA != null) {
            try {
                String str = new String(bArrA);
                com.igexin.push.core.f.r = str.equals("null") ? 0L : Long.parseLong(str);
            } catch (Exception unused) {
            }
            com.igexin.b.a.c.b.a(f202a + "|db version changed, save session = " + com.igexin.push.core.f.r);
        }
    }

    private void k(SQLiteDatabase sQLiteDatabase) throws Throwable {
        byte[] bArrA = a(sQLiteDatabase, 20);
        if (bArrA != null) {
            String str = new String(bArrA);
            if (str.equals("null")) {
                str = null;
            }
            com.igexin.push.core.f.t = str;
            com.igexin.push.core.f.s = str;
            com.igexin.b.a.c.b.a(f202a + "|db version changed, save cid = " + str);
        }
    }

    @Override // com.igexin.push.core.c.a
    public void a(SQLiteDatabase sQLiteDatabase) {
    }

    public boolean a(int i) {
        com.igexin.push.core.f.R = i;
        return com.igexin.b.a.b.c.b().a(new q(this), false, true);
    }

    public boolean a(long j) {
        if (j == com.igexin.push.core.f.G) {
            return false;
        }
        com.igexin.push.core.f.G = j;
        return com.igexin.b.a.b.c.b().a(new t(this), false, true);
    }

    public boolean a(String str) {
        return com.igexin.b.a.b.c.b().a(new ac(this, str), false, true);
    }

    public boolean a(String str, String str2, long j) {
        com.igexin.push.core.f.r = j;
        if (TextUtils.isEmpty(com.igexin.push.core.f.x)) {
            com.igexin.push.core.f.x = str2;
        }
        com.igexin.push.core.f.s = str;
        return g();
    }

    public boolean a(String str, boolean z) {
        com.igexin.b.a.b.c cVarB;
        com.igexin.b.a.d.e sVar;
        if (str == null) {
            return false;
        }
        if (z) {
            if (!str.equals(com.igexin.push.core.f.at)) {
                com.igexin.push.core.f.at = str.equals("null") ? null : str;
                cVarB = com.igexin.b.a.b.c.b();
                sVar = new r(this, str);
                return cVarB.a(sVar, false, true);
            }
            return false;
        }
        if (!str.equals(com.igexin.push.core.f.au)) {
            com.igexin.push.core.f.au = str.equals("null") ? null : str;
            cVarB = com.igexin.b.a.b.c.b();
            sVar = new s(this, str);
            return cVarB.a(sVar, false, true);
        }
        return false;
    }

    public boolean a(boolean z) {
        if (com.igexin.push.core.f.M == z) {
            return false;
        }
        com.igexin.push.core.f.M = z;
        if (!z) {
            com.igexin.push.g.a.k();
        }
        return com.igexin.b.a.b.c.b().a(new n(this), false, true);
    }

    public void b() {
        com.igexin.b.a.b.c.b().a(new i(this), false, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:205:0x033e A[PHI: r2 r12 r14 r15
      0x033e: PHI (r2v2 android.database.Cursor) = (r2v1 android.database.Cursor), (r2v22 android.database.Cursor) binds: [B:204:0x033c, B:196:0x032c] A[DONT_GENERATE, DONT_INLINE]
      0x033e: PHI (r12v3 int) = (r12v2 int), (r12v5 int) binds: [B:204:0x033c, B:196:0x032c] A[DONT_GENERATE, DONT_INLINE]
      0x033e: PHI (r14v3 boolean) = (r14v2 boolean), (r14v5 boolean) binds: [B:204:0x033c, B:196:0x032c] A[DONT_GENERATE, DONT_INLINE]
      0x033e: PHI (r15v3 int) = (r15v2 int), (r15v5 int) binds: [B:204:0x033c, B:196:0x032c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0347  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x03bb  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x03c1  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x03d2  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x03e8  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x041a  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x0441  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x0465  */
    /* JADX WARN: Removed duplicated region for block: B:362:? A[RETURN, SYNTHETIC] */
    @Override // com.igexin.push.core.c.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void b(android.database.sqlite.SQLiteDatabase r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1324
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.core.c.h.b(android.database.sqlite.SQLiteDatabase):void");
    }

    public boolean b(int i) {
        if (com.igexin.push.core.f.az == i) {
            return false;
        }
        com.igexin.push.core.f.az = i;
        return com.igexin.b.a.b.c.b().a(new y(this), false, true);
    }

    public boolean b(long j) {
        com.igexin.push.core.f.a(j);
        return com.igexin.b.a.b.c.b().a(new af(this), false, true);
    }

    public boolean b(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        com.igexin.push.core.f.w = str;
        return com.igexin.b.a.b.c.b().a(new ae(this), false, true);
    }

    public boolean b(String str, boolean z) {
        com.igexin.b.a.b.c cVarB;
        com.igexin.b.a.d.e vVar;
        if (str == null) {
            return false;
        }
        if (z) {
            if (!str.equals(com.igexin.push.core.f.ar)) {
                com.igexin.push.core.f.ar = str.equals("null") ? null : str;
                cVarB = com.igexin.b.a.b.c.b();
                vVar = new u(this, str);
                return cVarB.a(vVar, false, true);
            }
            return false;
        }
        if (!str.equals(com.igexin.push.core.f.as)) {
            com.igexin.push.core.f.as = str.equals("null") ? null : str;
            cVarB = com.igexin.b.a.b.c.b();
            vVar = new v(this, str);
            return cVarB.a(vVar, false, true);
        }
        return false;
    }

    public boolean b(boolean z) {
        return com.igexin.b.a.b.c.b().a(new z(this, z), false, true);
    }

    @Override // com.igexin.push.core.c.a
    public void c(SQLiteDatabase sQLiteDatabase) {
        a(sQLiteDatabase, 1, com.igexin.b.a.a.a.d(String.valueOf(com.igexin.push.core.f.r).getBytes(), com.igexin.push.core.f.B));
        a(sQLiteDatabase, 4, String.valueOf(com.igexin.push.core.f.k));
        a(sQLiteDatabase, 8, String.valueOf(com.igexin.push.core.f.G));
        a(sQLiteDatabase, 32, String.valueOf(com.igexin.push.core.f.K));
        a(sQLiteDatabase, 3, com.igexin.push.core.f.A);
        a(sQLiteDatabase, 11, String.valueOf(com.igexin.push.core.f.I));
        a(sQLiteDatabase, 12, String.valueOf(com.igexin.push.core.f.J));
        a(sQLiteDatabase, 20, com.igexin.b.a.a.a.d(com.igexin.push.core.f.s.getBytes(), com.igexin.push.core.f.B));
        a(sQLiteDatabase, 2, com.igexin.push.core.f.x);
        a(sQLiteDatabase, 25, com.igexin.b.a.a.a.d(com.igexin.push.core.f.B.getBytes(), com.igexin.b.b.a.a(com.igexin.push.core.f.f.getPackageName())));
    }

    public boolean c() {
        com.igexin.push.core.f.r = 0L;
        com.igexin.push.core.f.s = "null";
        return g();
    }

    public boolean c(long j) {
        if (com.igexin.push.core.f.J == j) {
            return false;
        }
        com.igexin.push.core.f.J = j;
        com.igexin.b.a.b.c.b().a(new j(this), false, true);
        return true;
    }

    public boolean c(String str) {
        com.igexin.push.core.f.x = str;
        return com.igexin.b.a.b.c.b().a(new ag(this), false, true);
    }

    public boolean c(String str, boolean z) {
        if (str == null) {
            return false;
        }
        String str2 = str.equals("null") ? null : str;
        if (z && !TextUtils.equals(com.igexin.push.core.f.aw, str)) {
            com.igexin.push.core.f.aw = str2;
        } else {
            if (z || TextUtils.equals(com.igexin.push.core.f.av, str)) {
                return false;
            }
            com.igexin.push.core.f.av = str2;
        }
        com.igexin.b.a.c.b.a(f202a + "|saveLastRedirectCmList isMobile = " + z + ", lastRedirectCmList = " + str);
        return com.igexin.b.a.b.c.b().a(new ab(this, z, str), false, true);
    }

    public Map<String, String> d() {
        return this.c;
    }

    public void d(SQLiteDatabase sQLiteDatabase) {
        this.d = true;
        e(sQLiteDatabase);
        j(sQLiteDatabase);
        k(sQLiteDatabase);
        i(sQLiteDatabase);
        f(sQLiteDatabase);
        g(sQLiteDatabase);
        h(sQLiteDatabase);
    }

    public boolean d(long j) {
        com.igexin.push.core.f.aq = j;
        com.igexin.b.a.c.b.a(f202a + "|save idc config failed time : " + j);
        return com.igexin.b.a.b.c.b().a(new k(this, j), false, true);
    }

    public boolean d(String str) {
        com.igexin.push.core.f.y = str;
        return com.igexin.b.a.b.c.b().a(new ah(this), false, true);
    }

    public void e() {
        com.igexin.b.a.c.b.a(f202a + "| found a duplicate cid " + com.igexin.push.core.f.s);
        com.igexin.push.core.f.A = null;
        f();
        a().a(com.igexin.push.core.f.A);
        a().c();
        com.igexin.push.core.f.o = 0;
        com.igexin.push.g.b.g.i().a(SystemClock.elapsedRealtime());
    }

    public boolean e(long j) {
        if (com.igexin.push.core.f.I == j) {
            return false;
        }
        com.igexin.push.core.f.I = j;
        return com.igexin.b.a.b.c.b().a(new l(this), false, true);
    }

    public boolean e(String str) {
        com.igexin.push.core.f.z = str;
        return com.igexin.b.a.b.c.b().a(new ai(this), false, true);
    }

    public boolean f(long j) {
        if (com.igexin.push.core.f.N == j) {
            return false;
        }
        com.igexin.push.core.f.N = j;
        return com.igexin.b.a.b.c.b().a(new o(this), false, true);
    }

    public boolean f(String str) {
        if (str == null || str.equals(com.igexin.push.core.f.L)) {
            return false;
        }
        com.igexin.push.core.f.L = str;
        com.igexin.b.a.b.c.b().a(new m(this), false, true);
        return true;
    }

    public boolean g(long j) {
        if (com.igexin.push.core.f.K == j) {
            return false;
        }
        com.igexin.push.core.f.K = j;
        return com.igexin.b.a.b.c.b().a(new w(this), false, true);
    }

    public boolean g(String str) {
        if (str.equals(com.igexin.push.core.f.P)) {
            return false;
        }
        com.igexin.push.core.f.P = str;
        return com.igexin.b.a.b.c.b().a(new p(this), false, true);
    }

    public boolean h(long j) {
        if (com.igexin.push.core.f.F == j) {
            return false;
        }
        com.igexin.push.core.f.F = j;
        return com.igexin.b.a.b.c.b().a(new x(this), false, true);
    }

    public boolean h(String str) {
        com.igexin.push.core.f.aC = str;
        return com.igexin.b.a.b.c.b().a(new aa(this, str), false, true);
    }
}
