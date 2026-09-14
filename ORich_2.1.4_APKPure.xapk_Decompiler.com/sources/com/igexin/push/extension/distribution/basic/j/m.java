package com.igexin.push.extension.distribution.basic.j;

import java.io.File;
import java.io.FileFilter;

/* JADX INFO: loaded from: classes.dex */
final class m implements FileFilter {
    m() {
    }

    @Override // java.io.FileFilter
    public boolean accept(File file) {
        try {
            return file.isDirectory() && Integer.parseInt(file.getName()) >= 2000;
        } catch (Exception unused) {
            return false;
        }
    }
}
