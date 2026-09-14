package com.igexin.push.core.a;

/* JADX INFO: loaded from: classes.dex */
public class j extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f152a = com.igexin.push.config.j.f135a;

    @Override // com.igexin.push.core.a.a
    public boolean a(com.igexin.b.a.d.e eVar) {
        return false;
    }

    @Override // com.igexin.push.core.a.a
    public boolean a(Object obj) {
        if (!(obj instanceof com.igexin.push.e.c.h)) {
            return true;
        }
        com.igexin.push.e.b.a().e();
        com.igexin.b.a.c.b.a("heartbeatRsp");
        com.igexin.push.core.j.a().a(com.igexin.push.core.l.HEARTBEAT_OK);
        return true;
    }
}
