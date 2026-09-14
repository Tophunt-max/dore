package com.meizu.flyme.openidsdk;

/* JADX INFO: loaded from: classes.dex */
public class ValueData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f473a;
    public int b;
    public long c = System.currentTimeMillis() + 86400000;

    public ValueData(String str, int i) {
        this.f473a = str;
        this.b = i;
    }

    public native String toString();
}
