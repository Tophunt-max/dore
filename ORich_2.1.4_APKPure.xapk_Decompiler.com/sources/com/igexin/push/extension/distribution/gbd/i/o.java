package com.igexin.push.extension.distribution.gbd.i;

import java.io.File;
import java.io.FilenameFilter;

/* JADX INFO: loaded from: classes.dex */
final class o implements FilenameFilter {
    o() {
    }

    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        return str.endsWith(".bin");
    }
}
