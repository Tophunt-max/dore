package com.igexin.a;

import java.io.File;
import java.io.FilenameFilter;

/* JADX INFO: loaded from: classes.dex */
class i implements FilenameFilter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f60a;
    final /* synthetic */ h b;

    i(h hVar, String str) {
        this.b = hVar;
        this.f60a = str;
    }

    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        return str.startsWith(this.f60a);
    }
}
