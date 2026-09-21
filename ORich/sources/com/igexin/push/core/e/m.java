package com.igexin.push.core.e;

import android.content.Context;
import android.content.pm.Signature;
import android.text.TextUtils;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public class m extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f236a;
    private String b;

    public m() {
        super("com.heytap.openid", "com.heytap.openid.IdentifyService", "action.com.heytap.openid.OPEN_ID_SERVICE", "com.heytap.openid.IOpenID");
    }

    @Override // com.igexin.push.core.e.f
    protected String a() {
        return "OUID";
    }

    @Override // com.igexin.push.core.e.f, com.igexin.push.core.e.c
    public /* bridge */ /* synthetic */ boolean a(Context context) {
        return super.a(context);
    }

    @Override // com.igexin.push.core.e.f, com.igexin.push.core.e.c
    public /* bridge */ /* synthetic */ String b(Context context) {
        return super.b(context);
    }

    @Override // com.igexin.push.core.e.f, com.igexin.push.core.e.c
    public /* bridge */ /* synthetic */ boolean c(Context context) {
        return super.c(context);
    }

    @Override // com.igexin.push.core.e.f
    protected String d(Context context) {
        if (TextUtils.isEmpty(this.b)) {
            this.b = context.getPackageName();
        }
        return this.b;
    }

    @Override // com.igexin.push.core.e.f
    protected String e(Context context) {
        if (TextUtils.isEmpty(this.f236a)) {
            try {
                this.b = d(context);
                Signature[] signatureArr = context.getPackageManager().getPackageInfo(this.b, 64).signatures;
                if (signatureArr != null && signatureArr.length > 0) {
                    byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(signatureArr[0].toByteArray());
                    StringBuilder sb = new StringBuilder();
                    for (byte b : bArrDigest) {
                        sb.append(Integer.toHexString((b & 255) | 256).substring(1, 3));
                    }
                    this.f236a = sb.toString();
                }
            } catch (Throwable unused) {
            }
        }
        return this.f236a;
    }
}
