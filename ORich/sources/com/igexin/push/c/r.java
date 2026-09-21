package com.igexin.push.c;

import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
class r implements Callable<j> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ q f124a;

    r(q qVar) {
        this.f124a = qVar;
    }

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public j call() throws Throwable {
        Socket socket;
        Throwable th;
        Exception e;
        if (!Thread.currentThread().isInterrupted()) {
            try {
                try {
                } catch (Throwable th2) {
                    th = th2;
                    if (socket != null && !socket.isClosed()) {
                        try {
                            socket.close();
                        } catch (Exception unused) {
                        }
                    }
                    throw th;
                }
            } catch (Exception e2) {
                socket = null;
                e = e2;
            } catch (Throwable th3) {
                socket = null;
                th = th3;
                if (socket != null) {
                    socket.close();
                }
                throw th;
            }
            if (Thread.currentThread().isInterrupted()) {
                return null;
            }
            synchronized (p.class) {
                if (this.f124a.g != null) {
                    this.f124a.g.a(this.f124a.f);
                }
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            String[] strArrA = com.igexin.b.a.b.f.a(this.f124a.f.a());
            socket = new Socket();
            try {
                socket.connect(new InetSocketAddress(strArrA[1], this.f124a.f.d()), 2500);
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                this.f124a.f.a("socket://" + socket.getInetAddress().getHostAddress() + ":" + this.f124a.f.d(), jCurrentTimeMillis2 - jCurrentTimeMillis, jCurrentTimeMillis2);
                com.igexin.b.a.c.b.a(q.b + "|detect " + this.f124a.w() + "|time = " + this.f124a.f.e());
            } catch (Exception e3) {
                e = e3;
                com.igexin.b.a.c.b.a(q.b + "|detect " + this.f124a.w() + "thread -->" + e.toString());
                synchronized (p.class) {
                    if (this.f124a.g != null) {
                        this.f124a.f.b();
                        this.f124a.g.a(g.EXCEPTION, this.f124a.f);
                    }
                    if (socket != null && !socket.isClosed()) {
                    }
                    return this.f124a.f;
                }
            }
            synchronized (p.class) {
                if (this.f124a.g != null && !Thread.currentThread().isInterrupted()) {
                    this.f124a.g.a(g.SUCCESS, this.f124a.f);
                }
                if (!socket.isClosed()) {
                    try {
                        socket.close();
                    } catch (Exception unused2) {
                    }
                }
            }
        }
        return this.f124a.f;
    }
}
