package com.igexin.push.core.f;

import android.content.Context;
import android.text.TextUtils;
import com.igexin.push.core.f;
import com.igexin.push.util.g;
import com.igexin.push.util.n;
import java.io.File;
import java.io.FileOutputStream;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes.dex */
class b implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f240a;
    private long b = 0;

    b() {
    }

    private boolean a() {
        try {
            boolean z = true;
            if (!TextUtils.isEmpty(this.f240a) && this.b != 0 && this.f240a.equals(f.s)) {
                if (this.b == f.r) {
                    z = false;
                }
            }
            return z;
        } finally {
            this.f240a = f.s;
            this.b = f.r;
        }
    }

    @Override // com.igexin.push.core.f.c
    public String a(Context context) {
        String str = null;
        try {
            com.igexin.b.a.c.b.a("BasicSDStorage|get device id from file : " + f.U);
            byte[] bArrA = g.a(f.U);
            if (bArrA == null) {
                com.igexin.b.a.c.b.a("BasicSDStorage|read file device id = null");
                return null;
            }
            String str2 = new String(bArrA, "UTF-8");
            try {
                com.igexin.b.a.c.b.a("BasicSDStorage|read file device id = " + str2);
                return str2;
            } catch (Exception e) {
                e = e;
                str = str2;
                com.igexin.b.a.c.b.a("BasicSDStorage|get device id from file : " + e.toString());
                return str;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    @Override // com.igexin.push.core.f.c
    public void a(Context context, long j) {
        if (a()) {
            g.a();
        }
    }

    @Override // com.igexin.push.core.f.c
    public void a(Context context, String str) throws Throwable {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.igexin.b.a.c.b.a("BasicSDStorage|save device id to file : " + f.U);
        FileOutputStream fileOutputStream = null;
        ReentrantReadWriteLock.WriteLock writeLock = new ReentrantReadWriteLock().writeLock();
        try {
            try {
                if (writeLock.tryLock()) {
                    File file = new File(f.U);
                    if (!file.exists() && !file.createNewFile()) {
                        com.igexin.b.a.c.b.a("BasicSDStorage|create file : " + file.toString() + " failed !!!");
                        n.a(null);
                        writeLock.unlock();
                        return;
                    }
                    FileOutputStream fileOutputStream2 = new FileOutputStream(f.U);
                    try {
                        fileOutputStream2.write(str.getBytes("UTF-8"));
                        fileOutputStream = fileOutputStream2;
                    } catch (Exception e) {
                        e = e;
                        fileOutputStream = fileOutputStream2;
                        com.igexin.b.a.c.b.a("BasicSDStorage|" + e.toString());
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        n.a(fileOutputStream);
                        writeLock.unlock();
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
        n.a(fileOutputStream);
        writeLock.unlock();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @Override // com.igexin.push.core.f.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String b(android.content.Context r4) {
        /*
            r3 = this;
            r4 = 0
            java.lang.String r0 = com.igexin.push.core.f.T     // Catch: java.lang.Exception -> L32
            byte[] r0 = com.igexin.push.util.g.a(r0)     // Catch: java.lang.Exception -> L32
            if (r0 != 0) goto Lf
            java.lang.String r0 = "BasicSDStorage | read file cid id = null"
            com.igexin.b.a.c.b.a(r0)     // Catch: java.lang.Exception -> L32
            return r4
        Lf:
            java.lang.String r1 = new java.lang.String     // Catch: java.lang.Exception -> L32
            java.lang.String r2 = com.igexin.push.core.f.B     // Catch: java.lang.Exception -> L32
            byte[] r0 = com.igexin.b.a.a.a.c(r0, r2)     // Catch: java.lang.Exception -> L32
            r1.<init>(r0)     // Catch: java.lang.Exception -> L32
            java.lang.String r0 = "\\|"
            java.lang.String[] r0 = r1.split(r0)     // Catch: java.lang.Exception -> L32
            int r1 = r0.length     // Catch: java.lang.Exception -> L32
            r2 = 2
            if (r1 <= r2) goto L32
            r0 = r0[r2]     // Catch: java.lang.Exception -> L32
            if (r0 == 0) goto L31
            java.lang.String r1 = "null"
            boolean r1 = r0.equals(r1)     // Catch: java.lang.Exception -> L31
            if (r1 == 0) goto L31
            goto L32
        L31:
            r4 = r0
        L32:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "BasicSDStorage|get cid from file cid = "
            r0.append(r1)
            r0.append(r4)
            java.lang.String r0 = r0.toString()
            com.igexin.b.a.c.b.a(r0)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.core.f.b.b(android.content.Context):java.lang.String");
    }

    @Override // com.igexin.push.core.f.c
    public void b(Context context, String str) {
        if (a()) {
            g.a();
        }
    }

    @Override // com.igexin.push.core.f.c
    public long c(Context context) {
        byte[] bArrA;
        long j = 0;
        try {
            bArrA = g.a(f.T);
        } catch (Exception e) {
            com.igexin.b.a.c.b.a("BasicSDStorage|" + e.toString());
        }
        if (bArrA == null) {
            com.igexin.b.a.c.b.a("BasicSDStorage|read session from file, not exist");
            return 0L;
        }
        String str = new String(com.igexin.b.a.a.a.c(bArrA, f.B));
        String strSubstring = str.contains("null") ? str.substring(7) : str.substring(20);
        int iIndexOf = strSubstring.indexOf("|");
        if (iIndexOf >= 0) {
            strSubstring = strSubstring.substring(0, iIndexOf);
        }
        long j2 = Long.parseLong(strSubstring);
        if (j2 != 0) {
            j = j2;
        }
        com.igexin.b.a.c.b.a("BasicSDStorage|session : " + j);
        return j;
    }
}
