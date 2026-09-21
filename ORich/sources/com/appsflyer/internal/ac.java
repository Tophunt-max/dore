package com.appsflyer.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class ac {
    private final boolean AFInAppEventType;
    public final long valueOf;
    public final String values;

    ac() {
    }

    static a valueOf(Context context) throws Exception {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot be called from the main thread");
        }
        context.getPackageManager().getPackageInfo("com.android.vending", 0);
        d dVar = new d((byte) 0);
        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage("com.google.android.gms");
        try {
            if (!context.bindService(intent, dVar, 1)) {
                if (context != null) {
                    context.unbindService(dVar);
                }
                throw new IOException("Google Play connection failed");
            }
            if (dVar.values) {
                throw new IllegalStateException("Cannot call get on this connection more than once");
            }
            dVar.values = true;
            IBinder iBinderPoll = dVar.valueOf.poll(10L, TimeUnit.SECONDS);
            if (iBinderPoll != null) {
                e eVar = new e(iBinderPoll);
                return new a(eVar.AFKeystoreWrapper(), eVar.valueOf());
            }
            throw new TimeoutException("Timed out waiting for the service connection");
        } finally {
            if (context != null) {
                context.unbindService(dVar);
            }
        }
    }

    static final class a {
        private final boolean AFInAppEventType;
        final String AFKeystoreWrapper;

        a(String str, boolean z) {
            this.AFKeystoreWrapper = str;
            this.AFInAppEventType = z;
        }

        final boolean AFKeystoreWrapper() {
            return this.AFInAppEventType;
        }
    }

    static final class d implements ServiceConnection {
        final LinkedBlockingQueue<IBinder> valueOf;
        boolean values;

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }

        private d() {
            this.valueOf = new LinkedBlockingQueue<>(1);
            this.values = false;
        }

        /* synthetic */ d(byte b) {
            this();
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.valueOf.put(iBinder);
            } catch (InterruptedException unused) {
            }
        }
    }

    static final class e implements IInterface {
        private final IBinder valueOf;

        e(IBinder iBinder) {
            this.valueOf = iBinder;
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this.valueOf;
        }

        public final String AFKeystoreWrapper() throws RemoteException {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.valueOf.transact(1, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readString();
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }

        final boolean valueOf() throws RemoteException {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                parcelObtain.writeInt(1);
                this.valueOf.transact(2, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readInt() != 0;
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }
    }

    public ac(String str, long j, boolean z) {
        this.values = str;
        this.valueOf = j;
        this.AFInAppEventType = z;
    }

    public final boolean AFInAppEventType() {
        return this.AFInAppEventType;
    }
}
