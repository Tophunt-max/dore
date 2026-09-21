package com.igexin.push.core.c;

import android.content.ContentValues;

/* JADX INFO: loaded from: classes.dex */
class ak extends com.igexin.push.b.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ContentValues f195a;
    final /* synthetic */ aj b;

    ak(aj ajVar, ContentValues contentValues) {
        this.b = ajVar;
        this.f195a = contentValues;
    }

    @Override // com.igexin.push.b.d
    public void a() {
        com.igexin.push.core.e.a().i().a("st", this.f195a);
        aj.a(this.b);
    }
}
