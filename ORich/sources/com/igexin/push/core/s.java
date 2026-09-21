package com.igexin.push.core;

import android.app.Activity;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import android.os.Message;
import android.text.TextUtils;
import com.igexin.push.util.EncryptUtils;
import com.igexin.sdk.IPushCore;
import com.igexin.sdk.PushConsts;
import com.igexin.sdk.PushService;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Context f255a;
    private IPushCore b;
    private final AtomicBoolean c;
    private ExecutorService d;

    private s() {
        this.c = new AtomicBoolean(false);
        this.d = Executors.newSingleThreadExecutor();
    }

    /* synthetic */ s(t tVar) {
        this();
    }

    private int a(Service service) {
        com.igexin.b.a.c.b.a("ServiceManager|start by system ####");
        if (a((Context) service, false)) {
            com.igexin.b.a.c.b.a("ServiceManager|intent = null");
            if (!this.c.getAndSet(true)) {
                a(service, (Intent) null);
            }
            return d();
        }
        com.igexin.b.a.c.b.a("ServiceManager|start by system, needLook = " + com.igexin.push.config.k.u + ", firstInit = true or (ss = 1 switchOn = false), stop");
        service.stopSelf();
        return 2;
    }

    private int a(Intent intent, int i, int i2) {
        if (this.b == null) {
            return d();
        }
        com.igexin.b.a.c.b.a("ServiceManager|inInit = true, call onServiceStartCommand...");
        return this.b.onServiceStartCommand(intent, i, i2);
    }

    public static s a() {
        return v.f259a;
    }

    private void a(Service service, Intent intent) {
        com.igexin.b.a.c.b.a("ServiceManager|startPushCore ++++");
        if (!EncryptUtils.isLoadSuccess()) {
            com.igexin.push.util.d.a(new t(this, service), service);
            return;
        }
        com.igexin.sdk.a.a.a().a(service);
        IPushCore iPushCoreB = com.igexin.sdk.a.a.a().b();
        this.b = iPushCoreB;
        if (iPushCoreB != null) {
            iPushCoreB.start(service);
        }
    }

    private boolean a(Context context, Intent intent, int i) {
        this.d.execute(new u(this, context, intent, i));
        return true;
    }

    private boolean a(Context context, boolean z) {
        if (!com.igexin.push.util.t.b(context) || com.igexin.push.util.g.a(context)) {
            return false;
        }
        if (!z) {
            return true;
        }
        com.igexin.push.config.l.a(context);
        return com.igexin.push.config.k.u;
    }

    private int b(Service service, Intent intent, int i, int i2) {
        com.igexin.b.a.c.b.a("ServiceManager|start from initialize...");
        a(service, intent);
        IPushCore iPushCore = this.b;
        return iPushCore != null ? iPushCore.onServiceStartCommand(intent, i, i2) : d();
    }

    private void b(Intent intent) {
        try {
            if (TextUtils.isEmpty(intent.getStringExtra("from"))) {
                return;
            }
            Message messageObtain = Message.obtain();
            messageObtain.what = b.m;
            messageObtain.obj = intent;
            e.a().a(messageObtain);
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("ServiceManager|" + th.toString());
        }
    }

    private int c(Service service, Intent intent, int i, int i2) {
        if (a((Context) service, true)) {
            b(intent);
            a(service, intent);
            IPushCore iPushCore = this.b;
            if (iPushCore != null) {
                return iPushCore.onServiceStartCommand(intent, i, i2);
            }
            return 2;
        }
        this.c.set(false);
        com.igexin.b.a.c.b.a("ServiceManager|start by g, availabe = false|" + com.igexin.push.config.k.u);
        service.stopSelf();
        return 2;
    }

    public int a(Service service, Intent intent, int i, int i2) {
        try {
            if (intent == null) {
                return a(service);
            }
            com.igexin.push.util.t.a(service, intent);
            String stringExtra = intent.getStringExtra(PushConsts.CMD_ACTION);
            if (PushConsts.ACTION_SERVICE_INITIALIZE.equals(stringExtra)) {
                com.igexin.push.util.g.b(service);
            }
            if (this.c.get()) {
                return a(intent, i, i2);
            }
            this.c.set(true);
            return PushConsts.ACTION_SERVICE_INITIALIZE.equals(stringExtra) ? b(service, intent, i, i2) : c(service, intent, i, i2);
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("ServiceManager|" + th.toString());
            return 2;
        }
    }

    public IBinder a(Intent intent) {
        com.igexin.b.a.c.b.a("ServiceManager|onBind...");
        IPushCore iPushCore = this.b;
        if (iPushCore != null) {
            return iPushCore.onServiceBind(intent);
        }
        return null;
    }

    public void a(Activity activity) {
        try {
            Intent intent = activity.getIntent();
            Intent intent2 = new Intent(activity, (Class<?>) com.igexin.push.core.a.f.a().a((Context) activity));
            if (intent != null) {
                try {
                    if (intent.hasExtra(PushConsts.CMD_ACTION) && intent.hasExtra("isSlave")) {
                        intent2.putExtra(PushConsts.CMD_ACTION, intent.getStringExtra(PushConsts.CMD_ACTION));
                        intent2.putExtra("isSlave", intent.getBooleanExtra("isSlave", false));
                        if (intent.hasExtra("op_app")) {
                            intent2.putExtra("op_app", intent.getStringExtra("op_app"));
                        }
                        com.igexin.b.a.c.b.a("da action = " + intent.getStringExtra(PushConsts.CMD_ACTION) + ", isSlave = " + intent.getBooleanExtra("isSlave", false));
                    }
                } catch (Exception e) {
                    com.igexin.b.a.c.b.a("ServiceManager|put extra exception" + e.toString());
                }
            }
            a(activity, intent2);
            com.igexin.b.a.c.b.a("ServiceManager|start PushService from da");
        } finally {
            try {
            } finally {
            }
        }
    }

    public void a(Context context) {
        f255a = context.getApplicationContext();
    }

    public boolean a(Context context, Intent intent) {
        return a(context, intent, 1902141359);
    }

    public void b() {
        com.igexin.b.a.c.b.a("ServiceManager|onLowMemory...");
    }

    public boolean b(Context context) {
        try {
            String str = (String) com.igexin.push.util.t.c(context, "us", "");
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            Class.forName(str);
            return true;
        } catch (Exception e) {
            com.igexin.b.a.c.b.a("ServiceManager|" + e.toString());
            return false;
        }
    }

    public boolean b(Context context, Intent intent) {
        return a(context, intent, 1902131808);
    }

    public Class c(Context context) {
        try {
            String str = (String) com.igexin.push.util.t.c(context, "us", "");
            return TextUtils.isEmpty(str) ? PushService.class : Class.forName(str);
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("ServiceManager|" + th.toString());
            return PushService.class;
        }
    }

    public void c() {
        com.igexin.b.a.c.b.a("ServiceManager|onDestroy...");
        IPushCore iPushCore = this.b;
        if (iPushCore != null) {
            iPushCore.onServiceDestroy();
        }
    }

    public int d() {
        return (!com.igexin.push.util.c.a() || Build.VERSION.SDK_INT < 26) ? 1 : 2;
    }

    public Class d(Context context) {
        try {
            String str = (String) com.igexin.push.util.t.c(context, "uis", "");
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return Class.forName(str);
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("ServiceManager|" + th.toString());
            return null;
        }
    }

    public String e(Context context) {
        return (String) com.igexin.push.util.t.c(context, "ua", "");
    }
}
