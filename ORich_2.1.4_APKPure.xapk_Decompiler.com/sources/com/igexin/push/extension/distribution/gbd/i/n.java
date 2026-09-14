package com.igexin.push.extension.distribution.gbd.i;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
class n implements IInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private IBinder f410a;

    public n(IBinder iBinder) {
        this.f410a = iBinder;
    }

    public String a() {
        String string;
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f410a.transact(1, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                string = parcelObtain2.readString();
            } catch (Exception e) {
                j.a(e);
                parcelObtain2.recycle();
                parcelObtain.recycle();
                string = null;
            }
            return string;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f410a;
    }
}
