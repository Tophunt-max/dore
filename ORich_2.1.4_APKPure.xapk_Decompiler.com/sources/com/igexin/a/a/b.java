package com.igexin.a.a;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public class b extends d {
    public b(j jVar, e eVar, long j, int i) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.order(eVar.f55a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = j + ((long) (i * 16));
        this.f54a = jVar.b(byteBufferAllocate, j2);
        this.b = jVar.b(byteBufferAllocate, j2 + 8);
    }
}
