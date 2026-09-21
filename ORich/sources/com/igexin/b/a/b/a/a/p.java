package com.igexin.b.a.b.a.a;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private BufferedOutputStream f83a;

    public p(OutputStream outputStream) {
        this.f83a = new BufferedOutputStream(outputStream);
    }

    public void a(byte[] bArr) throws IOException {
        this.f83a.write(bArr, 0, bArr.length);
        this.f83a.flush();
    }
}
