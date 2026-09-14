package io.dcloud.h;

import android.content.Context;
import io.dcloud.common.DHInterface.IConfusionMgr;
import io.dcloud.common.DHInterface.INativeAppInfo;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static IConfusionMgr f797a;

    public static void a(INativeAppInfo iNativeAppInfo) {
        if (iNativeAppInfo != null) {
            f797a = iNativeAppInfo.getCofusionMgr();
        }
    }

    public static String b(String str, boolean z, int i) {
        IConfusionMgr iConfusionMgr = f797a;
        if (iConfusionMgr != null) {
            return iConfusionMgr.encodeString(str, z, i);
        }
        return null;
    }

    public static String c() {
        IConfusionMgr iConfusionMgr = f797a;
        if (iConfusionMgr != null) {
            return iConfusionMgr.getSQK();
        }
        return null;
    }

    public static String a(String str, boolean z, int i) {
        IConfusionMgr iConfusionMgr = f797a;
        if (iConfusionMgr != null) {
            return iConfusionMgr.decodeString(str, z, i);
        }
        return null;
    }

    public static String b(String str) {
        IConfusionMgr iConfusionMgr = f797a;
        if (iConfusionMgr != null) {
            return iConfusionMgr.decryptStr(str);
        }
        return null;
    }

    public static String a(Context context, byte[] bArr) {
        IConfusionMgr iConfusionMgr = f797a;
        if (iConfusionMgr != null) {
            return iConfusionMgr.handleEncryption(context, bArr);
        }
        return null;
    }

    public static String b() {
        IConfusionMgr iConfusionMgr = f797a;
        if (iConfusionMgr != null) {
            return iConfusionMgr.getSK();
        }
        return null;
    }

    public static String a(String str) {
        IConfusionMgr iConfusionMgr = f797a;
        if (iConfusionMgr != null) {
            return iConfusionMgr.decodeString(str);
        }
        return null;
    }

    public static String a() {
        IConfusionMgr iConfusionMgr = f797a;
        if (iConfusionMgr != null) {
            return iConfusionMgr.getSIV();
        }
        return null;
    }
}
