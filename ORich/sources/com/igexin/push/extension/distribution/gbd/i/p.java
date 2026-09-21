package com.igexin.push.extension.distribution.gbd.i;

import java.io.File;
import java.io.FilenameFilter;

/* JADX INFO: loaded from: classes.dex */
final class p implements FilenameFilter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f411a;

    p(String str) {
        this.f411a = str;
    }

    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        return str.contains(this.f411a) && str.endsWith(".db");
    }
}
