package com.igexin.push.extension.distribution.gbd.i;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
class u implements IInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private IBinder f414a;
    private String b;

    private u(IBinder iBinder, String str) {
        this.f414a = iBinder;
        this.b = str;
    }

    static u a(IBinder iBinder, String str) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(str);
        return iInterfaceQueryLocalInterface instanceof u ? (u) iInterfaceQueryLocalInterface : new u(iBinder, str);
    }

    String a(String str, String str2, String str3, int i) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            try {
                parcelObtain.writeInterfaceToken(this.b);
                if (!TextUtils.isEmpty(str)) {
                    parcelObtain.writeString(str);
                }
                if (!TextUtils.isEmpty(str2)) {
                    parcelObtain.writeString(str2);
                }
                if (!TextUtils.isEmpty(str3)) {
                    parcelObtain.writeString(str3);
                }
                this.f414a.transact(i, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readString();
            } catch (Throwable unused) {
                parcelObtain.recycle();
                parcelObtain2.recycle();
                return "";
            }
        } catch (Throwable unused2) {
            return "";
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f414a;
    }
}
