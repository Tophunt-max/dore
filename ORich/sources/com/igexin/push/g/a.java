package com.igexin.push.g;

import android.os.Environment;
import android.text.TextUtils;
import com.igexin.b.a.b.c;
import com.igexin.b.a.d.e;
import com.igexin.push.core.f;
import com.taobao.weex.el.parse.Operators;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public class a extends e {
    private static a d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ArrayList<String> f422a;
    private ArrayList<String> b;
    private long c;

    private a() {
        super(-2147483637);
        this.f422a = new ArrayList<>();
        this.b = new ArrayList<>();
        this.c = System.currentTimeMillis();
    }

    public static a i() {
        if (d == null) {
            synchronized (a.class) {
                if (d == null) {
                    d = new a();
                    c.b().a(d, true, true);
                }
            }
        }
        return d;
    }

    public static void k() {
        a aVar = d;
        if (aVar != null) {
            aVar.j();
        }
    }

    private long v() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.c;
        if ((jCurrentTimeMillis >= 60000 && this.f422a.size() > 0) || this.f422a.size() >= 10) {
            return 0L;
        }
        if (this.f422a.size() <= 0) {
            return Long.MAX_VALUE;
        }
        return 60000 - jCurrentTimeMillis;
    }

    private void w() {
        OutputStream fileOutputStream;
        if (f.B == null) {
            return;
        }
        synchronized (this) {
            this.b.addAll(this.f422a);
            this.f422a.clear();
        }
        String str = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(new Date());
        String str2 = f.e;
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        if (Environment.getExternalStorageState().equals("mounted")) {
            String str3 = f.f.getExternalFilesDir("gtpush") + "/log/";
            File file = new File(str3);
            if (!file.exists() && !file.mkdir()) {
                return;
            }
            OutputStream outputStream = null;
            try {
                File file2 = new File(str3 + str2 + Operators.DOT_STR + str + ".log");
                if (!file2.exists()) {
                    if (!file2.createNewFile()) {
                        return;
                    } else {
                        com.igexin.b.a.c.a.a();
                    }
                }
                if (com.igexin.b.a.c.a.b() == null) {
                    com.igexin.b.a.c.a.a();
                    file2.delete();
                }
                try {
                    fileOutputStream = com.igexin.b.a.c.a.a(file2, new SecretKeySpec(f.aB, "AES"));
                } catch (Throwable unused) {
                    fileOutputStream = new FileOutputStream(file2, true);
                }
                outputStream = fileOutputStream;
                StringBuilder sb = new StringBuilder("");
                Iterator<String> it = this.b.iterator();
                while (it.hasNext()) {
                    sb.append(it.next() + "\r\n");
                }
                if (sb.length() > 0) {
                    outputStream.write(sb.toString().getBytes("UTF-8"));
                }
            } catch (Exception unused2) {
                if (outputStream != null) {
                }
                this.c = System.currentTimeMillis();
                this.b.clear();
            } catch (Throwable th) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th;
            }
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException unused4) {
                }
            }
        }
        this.c = System.currentTimeMillis();
        this.b.clear();
    }

    public synchronized void a(String str) {
        this.f422a.add(str);
        try {
            if (this.f422a.size() <= 1 || this.f422a.size() >= 10) {
                notify();
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.igexin.b.a.d.a.e
    public int b() {
        return -2147483637;
    }

    @Override // com.igexin.b.a.d.e
    public void b_() {
        super.b_();
        while (true) {
            try {
                synchronized (this) {
                    while (true) {
                        long jV = v();
                        if (jV == 0) {
                            break;
                        } else {
                            wait(jV);
                        }
                    }
                }
                w();
            } catch (Throwable unused) {
                w();
                return;
            }
        }
    }

    @Override // com.igexin.b.a.d.e
    public void d() {
        super.d();
        this.n = true;
    }

    @Override // com.igexin.b.a.d.e
    protected void e() {
    }

    @Override // com.igexin.b.a.d.e
    protected void h() {
        super.h();
        d = null;
    }

    public void j() {
        if (s() != null) {
            s().interrupt();
        }
    }
}
