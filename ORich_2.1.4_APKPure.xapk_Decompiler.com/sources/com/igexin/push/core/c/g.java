package com.igexin.push.core.c;

import android.content.ContentValues;

/* JADX INFO: loaded from: classes.dex */
class g extends com.igexin.push.b.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ long f201a;
    final /* synthetic */ d b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    g(d dVar, ContentValues contentValues, long j) {
        super(contentValues);
        this.b = dVar;
        this.f201a = j;
    }

    @Override // com.igexin.push.b.d
    public void a() {
        this.d.update("ral", this.f, "id=?", new String[]{String.valueOf(this.f201a)});
    }
}
