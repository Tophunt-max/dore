package com.igexin.push.extension.distribution.gbd.a.c;

import java.net.DatagramPacket;
import java.net.InetAddress;

/* JADX INFO: loaded from: classes.dex */
class l implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f355a;
    final /* synthetic */ f b;

    public l(f fVar, String str) {
        this.b = fVar;
        this.f355a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            InetAddress byName = InetAddress.getByName(this.f355a);
            byte[] bArrE = this.b.e();
            this.b.c.send(new DatagramPacket(bArrE, bArrE.length, byName, 137));
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
        }
    }
}
