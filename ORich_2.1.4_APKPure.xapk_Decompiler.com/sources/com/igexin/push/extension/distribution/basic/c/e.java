package com.igexin.push.extension.distribution.basic.c;

import java.io.File;
import java.io.FileFilter;

/* JADX INFO: loaded from: classes.dex */
class e implements FileFilter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    long f302a = System.currentTimeMillis();
    long b = 604800000;
    final /* synthetic */ d c;

    e(d dVar) {
        this.c = dVar;
    }

    @Override // java.io.FileFilter
    public boolean accept(File file) {
        return this.f302a - file.lastModified() >= this.b;
    }
}
