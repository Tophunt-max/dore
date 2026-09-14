package com.igexin.push.extension.distribution.gbd.i;

import java.io.File;
import java.io.FileFilter;

/* JADX INFO: loaded from: classes.dex */
final class af implements FileFilter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f399a;

    af(int i) {
        this.f399a = i;
    }

    @Override // java.io.FileFilter
    public boolean accept(File file) {
        try {
            int i = Integer.parseInt(file.getName());
            if (file.isDirectory()) {
                return i >= this.f399a;
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }
}
