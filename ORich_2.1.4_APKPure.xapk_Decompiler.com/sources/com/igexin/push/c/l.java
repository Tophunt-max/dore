package com.igexin.push.c;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public class l extends m implements p {
    private static l e;

    private l() {
        super(com.igexin.push.core.f.ar, com.igexin.push.core.f.at);
        this.d.a(false);
    }

    public static synchronized l a() {
        if (e == null) {
            e = new l();
        }
        return e;
    }

    @Override // com.igexin.push.c.p
    public void a(g gVar, j jVar) {
        q qVarA;
        if (jVar == null || TextUtils.isEmpty(jVar.a()) || (qVarA = a(jVar.a())) == null) {
            return;
        }
        b(jVar);
        qVarA.i();
        m();
        if (gVar == g.SUCCESS) {
            l();
        }
    }

    @Override // com.igexin.push.c.p
    public void a(j jVar) {
    }

    @Override // com.igexin.push.c.m
    public h b() {
        return h.MOBILE;
    }

    @Override // com.igexin.push.c.m
    public p c() {
        return this;
    }
}
