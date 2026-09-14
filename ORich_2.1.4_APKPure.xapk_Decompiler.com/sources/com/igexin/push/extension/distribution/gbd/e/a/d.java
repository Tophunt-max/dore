package com.igexin.push.extension.distribution.gbd.e.a;

import com.igexin.push.extension.distribution.gbd.b.i;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
class d implements Comparator<i> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ b f387a;

    d(b bVar) {
        this.f387a = bVar;
    }

    @Override // java.util.Comparator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(i iVar, i iVar2) {
        if (iVar.d() == iVar2.d()) {
            return 0;
        }
        return iVar.d() < iVar2.d() ? -1 : 1;
    }
}
