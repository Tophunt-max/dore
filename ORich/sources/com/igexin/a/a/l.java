package com.igexin.a.a;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public class l extends f {
    public l(j jVar, e eVar, long j) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(eVar.f55a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = eVar.c + (j * ((long) eVar.e));
        this.f56a = jVar.c(byteBufferAllocate, j2);
        this.b = jVar.b(byteBufferAllocate, 8 + j2);
        this.c = jVar.b(byteBufferAllocate, 16 + j2);
        this.d = jVar.b(byteBufferAllocate, j2 + 40);
    }
}
