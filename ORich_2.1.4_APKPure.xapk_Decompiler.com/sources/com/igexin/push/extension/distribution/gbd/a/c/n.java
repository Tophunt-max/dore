package com.igexin.push.extension.distribution.gbd.a.c;

import android.net.wifi.ScanResult;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
class n implements Comparator<ScanResult> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ m f357a;

    n(m mVar) {
        this.f357a = mVar;
    }

    @Override // java.util.Comparator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(ScanResult scanResult, ScanResult scanResult2) {
        return scanResult2.level - scanResult.level;
    }
}
