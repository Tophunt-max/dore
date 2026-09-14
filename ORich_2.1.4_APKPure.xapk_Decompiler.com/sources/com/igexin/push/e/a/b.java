package com.igexin.push.e.a;

import com.igexin.b.a.b.a.a.o;
import com.igexin.b.a.b.c;
import com.igexin.b.a.b.d;
import com.igexin.b.a.b.f;
import com.igexin.b.a.d.a.e;
import com.igexin.push.e.c.g;
import com.igexin.push.e.c.h;
import com.igexin.push.util.EncryptUtils;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class b extends com.igexin.b.a.b.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f265a = "com.igexin.push.e.a.b";
    public static int b = -1;
    private byte[] g;

    b(String str) {
        super(str, true);
    }

    private byte a(o oVar) {
        return (byte) b(oVar, 1);
    }

    public static com.igexin.b.a.b.b a() {
        b bVar = new b("socketProtocol");
        new a("command", bVar);
        return bVar;
    }

    private e a(com.igexin.b.a.b.e eVar, d dVar, o oVar, g gVar) throws Exception {
        if (gVar.h == 48) {
            return null;
        }
        byte bA = a(oVar);
        if (bA > 0) {
            a(oVar, bA);
        }
        gVar.f = a(oVar);
        gVar.o = a(oVar);
        if (gVar.o > 0) {
            gVar.n = a(oVar, gVar.o);
        }
        if (gVar.e == 0) {
            c.b().a(new h());
            c.b().c();
            return null;
        }
        byte[] bArrA = a(oVar, 11);
        int iD = f.d(bArrA, 0);
        if (iD <= b) {
            b = -1;
            throw new Exception("server packetId can't be less than previous");
        }
        b = iD;
        int iD2 = f.d(bArrA, 4);
        short sB = f.b(bArrA, 8);
        int iA = f.a(bArrA, 10);
        com.igexin.push.e.c.b bVar = new com.igexin.push.e.c.b();
        bVar.f268a = sB;
        bVar.b = (byte) iA;
        bVar.f = gVar.c;
        bVar.g = gVar.h;
        if (sB > 0) {
            byte[] bArrA2 = a(oVar, sB);
            if (gVar.h == 16) {
                bArrA2 = EncryptUtils.aesDecSocket(bArrA2, EncryptUtils.getIV(f.b(iD2)));
            } else if (gVar.h == 32) {
                if (iA != 26) {
                    return null;
                }
                bArrA2 = EncryptUtils.altAesDecSocket(bArrA2, f.b(iD2));
            } else if (gVar.h != 0) {
                byte b2 = gVar.h;
                return null;
            }
            if (gVar.g != -128) {
                if (gVar.g == 0) {
                }
                return null;
            }
            bArrA2 = f.d(bArrA2);
            bVar.a(bArrA2);
            if (!Arrays.equals(gVar.n, EncryptUtils.getSocketSignature(bVar, iD, iD2))) {
                com.igexin.b.a.c.b.a(f265a + "|decode signature error!!!!");
                return null;
            }
        } else if (bVar.f268a < 0) {
            com.igexin.b.a.c.b.a(f265a + "|data len < 0, error");
            return null;
        }
        if (this.d != null) {
            c.b().a(this.d.c(eVar, dVar, bVar));
        }
        c.b().c();
        return null;
    }

    static g a(com.igexin.push.e.c.b bVar) {
        g gVar = new g();
        gVar.f272a = 1944742139;
        gVar.a(bVar.c);
        gVar.e = bVar.b > 0 ? 1 : 0;
        gVar.c = 7;
        gVar.b = 11;
        gVar.f = bVar.d;
        gVar.b += EncryptUtils.getRSAKeyId().length;
        if (bVar.f268a <= 0) {
            if (gVar.h == 0) {
                gVar.o = 0;
            }
            c.d();
            return gVar;
        }
        gVar.p = EncryptUtils.getPacketId();
        gVar.q = (int) (System.currentTimeMillis() / 1000);
        gVar.n = EncryptUtils.getSocketSignature(bVar, gVar.p, gVar.q);
        gVar.o = gVar.n.length;
        gVar.b += gVar.o;
        c.d();
        return gVar;
    }

    private byte[] a(o oVar, int i) throws IOException {
        byte[] bArr = new byte[i];
        oVar.a(bArr);
        return bArr;
    }

    private int b(o oVar, int i) throws IOException {
        byte[] bArrA = a(oVar, i);
        if (i == 1) {
            return f.a(bArrA, 0);
        }
        if (i == 2) {
            return f.b(bArrA, 0);
        }
        if (i == 4) {
            return f.d(bArrA, 0);
        }
        return 0;
    }

    private e b(com.igexin.b.a.b.e eVar, d dVar, o oVar, g gVar) throws IOException {
        byte bA;
        if (gVar.h == 48 && (bA = a(oVar)) > 0) {
            this.g = a(oVar, bA);
        }
        if (gVar.e == 0) {
            c.b().a(new h());
        } else {
            byte[] bArrA = a(oVar, 3);
            short sB = f.b(bArrA, 0);
            int iA = f.a(bArrA, 2);
            com.igexin.push.e.c.b bVar = new com.igexin.push.e.c.b();
            bVar.f268a = sB;
            bVar.b = (byte) iA;
            bVar.f = gVar.c;
            if (iA != 26) {
                return null;
            }
            if (bVar.f268a > 0) {
                byte[] bArrA2 = a(oVar, sB);
                if (gVar.h == 48) {
                    byte[] bArr = this.g;
                    bArrA2 = com.igexin.b.a.a.a.a(bArrA2, bArr == null ? c.b().a() : com.igexin.b.b.a.a(bArr));
                } else {
                    byte b2 = gVar.h;
                }
                if (gVar.g == -128) {
                    bArrA2 = f.d(bArrA2);
                } else if (gVar.g != 0) {
                    return null;
                }
                bVar.a(bArrA2);
            }
            if (this.d != null) {
                c.b().a(this.d.c(eVar, dVar, bVar));
            }
        }
        c.b().c();
        return null;
    }

    @Override // com.igexin.b.a.b.b
    public Object a(com.igexin.b.a.b.e eVar, d dVar, Object obj) {
        int iC;
        String str;
        byte[] bArr = null;
        if (obj instanceof com.igexin.push.e.c.b) {
            com.igexin.push.e.c.b bVar = (com.igexin.push.e.c.b) obj;
            g gVarA = a(bVar);
            if (bVar.b > 0 && bVar.f268a > 0) {
                if ((gVarA.g & 192) == 128) {
                    bVar.a(f.c(bVar.e));
                }
                if ((gVarA.h & 48) == 16) {
                    byte[] iv = EncryptUtils.getIV(f.b(gVarA.q));
                    if ((gVarA.f & 16) != 16) {
                        bVar.a(EncryptUtils.aesEncSocket(bVar.e, iv));
                    }
                } else if ((gVarA.h & 48) != 0) {
                    if ((gVarA.h & 48) == 48) {
                        str = f265a + "|encry type = 0x30 not support";
                    } else if ((gVarA.h & 48) == 32) {
                        com.igexin.b.a.c.b.a(f265a + "|encry type = 0x20 reserved");
                    } else {
                        str = f265a + "|encry type = " + (gVarA.h & 48) + " not support";
                    }
                    com.igexin.b.a.c.b.a(str);
                    return null;
                }
            }
            bArr = new byte[gVarA.b + (bVar.b > 0 ? bVar.f268a + 11 : 0)];
            int iA = f.a(1944742139, bArr, 0);
            int iC2 = iA + f.c(gVarA.b, bArr, iA);
            int iC3 = iC2 + f.c(gVarA.c, bArr, iC2);
            int iC4 = iC3 + f.c(gVarA.a(), bArr, iC3);
            int iC5 = iC4 + f.c(gVarA.e, bArr, iC4);
            byte[] rSAKeyId = EncryptUtils.getRSAKeyId();
            int iC6 = iC5 + f.c(rSAKeyId.length, bArr, iC5);
            int iA2 = iC6 + f.a(rSAKeyId, 0, bArr, iC6, rSAKeyId.length);
            int iC7 = iA2 + f.c(gVarA.b(), bArr, iA2);
            if (bVar.f268a > 0) {
                iC7 += f.c(gVarA.o, bArr, iC7);
                iC = f.a(gVarA.n, 0, bArr, iC7, gVarA.o);
            } else {
                iC = f.c(0, bArr, iC7);
            }
            int i = iC7 + iC;
            if (bVar.b > 0) {
                int iA3 = i + f.a(gVarA.p, bArr, i);
                int iA4 = iA3 + f.a(gVarA.q, bArr, iA3);
                int iB = iA4 + f.b(bVar.f268a, bArr, iA4);
                int iC8 = iB + f.c(bVar.b, bArr, iB);
                if (bVar.f268a > 0) {
                    f.a(bVar.e, 0, bArr, iC8, bVar.f268a);
                }
            }
        }
        return bArr;
    }

    @Override // com.igexin.b.a.b.b
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public e c(com.igexin.b.a.b.e eVar, d dVar, Object obj) throws IOException {
        StringBuilder sb;
        String str;
        o oVar = obj instanceof o ? (o) obj : null;
        if (oVar == null) {
            sb = new StringBuilder();
            sb.append(f265a);
            str = "|syncIns is null";
        } else {
            byte[] bArrA = a(oVar, 8);
            if (f.d(bArrA, 0) != 1944742139) {
                return null;
            }
            g gVar = new g();
            gVar.b = bArrA[4] & 255;
            gVar.c = bArrA[5] & 255;
            gVar.a(bArrA[6]);
            gVar.e = bArrA[7] & 255;
            if (gVar.c == 7) {
                return a(eVar, dVar, oVar, gVar);
            }
            if (gVar.c == 1) {
                return b(eVar, dVar, oVar, gVar);
            }
            sb = new StringBuilder();
            sb.append(f265a);
            sb.append("|server socket resp version = ");
            sb.append(gVar.c);
            str = ", not support !!!";
        }
        sb.append(str);
        com.igexin.b.a.c.b.a(sb.toString());
        return null;
    }
}
