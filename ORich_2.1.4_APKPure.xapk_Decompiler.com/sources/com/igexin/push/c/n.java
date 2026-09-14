package com.igexin.push.c;

import java.util.Comparator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class n implements Comparator<Map.Entry<String, j>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ m f121a;

    n(m mVar) {
        this.f121a = mVar;
    }

    @Override // java.util.Comparator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(Map.Entry<String, j> entry, Map.Entry<String, j> entry2) {
        return (int) (entry.getValue().e() - entry2.getValue().e());
    }
}
