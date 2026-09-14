package com.igexin.push.util;

import android.content.Context;
import android.text.TextUtils;
import com.igexin.assist.sdk.AssistPushConsts;
import com.taobao.weex.el.parse.Operators;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f437a = new Object();

    public static void a() {
        File file;
        if (!t.a(com.igexin.push.core.f.f)) {
            return;
        }
        FileOutputStream fileOutputStream = null;
        try {
            try {
                try {
                    file = new File(com.igexin.push.core.f.T);
                } catch (IOException unused) {
                    return;
                }
            } catch (Exception e) {
                e = e;
            }
            if (!file.exists() && !file.createNewFile()) {
                com.igexin.b.a.c.b.a("FileUtils | create file : " + file.toString() + " failed !!!");
                return;
            }
            FileOutputStream fileOutputStream2 = new FileOutputStream(com.igexin.push.core.f.T);
            try {
                fileOutputStream2.write(com.igexin.b.a.a.a.d((("v01" + com.igexin.push.core.f.w) + com.igexin.push.core.f.r + "|" + com.igexin.push.core.f.f238a + "|" + com.igexin.push.core.f.s + "|" + com.igexin.push.core.s.a().e(com.igexin.push.core.f.f)).getBytes(), com.igexin.push.core.f.B));
                fileOutputStream2.close();
            } catch (Exception e2) {
                e = e2;
                fileOutputStream = fileOutputStream2;
                com.igexin.b.a.c.b.a("FileUtils | " + e.toString());
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
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static void a(File file, String... strArr) {
        File[] fileArrListFiles;
        if (!file.exists() || (fileArrListFiles = file.listFiles()) == null || fileArrListFiles.length <= 0) {
            return;
        }
        List listAsList = strArr != null ? Arrays.asList(strArr) : null;
        for (File file2 : fileArrListFiles) {
            if (listAsList == null || !listAsList.contains(file2.getName())) {
                file2.delete();
            }
        }
    }

    public static void a(byte[] bArr, String str, boolean z) {
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

    public static boolean a(Context context) {
        return !new com.igexin.sdk.a.c(context).b();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:6|(4:61|7|59|8)|(6:48|9|(1:11)(1:63)|46|14|33)|12|54|13|46|14|33) */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0087 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0080 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static byte[] a(java.lang.String r5) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.util.g.a(java.lang.String):byte[]");
    }

    public static String b() {
        if (t.a(com.igexin.push.core.f.f)) {
            return com.igexin.push.core.f.d.a().b(com.igexin.push.core.f.f);
        }
        return null;
    }

    private static String b(String str) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(new Date()) + "|" + com.igexin.push.core.f.s + "|" + com.igexin.push.core.f.f238a + "|" + AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_GT + "|" + str;
    }

    public static void b(Context context) {
        String str;
        File file = new File(context.getFilesDir().getPath() + Operators.DIV + "init_c.pid");
        if (file.exists()) {
            file.delete();
        }
        if (com.igexin.push.config.k.v) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - com.igexin.push.core.f.ax >= 1000) {
                com.igexin.push.core.f.ax = jCurrentTimeMillis;
                if (com.igexin.push.core.f.g.get()) {
                    com.igexin.b.a.b.c.b().a(new h(context, jCurrentTimeMillis), false, true);
                    return;
                } else {
                    new Thread(new i(context, jCurrentTimeMillis)).start();
                    return;
                }
            }
            str = "FileUtils|not allowed to save initialization twice within 1s";
        } else {
            str = "FileUtils|isReportInitialize = false";
        }
        com.igexin.b.a.c.b.a(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, String str) {
        if (context == null || str == null) {
            return;
        }
        String str2 = context.getFilesDir().getPath() + Operators.DIV + "init_c1.pid";
        synchronized (f437a) {
            if (str.length() == 0) {
                a(str.getBytes(), str2, false);
            } else {
                a((str + "|").getBytes(), str2, true);
            }
        }
    }

    public static String c() {
        if (t.a(com.igexin.push.core.f.f)) {
            return com.igexin.push.core.f.d.a().a(com.igexin.push.core.f.f);
        }
        return null;
    }

    public static long d() {
        if (t.a(com.igexin.push.core.f.f)) {
            return com.igexin.push.core.f.d.a().c(com.igexin.push.core.f.f);
        }
        return 0L;
    }

    public static void e() {
        if (t.a(com.igexin.push.core.f.f)) {
            com.igexin.push.core.f.d.a().a(com.igexin.push.core.f.f, com.igexin.push.core.f.x);
        }
    }

    public static void f() throws Throwable {
        String str = com.igexin.push.core.f.f.getFilesDir().getPath() + "/init.pid";
        FileOutputStream fileOutputStream = null;
        try {
            try {
                if (new File(str).exists()) {
                    byte[] bytes = com.igexin.push.core.f.s.getBytes();
                    byte[] bArr = new byte[bytes.length];
                    for (int i = 0; i < bytes.length; i++) {
                        bArr[i] = (byte) (bytes[i] ^ com.igexin.push.core.f.Z[i]);
                    }
                    FileOutputStream fileOutputStream2 = new FileOutputStream(str);
                    try {
                        fileOutputStream2.write(bArr);
                        fileOutputStream = fileOutputStream2;
                    } catch (Exception e) {
                        e = e;
                        fileOutputStream = fileOutputStream2;
                        com.igexin.b.a.c.b.a("FileUtils|" + e.toString());
                        if (fileOutputStream == null) {
                            return;
                        }
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (Exception unused) {
                            }
                        }
                        throw th;
                    }
                }
                if (fileOutputStream == null) {
                    return;
                }
            } catch (Exception e2) {
                e = e2;
            }
            try {
                fileOutputStream.close();
            } catch (Exception unused2) {
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static void g() {
        b(com.igexin.push.core.f.f, "");
    }

    public static String h() {
        byte[] bArrA;
        String str = com.igexin.push.core.f.f.getFilesDir().getPath() + Operators.DIV + "init_c1.pid";
        try {
            synchronized (f437a) {
                bArrA = a(str);
            }
            if (bArrA == null) {
                return null;
            }
            String str2 = new String(bArrA);
            if (TextUtils.isEmpty(str2)) {
                return null;
            }
            if (str2.endsWith("|")) {
                str2 = str2.substring(0, str2.length() - 1);
            }
            String[] strArrSplit = str2.split("\\|");
            if (strArrSplit.length > 300 && System.currentTimeMillis() - Long.parseLong(strArrSplit[0]) > 604800000) {
                g();
                return null;
            }
            StringBuilder sb = new StringBuilder();
            for (String str3 : strArrSplit) {
                sb.append(b(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(new Date(Long.parseLong(str3)))));
                sb.append("\n");
            }
            if (sb.length() > 0) {
                sb.deleteCharAt(sb.length() - 1);
            }
            return sb.toString();
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("FileUtils|upload init data error = " + th.toString());
            g();
            return null;
        }
    }
}
