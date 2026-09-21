package com.bun.miitmdid.c.j;

import android.content.Context;
import com.bun.supplier.InnerIdSupplier;
import com.bun.supplier.SupplierListener;

/* JADX INFO: loaded from: classes.dex */
public class a implements InnerIdSupplier {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f31a = "";
    private Context b;

    /* JADX INFO: renamed from: com.bun.miitmdid.c.j.a$a, reason: collision with other inner class name */
    class RunnableC0013a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ SupplierListener f32a;

        RunnableC0013a(SupplierListener supplierListener) {
            this.f32a = supplierListener;
        }

        @Override // java.lang.Runnable
        public native void run();
    }

    public a(Context context) {
        this.b = context;
    }

    @Override // com.bun.supplier.InnerIdSupplier
    public native void a(SupplierListener supplierListener);

    public native void a(String str);

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
