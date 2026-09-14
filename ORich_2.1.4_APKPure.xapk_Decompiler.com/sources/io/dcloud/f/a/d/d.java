package io.dcloud.f.a.d;

import android.text.TextUtils;
import com.nostra13.dcloudimageloader.core.download.BaseImageDownloader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class d {
    public static byte[] a(String str, HashMap<String, String> map, boolean z) throws Exception {
        return a(str, null, map, "GET", BaseImageDownloader.DEFAULT_HTTP_CONNECT_TIMEOUT, z);
    }

    public static byte[] a(String str, HashMap<String, String> map, boolean z, String[] strArr) {
        return a(str, null, map, "GET", BaseImageDownloader.DEFAULT_HTTP_CONNECT_TIMEOUT, z, false, strArr);
    }

    private static byte[] a(String str, String str2, HashMap<String, String> map, String str3, int i, boolean z) {
        return a(str, str2, map, str3, i, z, false, null);
    }

    private static byte[] a(String str, String str2, HashMap<String, String> map, String str3, int i, boolean z, boolean z2, String[] strArr) {
        if (str != null && str.length() != 0) {
            if (map == null) {
                try {
                    map = new HashMap<>();
                } catch (Exception e) {
                    if (strArr != null) {
                        strArr[0] = e.getMessage();
                    }
                }
            }
            HttpURLConnection httpURLConnectionA = a(new URL(str), str3, i, z, z2);
            if (map != null && !map.isEmpty()) {
                for (String str4 : map.keySet()) {
                    httpURLConnectionA.setRequestProperty(str4, map.get(str4));
                }
            }
            if (!TextUtils.isEmpty(str3) && TextUtils.equals(str3.toLowerCase(), "post")) {
                a(httpURLConnectionA.getOutputStream(), str2);
            }
            int responseCode = httpURLConnectionA.getResponseCode();
            if (responseCode == 200) {
                return a(httpURLConnectionA.getInputStream());
            }
            if (strArr != null) {
                strArr[0] = String.valueOf(responseCode);
            }
            return null;
        }
        return null;
    }

    private static void a(OutputStream outputStream, String str) {
        if (str != null) {
            try {
                if (str.length() > 0) {
                    outputStream.write(str.getBytes("UTF-8"));
                }
            } catch (IOException unused) {
            }
        }
    }

    private static byte[] a(InputStream inputStream) {
        byte[] bArr;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            int i = 10240;
            int iMin = Math.min(10240, inputStream.available());
            if (iMin > 0) {
                i = iMin;
            }
            bArr = new byte[i];
        } catch (IOException e) {
            e.printStackTrace();
        }
        while (true) {
            int i2 = inputStream.read(bArr);
            if (i2 <= 0) {
                break;
            }
            byteArrayOutputStream.write(bArr, 0, i2);
            return byteArrayOutputStream.toByteArray();
        }
        inputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    public static HttpURLConnection a(URL url, String str, int i, boolean z, boolean z2) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setConnectTimeout(i);
            httpURLConnection.setReadTimeout(i);
            httpURLConnection.setRequestMethod(str);
            httpURLConnection.setDoInput(true);
            return httpURLConnection;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static byte[] a(String str, String str2, HashMap<String, String> map, String[] strArr) {
        return a(str, str2, map, "POST", BaseImageDownloader.DEFAULT_HTTP_CONNECT_TIMEOUT, true, false, strArr);
    }
}
