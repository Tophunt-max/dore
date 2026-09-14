package com.igexin.b.a.b.a.a;

import android.os.Handler;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
public final class f {
    private static final Object m = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Lock f76a;
    public Condition b;
    ConcurrentLinkedQueue<m> c;
    private com.igexin.b.a.b.b d;
    private com.igexin.b.a.b.d e;
    private Socket f;
    private l g;
    private n h;
    private c i;
    private AtomicBoolean j;
    private boolean k;
    private List<m> l;
    private Handler n;
    private long o;
    private final Comparator<m> p;

    private f() {
        this.j = new AtomicBoolean(false);
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f76a = reentrantLock;
        this.b = reentrantLock.newCondition();
        this.l = new ArrayList();
        this.c = new ConcurrentLinkedQueue<>();
        this.p = new j(this);
        this.n = com.igexin.push.core.e.a().b();
    }

    /* synthetic */ f(g gVar) {
        this();
    }

    public static f a() {
        return k.f81a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(m mVar) {
        if (mVar.y <= 0 || mVar.D == null) {
            mVar.p();
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        mVar.b(jCurrentTimeMillis);
        synchronized (m) {
            this.l.add(mVar);
            Collections.sort(this.l, this.p);
            long millis = TimeUnit.SECONDS.toMillis(this.l.get(0).y);
            this.o = millis;
            if (millis > 0 && this.l.size() == 1) {
                com.igexin.b.a.c.b.a("GS-M|add : " + mVar.toString() + " --- " + mVar.c.getClass().getName() + " set alarm delay = " + (this.o + com.igexin.b.a.d.f.u));
                com.igexin.b.a.b.c.b().b(jCurrentTimeMillis + this.o + com.igexin.b.a.d.f.u);
            }
        }
    }

    private void b(Socket socket) {
        l lVar = new l(new o(socket.getInputStream()), this.d, this.e);
        this.g = lVar;
        lVar.a(new h(this));
        com.igexin.b.a.b.c.b().a((com.igexin.b.a.d.e) this.g, true);
    }

    private void c(Socket socket) {
        n nVar = new n(new p(socket.getOutputStream()), this.d, this.e);
        this.h = nVar;
        nVar.a(new i(this));
        com.igexin.b.a.b.c.b().a((com.igexin.b.a.d.e) this.h, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        if (this.j.getAndSet(true)) {
            return;
        }
        this.n.sendEmptyMessage(q.TCP_IO_EXCEPTION.ordinal());
    }

    private void j() {
        this.j.set(false);
        com.igexin.push.core.e.a().g().a(q.TCP_DISCONNECT_SUCCESS);
    }

    private void k() {
        com.igexin.b.a.c.b.a("GS-M|disconnect");
        c cVar = this.i;
        if (cVar != null) {
            cVar.j();
        }
        n nVar = this.h;
        if (nVar != null) {
            nVar.j();
        }
        l lVar = this.g;
        if (lVar != null) {
            lVar.j();
        }
        Socket socket = this.f;
        if (socket != null) {
            try {
                if (socket.isClosed()) {
                    return;
                }
                this.f.close();
            } catch (Exception unused) {
            }
        }
    }

    private void l() {
        n nVar = this.h;
        if (nVar != null) {
            nVar.j = null;
            this.h = null;
        }
        l lVar = this.g;
        if (lVar != null) {
            lVar.i = null;
            this.g = null;
        }
        this.i = null;
        this.f = null;
        this.e = null;
    }

    private boolean m() {
        c cVar = this.i;
        if (cVar != null && !cVar.e) {
            return false;
        }
        l lVar = this.g;
        if (lVar != null && !lVar.e) {
            return false;
        }
        n nVar = this.h;
        if (nVar != null && !nVar.e) {
            return false;
        }
        l();
        return true;
    }

    private boolean n() {
        Socket socket = this.f;
        return (socket == null || socket.isClosed()) ? false : true;
    }

    private void o() {
        if (!com.igexin.push.util.p.d()) {
            com.igexin.b.a.b.c.b().e();
            com.igexin.b.a.c.b.a("GS-M|cancel alrm");
            synchronized (m) {
                if (!this.l.isEmpty()) {
                    Iterator<m> it = this.l.iterator();
                    while (it.hasNext()) {
                        it.next().p();
                    }
                    this.l.clear();
                }
            }
        }
        if (this.c.isEmpty()) {
            return;
        }
        Iterator<m> it2 = this.c.iterator();
        while (it2.hasNext()) {
            it2.next().p();
        }
        this.c.clear();
    }

    void a(m mVar) {
        try {
            this.f76a.lock();
            this.c.offer(mVar);
            this.b.signalAll();
        } catch (Exception unused) {
        } catch (Throwable th) {
            try {
                this.f76a.unlock();
            } catch (Exception unused2) {
            }
            throw th;
        }
        try {
            this.f76a.unlock();
        } catch (Exception unused3) {
        }
    }

    public void a(com.igexin.b.a.b.b bVar) {
        this.d = bVar;
        l lVar = this.g;
        if (lVar != null) {
            lVar.j = bVar;
        }
        n nVar = this.h;
        if (nVar != null) {
            nVar.i = bVar;
        }
    }

    public void a(String str) {
        boolean z;
        if (com.igexin.push.util.p.d()) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (m) {
            com.igexin.b.a.c.b.a("GS-M|receive: " + str + " -- resp");
            Iterator<m> it = this.l.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                m next = it.next();
                if (next.D.a(jCurrentTimeMillis, next)) {
                    next.p();
                    next.D.a(next);
                    z = true;
                    it.remove();
                    break;
                }
                long jB = next.D.b(jCurrentTimeMillis, next);
                long j = this.o;
                if (j < 0 || j > jB) {
                    this.o = jB;
                }
            }
            com.igexin.b.a.b.c.b().e();
            if (z) {
                com.igexin.b.a.c.b.a("GS-M|time out");
                e();
                return;
            }
            if (this.l.size() > 0) {
                m mVar = this.l.get(0);
                mVar.p();
                com.igexin.b.a.b.c.b().a(mVar);
                this.l.remove(mVar);
            }
            if (this.l.size() > 0 && this.o > 0) {
                com.igexin.b.a.c.b.a("GS-M|set alarm = " + this.o);
                com.igexin.b.a.b.c.b().b(jCurrentTimeMillis + this.o + com.igexin.b.a.d.f.u);
            }
        }
    }

    void a(Socket socket) {
        try {
            if (this.i.i()) {
                return;
            }
            this.f = socket;
            this.e = new com.igexin.b.a.b.d();
            b(socket);
            c(socket);
        } catch (Exception e) {
            com.igexin.b.a.c.b.a("GS-M|" + e.toString());
            i();
        }
    }

    void b() {
        com.igexin.push.core.e.a().g().a(q.TCP_IO_EXCEPTION);
    }

    public synchronized void c() {
        this.n.sendEmptyMessage(q.TCP_DISCONNECT.ordinal());
    }

    void d() {
        this.n.sendEmptyMessage(q.TCP_START_CONNECT.ordinal());
        this.k = false;
    }

    public void e() {
        com.igexin.b.a.c.b.a("GS-M|alarm timeout~~");
        i();
    }

    public void f() {
        o();
        if ((this.i == null && this.h == null && this.g == null) || m()) {
            j();
        } else {
            k();
        }
    }

    void g() {
        boolean zN = n();
        if (!zN && this.i == null) {
            com.igexin.b.a.c.b.a("GS-M|disconnect = true, reconnect");
            this.i = new c(new g(this));
            com.igexin.b.a.b.c.b().a((com.igexin.b.a.d.e) this.i, true);
        } else {
            com.igexin.b.a.c.b.a("GS-Mstart connect, isConnected = " + zN + ", ctask = " + this.i);
        }
    }

    void h() {
        if (!m() || this.k) {
            return;
        }
        j();
        this.k = true;
    }
}
