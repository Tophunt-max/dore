package com.igexin.a.a;

import com.facebook.soloader.MinElf;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.UShort;

/* JADX INFO: loaded from: classes.dex */
public class j implements c, Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f58a = MinElf.ELF_MAGIC;
    private final FileChannel b;

    public j(File file) {
        if (file == null || !file.exists()) {
            throw new IllegalArgumentException("File is null or does not exist");
        }
        this.b = new FileInputStream(file).getChannel();
    }

    private long a(e eVar, long j, long j2) {
        for (long j3 = 0; j3 < j; j3++) {
            f fVarA = eVar.a(j3);
            if (fVarA.f56a == 1 && fVarA.c <= j2 && j2 <= fVarA.c + fVarA.d) {
                return (j2 - fVarA.c) + fVarA.b;
            }
        }
        throw new IllegalStateException("Could not map vma to file offset!");
    }

    public e a() throws IOException {
        this.b.position(0L);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        if (c(byteBufferAllocate, 0L) != 1179403647) {
            throw new IllegalArgumentException("Invalid ELF Magic!");
        }
        short sE = e(byteBufferAllocate, 4L);
        boolean z = e(byteBufferAllocate, 5L) == 2;
        if (sE == 1) {
            return new h(z, this);
        }
        if (sE == 2) {
            return new i(z, this);
        }
        throw new IllegalStateException("Invalid class type!");
    }

    protected String a(ByteBuffer byteBuffer, long j) throws IOException {
        StringBuilder sb = new StringBuilder();
        while (true) {
            long j2 = 1 + j;
            short sE = e(byteBuffer, j);
            if (sE == 0) {
                return sb.toString();
            }
            sb.append((char) sE);
            j = j2;
        }
    }

    protected void a(ByteBuffer byteBuffer, long j, int i) throws IOException {
        byteBuffer.position(0);
        byteBuffer.limit(i);
        long j2 = 0;
        while (j2 < i) {
            int i2 = this.b.read(byteBuffer, j + j2);
            if (i2 == -1) {
                throw new EOFException();
            }
            j2 += (long) i2;
        }
        byteBuffer.position(0);
    }

    protected long b(ByteBuffer byteBuffer, long j) throws IOException {
        a(byteBuffer, j, 8);
        return byteBuffer.getLong();
    }

    public List<String> b() throws IOException {
        long j;
        this.b.position(0L);
        ArrayList arrayList = new ArrayList();
        e eVarA = a();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(eVarA.f55a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        long j2 = eVarA.f;
        int i = 0;
        if (j2 == 65535) {
            j2 = eVarA.a(0).f57a;
        }
        long j3 = 0;
        while (true) {
            if (j3 >= j2) {
                j = 0;
                break;
            }
            f fVarA = eVarA.a(j3);
            if (fVarA.f56a == 2) {
                j = fVarA.b;
                break;
            }
            j3++;
        }
        if (j == 0) {
            return Collections.unmodifiableList(arrayList);
        }
        ArrayList arrayList2 = new ArrayList();
        long j4 = 0;
        while (true) {
            d dVarA = eVarA.a(j, i);
            long j5 = j;
            if (dVarA.f54a == 1) {
                arrayList2.add(Long.valueOf(dVarA.b));
            } else if (dVarA.f54a == 5) {
                j4 = dVarA.b;
            }
            i++;
            if (dVarA.f54a == 0) {
                break;
            }
            j = j5;
        }
        if (j4 == 0) {
            throw new IllegalStateException("String table offset not found!");
        }
        long jA = a(eVarA, j2, j4);
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            arrayList.add(a(byteBufferAllocate, ((Long) it.next()).longValue() + jA));
        }
        return arrayList;
    }

    protected long c(ByteBuffer byteBuffer, long j) throws IOException {
        a(byteBuffer, j, 4);
        return ((long) byteBuffer.getInt()) & 4294967295L;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.b.close();
    }

    protected int d(ByteBuffer byteBuffer, long j) throws IOException {
        a(byteBuffer, j, 2);
        return byteBuffer.getShort() & UShort.MAX_VALUE;
    }

    protected short e(ByteBuffer byteBuffer, long j) throws IOException {
        a(byteBuffer, j, 1);
        return (short) (byteBuffer.get() & 255);
    }
}
