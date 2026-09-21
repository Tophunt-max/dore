package com.facebook.soloader;

import com.bun.miitmdid.core.Utils;
import io.dcloud.feature.uniapp.adapter.AbsURIAdapter;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import kotlin.UShort;

/* JADX INFO: loaded from: classes.dex */
public final class MinElf {
    public static final int DT_NEEDED = 1;
    public static final int DT_NULL = 0;
    public static final int DT_STRTAB = 5;
    public static final int ELF_MAGIC = 1179403647;
    public static final int PN_XNUM = 65535;
    public static final int PT_DYNAMIC = 2;
    public static final int PT_LOAD = 1;
    private static final String TAG = "MinElf";

    public enum ISA {
        NOT_SO("not_so"),
        X86(Utils.CPU_ABI_X86),
        ARM("armeabi-v7a"),
        X86_64("x86_64"),
        AARCH64("arm64-v8a"),
        OTHERS(AbsURIAdapter.OTHERS);

        private final String value;

        ISA(String str) {
            this.value = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.value;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(3:17|12|13) */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x0015, code lost:
    
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0018, code lost:
    
        if (r0 <= 3) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x001a, code lost:
    
        java.lang.Thread.interrupted();
        android.util.Log.e(com.facebook.soloader.MinElf.TAG, "retrying extract_DT_NEEDED due to ClosedByInterruptException", r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0028, code lost:
    
        throw r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0029, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002c, code lost:
    
        throw r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0012, code lost:
    
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0014, code lost:
    
        r2 = move-exception;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String[] extract_DT_NEEDED(java.io.File r5) throws java.io.IOException {
        /*
            r0 = 0
        L1:
            java.io.FileInputStream r1 = new java.io.FileInputStream
            r1.<init>(r5)
            java.nio.channels.FileChannel r2 = r1.getChannel()     // Catch: java.lang.Throwable -> L12 java.nio.channels.ClosedByInterruptException -> L14
            java.lang.String[] r5 = extract_DT_NEEDED(r2)     // Catch: java.lang.Throwable -> L12 java.nio.channels.ClosedByInterruptException -> L14
            r1.close()
            return r5
        L12:
            r5 = move-exception
            goto L29
        L14:
            r2 = move-exception
            int r0 = r0 + 1
            r3 = 3
            if (r0 > r3) goto L28
            java.lang.Thread.interrupted()     // Catch: java.lang.Throwable -> L12
            java.lang.String r3 = "MinElf"
            java.lang.String r4 = "retrying extract_DT_NEEDED due to ClosedByInterruptException"
            android.util.Log.e(r3, r4, r2)     // Catch: java.lang.Throwable -> L12
            r1.close()
            goto L1
        L28:
            throw r2     // Catch: java.lang.Throwable -> L12
        L29:
            r1.close()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.soloader.MinElf.extract_DT_NEEDED(java.io.File):java.lang.String[]");
    }

    public static String[] extract_DT_NEEDED(FileChannel fileChannel) throws IOException {
        long j;
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        long j7;
        long j8;
        long j9;
        long j10;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        long j11 = getu32(fileChannel, byteBufferAllocate, 0L);
        if (j11 != 1179403647) {
            throw new ElfError("file is not ELF: 0x" + Long.toHexString(j11));
        }
        boolean z = getu8(fileChannel, byteBufferAllocate, 4L) == 1;
        if (getu8(fileChannel, byteBufferAllocate, 5L) == 2) {
            byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
        }
        long j12 = z ? getu32(fileChannel, byteBufferAllocate, 28L) : get64(fileChannel, byteBufferAllocate, 32L);
        long j13 = z ? getu16(fileChannel, byteBufferAllocate, 44L) : getu16(fileChannel, byteBufferAllocate, 56L);
        int i = getu16(fileChannel, byteBufferAllocate, z ? 42L : 54L);
        if (j13 == 65535) {
            long j14 = z ? getu32(fileChannel, byteBufferAllocate, 32L) : get64(fileChannel, byteBufferAllocate, 40L);
            if (z) {
                j10 = getu32(fileChannel, byteBufferAllocate, j14 + 28);
            } else {
                j10 = getu32(fileChannel, byteBufferAllocate, j14 + 44);
            }
            j13 = j10;
        }
        long j15 = j12;
        long j16 = 0;
        while (true) {
            if (j16 >= j13) {
                j = 0;
                break;
            }
            if (z) {
                j9 = getu32(fileChannel, byteBufferAllocate, j15 + 0);
            } else {
                j9 = getu32(fileChannel, byteBufferAllocate, j15 + 0);
            }
            if (j9 != 2) {
                j15 += (long) i;
                j16++;
            } else if (z) {
                j = getu32(fileChannel, byteBufferAllocate, j15 + 4);
            } else {
                j = get64(fileChannel, byteBufferAllocate, j15 + 8);
            }
        }
        long j17 = 0;
        if (j == 0) {
            throw new ElfError("ELF file does not contain dynamic linking information");
        }
        long j18 = j;
        long j19 = 0;
        int i2 = 0;
        while (true) {
            boolean z2 = z;
            long j20 = z ? getu32(fileChannel, byteBufferAllocate, j18 + j17) : get64(fileChannel, byteBufferAllocate, j18 + j17);
            if (j20 == 1) {
                j2 = j;
                if (i2 == Integer.MAX_VALUE) {
                    throw new ElfError("malformed DT_NEEDED section");
                }
                i2++;
            } else {
                j2 = j;
                if (j20 == 5) {
                    j19 = z2 ? getu32(fileChannel, byteBufferAllocate, j18 + 4) : get64(fileChannel, byteBufferAllocate, j18 + 8);
                }
            }
            long j21 = 16;
            j18 += z2 ? 8L : 16L;
            j17 = 0;
            if (j20 != 0) {
                z = z2;
                j = j2;
            } else {
                if (j19 == 0) {
                    throw new ElfError("Dynamic section string-table not found");
                }
                int i3 = 0;
                while (true) {
                    if (i3 >= j13) {
                        j3 = 0;
                        break;
                    }
                    if (z2) {
                        j4 = getu32(fileChannel, byteBufferAllocate, j12 + j17);
                    } else {
                        j4 = getu32(fileChannel, byteBufferAllocate, j12 + j17);
                    }
                    if (j4 == 1) {
                        if (z2) {
                            j6 = getu32(fileChannel, byteBufferAllocate, j12 + 8);
                        } else {
                            j6 = get64(fileChannel, byteBufferAllocate, j12 + j21);
                        }
                        if (z2) {
                            j5 = j13;
                            j7 = getu32(fileChannel, byteBufferAllocate, j12 + 20);
                        } else {
                            j5 = j13;
                            j7 = get64(fileChannel, byteBufferAllocate, j12 + 40);
                        }
                        if (j6 <= j19 && j19 < j7 + j6) {
                            if (z2) {
                                j8 = getu32(fileChannel, byteBufferAllocate, j12 + 4);
                            } else {
                                j8 = get64(fileChannel, byteBufferAllocate, j12 + 8);
                            }
                            j3 = j8 + (j19 - j6);
                        }
                    } else {
                        j5 = j13;
                    }
                    j12 += (long) i;
                    i3++;
                    j13 = j5;
                    j21 = 16;
                    j17 = 0;
                }
                long j22 = 0;
                if (j3 == 0) {
                    throw new ElfError("did not find file offset of DT_STRTAB table");
                }
                String[] strArr = new String[i2];
                int i4 = 0;
                while (true) {
                    long j23 = j2 + j22;
                    long j24 = z2 ? getu32(fileChannel, byteBufferAllocate, j23) : get64(fileChannel, byteBufferAllocate, j23);
                    if (j24 == 1) {
                        strArr[i4] = getSz(fileChannel, byteBufferAllocate, (z2 ? getu32(fileChannel, byteBufferAllocate, j2 + 4) : get64(fileChannel, byteBufferAllocate, j2 + 8)) + j3);
                        if (i4 == Integer.MAX_VALUE) {
                            throw new ElfError("malformed DT_NEEDED section");
                        }
                        i4++;
                    }
                    j2 += z2 ? 8L : 16L;
                    if (j24 == 0) {
                        if (i4 == i2) {
                            return strArr;
                        }
                        throw new ElfError("malformed DT_NEEDED section");
                    }
                    j22 = 0;
                }
            }
        }
    }

    private static String getSz(FileChannel fileChannel, ByteBuffer byteBuffer, long j) throws IOException {
        StringBuilder sb = new StringBuilder();
        while (true) {
            long j2 = 1 + j;
            short u8Var = getu8(fileChannel, byteBuffer, j);
            if (u8Var != 0) {
                sb.append((char) u8Var);
                j = j2;
            } else {
                return sb.toString();
            }
        }
    }

    private static void read(FileChannel fileChannel, ByteBuffer byteBuffer, int i, long j) throws IOException {
        int i2;
        byteBuffer.position(0);
        byteBuffer.limit(i);
        while (byteBuffer.remaining() > 0 && (i2 = fileChannel.read(byteBuffer, j)) != -1) {
            j += (long) i2;
        }
        if (byteBuffer.remaining() > 0) {
            throw new ElfError("ELF file truncated");
        }
        byteBuffer.position(0);
    }

    private static long get64(FileChannel fileChannel, ByteBuffer byteBuffer, long j) throws IOException {
        read(fileChannel, byteBuffer, 8, j);
        return byteBuffer.getLong();
    }

    private static long getu32(FileChannel fileChannel, ByteBuffer byteBuffer, long j) throws IOException {
        read(fileChannel, byteBuffer, 4, j);
        return ((long) byteBuffer.getInt()) & 4294967295L;
    }

    private static int getu16(FileChannel fileChannel, ByteBuffer byteBuffer, long j) throws IOException {
        read(fileChannel, byteBuffer, 2, j);
        return byteBuffer.getShort() & UShort.MAX_VALUE;
    }

    private static short getu8(FileChannel fileChannel, ByteBuffer byteBuffer, long j) throws IOException {
        read(fileChannel, byteBuffer, 1, j);
        return (short) (byteBuffer.get() & 255);
    }

    private static class ElfError extends RuntimeException {
        ElfError(String str) {
            super(str);
        }
    }
}
