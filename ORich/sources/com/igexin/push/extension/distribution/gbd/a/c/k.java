package com.igexin.push.extension.distribution.gbd.a.c;

import java.net.DatagramPacket;
import java.net.InetAddress;

/* JADX INFO: loaded from: classes.dex */
class k implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ f f354a;

    public k(f fVar) {
        this.f354a = fVar;
        fVar.j = true;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.igexin.push.extension.distribution.gbd.b.h hVar;
        while (this.f354a.j) {
            try {
                DatagramPacket datagramPacket = new DatagramPacket(new byte[211], 211, InetAddress.getByName(this.f354a.d), 137);
                this.f354a.c.receive(datagramPacket);
                byte[] data = datagramPacket.getData();
                String hostAddress = datagramPacket.getAddress().getHostAddress();
                if (this.f354a.i.containsKey(hostAddress)) {
                    hVar = (com.igexin.push.extension.distribution.gbd.b.h) this.f354a.i.get(hostAddress);
                } else {
                    hVar = new com.igexin.push.extension.distribution.gbd.b.h();
                    this.f354a.i.put(hostAddress, hVar);
                }
                hVar.c(hostAddress);
                hVar.b(new String(data, 57, 15));
                hVar.a(com.igexin.push.extension.distribution.gbd.i.k.a(data));
                this.f354a.i.put(hostAddress, hVar);
            } catch (Throwable th) {
                com.igexin.push.extension.distribution.gbd.i.j.a(th);
            }
        }
    }
}
