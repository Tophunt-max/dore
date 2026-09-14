package com.igexin.push.g.a;

import android.os.Process;
import com.igexin.b.a.b.f;
import com.igexin.push.config.k;
import com.igexin.push.util.EncryptUtils;
import com.nostra13.dcloudimageloader.core.download.BaseImageDownloader;
import io.dcloud.common.util.net.NetWork;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public class c extends com.igexin.b.a.d.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public b f424a;
    private HttpURLConnection b;

    public c(b bVar) {
        super(0);
        this.f424a = bVar;
    }

    private d a(String str) {
        try {
            HttpURLConnection httpURLConnectionB = b(str);
            this.b = httpURLConnectionB;
            byte[] bArrA = a(httpURLConnectionB);
            if (bArrA != null) {
                d dVarB = b(this.b, bArrA);
                i();
                return dVarB;
            }
        } catch (Throwable unused) {
        }
        i();
        return new d(this, false, null);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(6:8|(3:27|9|(5:11|23|12|13|14))|25|18|19|20) */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.igexin.push.g.a.d a(java.lang.String r4, byte[] r5) {
        /*
            r3 = this;
            r0 = 0
            r1 = 0
            java.net.HttpURLConnection r4 = r3.b(r4, r5)     // Catch: java.lang.Throwable -> L46
            r3.b = r4     // Catch: java.lang.Throwable -> L46
            byte[] r4 = r3.a(r5, r4)     // Catch: java.lang.Throwable -> L46
            if (r4 != 0) goto L18
            com.igexin.push.g.a.d r4 = new com.igexin.push.g.a.d     // Catch: java.lang.Throwable -> L46
            r5 = 1
            r4.<init>(r3, r5, r1)     // Catch: java.lang.Throwable -> L46
            r3.i()
            return r4
        L18:
            java.net.HttpURLConnection r5 = r3.b     // Catch: java.lang.Throwable -> L46
            r5.connect()     // Catch: java.lang.Throwable -> L46
            java.io.DataOutputStream r5 = new java.io.DataOutputStream     // Catch: java.lang.Throwable -> L46
            java.net.HttpURLConnection r2 = r3.b     // Catch: java.lang.Throwable -> L46
            java.io.OutputStream r2 = r2.getOutputStream()     // Catch: java.lang.Throwable -> L46
            r5.<init>(r2)     // Catch: java.lang.Throwable -> L46
            int r2 = r4.length     // Catch: java.lang.Throwable -> L44
            r5.write(r4, r0, r2)     // Catch: java.lang.Throwable -> L44
            r5.flush()     // Catch: java.lang.Throwable -> L44
            java.net.HttpURLConnection r4 = r3.b     // Catch: java.lang.Throwable -> L44
            byte[] r4 = r3.a(r4)     // Catch: java.lang.Throwable -> L44
            if (r4 == 0) goto L49
            java.net.HttpURLConnection r2 = r3.b     // Catch: java.lang.Throwable -> L44
            com.igexin.push.g.a.d r4 = r3.b(r2, r4)     // Catch: java.lang.Throwable -> L44
            r5.close()     // Catch: java.lang.Exception -> L40
        L40:
            r3.i()
            return r4
        L44:
            goto L47
        L46:
            r5 = r1
        L47:
            if (r5 == 0) goto L4c
        L49:
            r5.close()     // Catch: java.lang.Exception -> L4c
        L4c:
            r3.i()
            com.igexin.push.g.a.d r4 = new com.igexin.push.g.a.d
            r4.<init>(r3, r0, r1)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.g.a.c.a(java.lang.String, byte[]):com.igexin.push.g.a.d");
    }

    private void a(HttpURLConnection httpURLConnection, byte[] bArr) {
        if (httpURLConnection == null) {
            return;
        }
        byte[] bArr2 = new byte[0];
        if (bArr == null) {
            bArr = bArr2;
        }
        httpURLConnection.addRequestProperty("GT_C_T", String.valueOf(1));
        httpURLConnection.addRequestProperty("GT_C_K", new String(EncryptUtils.getRSAKeyId()));
        httpURLConnection.addRequestProperty("GT_C_V", EncryptUtils.getHttpGTCV());
        String strValueOf = String.valueOf(System.currentTimeMillis());
        String httpSignature = EncryptUtils.getHttpSignature(strValueOf, bArr);
        httpURLConnection.addRequestProperty("GT_T", strValueOf);
        httpURLConnection.addRequestProperty("GT_C_S", httpSignature);
    }

    private void a(byte[] bArr) {
        this.f424a.a(bArr);
        com.igexin.b.a.b.c.b().a(this.f424a);
        com.igexin.b.a.b.c.b().c();
    }

    private byte[] a(HttpURLConnection httpURLConnection) throws Exception {
        InputStream inputStream;
        InputStream inputStream2 = null;
        try {
            try {
                inputStream = httpURLConnection.getInputStream();
            } catch (Exception e) {
                throw e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            if (httpURLConnection.getResponseCode() != 200) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Exception unused) {
                    }
                }
                return null;
            }
            byte[] bArr = new byte[1024];
            while (true) {
                int i = inputStream.read(bArr);
                if (i == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, i);
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Exception unused2) {
                }
            }
            return byteArray;
        } catch (Exception e2) {
            throw e2;
        } catch (Throwable th2) {
            th = th2;
            inputStream2 = inputStream;
            if (inputStream2 != null) {
                try {
                    inputStream2.close();
                } catch (Exception unused3) {
                }
            }
            throw th;
        }
    }

    private byte[] a(byte[] bArr, HttpURLConnection httpURLConnection) {
        String requestProperty;
        try {
            if (!httpURLConnection.getRequestProperties().containsKey("GT_C_S") || (requestProperty = httpURLConnection.getRequestProperty("GT_C_S")) == null) {
                return null;
            }
            return EncryptUtils.aesEncHttp(bArr, EncryptUtils.md5(requestProperty.getBytes()));
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("_HttpTask|" + th.toString());
            return null;
        }
    }

    private d b(HttpURLConnection httpURLConnection, byte[] bArr) {
        try {
            String headerField = httpURLConnection.getHeaderField("GT_ERR");
            com.igexin.b.a.c.b.a("_HttpTask|GT_ERR = " + headerField);
            if (headerField != null && headerField.equals("0")) {
                String headerField2 = httpURLConnection.getHeaderField("GT_T");
                if (headerField2 == null) {
                    com.igexin.b.a.c.b.a("_HttpTask|GT_T = null");
                    return new d(this, true, null);
                }
                String headerField3 = httpURLConnection.getHeaderField("GT_C_S");
                if (headerField3 == null) {
                    com.igexin.b.a.c.b.a("_HttpTask|GT_C_S = null");
                    return new d(this, true, null);
                }
                byte[] bArrAesDecHttp = EncryptUtils.aesDecHttp(bArr, EncryptUtils.md5(headerField2.getBytes()));
                String httpSignature = EncryptUtils.getHttpSignature(headerField2, bArrAesDecHttp);
                if (httpSignature != null && httpSignature.equals(headerField3)) {
                    return new d(this, false, bArrAesDecHttp);
                }
                com.igexin.b.a.c.b.a("_HttpTask|signature = null or error");
                return new d(this, true, null);
            }
            return new d(this, true, null);
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("_HttpTask|" + th.toString());
            return new d(this, true, null);
        }
    }

    private HttpURLConnection b(String str) throws ProtocolException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        this.b = httpURLConnection;
        httpURLConnection.setConnectTimeout(BaseImageDownloader.DEFAULT_HTTP_READ_TIMEOUT);
        this.b.setReadTimeout(BaseImageDownloader.DEFAULT_HTTP_READ_TIMEOUT);
        this.b.setRequestMethod("GET");
        this.b.setDoInput(true);
        a(this.b, (byte[]) null);
        return this.b;
    }

    private HttpURLConnection b(String str, byte[] bArr) throws ProtocolException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        this.b = httpURLConnection;
        httpURLConnection.setDoInput(true);
        this.b.setDoOutput(true);
        this.b.setRequestMethod("POST");
        this.b.setUseCaches(false);
        this.b.setInstanceFollowRedirects(true);
        this.b.setRequestProperty(NetWork.CONTENT_TYPE, "application/octet-stream");
        this.b.setConnectTimeout(BaseImageDownloader.DEFAULT_HTTP_READ_TIMEOUT);
        this.b.setReadTimeout(BaseImageDownloader.DEFAULT_HTTP_READ_TIMEOUT);
        a(this.b, bArr);
        return this.b;
    }

    private void i() {
        HttpURLConnection httpURLConnection = this.b;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
                this.b = null;
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.igexin.b.a.d.a.e
    public final int b() {
        return -2147483638;
    }

    @Override // com.igexin.b.a.d.e
    public final void b_() throws Exception {
        super.b_();
        Process.setThreadPriority(10);
        b bVar = this.f424a;
        if (bVar == null || bVar.b == null || (this.f424a.c != null && this.f424a.c.length > k.J * 1024)) {
            p();
            com.igexin.b.a.c.b.a("_HttpTask|run return ###");
            return;
        }
        if (this.f424a.c != null && this.f424a.c.length > 0) {
            b bVar2 = this.f424a;
            bVar2.c = f.c(bVar2.c);
        }
        for (int i = 0; i < 3; i++) {
            d dVarA = this.f424a.c == null ? a(this.f424a.b) : a(this.f424a.b, this.f424a.c);
            if (dVarA.f425a) {
                throw new Exception("http server resp decode header error");
            }
            if (dVarA.b != null) {
                a(dVarA.b);
                return;
            } else {
                if (i == 2) {
                    this.f424a.a(new Exception("try up to limit"));
                    throw new Exception("http request exception, try times = " + (i + 1));
                }
            }
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
