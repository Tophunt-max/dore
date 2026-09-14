package com.igexin.push.extension.distribution.gbd.i;

import android.content.Context;
import com.taobao.weex.el.parse.Operators;
import java.io.File;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class ag {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static ag f400a;
    private long c = 0;
    private long d = 0;
    private long e = 0;
    private Context b = com.igexin.push.extension.distribution.gbd.c.c.f373a;

    private ag() {
    }

    public static synchronized ag a() {
        if (f400a == null) {
            f400a = new ag();
        }
        return f400a;
    }

    private void a(File file) {
        if (file == null || !file.exists() || this.e >= com.igexin.push.extension.distribution.gbd.c.a.an) {
            return;
        }
        this.e++;
        if (!file.isDirectory()) {
            if (!file.isFile() || file.lastModified() <= this.d) {
                return;
            }
            this.d = file.lastModified();
            return;
        }
        if (file.lastModified() > this.c) {
            this.c = file.lastModified();
        }
        File[] fileArrListFiles = file.listFiles(new ai(this));
        if (fileArrListFiles == null || fileArrListFiles.length <= 0) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            a(file2);
        }
    }

    public String a(String str, boolean z) {
        try {
            this.c = 0L;
            this.d = 0L;
            this.e = 0L;
            File file = new File(this.b.getExternalFilesDir(null).getParentFile().getParent() + Operators.DIV + str);
            File[] fileArrListFiles = file.listFiles();
            this.c = file.lastModified();
            int i = 0;
            if (fileArrListFiles != null && fileArrListFiles.length > 0) {
                Arrays.sort(fileArrListFiles, new ah(this));
                for (File file2 : fileArrListFiles) {
                    a(file2);
                }
            }
            if (System.currentTimeMillis() - Math.max(this.c, this.d) > com.igexin.push.extension.distribution.gbd.c.a.ao * 1000) {
                return "error";
            }
            StringBuilder sb = new StringBuilder();
            sb.append(this.c);
            sb.append("&");
            sb.append(this.d);
            sb.append("&");
            sb.append(this.e);
            sb.append("&");
            if (!z) {
                i = 1;
            }
            sb.append(i);
            return sb.toString();
        } catch (Throwable th) {
            th.printStackTrace();
            return "error";
        }
    }
}
