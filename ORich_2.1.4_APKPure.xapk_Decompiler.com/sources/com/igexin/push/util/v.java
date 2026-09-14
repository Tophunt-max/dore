package com.igexin.push.util;

import android.text.TextUtils;
import com.facebook.imagepipeline.producers.HttpUrlConnectionNetworkFetcher;
import io.dcloud.common.DHInterface.IWebview;
import io.dcloud.common.util.net.NetWork;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.StringWriter;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f446a = "com.igexin.push.util.v";

    private static String a(InputStream inputStream, String str) throws IOException {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, str));
            StringWriter stringWriter = new StringWriter();
            char[] cArr = new char[256];
            while (true) {
                int i = bufferedReader.read(cArr);
                if (i <= 0) {
                    break;
                }
                stringWriter.write(cArr, 0, i);
            }
            return stringWriter.toString();
        } finally {
            if (inputStream != null) {
                inputStream.close();
            }
        }
    }

    private static String a(String str) {
        if (!TextUtils.isEmpty(str)) {
            String[] strArrSplit = str.split(";");
            int length = strArrSplit.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                String strTrim = strArrSplit[i].trim();
                if (strTrim.startsWith("charset")) {
                    String[] strArrSplit2 = strTrim.split("=", 2);
                    if (strArrSplit2.length == 2 && !TextUtils.isEmpty(strArrSplit2[1])) {
                        return strArrSplit2[1].trim();
                    }
                } else {
                    i++;
                }
            }
        }
        return "utf-8";
    }

    private static HttpURLConnection a(URL url, String str, String str2) throws ProtocolException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setRequestMethod(str);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setConnectTimeout(HttpUrlConnectionNetworkFetcher.HTTP_DEFAULT_TIMEOUT);
        httpURLConnection.setReadTimeout(HttpUrlConnectionNetworkFetcher.HTTP_DEFAULT_TIMEOUT);
        httpURLConnection.setRequestProperty(IWebview.USER_AGENT, "GETUI");
        httpURLConnection.setRequestProperty(NetWork.CONTENT_TYPE, str2);
        httpURLConnection.setRequestProperty("HOST", url.getHost() + ":" + url.getPort());
        return httpURLConnection;
    }

    private static byte[] a(InputStream inputStream) throws Throwable {
        BufferedInputStream bufferedInputStream;
        BufferedInputStream bufferedInputStream2 = null;
        try {
            bufferedInputStream = new BufferedInputStream(inputStream);
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(1024);
                byte[] bArr = new byte[1024];
                while (true) {
                    int i = bufferedInputStream.read(bArr);
                    if (i == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i);
                }
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                try {
                    bufferedInputStream.close();
                } catch (IOException unused) {
                }
                return byteArray;
            } catch (Exception unused2) {
                if (bufferedInputStream != null) {
                    try {
                        bufferedInputStream.close();
                    } catch (IOException unused3) {
                    }
                }
                return null;
            } catch (Throwable th) {
                th = th;
                bufferedInputStream2 = bufferedInputStream;
                if (bufferedInputStream2 != null) {
                    try {
                        bufferedInputStream2.close();
                    } catch (IOException unused4) {
                    }
                }
                throw th;
            }
        } catch (Exception unused5) {
            bufferedInputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static byte[] a(String str, String str2, byte[] bArr, int i, int i2) throws Throwable {
        HttpURLConnection httpURLConnectionA;
        OutputStream outputStream = null;
        try {
            httpURLConnectionA = a(new URL(str), "POST", str2);
            try {
                try {
                    httpURLConnectionA.setConnectTimeout(i);
                    httpURLConnectionA.setReadTimeout(i2);
                    try {
                        outputStream = httpURLConnectionA.getOutputStream();
                        outputStream.write(bArr);
                        byte[] bArrA = a(httpURLConnectionA);
                        if (outputStream != null) {
                            outputStream.close();
                        }
                        if (httpURLConnectionA != null) {
                            httpURLConnectionA.disconnect();
                        }
                        return bArrA;
                    } catch (Exception e) {
                        throw e;
                    }
                } catch (IOException e2) {
                    throw e2;
                }
            } catch (Throwable th) {
                th = th;
                if (outputStream != null) {
                    outputStream.close();
                }
                if (httpURLConnectionA != null) {
                    httpURLConnectionA.disconnect();
                }
                throw th;
            }
        } catch (IOException e3) {
            throw e3;
        } catch (Throwable th2) {
            th = th2;
            httpURLConnectionA = null;
        }
    }

    public static byte[] a(String str, byte[] bArr, int i, int i2) {
        return a(str, "application/octet-stream", bArr, i, i2);
    }

    private static byte[] a(HttpURLConnection httpURLConnection) {
        return httpURLConnection.getErrorStream() == null ? a(httpURLConnection.getInputStream()) : b(httpURLConnection).getBytes();
    }

    private static String b(HttpURLConnection httpURLConnection) throws IOException {
        String strA = a(httpURLConnection.getErrorStream(), a(httpURLConnection.getContentType()));
        if (!TextUtils.isEmpty(strA)) {
            return strA;
        }
        throw new IOException(httpURLConnection.getResponseCode() + ":" + httpURLConnection.getResponseMessage());
    }
}
