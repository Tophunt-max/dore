package com.bun.miitmdid.c.h;

import android.content.Context;
import com.bun.supplier.InnerIdSupplier;
import com.bun.supplier.SupplierListener;

/* JADX INFO: loaded from: classes.dex */
public class b implements InnerIdSupplier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f27a;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ SupplierListener f28a;

        a(SupplierListener supplierListener) {
            this.f28a = supplierListener;
        }

        @Override // java.lang.Runnable
        public native void run();
    }

    public b(Context context) {
        this.f27a = context;
    }

    @Override // com.bun.supplier.InnerIdSupplier
    public native void a(SupplierListener supplierListener);

    @Override // com.bun.supplier.InnerIdSupplier
    public native boolean a();

    @Override // com.bun.supplier.IdSupplier
    public native String getAAID();

    @Override // com.bun.supplier.IdSupplier
    public native String getOAID();

    @Override // com.bun.supplier.InnerIdSupplier
    public native String getUDID();

    @Override // com.bun.supplier.IdSupplier
    public native String getVAID();

    @Override // com.bun.supplier.IdSupplier
    public native boolean isSupported();

    @Override // com.bun.supplier.InnerIdSupplier
    public native void shutDown();
}
