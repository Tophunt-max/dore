package com.igexin.b.a.d;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.PowerManager;
import androidx.core.app.NotificationCompat;
import com.igexin.push.e.c.o;
import com.igexin.push.util.p;
import java.text.SimpleDateFormat;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
public class f extends BroadcastReceiver implements Comparator<e> {
    public static final String g = "com.igexin.b.a.d.f";
    public static final long u = TimeUnit.SECONDS.toMillis(2);
    PowerManager m;
    AlarmManager n;
    Intent o;
    PendingIntent p;
    Intent q;
    PendingIntent r;
    String s;
    volatile boolean t;
    final ReentrantLock l = new ReentrantLock();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f94a = false;
    final HashMap<Long, com.igexin.b.a.d.a.b> i = new HashMap<>(7);
    final d<e> k = new d<>(this, this);
    final c j = new c();
    final j h = new j(this);

    protected f() {
        e.E = this;
    }

    @Override // java.util.Comparator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final int compare(e eVar, e eVar2) {
        if (eVar.u < eVar2.u) {
            return -1;
        }
        if (eVar.u > eVar2.u) {
            return 1;
        }
        if (eVar.A > eVar2.A) {
            return -1;
        }
        if (eVar.A < eVar2.A) {
            return 1;
        }
        if (eVar.v < eVar2.v) {
            return -1;
        }
        if (eVar.v > eVar2.v) {
            return 1;
        }
        return eVar.hashCode() - eVar2.hashCode();
    }

    public final void a(long j) {
        AlarmManager alarmManager;
        PendingIntent pendingIntent;
        if (this.t) {
            com.igexin.b.a.c.b.a("setalarm|" + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(new Date(j)));
            if (j < 0) {
                j = System.currentTimeMillis() + u;
            }
            try {
                if (this.p != null) {
                    if (Build.VERSION.SDK_INT >= 19) {
                        try {
                            this.n.setExact(0, j, this.p);
                            return;
                        } catch (Throwable unused) {
                            alarmManager = this.n;
                            pendingIntent = this.p;
                            alarmManager.set(0, j, pendingIntent);
                        }
                    }
                    alarmManager = this.n;
                    pendingIntent = this.p;
                    alarmManager.set(0, j, pendingIntent);
                }
            } catch (Throwable th) {
                com.igexin.b.a.c.b.a("TaskService" + th.toString());
            }
        }
    }

    public final void a(Context context) {
        if (this.f94a) {
            return;
        }
        if (!p.d()) {
            this.m = (PowerManager) context.getSystemService("power");
            this.t = true;
            this.n = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
            context.registerReceiver(this, new IntentFilter("AlarmTaskSchedule." + context.getPackageName()));
            context.registerReceiver(this, new IntentFilter("AlarmTaskScheduleBak." + context.getPackageName()));
            context.registerReceiver(this, new IntentFilter("android.intent.action.SCREEN_OFF"));
            context.registerReceiver(this, new IntentFilter("android.intent.action.SCREEN_ON"));
            this.s = "AlarmNioTaskSchedule." + context.getPackageName();
            context.registerReceiver(this, new IntentFilter(this.s));
            this.o = new Intent("AlarmTaskSchedule." + context.getPackageName());
            this.p = PendingIntent.getBroadcast(context, hashCode(), this.o, 134217728);
            this.q = new Intent(this.s);
            this.r = PendingIntent.getBroadcast(context, hashCode() + 2, this.q, 134217728);
        }
        this.h.start();
        try {
            Thread.yield();
        } catch (Throwable unused) {
        }
        this.f94a = true;
    }

    public final boolean a(com.igexin.b.a.d.a.b bVar) {
        Objects.requireNonNull(bVar);
        ReentrantLock reentrantLock = this.l;
        if (reentrantLock.tryLock()) {
            try {
                if (this.i.keySet().contains(Long.valueOf(bVar.l()))) {
                    return false;
                }
                this.i.put(Long.valueOf(bVar.l()), bVar);
                return true;
            } catch (Throwable th) {
                try {
                    com.igexin.b.a.c.b.a("TaskService|" + th.toString());
                } finally {
                    reentrantLock.unlock();
                }
            }
        }
        return false;
    }

    final boolean a(com.igexin.b.a.d.a.e eVar, com.igexin.b.a.d.a.b bVar) {
        int iB = eVar.b();
        if (iB <= Integer.MIN_VALUE || iB >= 0) {
            if (iB < 0 || iB >= Integer.MAX_VALUE) {
                return false;
            }
            return bVar.a(eVar, this);
        }
        e eVar2 = (e) eVar;
        boolean zA = eVar2.t ? bVar.a(eVar2, this) : bVar.a(eVar, this);
        if (zA) {
            eVar2.c();
        }
        return zA;
    }

    public final boolean a(e eVar, boolean z) {
        Objects.requireNonNull(eVar);
        int iIncrementAndGet = 0;
        if (eVar.p || eVar.k) {
            return false;
        }
        d<e> dVar = this.k;
        if ((eVar instanceof com.igexin.b.a.b.e) && (((com.igexin.b.a.b.e) eVar).c instanceof com.igexin.push.e.c.p)) {
            if (z) {
                iIncrementAndGet = Integer.MAX_VALUE;
            }
        } else if (z) {
            iIncrementAndGet = dVar.e.incrementAndGet();
        }
        eVar.A = iIncrementAndGet;
        return dVar.a(eVar);
    }

    public final boolean a(e eVar, boolean z, boolean z2) {
        Objects.requireNonNull(eVar);
        boolean z3 = false;
        if (eVar.m) {
            return false;
        }
        if (!z || z2) {
            if (z2 && z) {
                z3 = true;
            }
            return a(eVar, z3);
        }
        eVar.d();
        try {
            try {
                eVar.b_();
                eVar.g();
                eVar.h();
                if (!eVar.t) {
                    eVar.c();
                }
                return true;
            } catch (Exception e) {
                eVar.t = true;
                eVar.B = e;
                eVar.p();
                eVar.u();
                a(eVar);
                f();
                if (!eVar.t) {
                    eVar.c();
                }
                return false;
            }
        } catch (Throwable th) {
            if (!eVar.t) {
                eVar.c();
            }
            throw th;
        }
    }

    public final boolean a(Class cls) {
        d<e> dVar = this.k;
        return dVar != null && dVar.a(cls);
    }

    public final boolean a(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            if (obj instanceof o) {
            }
        } catch (Exception unused) {
        }
        com.igexin.b.a.c.b.a("TaskService|responseQueue ++ task = " + obj.getClass().getName() + "@" + obj.hashCode());
        if (!(obj instanceof com.igexin.b.a.d.a.e)) {
            throw new ClassCastException("response Obj is not a TaskResult ");
        }
        com.igexin.b.a.d.a.e eVar = (com.igexin.b.a.d.a.e) obj;
        if (eVar.l()) {
            return false;
        }
        eVar.b(false);
        if ((obj instanceof com.igexin.push.e.b.a) || (obj instanceof com.igexin.push.e.b.b)) {
            this.j.a();
            com.igexin.b.a.c.b.a("TaskService|scheduleQueue_response_change_queue primaryResponseQueue");
        }
        this.j.a(eVar);
        return true;
    }

    public final void b(long j) {
        AlarmManager alarmManager;
        if (p.d()) {
            return;
        }
        com.igexin.b.a.c.b.a("setnioalarm|" + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(new Date(j)));
        if (j < 0) {
            j = System.currentTimeMillis() + u;
        }
        try {
            if (Build.VERSION.SDK_INT < 19) {
                alarmManager = this.n;
            } else {
                try {
                    this.n.setExact(0, j, this.r);
                    return;
                } catch (Exception unused) {
                    alarmManager = this.n;
                }
            }
            alarmManager.set(0, j, this.r);
        } catch (Throwable unused2) {
        }
    }

    public final void e() {
        try {
            PendingIntent pendingIntent = this.r;
            if (pendingIntent != null) {
                this.n.cancel(pendingIntent);
            }
        } catch (Throwable unused) {
        }
    }

    protected final void f() {
        j jVar = this.h;
        if (jVar == null || jVar.isInterrupted()) {
            return;
        }
        this.h.interrupt();
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00bb A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0000 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void g() {
        /*
            Method dump skipped, instruction units count: 220
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.b.a.d.f.g():void");
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            this.t = true;
            com.igexin.b.a.c.b.a("screenoff");
            if (this.k.h.get() > 0) {
                a(this.k.h.get());
                return;
            }
            return;
        }
        if ("android.intent.action.SCREEN_ON".equals(intent.getAction())) {
            this.t = false;
            com.igexin.b.a.c.b.a("screenon");
            return;
        }
        if (intent.getAction().startsWith("AlarmTaskSchedule.") || intent.getAction().startsWith("AlarmTaskScheduleBak.")) {
            com.igexin.b.a.c.b.a("receivealarm|" + this.t);
            f();
            return;
        }
        if (this.s.equals(intent.getAction())) {
            com.igexin.b.a.c.b.a("receive nioalarm");
            try {
                com.igexin.b.a.c.b.a("TaskService|alarm time out #######");
                com.igexin.b.a.b.a.a.f.a().e();
            } catch (Exception unused) {
            }
        }
    }
}
