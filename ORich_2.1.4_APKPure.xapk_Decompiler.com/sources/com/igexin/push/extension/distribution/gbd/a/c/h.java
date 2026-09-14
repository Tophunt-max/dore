package com.igexin.push.extension.distribution.gbd.a.c;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes.dex */
class h implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ f f351a;

    private h(f fVar) {
        this.f351a = fVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        ThreadPoolExecutor threadPoolExecutor;
        j jVar;
        g gVar = null;
        try {
            try {
                if (this.f351a.e != null) {
                    do {
                        Thread.sleep(8000L);
                    } while (this.f351a.e.getCompletedTaskCount() < this.f351a.e.getTaskCount() - 2);
                    this.f351a.j = false;
                    com.igexin.push.extension.distribution.gbd.i.j.b("GBD_SLMA", "cn = " + com.igexin.push.extension.distribution.gbd.c.a.ax);
                    HashMap<String, String> mapB = com.igexin.push.extension.distribution.gbd.i.k.b(com.igexin.push.extension.distribution.gbd.c.a.ax);
                    if (mapB.isEmpty()) {
                        this.f351a.j = false;
                        if (this.f351a.c != null) {
                            try {
                                this.f351a.c.close();
                                this.f351a.c = null;
                                return;
                            } catch (Throwable th) {
                                com.igexin.push.extension.distribution.gbd.i.j.a(th);
                                return;
                            }
                        }
                        return;
                    }
                    ArrayList arrayList = new ArrayList(mapB.keySet());
                    if (mapB.size() > 30) {
                        int size = arrayList.size() / 3;
                        this.f351a.f.execute(new j(this.f351a, arrayList.subList(0, size), mapB));
                        int i = size * 2;
                        this.f351a.f.execute(new j(this.f351a, arrayList.subList(size, i), mapB));
                        threadPoolExecutor = this.f351a.f;
                        jVar = new j(this.f351a, arrayList.subList(i, arrayList.size()), mapB);
                    } else {
                        threadPoolExecutor = this.f351a.f;
                        jVar = new j(this.f351a, arrayList, mapB);
                    }
                    threadPoolExecutor.execute(jVar);
                    this.f351a.f.execute(new i(this.f351a));
                }
                this.f351a.j = false;
                if (this.f351a.c != null) {
                    this.f351a.c.close();
                    this.f351a.c = null;
                }
            } catch (Throwable th2) {
                try {
                    com.igexin.push.extension.distribution.gbd.i.j.a(th2);
                    this.f351a.j = false;
                    if (this.f351a.c != null) {
                        this.f351a.c.close();
                        this.f351a.c = null;
                    }
                } catch (Throwable th3) {
                    this.f351a.j = false;
                    if (this.f351a.c != null) {
                        try {
                            this.f351a.c.close();
                            this.f351a.c = null;
                        } catch (Throwable th4) {
                            com.igexin.push.extension.distribution.gbd.i.j.a(th4);
                        }
                    }
                    throw th3;
                }
            }
        } catch (Throwable th5) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th5);
        }
    }
}
