package com.igexin.push.core.d;

import com.igexin.push.core.bean.PushTaskBean;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes.dex */
class d extends TimerTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ PushTaskBean f224a;
    final /* synthetic */ com.igexin.push.e.c.a b;
    final /* synthetic */ b c;

    d(b bVar, PushTaskBean pushTaskBean, com.igexin.push.e.c.a aVar) {
        this.c = bVar;
        this.f224a = pushTaskBean;
        this.b = aVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        if (com.igexin.push.core.f.ag.containsKey(this.f224a.getTaskId())) {
            com.igexin.push.core.f.ag.get(this.f224a.getTaskId()).cancel();
            com.igexin.push.core.f.ag.remove(this.f224a.getTaskId());
        }
        this.c.a(this.f224a, this.b);
        com.igexin.push.e.c.a aVar = this.b;
        aVar.b(aVar.c() + 1);
    }
}
