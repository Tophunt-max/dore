package com.bun.miitmdid.c.g;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.zui.deviceidservice.IDeviceidInterface;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private static String e = "OpenDeviceId library";
    private static boolean f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f23a;
    private IDeviceidInterface b;
    private ServiceConnection c;
    private com.bun.miitmdid.c.e.a d;

    /* JADX INFO: renamed from: com.bun.miitmdid.c.g.a$a, reason: collision with other inner class name */
    class ServiceConnectionC0011a implements ServiceConnection {
        ServiceConnectionC0011a() {
        }

        @Override // android.content.ServiceConnection
        public native synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder);

        @Override // android.content.ServiceConnection
        public native void onServiceDisconnected(ComponentName componentName);
    }

    public a(Context context, com.bun.miitmdid.c.e.a aVar) {
        this.f23a = null;
        Objects.requireNonNull(context, "Context can not be null.");
        this.f23a = context;
        this.d = aVar;
        this.c = new ServiceConnectionC0011a();
        Intent intent = new Intent();
        intent.setClassName("com.zui.deviceidservice", "com.zui.deviceidservice.DeviceidService");
        if (this.f23a.bindService(intent, this.c, 1)) {
            b("bindService Successful!");
            return;
        }
        b("bindService Failed!");
        com.bun.miitmdid.c.e.a aVar2 = this.d;
        if (aVar2 != null) {
            aVar2.b();
        }
    }

    static native /* synthetic */ com.bun.miitmdid.c.e.a a(a aVar);

    static native /* synthetic */ IDeviceidInterface a(a aVar, IDeviceidInterface iDeviceidInterface);

    static native /* synthetic */ void a(a aVar, String str);

    private native void a(String str);

    private native void b(String str);

    public native String a();

    public native String b();

    public native String c();

    public native String d();

    public native boolean e();

    public native void f();
}
