package com.igexin.a.a;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public class k extends f {
    public k(j jVar, e eVar, long j) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.order(eVar.f55a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = eVar.c + (j * ((long) eVar.e));
        this.f56a = jVar.c(byteBufferAllocate, j2);
        this.b = jVar.c(byteBufferAllocate, 4 + j2);
        this.c = jVar.c(byteBufferAllocate, 8 + j2);
        this.d = jVar.c(byteBufferAllocate, j2 + 20);
    }
}
