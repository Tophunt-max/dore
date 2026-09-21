package com.igexin.push.core.f;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.igexin.push.core.f;
import com.igexin.push.util.g;
import com.taobao.weex.el.parse.Operators;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
class a implements c {
    private String c;
    private String d;
    private static final String b = "gt" + Build.MODEL;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final byte[] f239a = {47, 115, 100, 99, 97, 114, 100, 47, 65, 110, 100, 114, 111, 105, 100, 47, 109, 101, 100, 105, 97, 47};

    protected a() {
        try {
            if (e(f.f)) {
                this.c = new String(f239a) + Operators.DOT_STR + Integer.toHexString(b.hashCode()).toUpperCase() + Operators.DIV;
                StringBuilder sb = new StringBuilder();
                sb.append("AndroidQSDStorage|dir = ");
                sb.append(this.c);
                com.igexin.b.a.c.b.a(sb.toString());
                File file = new File(this.c);
                if (file.exists()) {
                    return;
                }
                file.mkdirs();
            }
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("AndroidQSDStorage|e = " + th);
        }
    }

    private String a(String str) {
        return com.igexin.b.a.c.a.a(com.igexin.b.a.a.a.d(str.getBytes(), b)).toUpperCase();
    }

    private String b(String str) {
        return new String(com.igexin.b.a.a.a.c(com.igexin.b.a.c.a.a(str), b));
    }

    private void d(Context context) {
        if (TextUtils.isEmpty(this.d)) {
            this.d = this.c + com.igexin.b.a.c.a.a(com.igexin.b.a.a.a.d(context.getPackageName().getBytes(), b)).toUpperCase() + Operators.DIV;
        }
    }

    private boolean e(Context context) {
        return new com.igexin.sdk.a.b(context).c();
    }

    @Override // com.igexin.push.core.f.c
    public String a(Context context) {
        if (!e(context)) {
            return null;
        }
        File file = new File(this.c + "di/");
        if (!file.exists()) {
            return null;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null || fileArrListFiles.length == 0) {
            com.igexin.b.a.c.b.a("AndroidQSDStorage|getDeviceId() childs = NULL");
            return null;
        }
        File file2 = fileArrListFiles[0];
        try {
            return b(file2.getName());
        } catch (Throwable unused) {
            file2.delete();
            return null;
        }
    }

    @Override // com.igexin.push.core.f.c
    public void a(Context context, long j) {
        if (e(context)) {
            d(context);
            File file = new File(this.d + "ss");
            if (j == 0) {
                g.a(file, new String[0]);
                return;
            }
            String strA = a(String.valueOf(j));
            File file2 = new File(file.getAbsolutePath() + Operators.DIV + strA);
            if (file2.exists()) {
                return;
            }
            boolean zMkdirs = file2.mkdirs();
            if (zMkdirs) {
                g.a(file, strA);
            }
            com.igexin.b.a.c.b.a("AndroidQSDStorage|saveSession() isCreated = " + zMkdirs);
        }
    }

    @Override // com.igexin.push.core.f.c
    public void a(Context context, String str) {
        if (e(context) && !TextUtils.isEmpty(str)) {
            String strA = a(str);
            File file = new File(this.c + "di");
            File file2 = new File(file.getAbsolutePath() + Operators.DIV + strA);
            if (file2.exists()) {
                return;
            }
            boolean zMkdirs = file2.mkdirs();
            if (zMkdirs) {
                g.a(file, strA);
            }
            com.igexin.b.a.c.b.a("AndroidQSDStorage|saveDeviceId() isCreated = " + zMkdirs);
        }
    }

    @Override // com.igexin.push.core.f.c
    public String b(Context context) {
        if (!e(context)) {
            return null;
        }
        d(context);
        File file = new File(this.d + "c");
        if (!file.exists()) {
            return null;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null || fileArrListFiles.length == 0) {
            com.igexin.b.a.c.b.a("AndroidQSDStorage|getCid() childs = NULL");
            return null;
        }
        File file2 = fileArrListFiles[0];
        try {
            return b(file2.getName());
        } catch (Throwable unused) {
            file2.delete();
            return null;
        }
    }

    @Override // com.igexin.push.core.f.c
    public void b(Context context, String str) {
        if (e(context)) {
            d(context);
            File file = new File(this.d + "c");
            if (TextUtils.isEmpty(str)) {
                g.a(file, new String[0]);
                return;
            }
            String strA = a(str);
            File file2 = new File(file.getAbsolutePath() + Operators.DIV + strA);
            if (file2.exists()) {
                return;
            }
            boolean zMkdirs = file2.mkdirs();
            if (zMkdirs) {
                g.a(file, strA);
            }
            com.igexin.b.a.c.b.a("AndroidQSDStorage|saveCid() isCreated = " + zMkdirs);
        }
    }

    @Override // com.igexin.push.core.f.c
    public long c(Context context) {
        if (!e(context)) {
            return 0L;
        }
        d(context);
        File file = new File(this.d + "ss");
        if (!file.exists()) {
            return 0L;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null || fileArrListFiles.length == 0) {
            com.igexin.b.a.c.b.a("AndroidQSDStorage|getSession() childs = NULL");
            return 0L;
        }
        File file2 = fileArrListFiles[0];
        try {
            return Long.parseLong(b(file2.getName()));
        } catch (Throwable unused) {
            file2.delete();
            return 0L;
        }
    }
}
