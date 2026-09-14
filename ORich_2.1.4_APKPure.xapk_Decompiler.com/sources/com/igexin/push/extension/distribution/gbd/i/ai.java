package com.igexin.push.extension.distribution.gbd.i;

import com.taobao.weex.el.parse.Operators;
import java.io.File;
import java.io.FileFilter;

/* JADX INFO: loaded from: classes.dex */
class ai implements FileFilter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ag f402a;

    ai(ag agVar) {
        this.f402a = agVar;
    }

    @Override // java.io.FileFilter
    public boolean accept(File file) {
        return !file.getName().startsWith(Operators.DOT_STR);
    }
}
