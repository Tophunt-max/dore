package com.igexin.push.extension.distribution.gbd.a.c;

import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
class o implements Comparator<Long> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ m f358a;

    o(m mVar) {
        this.f358a = mVar;
    }

    @Override // java.util.Comparator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(Long l, Long l2) {
        if (l.longValue() == l2.longValue()) {
            return 0;
        }
        return l.longValue() > l2.longValue() ? 1 : -1;
    }
}
