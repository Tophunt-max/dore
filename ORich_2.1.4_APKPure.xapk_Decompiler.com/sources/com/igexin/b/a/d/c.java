package com.igexin.b.a.d;

import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ConcurrentLinkedQueue<com.igexin.b.a.d.a.e> f91a;
    private final ConcurrentLinkedQueue<com.igexin.b.a.d.a.e> b;
    private ConcurrentLinkedQueue<com.igexin.b.a.d.a.e> c;

    public c() {
        ConcurrentLinkedQueue<com.igexin.b.a.d.a.e> concurrentLinkedQueue = new ConcurrentLinkedQueue<>();
        this.f91a = concurrentLinkedQueue;
        this.b = new ConcurrentLinkedQueue<>();
        this.c = concurrentLinkedQueue;
    }

    public synchronized void a() {
        this.c = this.f91a;
    }

    public synchronized void a(com.igexin.b.a.d.a.e eVar) {
        this.c.offer(eVar);
    }

    public synchronized void b() {
        ConcurrentLinkedQueue<com.igexin.b.a.d.a.e> concurrentLinkedQueue = this.b;
        this.c = concurrentLinkedQueue;
        concurrentLinkedQueue.addAll(this.f91a);
        this.f91a.clear();
    }

    public synchronized boolean c() {
        return this.c.isEmpty();
    }

    public synchronized com.igexin.b.a.d.a.e d() {
        return this.c.poll();
    }
}
