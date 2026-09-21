package com.igexin.push.g.b;

import com.igexin.push.core.bean.PushTaskBean;

/* JADX INFO: loaded from: classes.dex */
public class b extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private PushTaskBean f427a;
    private String b;

    public b(PushTaskBean pushTaskBean, String str, long j) {
        super(j);
        this.o = false;
        this.f427a = pushTaskBean;
        this.b = str;
    }

    @Override // com.igexin.push.g.b.h
    protected void a() {
        com.igexin.push.core.a.f.a().c(this.f427a, this.b);
    }

    @Override // com.igexin.b.a.d.a.e
    public int b() {
        return 0;
    }

    @Override // com.igexin.b.a.d.e
    public void c() {
        super.c();
    }
}
