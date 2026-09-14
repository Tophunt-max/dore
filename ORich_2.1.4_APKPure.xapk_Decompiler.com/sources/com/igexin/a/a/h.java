package com.igexin.a.a;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public class h extends e {
    private final j j;

    public h(boolean z, j jVar) {
        this.f55a = z;
        this.j = jVar;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.order(z ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.b = jVar.d(byteBufferAllocate, 16L);
        this.c = jVar.c(byteBufferAllocate, 28L);
        this.d = jVar.c(byteBufferAllocate, 32L);
        this.e = jVar.d(byteBufferAllocate, 42L);
        this.f = jVar.d(byteBufferAllocate, 44L);
        this.g = jVar.d(byteBufferAllocate, 46L);
        this.h = jVar.d(byteBufferAllocate, 48L);
        this.i = jVar.d(byteBufferAllocate, 50L);
    }

    @Override // com.igexin.a.a.e
    public d a(long j, int i) {
        return new a(this.j, this, j, i);
    }

    @Override // com.igexin.a.a.e
    public f a(long j) {
        return new k(this.j, this, j);
    }

    @Override // com.igexin.a.a.e
    public g a(int i) {
        return new m(this.j, this, i);
    }
}
