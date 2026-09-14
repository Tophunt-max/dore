package com.igexin.push.e.c;

/* JADX INFO: loaded from: classes.dex */
public class l extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte f276a;
    public Object b;

    @Override // com.igexin.push.e.c.e
    public void a(byte[] bArr) {
    }

    @Override // com.igexin.push.e.c.e
    public byte[] d() {
        byte b = this.f276a;
        byte[] bytes = (b == 1 || b == 2 || (b != 3 && b == 4)) ? ((String) this.b).getBytes() : null;
        if (bytes == null) {
            return null;
        }
        byte[] bArr = new byte[bytes.length + 2];
        bArr[0] = this.f276a;
        bArr[1] = (byte) bytes.length;
        System.arraycopy(bytes, 0, bArr, 2, bytes.length);
        return bArr;
    }
}
