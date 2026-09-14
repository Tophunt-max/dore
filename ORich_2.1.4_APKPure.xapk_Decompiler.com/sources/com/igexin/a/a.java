package com.igexin.a;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class a implements d {
    private long a(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[4096];
        long j = 0;
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                outputStream.flush();
                return j;
            }
            outputStream.write(bArr, 0, i);
            j += (long) i;
        }
    }

    private void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:111:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0027, code lost:
    
        if (r8 != null) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0029, code lost:
    
        r23.a("FATAL! Couldn't find application APK!");
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x002e, code lost:
    
        if (r8 == null) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0030, code lost:
    
        r8.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0033, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0034, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0035, code lost:
    
        r5 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0038, code lost:
    
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0104, code lost:
    
        if (r5 != null) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0106, code lost:
    
        r5.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0109, code lost:
    
        throw r0;
     */
    @Override // com.igexin.a.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(android.content.Context r19, java.lang.String[] r20, java.lang.String r21, java.io.File r22, com.igexin.a.h r23) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 266
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.a.a.a(android.content.Context, java.lang.String[], java.lang.String, java.io.File, com.igexin.a.h):void");
    }
}
