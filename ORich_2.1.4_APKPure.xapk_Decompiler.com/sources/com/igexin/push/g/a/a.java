package com.igexin.push.g.a;

import android.os.Process;
import com.igexin.push.config.k;
import com.nostra13.dcloudimageloader.core.download.BaseImageDownloader;
import io.dcloud.common.util.net.NetWork;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public class a extends com.igexin.b.a.d.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f423a = "com.igexin.push.g.a.a";
    public b b;
    private HttpURLConnection c;

    public a(b bVar) {
        super(0);
        this.b = bVar;
    }

    private byte[] a(String str) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        Throwable th;
        InputStream inputStream;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            this.c = httpURLConnection;
            httpURLConnection.setConnectTimeout(BaseImageDownloader.DEFAULT_HTTP_READ_TIMEOUT);
            this.c.setReadTimeout(BaseImageDownloader.DEFAULT_HTTP_READ_TIMEOUT);
            this.c.setRequestMethod("GET");
            this.c.setDoInput(true);
            inputStream = this.c.getInputStream();
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    if (this.c.getResponseCode() == 200) {
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
                            } catch (Exception unused) {
                            }
                        }
                        try {
                            byteArrayOutputStream.close();
                        } catch (Exception unused2) {
                        }
                        i();
                        return byteArray;
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Exception unused3) {
                        }
                    }
                } catch (Exception unused4) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Exception unused5) {
                        }
                    }
                    if (byteArrayOutputStream != null) {
                    }
                    i();
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Exception unused6) {
                        }
                    }
                    if (byteArrayOutputStream != null) {
                        try {
                            byteArrayOutputStream.close();
                        } catch (Exception unused7) {
                        }
                    }
                    i();
                    throw th;
                }
            } catch (Exception unused8) {
                byteArrayOutputStream = null;
            } catch (Throwable th3) {
                byteArrayOutputStream = null;
                th = th3;
            }
        } catch (Exception unused9) {
            inputStream = null;
            byteArrayOutputStream = null;
        } catch (Throwable th4) {
            byteArrayOutputStream = null;
            th = th4;
            inputStream = null;
        }
        try {
            byteArrayOutputStream.close();
        } catch (Exception unused10) {
        }
        i();
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.ByteArrayOutputStream] */
    private byte[] a(String str, byte[] bArr) throws Throwable {
        InputStream inputStream;
        ByteArrayOutputStream byteArrayOutputStream;
        Throwable th;
        DataOutputStream dataOutputStream;
        ?? r1;
        try {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                this.c = httpURLConnection;
                httpURLConnection.setDoInput(true);
                this.c.setDoOutput(true);
                this.c.setRequestMethod("POST");
                this.c.setUseCaches(false);
                this.c.setInstanceFollowRedirects(true);
                this.c.setRequestProperty(NetWork.CONTENT_TYPE, "application/octet-stream");
                this.c.setConnectTimeout(BaseImageDownloader.DEFAULT_HTTP_READ_TIMEOUT);
                this.c.setReadTimeout(BaseImageDownloader.DEFAULT_HTTP_READ_TIMEOUT);
                this.c.connect();
                dataOutputStream = new DataOutputStream(this.c.getOutputStream());
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            dataOutputStream = null;
            inputStream = null;
        } catch (Throwable th2) {
            inputStream = null;
            byteArrayOutputStream = null;
            th = th2;
            dataOutputStream = null;
        }
        try {
            dataOutputStream.write(bArr, 0, bArr.length);
            dataOutputStream.flush();
        } catch (Exception unused3) {
            inputStream = null;
            r1 = inputStream;
        } catch (Throwable th3) {
            byteArrayOutputStream = null;
            th = th3;
            inputStream = null;
        }
        if (this.c.getResponseCode() != 200) {
            dataOutputStream.close();
            i();
            return null;
        }
        inputStream = this.c.getInputStream();
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                byte[] bArr2 = new byte[1024];
                while (true) {
                    int i = inputStream.read(bArr2);
                    if (i == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr2, 0, i);
                }
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                try {
                    dataOutputStream.close();
                } catch (Exception unused4) {
                }
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Exception unused5) {
                    }
                }
                try {
                    byteArrayOutputStream.close();
                } catch (Exception unused6) {
                }
                i();
                return byteArray;
            } catch (Exception unused7) {
                r1 = byteArrayOutputStream;
            } catch (Throwable th4) {
                th = th4;
                if (dataOutputStream != null) {
                    try {
                        dataOutputStream.close();
                    } catch (Exception unused8) {
                    }
                }
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Exception unused9) {
                    }
                }
                if (byteArrayOutputStream != null) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (Exception unused10) {
                    }
                }
                i();
                throw th;
            }
        } catch (Exception unused11) {
            r1 = 0;
        } catch (Throwable th5) {
            byteArrayOutputStream = null;
            th = th5;
        }
        if (dataOutputStream != null) {
            try {
                dataOutputStream.close();
            } catch (Exception unused12) {
            }
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (Exception unused13) {
            }
        }
        if (r1 != 0) {
            r1.close();
        }
        i();
        return null;
    }

    private void i() {
        HttpURLConnection httpURLConnection = this.c;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
                this.c = null;
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.igexin.b.a.d.a.e
    public final int b() {
        return -2147483639;
    }

    @Override // com.igexin.b.a.d.e
    public final void b_() throws Exception {
        super.b_();
        Process.setThreadPriority(10);
        b bVar = this.b;
        if (bVar == null || bVar.b == null || (this.b.c != null && this.b.c.length > k.J * 1024)) {
            p();
            com.igexin.b.a.c.b.a(f423a + "|run return ###");
            return;
        }
        try {
            byte[] bArrA = this.b.c == null ? a(this.b.b) : a(this.b.b, this.b.c);
            if (bArrA == null) {
                Exception exc = new Exception("Http response ＝＝ null");
                this.b.a(exc);
                throw exc;
            }
            try {
                this.b.a(bArrA);
                com.igexin.b.a.b.c.b().a(this.b);
                com.igexin.b.a.b.c.b().c();
            } catch (Exception e) {
                this.b.a(e);
                throw e;
            }
        } catch (Exception e2) {
            this.b.a(e2);
            throw e2;
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
