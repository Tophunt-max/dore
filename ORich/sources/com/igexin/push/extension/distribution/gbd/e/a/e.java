package com.igexin.push.extension.distribution.gbd.e.a;

import com.igexin.push.extension.distribution.gbd.b.i;
import com.igexin.push.extension.distribution.gbd.i.j;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class e implements com.igexin.push.extension.distribution.gbd.f.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ b f388a;

    e(b bVar) {
        this.f388a = bVar;
    }

    @Override // com.igexin.push.extension.distribution.gbd.f.c
    public void a(Object obj) {
        String str;
        try {
            if (obj instanceof com.igexin.push.extension.distribution.gbd.b.b) {
                com.igexin.push.extension.distribution.gbd.b.b bVar = (com.igexin.push.extension.distribution.gbd.b.b) obj;
                boolean zA = bVar.a();
                List<i> listB = bVar.b();
                if (listB == null || listB.isEmpty()) {
                    return;
                }
                if (zA) {
                    str = "instant bir report s.";
                } else {
                    i iVar = listB.get(0);
                    this.f388a.b(iVar.c(), iVar.b());
                    str = "instant bir report f, insert ral.";
                }
                j.b("GBD_RALDataManager", str);
            }
        } catch (Throwable th) {
            j.a(th);
        }
    }
}
