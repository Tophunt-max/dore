package com.igexin.push.extension.distribution.gbd.i;

import java.io.File;
import java.io.FileOutputStream;

/* JADX INFO: loaded from: classes.dex */
public class i {
    public static void a(byte[] bArr, String str, boolean z) throws Throwable {
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(new File(str), z);
                try {
                    fileOutputStream2.write(bArr);
                    fileOutputStream2.close();
                } catch (Exception unused) {
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream == null) {
                    } else {
                        fileOutputStream.close();
                    }
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Exception unused2) {
                        }
                    }
                    throw th;
                }
            } catch (Exception unused3) {
            }
        } catch (Exception unused4) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:6|(4:61|7|59|8)|(6:48|9|(1:11)(1:63)|46|14|33)|12|54|13|46|14|33) */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0087 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0080 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static byte[] a(java.lang.String r5) throws java.lang.Throwable {
        /*
            java.io.File r0 = new java.io.File
            r0.<init>(r5)
            boolean r0 = r0.exists()
            r1 = 0
            if (r0 != 0) goto L26
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "FileUtils|get data from file = "
            r0.append(r2)
            r0.append(r5)
            java.lang.String r5 = " file not exist ######"
            r0.append(r5)
            java.lang.String r5 = r0.toString()
            com.igexin.b.a.c.b.a(r5)
            return r1
        L26:
            r0 = 1024(0x400, float:1.435E-42)
            byte[] r0 = new byte[r0]
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L56
            r2.<init>(r5)     // Catch: java.lang.Throwable -> L53 java.lang.Exception -> L56
            java.io.ByteArrayOutputStream r5 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L50
            r5.<init>()     // Catch: java.lang.Throwable -> L4d java.lang.Exception -> L50
        L34:
            int r3 = r2.read(r0)     // Catch: java.lang.Exception -> L4b java.lang.Throwable -> L7c
            r4 = -1
            if (r3 == r4) goto L40
            r4 = 0
            r5.write(r0, r4, r3)     // Catch: java.lang.Exception -> L4b java.lang.Throwable -> L7c
            goto L34
        L40:
            byte[] r1 = r5.toByteArray()     // Catch: java.lang.Exception -> L4b java.lang.Throwable -> L7c
            r2.close()     // Catch: java.lang.Exception -> L47
        L47:
            r5.close()     // Catch: java.lang.Exception -> L7b
            goto L7b
        L4b:
            r0 = move-exception
            goto L59
        L4d:
            r0 = move-exception
            r5 = r1
            goto L7d
        L50:
            r0 = move-exception
            r5 = r1
            goto L59
        L53:
            r0 = move-exception
            r5 = r1
            goto L7e
        L56:
            r0 = move-exception
            r5 = r1
            r2 = r5
        L59:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L7c
            r3.<init>()     // Catch: java.lang.Throwable -> L7c
            java.lang.String r4 = "FileUtils|"
            r3.append(r4)     // Catch: java.lang.Throwable -> L7c
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L7c
            r3.append(r0)     // Catch: java.lang.Throwable -> L7c
            java.lang.String r0 = r3.toString()     // Catch: java.lang.Throwable -> L7c
            com.igexin.b.a.c.b.a(r0)     // Catch: java.lang.Throwable -> L7c
            if (r2 == 0) goto L78
            r2.close()     // Catch: java.lang.Exception -> L77
            goto L78
        L77:
        L78:
            if (r5 == 0) goto L7b
            goto L47
        L7b:
            return r1
        L7c:
            r0 = move-exception
        L7d:
            r1 = r2
        L7e:
            if (r1 == 0) goto L85
            r1.close()     // Catch: java.lang.Exception -> L84
            goto L85
        L84:
        L85:
            if (r5 == 0) goto L8a
            r5.close()     // Catch: java.lang.Exception -> L8a
        L8a:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.gbd.i.i.a(java.lang.String):byte[]");
    }
}
