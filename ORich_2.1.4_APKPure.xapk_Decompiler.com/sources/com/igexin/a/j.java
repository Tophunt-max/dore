package com.igexin.a;

import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
final class j implements e {
    j() {
    }

    @Override // com.igexin.a.e
    public void a(String str) {
        System.loadLibrary(str);
    }

    @Override // com.igexin.a.e
    public String[] a() {
        return (Build.VERSION.SDK_INT < 21 || Build.SUPPORTED_ABIS.length <= 0) ? new String[]{Build.CPU_ABI} : Build.SUPPORTED_ABIS;
    }

    @Override // com.igexin.a.e
    public void b(String str) {
        System.load(str);
    }

    @Override // com.igexin.a.e
    public String c(String str) {
        return (str.startsWith("lib") && str.endsWith(".so")) ? str : System.mapLibraryName(str);
    }

    @Override // com.igexin.a.e
    public String d(String str) {
        return str.substring(3, str.length() - 3);
    }
}
