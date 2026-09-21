package com.igexin.push.extension.distribution.basic.stub;

import com.igexin.b.a.b.c;
import com.igexin.push.extension.distribution.basic.f.e;
import com.igexin.push.g.b.h;

/* JADX INFO: loaded from: classes.dex */
class a extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ PushExtension f321a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    a(PushExtension pushExtension, long j) {
        super(j);
        this.f321a = pushExtension;
    }

    @Override // com.igexin.push.g.b.h
    protected void a() {
        try {
            com.igexin.b.a.c.b.a(this.l + "|current time - lastGetSdkConfigTime > 24h, request config");
            c.b().a(new com.igexin.push.extension.distribution.basic.f.a(new e()), false, true);
        } catch (Exception unused) {
        }
    }

    @Override // com.igexin.b.a.d.a.e
    public int b() {
        return 0;
    }
}
