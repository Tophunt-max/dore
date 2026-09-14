package com.huawei.android.hms.pps.a;

import android.os.IBinder;

/* JADX INFO: loaded from: classes.dex */
public final class b implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private IBinder f53a;

    public b(IBinder iBinder) {
        this.f53a = iBinder;
    }

    @Override // android.os.IInterface
    public final native IBinder asBinder();

    @Override // com.huawei.android.hms.pps.a.c
    public final native boolean d();

    @Override // com.huawei.android.hms.pps.a.c
    public final native String e();
}
