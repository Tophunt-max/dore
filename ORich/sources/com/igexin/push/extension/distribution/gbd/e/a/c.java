package com.igexin.push.extension.distribution.gbd.e.a;

import com.igexin.push.extension.distribution.gbd.b.i;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
class c implements Comparator<i> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ b f386a;

    c(b bVar) {
        this.f386a = bVar;
    }

    @Override // java.util.Comparator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(i iVar, i iVar2) {
        if (iVar.e() == iVar2.e()) {
            return 0;
        }
        return iVar.e() > iVar2.e() ? -1 : 1;
    }
}
