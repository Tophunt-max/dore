package com.igexin.push.extension.distribution.gbd.a.c;

import android.content.Context;
import android.net.wifi.ScanResult;
import com.igexin.push.extension.distribution.gbd.i.ak;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class m {
    private static String c = "GBD_WA";
    private c d;
    private Comparator<ScanResult> e;
    private Comparator<Long> f;
    private ak<Long> g;
    private List<ScanResult> h;
    private Context i;
    private long j = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected e f356a = e.SCAN_END;
    protected int b = c.b;

    public m(Context context) {
        this.i = context;
        a();
        b();
    }

    private void a() {
        this.h = new ArrayList();
        this.e = new n(this);
        o oVar = new o(this);
        this.f = oVar;
        this.g = new ak<>(oVar);
    }

    private void a(int i, int i2) {
        try {
            this.b = i;
            this.h.clear();
            this.d.a(this.h, i, i2);
        } catch (Exception e) {
            com.igexin.push.extension.distribution.gbd.i.j.a(e);
        }
    }

    private void a(Object obj, int i) {
        List<Long> listA;
        int i2;
        this.f356a = e.SCAN_END;
        if (obj == null && i == 5) {
            return;
        }
        if (obj == null && i == -1) {
            i2 = c.j;
        } else {
            if (obj != null || i != 11) {
                try {
                    ArrayList arrayList = new ArrayList();
                    if (obj != null) {
                        List list = (List) obj;
                        if (list.size() != 0) {
                            Collections.sort(list, this.e);
                            int i3 = 0;
                            for (int i4 = 0; i4 < list.size(); i4++) {
                                ScanResult scanResult = (ScanResult) list.get(i4);
                                long j = Long.parseLong(scanResult.BSSID.replaceAll(":", ""), 16);
                                if (j != 0 && scanResult.level > com.igexin.push.extension.distribution.gbd.c.a.q && !arrayList.contains(Long.valueOf(j))) {
                                    if (i3 >= com.igexin.push.extension.distribution.gbd.c.a.s) {
                                        break;
                                    }
                                    arrayList.add(Long.valueOf(j));
                                    this.h.add(scanResult);
                                    i3++;
                                }
                            }
                            if (!arrayList.isEmpty()) {
                                Collections.sort(arrayList, this.f);
                                if (!com.igexin.push.extension.distribution.gbd.c.c.m.isEmpty() && (listA = this.g.a(arrayList, com.igexin.push.extension.distribution.gbd.c.c.m)) != null && !listA.isEmpty() && ((int) ((((double) (arrayList.size() - listA.size())) / ((double) arrayList.size())) * 100.0d)) < com.igexin.push.extension.distribution.gbd.c.a.t && i == 11) {
                                    a(c.h, i);
                                    return;
                                }
                            } else if (i == 11) {
                                a(c.i, i);
                                return;
                            }
                        } else if (i == 11) {
                            a(c.g, i);
                            return;
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        com.igexin.push.extension.distribution.gbd.e.a.g.a().a(arrayList);
                    }
                    this.d.a(this.h, c.b, i);
                    return;
                } catch (Exception e) {
                    com.igexin.push.extension.distribution.gbd.i.j.a(e);
                    return;
                }
            }
            i2 = c.f;
        }
        a(i2, i);
    }

    private void b() {
        if (com.igexin.push.extension.distribution.gbd.c.c.m.isEmpty()) {
            return;
        }
        Collections.sort(com.igexin.push.extension.distribution.gbd.c.c.m, this.f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x005b, code lost:
    
        if (r11 == 12) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void b(int r11) {
        /*
            r10 = this;
            boolean r0 = com.igexin.push.extension.distribution.gbd.c.c.i
            r1 = 5
            r2 = 12
            r3 = 0
            if (r0 == 0) goto L5b
            long r4 = com.igexin.push.extension.distribution.gbd.c.c.j
            r6 = 0
            int r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r0 != 0) goto L16
            long r4 = java.lang.System.currentTimeMillis()
            com.igexin.push.extension.distribution.gbd.c.c.j = r4
        L16:
            long r4 = java.lang.System.currentTimeMillis()
            long r8 = com.igexin.push.extension.distribution.gbd.c.c.j
            long r4 = r4 - r8
            int r0 = com.igexin.push.extension.distribution.gbd.c.a.r
            int r0 = r0 * 1000
            long r8 = (long) r0
            int r0 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
            if (r0 <= 0) goto L46
            java.lang.String r0 = com.igexin.push.extension.distribution.gbd.a.c.m.c
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "timeout, type is "
            r4.append(r5)
            r4.append(r11)
            java.lang.String r4 = r4.toString()
            com.igexin.push.extension.distribution.gbd.i.j.b(r0, r4)
            if (r11 != r2) goto L61
            java.lang.String r0 = com.igexin.push.extension.distribution.gbd.a.c.m.c
            java.lang.String r1 = "timeout report"
            com.igexin.push.extension.distribution.gbd.i.j.a(r0, r1)
            goto L5d
        L46:
            com.igexin.push.extension.distribution.gbd.c.c.j = r6
            android.net.wifi.WifiManager r0 = com.igexin.push.extension.distribution.gbd.c.c.d     // Catch: java.lang.Exception -> L52
            java.util.List r0 = r0.getScanResults()     // Catch: java.lang.Exception -> L52
            r10.a(r0, r11)     // Catch: java.lang.Exception -> L52
            goto L64
        L52:
            r11 = move-exception
            r0 = -1
            r10.a(r3, r0)
            com.igexin.push.extension.distribution.gbd.i.j.a(r11)
            goto L64
        L5b:
            if (r11 != r2) goto L61
        L5d:
            r10.a(r3, r11)
            goto L64
        L61:
            r10.a(r3, r1)
        L64:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.gbd.a.c.m.b(int):void");
    }

    protected void a(int i) {
        this.h.clear();
        this.f356a = e.SCAN_START;
        this.b = c.b;
        b(i);
    }

    public void a(c cVar) {
        this.d = cVar;
    }
}
