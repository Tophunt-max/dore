package com.igexin.push.core.c;

import com.igexin.push.util.EncryptUtils;

/* JADX INFO: loaded from: classes.dex */
class ae extends com.igexin.push.b.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ h f189a;

    ae(h hVar) {
        this.f189a = hVar;
    }

    @Override // com.igexin.push.b.d
    public void a() {
        h.a().a(this.d, 19, EncryptUtils.getBytesEncrypted(com.igexin.push.core.f.w.getBytes()));
    }
}
