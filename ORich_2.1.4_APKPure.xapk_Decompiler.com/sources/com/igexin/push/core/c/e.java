package com.igexin.push.core.c;

import android.content.ContentValues;

/* JADX INFO: loaded from: classes.dex */
class e extends com.igexin.push.b.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f199a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    e(d dVar, ContentValues contentValues) {
        super(contentValues);
        this.f199a = dVar;
    }

    @Override // com.igexin.push.b.d
    public void a() {
        this.d.replace("ral", null, this.f);
    }
}
