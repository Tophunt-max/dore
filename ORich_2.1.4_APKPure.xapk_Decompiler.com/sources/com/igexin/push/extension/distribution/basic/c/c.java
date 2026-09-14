package com.igexin.push.extension.distribution.basic.c;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class c implements com.igexin.b.a.d.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<com.igexin.push.extension.distribution.basic.h.b> f300a = new ArrayList();

    @Override // com.igexin.b.a.d.a.b
    public boolean a(com.igexin.b.a.d.a.e eVar, com.igexin.b.a.d.f fVar) {
        for (com.igexin.push.extension.distribution.basic.h.b bVar : this.f300a) {
            if (bVar.b()) {
                bVar.a(System.currentTimeMillis());
                com.igexin.b.a.c.b.a("--> " + bVar.getClass().getName() + " isMatched...");
                try {
                    bVar.a();
                } catch (Throwable th) {
                    com.igexin.b.a.c.b.a("ExtensionCronTask|" + th.toString());
                }
            }
        }
        com.igexin.b.a.c.b.a("--> ExtensionCronTask ioHandle==================");
        return false;
    }

    @Override // com.igexin.b.a.d.a.b
    public boolean a(com.igexin.b.a.d.e eVar, com.igexin.b.a.d.f fVar) {
        return false;
    }

    public boolean a(com.igexin.push.extension.distribution.basic.h.b bVar) {
        return !this.f300a.contains(bVar) && this.f300a.add(bVar);
    }

    @Override // com.igexin.b.a.d.a.b
    public boolean k() {
        return true;
    }

    @Override // com.igexin.b.a.d.a.b
    public long l() {
        return 139859L;
    }
}
