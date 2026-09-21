package com.igexin.push.core;

/* JADX INFO: loaded from: classes.dex */
/* synthetic */ class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final /* synthetic */ int[] f247a;
    static final /* synthetic */ int[] b;

    static {
        int[] iArr = new int[l.values().length];
        b = iArr;
        try {
            iArr[l.HEARTBEAT_OK.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            b[l.HEARTBEAT_TIMEOUT.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            b[l.NETWORK_ERROR.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            b[l.NETWORK_SWITCH.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        int[] iArr2 = new int[m.values().length];
        f247a = iArr2;
        try {
            iArr2[m.DETECT.ordinal()] = 1;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f247a[m.STABLE.ordinal()] = 2;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f247a[m.PENDING.ordinal()] = 3;
        } catch (NoSuchFieldError unused7) {
        }
    }
}
