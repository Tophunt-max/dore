package com.igexin.push.extension.distribution.gbd.a.c;

import android.content.Context;
import android.text.TextUtils;
import java.net.DatagramSocket;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.mozilla.universalchardet.prober.HebrewProber;

/* JADX INFO: loaded from: classes.dex */
public class f {
    private static f b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f350a;
    private DatagramSocket c;
    private String d;
    private ThreadPoolExecutor e;
    private ThreadPoolExecutor f;
    private Map<String, String> g;
    private Map<String, String> h;
    private Map<String, com.igexin.push.extension.distribution.gbd.b.h> i;
    private boolean j = false;

    private f(Context context) {
        try {
            this.f350a = context;
            this.g = Collections.synchronizedMap(new HashMap());
            this.h = Collections.synchronizedMap(new HashMap());
            this.i = Collections.synchronizedMap(new HashMap());
            if (this.e == null) {
                this.e = new ThreadPoolExecutor(2, 4, 4L, TimeUnit.SECONDS, new LinkedBlockingDeque(com.igexin.push.extension.distribution.gbd.c.a.aw));
            }
            if (this.f == null) {
                this.f = new ThreadPoolExecutor(2, 4, 3L, TimeUnit.SECONDS, new LinkedBlockingDeque(com.igexin.push.extension.distribution.gbd.c.a.aw));
            }
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
        }
    }

