package com.igexin.push.extension.distribution.gbd.i;

import java.io.File;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
class ah implements Comparator<File> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ag f401a;

    ah(ag agVar) {
        this.f401a = agVar;
    }

    @Override // java.util.Comparator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(File file, File file2) {
        return file.lastModified() - file2.lastModified() > 0 ? -1 : 1;
    }
}
