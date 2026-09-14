package com.igexin.push.core.e;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public class h implements IInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private IBinder f234a;
    private String b;

    private h(IBinder iBinder, String str) {
        this.f234a = iBinder;
        this.b = str;
    }

    static h a(IBinder iBinder, String str) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(str);
        return iInterfaceQueryLocalInterface instanceof h ? (h) iInterfaceQueryLocalInterface : new h(iBinder, str);
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
                this.f234a.transact(i, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readString();
            } catch (Exception unused) {
                return "";
            }
        } catch (Throwable unused2) {
            parcelObtain.recycle();
            parcelObtain2.recycle();
            return "";
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f234a;
    }
}
