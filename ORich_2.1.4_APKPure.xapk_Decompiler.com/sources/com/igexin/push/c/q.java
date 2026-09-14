package com.igexin.push.c;

import com.igexin.push.config.SDKUrlConfig;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class q extends com.igexin.push.g.b.h {
    private static ExecutorService c;
    private Future<j> e;
    private j f;
    private p g;
    private boolean h;
    private static final String b = "DT_" + q.class.getName();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f123a = new Random().nextInt(1000);

    public q() {
        super(604800000L);
        this.o = true;
    }

    public static void e_() {
        ExecutorService executorService;
        if (SDKUrlConfig.getXfrAddress().length != 1 || (executorService = c) == null) {
            return;
        }
        try {
            executorService.shutdownNow();
            c = null;
        } catch (Throwable unused) {
        }
    }

    private void v() {
        if (c == null) {
            c = new ThreadPoolExecutor(0, 12, 60L, TimeUnit.SECONDS, new SynchronousQueue());
        }
        this.e = c.submit(new r(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String w() {
        return this.f.a() + "|" + this.f.c();
    }

    private void x() {
        try {
            Future<j> future = this.e;
            if (future == null || future.isCancelled() || this.e.isDone()) {
                return;
            }
            this.e.cancel(true);
            this.e = null;
        } catch (Exception unused) {
        }
    }

    @Override // com.igexin.push.g.b.h
    protected void a() {
        a(1800000L, TimeUnit.MILLISECONDS);
        synchronized (p.class) {
            if (this.g != null) {
                v();
            }
        }
    }

    public void a(j jVar) {
        this.f = jVar;
    }

    public void a(p pVar) {
        synchronized (p.class) {
            this.g = pVar;
        }
    }

    public void a(boolean z) {
        this.h = z;
    }

    @Override // com.igexin.b.a.d.a.e
    public final int b() {
        return f123a;
    }

    @Override // com.igexin.b.a.d.e
    public void c() {
        super.c();
    }

    @Override // com.igexin.b.a.d.e
    public void d() {
    }

    public j f_() {
        return this.f;
    }

    public void g_() {
        com.igexin.b.a.c.b.a(b + "|start detect " + this.f.a());
        a(50L, TimeUnit.MILLISECONDS);
    }

    public void i() {
        com.igexin.b.a.c.b.a(b + "|stop " + w() + " task");
        x();
        a(604800000L, TimeUnit.MILLISECONDS);
    }

    public void j() {
        a((p) null);
        this.o = false;
        p();
        x();
    }
}
