package com.igexin.push.extension.distribution.gbd.h;

import com.igexin.b.a.d.a.e;
import com.igexin.b.a.d.f;
import com.igexin.push.extension.distribution.gbd.c.c;
import com.igexin.push.extension.distribution.gbd.h.a.i;
import com.igexin.push.extension.distribution.gbd.i.k;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class a implements com.igexin.b.a.d.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<b> f394a = new CopyOnWriteArrayList();

    @Override // com.igexin.b.a.d.a.b
    public boolean a(e eVar, f fVar) {
        boolean zA = k.a(c.f373a, true);
        Iterator<b> it = this.f394a.iterator();
        while (true) {
            if (!it.hasNext()) {
                return false;
            }
            b next = it.next();
            if (((next instanceof com.igexin.push.extension.distribution.gbd.h.a.f) || (next instanceof com.igexin.push.extension.distribution.gbd.h.a.b) || (next instanceof i) || (next instanceof com.igexin.push.extension.distribution.gbd.h.a.e)) || zA) {
                if (next.c() && next.b() && !k.c(next.d())) {
                    next.a(System.currentTimeMillis());
                    next.a();
                }
            }
        }
    }

    @Override // com.igexin.b.a.d.a.b
    public boolean a(com.igexin.b.a.d.e eVar, f fVar) {
        return false;
    }

    public boolean a(b bVar) {
        return !this.f394a.contains(bVar) && this.f394a.add(bVar);
    }

    @Override // com.igexin.b.a.d.a.b
    public boolean k() {
        return true;
    }

    @Override // com.igexin.b.a.d.a.b
    public long l() {
        return -423462L;
    }
}
