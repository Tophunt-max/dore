package com.igexin.a.a;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public class m extends g {
    public m(j jVar, e eVar, int i) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.order(eVar.f55a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        this.f57a = jVar.c(byteBufferAllocate, eVar.d + ((long) (i * eVar.g)) + 28);
    }
}
