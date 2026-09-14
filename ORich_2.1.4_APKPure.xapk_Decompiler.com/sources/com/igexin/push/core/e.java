package com.igexin.push.core;

import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.text.TextUtils;
import com.igexin.assist.sdk.AssistPushManager;
import com.igexin.push.core.c.aj;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class e implements com.igexin.b.a.d.a.b {
    private static e k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f229a;
    private Handler c;
    private Handler d;
    private com.igexin.push.core.a.f f;
    private com.igexin.b.a.b.b h;
    private com.igexin.push.f.a i;
    private com.igexin.push.b.b j;
    private final AtomicBoolean l = new AtomicBoolean(false);
    private ConcurrentLinkedQueue<Message> e = new ConcurrentLinkedQueue<>();
    private h b = new h();
    private com.igexin.b.a.b.c g = com.igexin.b.a.b.c.b();

    private e() {
        this.g.a((com.igexin.b.a.d.a.a<String, Integer, com.igexin.b.a.b.b, com.igexin.b.a.b.e>) new com.igexin.push.e.a(this.f229a));
        this.g.a((com.igexin.b.a.d.a.b) this);
        this.i = new com.igexin.push.f.a();
    }

    public static e a() {
        if (k == null) {
            k = new e();
        }
        return k;
    }

    private void m() {
        if (com.igexin.push.util.t.a(this.f229a) && TextUtils.isEmpty(f.w) && TextUtils.isEmpty(f.w) && com.igexin.push.util.a.a()) {
            com.igexin.push.core.c.h.a().b(com.igexin.push.util.p.b());
        }
    }

    private boolean n() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        intentFilter.addAction("com.igexin.sdk.action.execute");
        intentFilter.addAction(b.b);
        intentFilter.addAction("android.intent.action.TIME_SET");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        this.f229a.registerReceiver(o.a(), intentFilter);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addDataScheme("package");
        intentFilter2.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter2.addAction("android.intent.action.PACKAGE_REMOVED");
        this.f229a.registerReceiver(n.a(), intentFilter2);
        return true;
    }

    public boolean a(Context context) {
        this.f229a = context.getApplicationContext();
        h hVar = this.b;
        if ((hVar == null || !hVar.isAlive()) && !this.l.getAndSet(true)) {
            com.igexin.b.a.c.b.a("CoreLogic|start coreThread +++++");
            this.b.start();
            this.c = new d(this.b.getLooper());
            this.d = new com.igexin.b.a.b.a.a.d(this.b.getLooper());
        }
        return true;
    }

    public boolean a(Message message) {
        if (f.g.get()) {
            this.c.sendMessage(message);
            return true;
        }
        this.e.add(message);
        return true;
    }

    @Override // com.igexin.b.a.d.a.b
    public boolean a(com.igexin.b.a.d.a.e eVar, com.igexin.b.a.d.f fVar) {
        com.igexin.push.core.a.f fVar2 = this.f;
        return fVar2 != null && fVar2.a(eVar);
    }

    @Override // com.igexin.b.a.d.a.b
    public boolean a(com.igexin.b.a.d.e eVar, com.igexin.b.a.d.f fVar) {
        com.igexin.push.core.a.f fVar2 = this.f;
        return fVar2 != null && fVar2.a(eVar);
    }

    public boolean a(com.igexin.push.g.b.h hVar) {
        return hVar != null && com.igexin.b.a.b.c.b().a(hVar, false, true);
    }

    public boolean a(boolean z) {
        com.igexin.b.a.c.b.a("CoreLogic|start sdkSwitch isSlave = " + z);
        if (f.f != null) {
            new com.igexin.sdk.a.e(f.f).a();
            f.i = true;
            if (!new com.igexin.sdk.a.c(f.f).b()) {
                new com.igexin.sdk.a.d(f.f).a();
                f.j = true;
                new com.igexin.sdk.a.c(f.f).a();
            }
            if (z) {
                new com.igexin.sdk.a.d(f.f).a();
                f.j = true;
            }
            a().g().b();
        }
        return true;
    }

    public Handler b() {
        return this.d;
    }

    public void c() {
        try {
            this.j = new com.igexin.push.b.b(this.f229a);
            f.a(this.f229a);
            com.igexin.push.config.i.a().b();
            n();
            com.igexin.push.b.a aVar = new com.igexin.push.b.a();
            aVar.a(com.igexin.push.core.c.h.a());
            aVar.a(com.igexin.push.core.c.d.a());
            aVar.a(com.igexin.push.core.c.b.a());
            aVar.a(com.igexin.push.config.a.a());
            aVar.a(aj.a());
            this.g.a(aVar, true, false);
            this.g.a(this.f229a);
            com.igexin.b.a.b.c.b().a(com.igexin.b.b.a.a(f.A.getBytes()));
            f.aa = this.g.a(com.igexin.push.g.b.c.i(), false, true);
            f.ab = this.g.a(com.igexin.push.g.b.g.i(), true, true);
            com.igexin.push.c.i.a().b();
            d();
            this.f = com.igexin.push.core.a.f.a();
            this.i.b();
            m();
            com.igexin.push.a.a.c.c().d();
            f.g.set(true);
            a.a().a(Process.myPid());
            com.igexin.push.d.c.a().c();
            com.igexin.push.extension.a.a().a(this.f229a);
            for (Message message : this.e) {
                Handler handler = this.c;
                if (handler != null) {
                    handler.sendMessage(message);
                }
            }
            r.a().e();
            try {
                AssistPushManager.getInstance().initialize(f.f);
                AssistPushManager.getInstance().register(f.f);
            } catch (Throwable unused) {
            }
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("CoreLogic|init|failed|" + th.toString());
        }
    }

    public com.igexin.push.g.b.a d() {
        com.igexin.push.g.b.a aVarI = com.igexin.push.g.b.a.i();
        com.igexin.push.a.a.b bVar = new com.igexin.push.a.a.b();
        aVarI.a(bVar);
        aVarI.a(new com.igexin.push.a.a.a());
        aVarI.a(new com.igexin.push.a.a.d());
        aVarI.a(com.igexin.push.a.a.c.c());
        try {
            bVar.a();
            bVar.a(System.currentTimeMillis());
        } catch (Throwable unused) {
        }
        f.ac = this.g.a(aVarI, false, true);
        return aVarI;
    }

    public boolean e() {
        if (f.f == null) {
            return true;
        }
        new com.igexin.sdk.a.d(f.f).b();
        f.j = false;
        f.m = false;
        this.i.c();
        return true;
    }

    public com.igexin.b.a.b.b f() {
        if (this.h == null) {
            this.h = com.igexin.push.e.a.b.a();
        }
        return this.h;
    }

    public com.igexin.push.f.a g() {
        return this.i;
    }

    public com.igexin.push.core.a.f h() {
        return this.f;
    }

    public com.igexin.push.b.b i() {
        return this.j;
    }

    public String j() {
        NetworkInfo activeNetworkInfo;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) f.f.getSystemService("connectivity");
            if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null) {
                return null;
            }
            if (activeNetworkInfo.getType() == 1) {
                return "wifi";
            }
            if (activeNetworkInfo.getType() == 0) {
                return "mobile";
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.igexin.b.a.d.a.b
    public boolean k() {
        return true;
    }

    @Override // com.igexin.b.a.d.a.b
    public long l() {
        return 94808L;
    }
}
