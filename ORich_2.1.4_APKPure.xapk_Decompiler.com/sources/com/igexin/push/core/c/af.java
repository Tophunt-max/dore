package com.igexin.push.core.c;

import com.igexin.push.util.EncryptUtils;

/* JADX INFO: loaded from: classes.dex */
class af extends com.igexin.push.b.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ h f190a;

    af(h hVar) {
        this.f190a = hVar;
    }

    @Override // com.igexin.push.b.d
    public void a() {
        h.a().a(this.d, 1, EncryptUtils.getBytesEncrypted(String.valueOf(com.igexin.push.core.f.r).getBytes()));
        h.a().a(this.d, 20, this.f190a.i(com.igexin.push.core.f.s));
        com.igexin.push.core.f.d.a().b(com.igexin.push.core.f.f, com.igexin.push.core.f.s);
        com.igexin.push.core.f.d.a().a(com.igexin.push.core.f.f, com.igexin.push.core.f.r);
    }
}
