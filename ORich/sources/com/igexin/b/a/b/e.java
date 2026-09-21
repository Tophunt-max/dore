package com.igexin.b.a.b;

/* JADX INFO: loaded from: classes.dex */
public abstract class e extends com.igexin.b.a.d.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f86a;
    public b b;
    public Object c;
    public d d;

    public e(int i, String str, b bVar) {
        super(i);
        if (str != null) {
            this.f86a = a(str);
        }
        this.b = bVar;
    }

    public e(String str, b bVar) {
        this(0, str, bVar);
    }

    private String a(String str) {
        return f.a(f.a(str));
    }

    @Override // com.igexin.b.a.d.e
    public void f() {
        b bVar = this.b;
        if (bVar != null) {
            bVar.a(false);
        }
        this.b = null;
        this.d = null;
        this.c = null;
        this.f86a = null;
        super.f();
    }
}
