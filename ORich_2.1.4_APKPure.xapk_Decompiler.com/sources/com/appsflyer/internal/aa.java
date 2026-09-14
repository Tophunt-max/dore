package com.appsflyer.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import android.os.Process;
import com.android.billingclient.api.Purchase;
import com.appsflyer.AFLogger;
import com.taobao.weex.el.parse.Operators;
import java.io.ByteArrayInputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class aa {
    public final Map<String, String> AFInAppEventParameterName;
    private final boolean AFInAppEventType;
    private final boolean AFKeystoreWrapper;
    public final List<Purchase> valueOf;

    public aa() {
    }

    public static boolean values(Context context, Intent intent) {
        return context.getPackageManager().queryIntentServices(intent, 0).size() > 0;
    }

    public static boolean valueOf(Context context, String str) {
        if (str == null) {
            throw new IllegalArgumentException("permission is null");
        }
        int iCheckPermission = context.checkPermission(str, Process.myPid(), Process.myUid());
        StringBuilder sb = new StringBuilder("is Permission Available: ");
        sb.append(str);
        sb.append("; res: ");
        sb.append(iCheckPermission);
        AFLogger.values(sb.toString());
        return iCheckPermission == 0;
    }

    public static boolean AFKeystoreWrapper() {
        return Build.BRAND.equals("OPPO");
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static java.util.Map<java.lang.String, java.lang.String> values(android.content.Context r12, java.util.Map<java.lang.String, java.lang.String> r13, android.net.Uri r14) {
        /*
            Method dump skipped, instruction units count: 227
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.aa.values(android.content.Context, java.util.Map, android.net.Uri):java.util.Map");
    }

    public static String values(PackageManager packageManager, String str) throws NoSuchAlgorithmException, PackageManager.NameNotFoundException, CertificateException {
        Signature[] signatureArr = packageManager.getPackageInfo(str, 64).signatures;
        if (signatureArr == null) {
            return null;
        }
        X509Certificate x509Certificate = (X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signatureArr[0].toByteArray()));
        MessageDigest messageDigest = MessageDigest.getInstance("SHA256");
        messageDigest.update(x509Certificate.getEncoded());
        return String.format("%032X", new BigInteger(1, messageDigest.digest()));
    }

    public static long AFInAppEventType(Context context, String str) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
            if (Build.VERSION.SDK_INT >= 28) {
                return packageInfo.getLongVersionCode();
            }
            return packageInfo.versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            AFLogger.valueOf(e.getMessage(), e);
            return 0L;
        }
    }

    public static String AFInAppEventParameterName(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            AFLogger.valueOf(e.getMessage(), e);
            return "";
        }
    }

    public aa(boolean z, boolean z2, List<Purchase> list, Map<String, String> map) {
        this.AFKeystoreWrapper = z;
        this.AFInAppEventType = z2;
        this.valueOf = list;
        this.AFInAppEventParameterName = null;
    }

    public final boolean values() {
        return this.AFKeystoreWrapper;
    }

    public final boolean AFInAppEventParameterName() {
        return this.AFInAppEventType;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            aa aaVar = (aa) obj;
            if (this.AFKeystoreWrapper != aaVar.AFKeystoreWrapper || this.AFInAppEventType != aaVar.AFInAppEventType || !this.valueOf.equals(aaVar.valueOf)) {
                return false;
            }
            Map<String, String> map = this.AFInAppEventParameterName;
            Map<String, String> map2 = aaVar.AFInAppEventParameterName;
            if (map != null) {
                return map.equals(map2);
            }
            if (map2 == null) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (((((this.AFKeystoreWrapper ? 1 : 0) * 31) + (this.AFInAppEventType ? 1 : 0)) * 31) + this.valueOf.hashCode()) * 31;
        Map<String, String> map = this.AFInAppEventParameterName;
        return iHashCode + (map != null ? map.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ArsValidateRequestData{isSandbox=");
        sb.append(this.AFKeystoreWrapper);
        sb.append(", isHistory=");
        sb.append(this.AFInAppEventType);
        sb.append(", subscriptions=");
        sb.append(this.valueOf);
        sb.append(", additionalParams=");
        sb.append(this.AFInAppEventParameterName);
        sb.append(Operators.BLOCK_END);
        return sb.toString();
    }
}
