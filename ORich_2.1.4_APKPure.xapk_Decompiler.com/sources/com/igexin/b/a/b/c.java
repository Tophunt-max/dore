package com.igexin.b.a.b;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class c extends com.igexin.b.a.d.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static c f85a;
    public volatile long b;
    public volatile long c;
    public volatile long d;
    public volatile long e;
    com.igexin.b.a.d.a.a<String, Integer, b, e> f;
    private byte[] v;
    private byte[] w;

    public static c b() {
        if (f85a == null) {
            f85a = new c();
        }
        return f85a;
    }

    public static void d() {
        f85a.b = 0L;
        f85a.d = 0L;
        f85a.c = 0L;
        f85a.e = 0L;
    }

    public e a(String str, int i, b bVar, Object obj, boolean z) {
        return a(str, i, bVar, obj, z, -1, -1L, (byte) 0, null, null);
    }

    public e a(String str, int i, b bVar, Object obj, boolean z, int i2, long j, byte b, Object obj2, com.igexin.b.a.d.a.c cVar) {
        return a(str, i, bVar, obj, z, i2, j, b, obj2, cVar, 0, null);
    }

    public e a(String str, int i, b bVar, Object obj, boolean z, int i2, long j, byte b, Object obj2, com.igexin.b.a.d.a.c cVar, int i3, com.igexin.b.a.d.a.f fVar) {
        e eVar;
        com.igexin.b.a.d.a.a<String, Integer, b, e> aVar = this.f;
        if (aVar == null || (eVar = (e) aVar.a(str, Integer.valueOf(i), bVar)) == null || eVar.r()) {
            return null;
        }
        if (fVar != null) {
            eVar.a(i3, fVar);
        }
        a(eVar, obj, z, i2, j, b, obj2, cVar);
        return eVar;
    }

    public e a(String str, int i, b bVar, Object obj, boolean z, int i2, com.igexin.b.a.d.a.f fVar) {
        return a(str, i, bVar, obj, z, -1, -1L, (byte) 0, null, null, i2, fVar);
    }

    public void a(com.igexin.b.a.d.a.a<String, Integer, b, e> aVar) {
        this.f = aVar;
    }

    public void a(byte[] bArr) {
        this.v = bArr;
        this.w = com.igexin.b.b.a.a(bArr);
    }

    boolean a(e eVar, Object obj, boolean z, int i, long j, byte b, Object obj2, com.igexin.b.a.d.a.c cVar) {
        eVar.c = obj;
        eVar.a(j, TimeUnit.MILLISECONDS);
        eVar.x = i;
        eVar.a(b);
        eVar.C = obj2;
        eVar.a(cVar);
        return a(eVar, z);
    }

    public byte[] a() {
        return this.w;
    }

    public final void c() {
        f();
    }
}
