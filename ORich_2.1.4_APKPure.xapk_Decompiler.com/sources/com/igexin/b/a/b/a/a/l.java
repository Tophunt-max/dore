package com.igexin.b.a.b.a.a;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public final class l extends a {
    private com.igexin.b.a.b.a.a.a.b L;
    private byte[] M;
    private com.igexin.b.a.b.d N;
    o i;
    com.igexin.b.a.b.b j;

    public l(o oVar, com.igexin.b.a.b.b bVar, com.igexin.b.a.b.d dVar) {
        super(-2035, null, bVar);
        this.j = bVar;
        this.i = oVar;
        this.N = dVar;
    }

    public void a(com.igexin.b.a.b.a.a.a.b bVar) {
        this.L = bVar;
    }

    @Override // com.igexin.b.a.d.a.e
    public final int b() {
        return -2035;
    }

    @Override // com.igexin.b.a.d.e
    public void b_() {
        super.b_();
        Thread threadCurrentThread = Thread.currentThread();
        com.igexin.b.a.c.b.a("GS-R|" + threadCurrentThread + " running");
        while (this.h && !threadCurrentThread.isInterrupted() && !this.e) {
            try {
                this.j.c(null, this.N, this.i);
                this.f = b.NORMAL;
            } catch (Throwable th) {
                this.h = false;
                if (this.f != b.INTERRUPT) {
                    this.f = b.EXCEPTION;
                    this.g = (th.getMessage() == null || !th.getMessage().equals("read = -1, end of stream !")) ? th.toString() : "end of stream";
                }
            }
        }
        this.e = true;
        com.igexin.b.a.c.b.a("GS-R|finish ~~~~~~");
    }

    @Override // com.igexin.b.a.b.e, com.igexin.b.a.d.e
    public void f() {
        super.f();
        com.igexin.b.a.c.b.a("GS-R|rt dispose");
        if (this.L != null) {
            if (this.f != b.EXCEPTION) {
                this.L.a(this);
            } else if (!TextUtils.isEmpty(this.g)) {
                this.L.a(new Exception(this.g));
            }
        }
        if (this.M != null) {
            this.M = null;
        }
        this.L = null;
    }

    public void j() {
        this.h = false;
        this.f = b.INTERRUPT;
    }
}
