package com.igexin.push.c;

/* JADX INFO: loaded from: classes.dex */
/* synthetic */ class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final /* synthetic */ int[] f111a;

    static {
        int[] iArr = new int[d.values().length];
        f111a = iArr;
        try {
            iArr[d.NORMAL.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f111a[d.BACKUP.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f111a[d.TRY_NORMAL.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
