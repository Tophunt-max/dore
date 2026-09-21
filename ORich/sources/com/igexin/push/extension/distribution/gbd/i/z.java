package com.igexin.push.extension.distribution.gbd.i;

import android.content.Context;
import android.content.pm.Signature;
import android.text.TextUtils;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public class z extends t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f419a;
    private String b;

    public z() {
        super("com.heytap.openid", "com.heytap.openid.IdentifyService", "action.com.heytap.openid.OPEN_ID_SERVICE", "com.heytap.openid.IOpenID");
    }

    @Override // com.igexin.push.extension.distribution.gbd.i.t
    protected String a() {
        return "OUID";
    }

    @Override // com.igexin.push.extension.distribution.gbd.i.t
    protected String d(Context context) {
        if (TextUtils.isEmpty(this.b)) {
            this.b = context.getPackageName();
        }
        return this.b;
    }

    @Override // com.igexin.push.extension.distribution.gbd.i.t
    protected String e(Context context) {
        if (TextUtils.isEmpty(this.f419a)) {
            try {
                this.b = d(context);
                Signature[] signatureArr = context.getPackageManager().getPackageInfo(this.b, 64).signatures;
                if (signatureArr != null && signatureArr.length > 0) {
                    byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(signatureArr[0].toByteArray());
                    StringBuilder sb = new StringBuilder();
                    for (byte b : bArrDigest) {
                        sb.append(Integer.toHexString((b & 255) | 256).substring(1, 3));
                    }
                    this.f419a = sb.toString();
                }
            } catch (Throwable unused) {
            }
        }
        return this.f419a;
    }
}
