package com.igexin.push.g.b;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class a extends h {
    private static a b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<d> f426a;

    private a() {
        super(60000L);
        this.o = true;
        this.f426a = new ArrayList();
    }

    public static a i() {
        if (b == null) {
            b = new a();
        }
        return b;
    }

    private void j() {
        a(360000L, TimeUnit.MILLISECONDS);
    }

    @Override // com.igexin.push.g.b.h
    protected void a() {
        com.igexin.push.core.a.f.a().k();
        for (d dVar : this.f426a) {
            if (dVar.b()) {
                dVar.a();
                dVar.a(System.currentTimeMillis());
            }
        }
        j();
        com.igexin.b.a.b.c.b().a(this);
    }

    public boolean a(d dVar) {
        List<d> list = this.f426a;
        return (list == null || list.contains(dVar) || !this.f426a.add(dVar)) ? false : true;
    }

    @Override // com.igexin.b.a.d.a.e
    public int b() {
        return 0;
    }
}
