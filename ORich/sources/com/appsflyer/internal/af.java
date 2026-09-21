package com.appsflyer.internal;

import android.graphics.drawable.Drawable;
import android.media.AudioTrack;
import android.net.TrafficStats;
import android.os.SystemClock;
import android.view.ViewConfiguration;
import com.appsflyer.AFLogger;
import com.facebook.imagepipeline.producers.HttpUrlConnectionNetworkFetcher;
import io.dcloud.common.util.Md5Utils;
import io.dcloud.common.util.net.NetWork;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Formatter;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public class af implements Runnable {
    private final bv AFInAppEventParameterName;

    public af() {
    }

    public static String valueOf(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.reset();
            messageDigest.update(str.getBytes("UTF-8"));
            return AFKeystoreWrapper(messageDigest.digest());
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder("Error turning ");
            sb.append(str.substring(0, 6));
            sb.append(".. to SHA1");
            AFLogger.valueOf(sb.toString(), e);
            return null;
        }
    }

    public static String AFInAppEventParameterName(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(Md5Utils.ALGORITHM);
            messageDigest.reset();
            messageDigest.update(str.getBytes("UTF-8"));
            return AFKeystoreWrapper(messageDigest.digest());
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder("Error turning ");
            sb.append(str.substring(0, 6));
            sb.append(".. to MD5");
            AFLogger.valueOf(sb.toString(), e);
            return null;
        }
    }

    public static String AFKeystoreWrapper(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(str.getBytes());
            return valueOf(messageDigest.digest());
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder("Error turning ");
            sb.append(str.substring(0, 6));
            sb.append(".. to SHA-256");
            AFLogger.valueOf(sb.toString(), e);
            return null;
        }
    }

    private static String valueOf(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            sb.append(Integer.toString((b & 255) + 256, 16).substring(1));
        }
        return sb.toString();
    }

    private static String AFKeystoreWrapper(byte[] bArr) {
        Formatter formatter = new Formatter();
        for (byte b : bArr) {
            formatter.format("%02x", Byte.valueOf(b));
        }
        String string = formatter.toString();
        formatter.close();
        return string;
    }

    public static String values(String str, String str2) {
        try {
            Mac mac = Mac.getInstance("HmacSHA256");
            mac.init(new SecretKeySpec(str2.getBytes(), "HmacSHA256"));
            return valueOf(mac.doFinal(str.getBytes())).toLowerCase();
        } catch (InvalidKeyException | NoSuchAlgorithmException e) {
            AFLogger.values(e.getMessage(), e);
            return e.getMessage();
        }
    }

    public af(bv bvVar) {
        this.AFInAppEventParameterName = bvVar;
    }

    public HttpURLConnection AFKeystoreWrapper() {
        HttpURLConnection httpURLConnection;
        int responseCode;
        String strValueOf = "";
        String str = this.AFInAppEventParameterName.onAttributionFailureNative;
        String strAFVersionDeclaration = this.AFInAppEventParameterName.AFVersionDeclaration();
        boolean zAppsFlyer2dXConversionCallback = this.AFInAppEventParameterName.AppsFlyer2dXConversionCallback();
        boolean zAFLogger$LogLevel = this.AFInAppEventParameterName.AFLogger$LogLevel();
        boolean level = this.AFInAppEventParameterName.getLevel();
        boolean zValueOf = this.AFInAppEventParameterName.valueOf();
        byte[] bytes = strAFVersionDeclaration.getBytes();
        HttpURLConnection httpURLConnection2 = null;
        if (zAppsFlyer2dXConversionCallback) {
            return null;
        }
        boolean z = false;
        try {
            URL url = new URL(str);
            if (level) {
                if (ak.valueOf == null) {
                    ak.valueOf = new ak();
                }
                ak.valueOf.AFKeystoreWrapper("server_request", url.toString(), strAFVersionDeclaration);
                int length = strAFVersionDeclaration.getBytes("UTF-8").length;
                StringBuilder sb = new StringBuilder("call = ");
                sb.append(url);
                sb.append("; size = ");
                sb.append(length);
                sb.append(" byte");
                sb.append(length > 1 ? "s" : "");
                sb.append("; body = ");
                sb.append(strAFVersionDeclaration);
                am.AFInAppEventParameterName(sb.toString());
            }
            TrafficStats.setThreadStatsTag("AppsFlyer".hashCode());
            httpURLConnection = (HttpURLConnection) url.openConnection();
            try {
                httpURLConnection.setReadTimeout(HttpUrlConnectionNetworkFetcher.HTTP_DEFAULT_TIMEOUT);
                httpURLConnection.setConnectTimeout(HttpUrlConnectionNetworkFetcher.HTTP_DEFAULT_TIMEOUT);
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setDoInput(true);
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setRequestProperty(NetWork.CONTENT_TYPE, zValueOf ? "application/octet-stream" : "application/json");
                OutputStream outputStream = httpURLConnection.getOutputStream();
                if (zValueOf) {
                    try {
                        try {
                            bytes = (byte[]) ((Class) e.AFInAppEventType(24 - (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)), (char) Drawable.resolveOpacity(0, 0), 24 - (ViewConfiguration.getDoubleTapTimeout() >> 16))).getDeclaredMethod("valueOf", byte[].class).invoke(((Class) e.AFInAppEventType(25 - (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1)), (char) (ViewConfiguration.getMinimumFlingVelocity() >> 16), (ViewConfiguration.getFadingEdgeLength() >> 16) + 24)).getMethod("AFKeystoreWrapper", String.class).invoke(null, this.AFInAppEventParameterName.init), bytes);
                        } catch (Throwable th) {
                            Throwable cause = th.getCause();
                            if (cause != null) {
                                throw cause;
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        Throwable cause2 = th2.getCause();
                        if (cause2 != null) {
                            throw cause2;
                        }
                        throw th2;
                    }
                }
                outputStream.write(bytes);
                outputStream.close();
                httpURLConnection.connect();
                responseCode = httpURLConnection.getResponseCode();
                if (zAFLogger$LogLevel) {
                    ag.AFInAppEventType();
                    strValueOf = ag.valueOf(httpURLConnection);
                }
                if (level) {
                    if (ak.valueOf == null) {
                        ak.valueOf = new ak();
                    }
                    ak.valueOf.AFKeystoreWrapper("server_response", url.toString(), String.valueOf(responseCode), strValueOf);
                }
            } catch (Throwable th3) {
                th = th3;
                httpURLConnection2 = httpURLConnection;
                AFLogger.valueOf("Error while calling ".concat(String.valueOf(str)), th);
                httpURLConnection = httpURLConnection2;
            }
        } catch (Throwable th4) {
            th = th4;
        }
        if (responseCode == 200) {
            AFLogger.AFKeystoreWrapper("Status 200 ok");
        } else {
            z = true;
        }
        StringBuilder sb2 = new StringBuilder("Connection ");
        sb2.append(z ? "error" : "call succeeded");
        sb2.append(": ");
        sb2.append(strValueOf);
        AFLogger.AFKeystoreWrapper(sb2.toString());
        return httpURLConnection;
    }

    @Override // java.lang.Runnable
    public void run() {
        HttpURLConnection httpURLConnectionAFKeystoreWrapper = AFKeystoreWrapper();
        if (httpURLConnectionAFKeystoreWrapper != null) {
            httpURLConnectionAFKeystoreWrapper.disconnect();
        }
    }
}
