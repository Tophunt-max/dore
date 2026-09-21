package com.igexin.b.a.b.a.a;

/* JADX INFO: loaded from: classes.dex */
class h implements com.igexin.b.a.b.a.a.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ f f78a;

    h(f fVar) {
        this.f78a = fVar;
    }

    @Override // com.igexin.b.a.b.a.a.a.a
    public void a(com.igexin.b.a.b.e eVar) {
        this.f78a.n.sendEmptyMessage(q.INTERRUPT_SUCCESS.ordinal());
    }

    @Override // com.igexin.b.a.b.a.a.a.b
    public void a(Exception exc) {
        com.igexin.b.a.c.b.a("GS-M|r ex = " + exc.toString());
        if (exc.getMessage() != null && exc.getMessage().equals("end of stream")) {
            com.igexin.push.e.b.a().d();
        }
        this.f78a.i();
    }
}
