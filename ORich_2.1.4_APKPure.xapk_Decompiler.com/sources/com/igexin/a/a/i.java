package com.igexin.a.a;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public class i extends e {
    private final j j;

    public i(boolean z, j jVar) {
        this.f55a = z;
        this.j = jVar;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(z ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.b = jVar.d(byteBufferAllocate, 16L);
        this.c = jVar.b(byteBufferAllocate, 32L);
        this.d = jVar.b(byteBufferAllocate, 40L);
        this.e = jVar.d(byteBufferAllocate, 54L);
        this.f = jVar.d(byteBufferAllocate, 56L);
        this.g = jVar.d(byteBufferAllocate, 58L);
        this.h = jVar.d(byteBufferAllocate, 60L);
        this.i = jVar.d(byteBufferAllocate, 62L);
    }

    @Override // com.igexin.a.a.e
    public d a(long j, int i) {
        return new b(this.j, this, j, i);
    }

    @Override // com.igexin.a.a.e
    public f a(long j) {
        return new l(this.j, this, j);
    }

    @Override // com.igexin.a.a.e
    public g a(int i) {
        return new n(this.j, this, i);
    }
}
