package com.igexin.push.extension.distribution.gbd.i;

import java.io.File;
import java.io.FileFilter;

/* JADX INFO: loaded from: classes.dex */
final class q implements FileFilter {
    q() {
    }

    @Override // java.io.FileFilter
    public boolean accept(File file) {
        return file.isDirectory();
    }
}
