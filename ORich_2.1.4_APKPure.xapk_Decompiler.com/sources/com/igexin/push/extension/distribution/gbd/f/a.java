package com.igexin.push.extension.distribution.gbd.f;

import android.os.Process;
import android.text.TextUtils;
import com.igexin.b.a.b.f;
import com.igexin.b.a.d.e;
import com.igexin.push.extension.distribution.gbd.i.aj;
import com.igexin.push.extension.distribution.gbd.i.j;
import com.igexin.push.extension.distribution.gbd.i.s;
import com.taobao.weex.el.parse.Operators;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class a extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public d f392a;
    private HttpURLConnection b;
    private boolean c;

    public a(d dVar) {
        super(0);
        this.c = false;
        this.f392a = dVar;
    }

    private void a(HttpURLConnection httpURLConnection, byte[] bArr) {
        if (httpURLConnection == null) {
            return;
        }
        try {
            byte[] bArr2 = new byte[0];
            if (bArr == null) {
                bArr = bArr2;
            }
            httpURLConnection.addRequestProperty("GT_C_T", String.valueOf(1));
            httpURLConnection.addRequestProperty("GT_C_K", new String(aj.b()));
            httpURLConnection.addRequestProperty("GT_C_V", aj.d());
            String strValueOf = String.valueOf(System.currentTimeMillis());
            String strA = aj.a(strValueOf, bArr);
            httpURLConnection.addRequestProperty("GT_T", strValueOf);
            httpURLConnection.addRequestProperty("GT_C_S", strA);
        } catch (Throwable th) {
            j.a(th);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:16|(2:126|17)|(11:19|(1:21)|22|110|23|24|106|25|(4:26|(1:28)(1:130)|57|86)|29|(7:31|122|32|(1:34)|35|36|40))(3:48|(1:50)|51)|116|52|(1:54)|(1:56)|57|86) */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0151, code lost:
    
        r9 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0152, code lost:
    
        com.igexin.push.extension.distribution.gbd.i.j.a(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0156, code lost:
    
        r9 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x015a, code lost:
    
        throw r9;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0176 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0168 A[Catch: all -> 0x0191, TryCatch #5 {all -> 0x0191, blocks: (B:68:0x0164, B:70:0x0168, B:71:0x016b), top: B:114:0x0164 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x017e A[Catch: all -> 0x017a, TryCatch #10 {all -> 0x017a, blocks: (B:73:0x0176, B:77:0x017e, B:79:0x0183), top: B:124:0x0176 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0183 A[Catch: all -> 0x017a, TRY_LEAVE, TryCatch #10 {all -> 0x017a, blocks: (B:73:0x0176, B:77:0x017e, B:79:0x0183), top: B:124:0x0176 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private byte[] a(java.util.Map<java.lang.String, java.util.List<java.lang.String>> r9) {
        /*
            Method dump skipped, instruction units count: 434
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.gbd.f.a.a(java.util.Map):byte[]");
    }

    private byte[] a(byte[] bArr) {
        byte[] bArrA = f.a(bArr);
        a(this.b, bArrA);
        String requestProperty = this.b.getRequestProperty("GT_C_S");
        return requestProperty != null ? aj.a(bArrA, s.a(requestProperty.getBytes())) : bArrA;
    }

    private byte[] b(HttpURLConnection httpURLConnection, byte[] bArr) {
        String headerField;
        String headerField2;
        byte[] bArrB;
        String strA;
        try {
            if (!this.f392a.j()) {
                return this.f392a.b() ? com.igexin.b.b.a.c(com.igexin.push.extension.distribution.gbd.i.c.a(bArr, 0)) : bArr;
            }
            String headerField3 = httpURLConnection.getHeaderField("GT_ERR");
            if (headerField3 == null || !headerField3.equals("0") || (headerField = httpURLConnection.getHeaderField("GT_T")) == null || (headerField2 = httpURLConnection.getHeaderField("GT_C_S")) == null || (strA = aj.a(headerField, (bArrB = aj.b(bArr, s.a(headerField.getBytes()))))) == null || !strA.equals(headerField2)) {
                return null;
            }
            return bArrB;
        } catch (Throwable th) {
            j.a(th);
            return null;
        }
    }

    private byte[] b(Map<String, List<String>> map) {
        InputStream inputStream;
        ByteArrayOutputStream byteArrayOutputStream;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f392a.k()).openConnection();
            this.b = httpURLConnection;
            httpURLConnection.setConnectTimeout(this.f392a.e());
            this.b.setReadTimeout(this.f392a.f());
            this.b.setDoInput(this.f392a.h());
            this.b.setRequestMethod("GET");
            this.b.setUseCaches(this.f392a.d());
            this.b.setInstanceFollowRedirects(this.f392a.c());
            for (String str : this.f392a.i().keySet()) {
                this.b.setRequestProperty(str, this.f392a.i().get(str));
            }
            if (this.f392a.j()) {
                a(this.b, (byte[]) null);
            }
            inputStream = this.b.getInputStream();
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    if (this.b.getResponseCode() == 200) {
                        if (this.b.getHeaderFields() != null) {
                            map.putAll(this.b.getHeaderFields());
                        }
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int i = inputStream.read(bArr);
                            if (i == -1) {
                                break;
                            }
                            byteArrayOutputStream.write(bArr, 0, i);
                        }
                        if (byteArrayOutputStream.toByteArray() != null) {
                            byte[] bArrB = b(this.b, byteArrayOutputStream.toByteArray());
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } finally {
                                    try {
                                    } finally {
                                    }
                                }
                            }
                            byteArrayOutputStream.close();
                            return bArrB;
                        }
                    } else {
                        d dVar = this.f392a;
                        if (dVar != null) {
                            dVar.a(this.b.getResponseCode());
                        }
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } finally {
                            try {
                                j.a(th);
                            } finally {
                            }
                        }
                    }
                    byteArrayOutputStream.close();
                } catch (Throwable th) {
                    th = th;
                    try {
                        d dVar2 = this.f392a;
                        if (dVar2 != null) {
                            dVar2.a(th);
                        }
                        j.a(th);
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } finally {
                                try {
                                    j.a(th);
                                } finally {
                                }
                            }
                        }
                        if (byteArrayOutputStream != null) {
                            byteArrayOutputStream.close();
                        }
                    } catch (Throwable th2) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } finally {
                                try {
                                    j.a(th);
                                    throw th2;
                                } finally {
                                }
                            }
                        }
                        if (byteArrayOutputStream != null) {
                            byteArrayOutputStream.close();
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                byteArrayOutputStream = null;
            }
        } catch (Throwable th4) {
            th = th4;
            inputStream = null;
            byteArrayOutputStream = null;
        }
        return null;
    }

    private void i() {
        HttpURLConnection httpURLConnection = this.b;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
                this.b = null;
            } catch (Throwable th) {
                j.a(th);
                j.b("GBDAsyncHttpTask", th.toString());
            }
        }
    }

    @Override // com.igexin.b.a.d.a.e
    public final int b() {
        return -2147483639;
    }

    @Override // com.igexin.b.a.d.e
    public final void b_() {
        try {
            Process.setThreadPriority(10);
            if (this.c) {
                p();
                return;
            }
            this.c = true;
            d dVar = this.f392a;
            if (dVar == null) {
                return;
            }
            if (dVar.b != null && this.f392a.b.length > com.igexin.push.extension.distribution.gbd.c.a.aU * 1024) {
                j.b("GBDAsyncHttpTask", "http data size (" + this.f392a.b.length + ") > max size (" + (com.igexin.push.extension.distribution.gbd.c.a.aU * 1024) + Operators.BRACKET_END_STR);
                this.f392a.a(new Exception("HttpPlugin length over max size."));
                return;
            }
            this.f392a.m();
            if (TextUtils.isEmpty(this.f392a.f393a)) {
                return;
            }
            j.a("GBDAsyncHttpTask", "-----------" + this.f392a.f393a + "-----------");
            HashMap map = new HashMap();
            byte[] bArrB = this.f392a.b == null ? b(map) : a(map);
            j.a("GBDAsyncHttpTask", "resp : " + bArrB + "  headers = " + map);
            if (bArrB != null) {
                this.f392a.a(map, bArrB);
            }
        } catch (Throwable th) {
            j.a(th);
        }
    }

    @Override // com.igexin.b.a.d.e
    public void d() {
        this.n = true;
    }

    @Override // com.igexin.b.a.d.e
    protected void e() {
    }

    @Override // com.igexin.b.a.d.e
    public void f() {
        super.f();
        i();
    }
}
