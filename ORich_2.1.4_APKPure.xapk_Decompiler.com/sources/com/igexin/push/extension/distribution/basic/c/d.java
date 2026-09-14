package com.igexin.push.extension.distribution.basic.c;

import android.content.ContentValues;
import android.content.Context;
import android.content.IntentFilter;
import android.database.Cursor;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f301a = "EXT-" + d.class.getSimpleName();
    private static d d;
    private com.igexin.push.extension.distribution.basic.e.a b;
    private Context c;
    private String e;

    private d(Context context) {
        this.c = context;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(b.f299a);
        this.c.registerReceiver(f.a(), intentFilter);
        this.e = "/sdcard/libs//com.getui.sdk.deviceId.db";
    }

    public static d a() {
        if (d == null) {
            d = new d(g.f304a);
        }
        return d;
    }

    private void a(File file) {
        for (File file2 : file.listFiles()) {
            while (file2.exists()) {
                if (file2.isFile()) {
                    file2.delete();
                } else if (!file2.delete()) {
                    a(file2);
                }
            }
        }
        file.delete();
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0099 A[EXC_TOP_SPLITTER, PHI: r2
      0x0099: PHI (r2v5 java.io.FileOutputStream) = (r2v6 java.io.FileOutputStream), (r2v7 java.io.FileOutputStream) binds: [B:26:0x00c0, B:19:0x0097] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void b(java.lang.String r6) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 205
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.basic.c.d.b(java.lang.String):void");
    }

    private void c(String str) {
        try {
            if (g.t.a()) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("id", (Integer) 2);
                contentValues.put("value", str);
                g.t.a("runtime", (String) null, contentValues);
                g.t.close();
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:7|(4:63|8|61|9)|(3:(5:59|10|(1:12)(1:65)|53|20)|53|20)|13|(2:17|18)|49|19) */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String g() throws java.lang.Throwable {
        /*
            r7 = this;
            android.content.Context r0 = com.igexin.push.core.f.f
            boolean r0 = com.igexin.push.extension.distribution.basic.d.c.a(r0)
            r1 = 0
            if (r0 != 0) goto La
            return r1
        La:
            java.io.File r0 = new java.io.File
            java.lang.String r2 = r7.e
            r0.<init>(r2)
            boolean r0 = r0.exists()
            if (r0 == 0) goto L85
            r0 = 1024(0x400, float:1.435E-42)
            byte[] r0 = new byte[r0]
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L79
            java.lang.String r3 = r7.e     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L79
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L6a java.lang.Exception -> L79
            java.io.ByteArrayOutputStream r3 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L68
            r3.<init>()     // Catch: java.lang.Throwable -> L64 java.lang.Exception -> L68
        L27:
            int r4 = r2.read(r0)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            r5 = -1
            r6 = 0
            if (r4 == r5) goto L33
            r3.write(r0, r6, r4)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            goto L27
        L33:
            byte[] r0 = r3.toByteArray()     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            java.lang.String r4 = new java.lang.String     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            byte[] r0 = com.igexin.b.b.a.c(r0)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            java.lang.String r5 = "utf-8"
            r4.<init>(r0, r5)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            java.lang.String r0 = "\\|"
            java.lang.String[] r0 = r4.split(r0)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            int r4 = r0.length     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            r5 = 1
            if (r4 <= r5) goto L59
            java.lang.String r4 = "V1"
            r6 = r0[r6]     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            boolean r4 = r4.equals(r6)     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            if (r4 == 0) goto L59
            r0 = r0[r5]     // Catch: java.lang.Throwable -> L60 java.lang.Exception -> L62
            r1 = r0
        L59:
            r2.close()     // Catch: java.lang.Exception -> L5c
        L5c:
            r3.close()     // Catch: java.lang.Exception -> L85
            goto L85
        L60:
            r0 = move-exception
            goto L66
        L62:
            goto L7b
        L64:
            r0 = move-exception
            r3 = r1
        L66:
            r1 = r2
            goto L6c
        L68:
            r3 = r1
            goto L7b
        L6a:
            r0 = move-exception
            r3 = r1
        L6c:
            if (r1 == 0) goto L73
            r1.close()     // Catch: java.lang.Exception -> L72
            goto L73
        L72:
        L73:
            if (r3 == 0) goto L78
            r3.close()     // Catch: java.lang.Exception -> L78
        L78:
            throw r0
        L79:
            r2 = r1
            r3 = r2
        L7b:
            if (r2 == 0) goto L82
            r2.close()     // Catch: java.lang.Exception -> L81
            goto L82
        L81:
        L82:
            if (r3 == 0) goto L85
            goto L5c
        L85:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.basic.c.d.g():java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0084 A[DONT_GENERATE, PHI: r1 r8
      0x0084: PHI (r1v1 java.lang.String) = (r1v3 java.lang.String), (r1v4 java.lang.String) binds: [B:25:0x0090, B:18:0x0082] A[DONT_GENERATE, DONT_INLINE]
      0x0084: PHI (r8v3 android.database.Cursor) = (r8v4 android.database.Cursor), (r8v5 android.database.Cursor) binds: [B:25:0x0090, B:18:0x0082] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String a(java.lang.String r12) {
        /*
            r11 = this;
            java.lang.String r0 = "imageurl"
            java.lang.String r1 = ""
            com.igexin.push.extension.distribution.basic.e.a r2 = r11.b()
            r11.b = r2
            r8 = 0
            java.lang.String r3 = "image"
            java.lang.String[] r4 = new java.lang.String[]{r0}     // Catch: java.lang.Throwable -> L88 java.lang.Exception -> L8f
            r9 = 1
            java.lang.String[] r5 = new java.lang.String[r9]     // Catch: java.lang.Throwable -> L88 java.lang.Exception -> L8f
            r10 = 0
            r5[r10] = r12     // Catch: java.lang.Throwable -> L88 java.lang.Exception -> L8f
            r6 = 0
            r7 = 0
            android.database.Cursor r8 = r2.a(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L88 java.lang.Exception -> L8f
            if (r8 == 0) goto L82
        L1f:
            r2 = r1
        L20:
            boolean r3 = r8.moveToNext()     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L88
            if (r3 == 0) goto L7e
            java.lang.String r3 = "imagesrc"
            int r3 = r8.getColumnIndexOrThrow(r3)     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L88
            java.lang.String r2 = r8.getString(r3)     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L88
            java.io.File r3 = new java.io.File     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L88
            r3.<init>(r2)     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L88
            boolean r4 = r3.exists()     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L88
            if (r4 == 0) goto L41
            boolean r3 = r3.canRead()     // Catch: java.lang.Exception -> L80 java.lang.Throwable -> L88
            if (r3 != 0) goto L20
        L41:
            com.igexin.push.extension.distribution.basic.e.a r2 = r11.b     // Catch: java.lang.Throwable -> L88 java.lang.Exception -> L8f
            java.lang.String r3 = "image"
            java.lang.String[] r4 = new java.lang.String[]{r0}     // Catch: java.lang.Throwable -> L88 java.lang.Exception -> L8f
            java.lang.String[] r5 = new java.lang.String[r9]     // Catch: java.lang.Throwable -> L88 java.lang.Exception -> L8f
            r5[r10] = r12     // Catch: java.lang.Throwable -> L88 java.lang.Exception -> L8f
            r2.a(r3, r4, r5)     // Catch: java.lang.Throwable -> L88 java.lang.Exception -> L8f
            android.content.Context r2 = r11.c     // Catch: java.lang.Throwable -> L88 java.lang.Exception -> L8f
            android.content.pm.PackageManager r2 = r2.getPackageManager()     // Catch: java.lang.Throwable -> L88 java.lang.Exception -> L8f
            java.lang.String r3 = "android.permission.WRITE_EXTERNAL_STORAGE"
            android.content.Context r4 = r11.c     // Catch: java.lang.Throwable -> L88 java.lang.Exception -> L8f
            java.lang.String r4 = r4.getPackageName()     // Catch: java.lang.Throwable -> L88 java.lang.Exception -> L8f
            int r2 = r2.checkPermission(r3, r4)     // Catch: java.lang.Throwable -> L88 java.lang.Exception -> L8f
            if (r2 == 0) goto L1f
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L88 java.lang.Exception -> L8f
            r2.<init>()     // Catch: java.lang.Throwable -> L88 java.lang.Exception -> L8f
            android.content.Context r3 = r11.c     // Catch: java.lang.Throwable -> L88 java.lang.Exception -> L8f
            java.io.File r3 = r3.getCacheDir()     // Catch: java.lang.Throwable -> L88 java.lang.Exception -> L8f
            r2.append(r3)     // Catch: java.lang.Throwable -> L88 java.lang.Exception -> L8f
            java.lang.String r3 = "/ImgCache/"
            r2.append(r3)     // Catch: java.lang.Throwable -> L88 java.lang.Exception -> L8f
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L88 java.lang.Exception -> L8f
            com.igexin.push.extension.distribution.basic.c.g.s = r2     // Catch: java.lang.Throwable -> L88 java.lang.Exception -> L8f
            goto L1f
        L7e:
            r1 = r2
            goto L82
        L80:
            r1 = r2
            goto L90
        L82:
            if (r8 == 0) goto L93
        L84:
            r8.close()
            goto L93
        L88:
            r12 = move-exception
            if (r8 == 0) goto L8e
            r8.close()
        L8e:
            throw r12
        L8f:
        L90:
            if (r8 == 0) goto L93
            goto L84
        L93:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.basic.c.d.a(java.lang.String):java.lang.String");
    }

    public com.igexin.push.extension.distribution.basic.e.a b() {
        if (this.b == null) {
            this.b = new com.igexin.push.extension.distribution.basic.e.a(this.c);
        }
        return this.b;
    }

    public void c() {
        Cursor cursorA = null;
        try {
            cursorA = b().a("image", new String[]{"taskid"}, "createtime <= " + String.valueOf(System.currentTimeMillis() - 604800000));
            if (cursorA != null) {
                while (cursorA.moveToNext()) {
                    String string = cursorA.getString(cursorA.getColumnIndexOrThrow("taskid"));
                    b().a("image", new String[]{"taskid"}, new String[]{string});
                    File file = new File(g.s + string);
                    if (file.exists()) {
                        a(file);
                    }
                }
            }
            if (cursorA == null) {
                return;
            }
        } catch (Exception unused) {
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

    public void d() {
        File file = new File(com.igexin.push.core.b.d);
        if (file.exists()) {
            for (File file2 : file.listFiles(new e(this))) {
                if (file2.exists()) {
                    a(file2);
                }
            }
        }
    }

    public void e() throws Throwable {
        if (com.igexin.push.extension.distribution.basic.d.c.a(com.igexin.push.core.f.f)) {
            String strG = g();
            if (strG == null) {
                if (com.igexin.push.core.f.x != null) {
                    b(com.igexin.push.core.f.x);
                }
            } else {
                if (strG.equals(com.igexin.push.core.f.x)) {
                    return;
                }
                com.igexin.push.core.f.x = strG;
                c(strG);
            }
        }
    }

    public void f() {
        this.c.unregisterReceiver(f.a());
    }
}
