package com.bun.miitmdid.c.j.b;

import android.database.ContentObserver;

/* JADX INFO: loaded from: classes.dex */
public class c extends ContentObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f35a;
    private int b;
    private b c;

    public c(b bVar, int i, String str) {
        super(null);
        this.c = bVar;
        this.b = i;
        this.f35a = str;
    }

    @Override // android.database.ContentObserver
    public native void onChange(boolean z);
}