    public static f a() {
        if (b == null) {
            b = new f(com.igexin.push.extension.distribution.gbd.c.c.f373a);
        }
        return b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, String str3, String str4) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        String str5 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(new Date(com.igexin.push.extension.distribution.gbd.i.k.x()));
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_SLMA", "getlm type = " + c());
        com.igexin.push.extension.distribution.gbd.b.j jVarB = com.igexin.push.extension.distribution.gbd.i.k.b(this.f350a);
        String strB = jVarB.b();
        if (!TextUtils.isEmpty(strB)) {
            strB = strB.replace(":", "");
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str5);
        sb.append("|");
        sb.append(com.igexin.push.core.f.s);
        sb.append("|");
        sb.append(com.igexin.push.core.f.f238a);
        sb.append("|");
        sb.append(jVarB.c());
        sb.append("#");
        sb.append(jVarB.a());
        sb.append("|");
        sb.append(strB);
        sb.append("|");
        sb.append(str);
        sb.append("|");
        sb.append(str2);
        sb.append("|");
        sb.append(str3);
        sb.append("|");
        sb.append(jVarB.d());
        sb.append("|");
        sb.append(jVarB.e());
        sb.append("|");
        sb.append("ANDROID");
        sb.append("|");
        sb.append(str4);
        sb.append("|");
        sb.append(com.igexin.push.extension.distribution.gbd.i.k.B());
        if (com.igexin.push.extension.distribution.gbd.i.k.d(c())) {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_SLMA", "instant r " + c());
            com.igexin.push.extension.distribution.gbd.e.a.b.a().a(sb.toString(), c());
        } else {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_SLMA", "not instant r " + c());
            com.igexin.push.extension.distribution.gbd.e.a.b.a().b(sb.toString(), c());
        }
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_SLMA", "save type = " + c());
    }

    private ArrayList<com.igexin.push.extension.distribution.gbd.b.g> d() throws Throwable {
        int iL = com.igexin.push.extension.distribution.gbd.i.k.l();
        long jA = com.igexin.push.extension.distribution.gbd.i.k.a(com.igexin.push.extension.distribution.gbd.i.k.c(this.d), iL);
        long jB = com.igexin.push.extension.distribution.gbd.i.k.b(com.igexin.push.extension.distribution.gbd.i.k.c(this.d), iL);
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_SLMA", "start " + jA + ", end " + jB);
        StringBuilder sb = new StringBuilder();
        sb.append("cn = ");
        sb.append(((int) (jB - jA)) + 1);
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_SLMA", sb.toString());
        long jC = com.igexin.push.extension.distribution.gbd.i.k.c(this.d);
        ArrayList<com.igexin.push.extension.distribution.gbd.b.g> arrayList = new ArrayList<>();
        if (com.igexin.push.extension.distribution.gbd.c.a.aw > 254) {
            long jC2 = com.igexin.push.extension.distribution.gbd.i.k.c(jC, 1);
            long jC3 = com.igexin.push.extension.distribution.gbd.i.k.c(jA, 0);
            long jC4 = com.igexin.push.extension.distribution.gbd.i.k.c(jB, 0);
            com.igexin.push.extension.distribution.gbd.b.g gVar = new com.igexin.push.extension.distribution.gbd.b.g();
            gVar.a(com.igexin.push.extension.distribution.gbd.i.k.a(jC, jC2, jC3));
            gVar.b(com.igexin.push.extension.distribution.gbd.i.k.a(jC, jC2, jC4));
            arrayList.add(gVar);
            ArrayList<Long> arrayListN = com.igexin.push.extension.distribution.gbd.i.k.n();
            if (arrayListN != null && arrayListN.size() > 0) {
                arrayListN.remove(Long.valueOf(jC2));
                long j = ((long) com.igexin.push.extension.distribution.gbd.c.a.aw) - 254;
                for (int i = 0; i < arrayListN.size(); i++) {
                    com.igexin.push.extension.distribution.gbd.b.g gVar2 = new com.igexin.push.extension.distribution.gbd.b.g();
                    if (j >= 254) {
                        gVar2.a(com.igexin.push.extension.distribution.gbd.i.k.a(jC, arrayListN.get(i).longValue(), jC3));
                        gVar2.b(com.igexin.push.extension.distribution.gbd.i.k.a(jC, arrayListN.get(i).longValue(), jC4));
                        arrayList.add(gVar2);
                        j -= 254;
                    } else if (j > 0) {
                        gVar2.a(com.igexin.push.extension.distribution.gbd.i.k.a(jC, arrayListN.get(i).longValue(), jC3));
                        gVar2.b(com.igexin.push.extension.distribution.gbd.i.k.a(jC, arrayListN.get(i).longValue(), j));
                        arrayList.add(gVar2);
                        j = 0;
                    }
                }
            }
        } else {
            com.igexin.push.extension.distribution.gbd.b.g gVar3 = new com.igexin.push.extension.distribution.gbd.b.g();
            gVar3.a(jA);
            gVar3.b(jA + ((long) com.igexin.push.extension.distribution.gbd.c.a.aw));
            arrayList.add(gVar3);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] e() {
        byte[] bArr = new byte[50];
        bArr[0] = 126;
        bArr[1] = 40;
        bArr[2] = 0;
        bArr[3] = 0;
        bArr[4] = 0;
        bArr[5] = 1;
        bArr[6] = 0;
        bArr[7] = 0;
        bArr[8] = 0;
        bArr[9] = 0;
        bArr[10] = 0;
        bArr[11] = 0;
        bArr[12] = HebrewProber.SPACE;
        bArr[13] = 67;
        bArr[14] = 75;
        for (int i = 15; i < 45; i++) {
            bArr[i] = 65;
        }
        bArr[45] = 0;
        bArr[46] = 0;
        bArr[47] = 33;
        bArr[48] = 0;
        bArr[49] = 1;
        return bArr;
    }

    public void b() {
        try {
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_SLMA", "dosample");
            if (com.igexin.push.extension.distribution.gbd.i.k.c(c())) {
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_SLMA", "type " + c() + " in type black list, return.");
                return;
            }
            Map<String, String> map = this.h;
            if (map != null) {
                map.clear();
            }
            Map<String, String> map2 = this.g;
            if (map2 != null) {
                map2.clear();
            }
            Map<String, com.igexin.push.extension.distribution.gbd.b.h> map3 = this.i;
            if (map3 != null) {
                map3.clear();
            }
            this.j = false;
            boolean zD = com.igexin.push.extension.distribution.gbd.i.k.D();
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_SLMA", "doSample checkSafeStatus = " + zD);
            if (!zD) {
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_SLMA", "failed, watchout as = " + com.igexin.push.extension.distribution.gbd.c.a.f);
                return;
            }
            if (com.igexin.push.extension.distribution.gbd.i.k.d(this.f350a) && com.igexin.push.extension.distribution.gbd.e.a.g.a().e()) {
                this.d = com.igexin.push.extension.distribution.gbd.i.k.k();
                ArrayList<com.igexin.push.extension.distribution.gbd.b.g> arrayListD = d();
                if (arrayListD != null && !arrayListD.isEmpty()) {
                    if (this.c == null) {
                        this.c = new DatagramSocket();
                    }
                    this.e.execute(new k(this));
                    for (com.igexin.push.extension.distribution.gbd.b.g gVar : arrayListD) {
                        for (long jA = gVar.a(); jA <= gVar.b(); jA++) {
                            this.e.execute(new l(this, com.igexin.push.extension.distribution.gbd.i.k.a(jA)));
                        }
                    }
                    this.e.execute(new h(this));
                    return;
                }
                return;
            }
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_SLMA", "wifi = false or port failed");
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
        }
    }

    public int c() {
        return 27;
    }
}
