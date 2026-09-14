package com.igexin.push.core.b;

import com.igexin.push.core.bean.o;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
class b implements Comparator<o> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f165a;

    b(a aVar) {
        this.f165a = aVar;
    }

    @Override // java.util.Comparator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(o oVar, o oVar2) {
        if (oVar.d().equals(oVar2.d())) {
            return 0;
        }
        return oVar.d().compareTo(oVar2.d());
    }
}
