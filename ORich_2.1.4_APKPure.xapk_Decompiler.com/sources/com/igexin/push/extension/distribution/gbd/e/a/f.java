package com.igexin.push.extension.distribution.gbd.e.a;

import com.igexin.push.extension.distribution.gbd.b.i;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class f implements com.igexin.push.extension.distribution.gbd.f.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ b f389a;

    f(b bVar) {
        this.f389a = bVar;
    }

    @Override // com.igexin.push.extension.distribution.gbd.f.c
    public void a(Object obj) {
        if (obj instanceof com.igexin.push.extension.distribution.gbd.b.b) {
            com.igexin.push.extension.distribution.gbd.b.b bVar = (com.igexin.push.extension.distribution.gbd.b.b) obj;
            this.f389a.a((List<i>) bVar.b(), bVar.a());
        }
    }
}
