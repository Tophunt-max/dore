package com.igexin.b.a.b;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {
    protected String c;
    protected b d;
    protected b e;
    protected boolean f;

    public b(String str, boolean z) {
        this.c = str;
        this.f = z;
    }

    public abstract Object a(e eVar, d dVar, Object obj);

    protected final void a(b bVar) {
        if (bVar == null) {
            return;
        }
        b bVar2 = bVar.d;
        bVar.d = this;
        this.e = bVar;
        this.d = bVar2;
    }

    public void a(boolean z) {
        if (this.f && !z) {
            return;
        }
        while (true) {
            b bVar = this.d;
            if (bVar == null) {
                return;
            }
            b bVar2 = bVar.d;
            bVar.d = null;
            this.d = bVar2;
        }
    }

    public abstract Object c(e eVar, d dVar, Object obj);

    public final Object d(e eVar, d dVar, Object obj) {
        Objects.requireNonNull(obj, "Nothing to encode!");
        b bVar = this.d;
        if (bVar != null) {
            obj = bVar.d(eVar, dVar, obj);
        }
        return a(eVar, dVar, obj);
    }
}
