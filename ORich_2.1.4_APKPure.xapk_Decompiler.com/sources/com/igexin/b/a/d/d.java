package com.igexin.b.a.d;

import com.igexin.b.a.d.e;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.NoSuchElementException;
import java.util.TreeSet;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
public class d<E extends e> {
    static final /* synthetic */ boolean i = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f92a = getClass().getName();
    final transient ReentrantLock b;
    final transient Condition c;
    final TreeSet<E> d;
    final AtomicInteger e;
    int f;
    f g;
    public final AtomicLong h;

    public d(Comparator<? super E> comparator, f fVar) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.b = reentrantLock;
        this.c = reentrantLock.newCondition();
        this.e = new AtomicInteger(0);
        this.h = new AtomicLong(-1L);
        this.d = new TreeSet<>(comparator);
        this.g = fVar;
    }

    private E e() {
        E e = (E) a();
        if (e != null && this.d.remove(e)) {
            return e;
        }
        return null;
    }

    public final int a(E e, long j, TimeUnit timeUnit) {
        ReentrantLock reentrantLock = this.b;
        reentrantLock.lock();
        try {
            if (!this.d.contains(e)) {
                return -1;
            }
            this.d.remove(e);
            e.u = System.currentTimeMillis() + TimeUnit.MILLISECONDS.convert(j, timeUnit);
            return a(e) ? 1 : -2;
        } finally {
            reentrantLock.unlock();
        }
    }

    E a() {
        try {
            return this.d.first();
        } catch (NoSuchElementException unused) {
            return null;
        }
    }

    public final boolean a(E e) {
        if (e == null) {
            return false;
        }
        ReentrantLock reentrantLock = this.b;
        reentrantLock.lock();
        try {
            e eVarA = a();
            int i2 = this.f + 1;
            this.f = i2;
            e.v = i2;
            if (!this.d.add(e)) {
                e.v--;
                return false;
            }
            e.n();
            if (eVarA == null || this.d.comparator().compare(e, eVarA) < 0) {
                this.c.signalAll();
            }
            return true;
        } catch (Exception unused) {
            com.igexin.b.a.c.b.a("ScheduleQueue|offer|error");
            return false;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean a(Class cls) {
        if (cls == null) {
            return false;
        }
        ReentrantLock reentrantLock = this.b;
        reentrantLock.lock();
        try {
            ArrayList arrayList = new ArrayList();
            for (E e : this.d) {
                if (e.getClass() == cls) {
                    arrayList.add(e);
                }
            }
            this.d.removeAll(arrayList);
            return true;
        } finally {
            reentrantLock.unlock();
        }
    }

    final boolean b() {
        ReentrantLock reentrantLock = this.b;
        reentrantLock.lock();
        try {
            return this.d.isEmpty();
        } finally {
            reentrantLock.unlock();
        }
    }

    public final E c() throws InterruptedException {
        ReentrantLock reentrantLock = this.b;
        reentrantLock.lockInterruptibly();
        while (true) {
            try {
                e eVarA = a();
                if (eVarA != null) {
                    long jA = eVarA.a(TimeUnit.NANOSECONDS);
                    boolean z = eVarA.k || eVarA.m;
                    if (jA <= 0 || z) {
                        break;
                    }
                    this.h.set(eVarA.u);
                    com.igexin.b.a.c.b.a("schedule take|needAlarm = " + this.g.t + "|" + eVarA.getClass().getName() + "@" + eVarA.hashCode());
                    if (this.g.t) {
                        this.g.a(eVarA.u);
                    }
                    this.c.awaitNanos(jA);
                } else {
                    this.e.set(1);
                    this.f = 0;
                    this.c.await();
                }
            } finally {
                reentrantLock.unlock();
            }
        }
        E e = (E) e();
        if (!i && e == null) {
            throw new AssertionError();
        }
        if (!b()) {
            this.c.signalAll();
        }
        this.h.set(-1L);
        return e;
    }

    public final void d() {
        this.d.clear();
    }
}
