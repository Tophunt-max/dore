package com.igexin.push.extension.distribution.gbd.a.b;

/* JADX INFO: loaded from: classes.dex */
/* synthetic */ class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final /* synthetic */ int[] f339a;

    static {
        int[] iArr = new int[n.values().length];
        f339a = iArr;
        try {
            iArr[n.GACTIVITY.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f339a[n.SERVICE.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f339a[n.ONEOF.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f339a[n.ALL.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
    }
}
