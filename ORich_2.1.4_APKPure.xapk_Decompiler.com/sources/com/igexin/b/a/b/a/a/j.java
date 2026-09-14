package com.igexin.b.a.b.a.a;

import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
class j implements Comparator<m> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ f f80a;

    j(f fVar) {
        this.f80a = fVar;
    }

    @Override // java.util.Comparator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(m mVar, m mVar2) {
        if (mVar == null) {
            return 1;
        }
        if (mVar2 == null) {
            return -1;
        }
        if (((long) mVar.y) + mVar.w > ((long) mVar2.y) + mVar2.w) {
            return 1;
        }
        return ((long) mVar.y) + mVar.w < ((long) mVar2.y) + mVar2.w ? -1 : 0;
    }
}
