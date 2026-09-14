package com.igexin.push.extension.distribution.gbd.e.a;

import android.content.ContentValues;
import android.text.TextUtils;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.dmcbig.mediapicker.PickerConfig;
import com.facebook.imageutils.JfifUtil;
import com.igexin.push.extension.distribution.gbd.i.j;
import io.dcloud.common.DHInterface.IApp;
import java.net.ServerSocket;
import java.util.List;
import org.mozilla.universalchardet.prober.contextanalysis.EUCJPContextAnalysis;
import org.mozilla.universalchardet.prober.contextanalysis.SJISContextAnalysis;
import org.mozilla.universalchardet.prober.distributionanalysis.Big5DistributionAnalysis;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static g f390a;

    public static synchronized g a() {
        if (f390a == null) {
            f390a = new g();
        }
        return f390a;
    }

    private void a(int i, String str) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put(IApp.ConfigProperty.CONFIG_KEY, Integer.valueOf(i));
            contentValues.put("value", str);
            com.igexin.push.extension.distribution.gbd.c.c.b.a("runtime", (String) null, contentValues);
        } catch (Throwable th) {
            j.a(th);
        }
    }

    private void a(int i, byte[] bArr) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put(IApp.ConfigProperty.CONFIG_KEY, Integer.valueOf(i));
            contentValues.put("value", bArr);
            com.igexin.push.extension.distribution.gbd.c.c.b.a("runtime", (String) null, contentValues);
        } catch (Throwable th) {
            j.a(th);
        }
    }

    private ServerSocket f() {
        try {
            return new ServerSocket(48432);
        } catch (Throwable unused) {
            j.a("GBD_RDM", "open port error ！");
            return null;
        }
    }

    public void a(int i) {
        a(161, String.valueOf(i));
    }

    public void a(long j) {
        com.igexin.push.extension.distribution.gbd.c.c.l = j;
        a(102, String.valueOf(j));
        j.a("GBD_RDM", "saveTimeOffset = " + j);
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.igexin.push.extension.distribution.gbd.c.c.aq = str;
        a(190, com.igexin.b.b.a.b(str.getBytes()));
    }

    public void a(String str, boolean z) {
        try {
            if (!z) {
                j.b("GBD_RDM", "imei main not format.");
            } else {
                com.igexin.push.extension.distribution.gbd.c.c.aw = str;
                a(ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION, com.igexin.b.b.a.b(str.getBytes()));
            }
        } catch (Throwable th) {
            j.a(th);
        }
    }

    public void a(List<Long> list) {
        try {
            com.igexin.push.extension.distribution.gbd.c.c.m.clear();
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < list.size(); i++) {
                long jLongValue = list.get(i).longValue();
                com.igexin.push.extension.distribution.gbd.c.c.m.add(Long.valueOf(jLongValue));
                sb.append(jLongValue);
                if (i < list.size() - 1) {
                    sb.append(",");
                }
            }
            a(103, com.igexin.b.b.a.b(sb.toString().getBytes()));
        } catch (Exception e) {
            j.a(e);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:127:0x029c A[Catch: Exception -> 0x0264, all -> 0x02b7, TryCatch #3 {all -> 0x02b7, blocks: (B:6:0x0012, B:8:0x0018, B:74:0x00af, B:75:0x00b8, B:76:0x00c1, B:77:0x00ca, B:78:0x00d3, B:79:0x00dc, B:80:0x00e4, B:81:0x00ed, B:82:0x00f6, B:83:0x00fe, B:84:0x0106, B:85:0x010f, B:86:0x012d, B:87:0x0136, B:88:0x013e, B:89:0x0146, B:90:0x014e, B:91:0x0157, B:92:0x015f, B:93:0x0167, B:94:0x016f, B:95:0x0177, B:96:0x017f, B:97:0x0188, B:98:0x0190, B:99:0x0199, B:100:0x01a1, B:101:0x01aa, B:102:0x01b2, B:103:0x01ba, B:104:0x01c3, B:105:0x01cb, B:106:0x01d4, B:107:0x01d8, B:108:0x01e0, B:109:0x01e8, B:110:0x01f1, B:111:0x01f9, B:112:0x0205, B:113:0x020d, B:114:0x0232, B:116:0x0235, B:117:0x0247, B:120:0x0268, B:121:0x026f, B:122:0x0276, B:123:0x027d, B:124:0x0285, B:125:0x028d, B:126:0x0295, B:127:0x029c, B:129:0x02ac, B:132:0x02b2), top: B:158:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x02f7  */
    /* JADX WARN: Removed duplicated region for block: B:191:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0085  */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [int] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void b() throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 936
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.gbd.e.a.g.b():void");
    }

    public void b(long j) {
        com.igexin.push.extension.distribution.gbd.c.c.aD = j;
        a(207, String.valueOf(j));
    }

    public void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.igexin.push.extension.distribution.gbd.c.c.ar = str;
        a(191, com.igexin.b.b.a.b(str.getBytes()));
    }

    public void b(String str, boolean z) {
        try {
            if (!z) {
                j.b("GBD_RDM", "imei total not format.");
            } else {
                com.igexin.push.extension.distribution.gbd.c.c.ax = str;
                a(PickerConfig.CODE_PICKER_CROP, com.igexin.b.b.a.b(str.getBytes()));
            }
        } catch (Throwable th) {
            j.a(th);
        }
    }

    public void c() {
        try {
            a(SJISContextAnalysis.HIRAGANA_HIGHBYTE, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.c.u.getBytes()));
        } catch (Exception e) {
            j.a(e);
        }
    }

    public void c(long j) {
        com.igexin.push.extension.distribution.gbd.c.c.aB = j;
        a(205, String.valueOf(j));
    }

    public void c(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.igexin.push.extension.distribution.gbd.c.c.at = str;
        a(193, com.igexin.b.b.a.b(str.getBytes()));
    }

    public void c(String str, boolean z) {
        try {
            if (!z) {
                j.b("GBD_RDM", "imsi main not format.");
            } else {
                com.igexin.push.extension.distribution.gbd.c.c.ay = str;
                a(202, com.igexin.b.b.a.b(str.getBytes()));
            }
        } catch (Throwable th) {
            j.a(th);
        }
    }

    public void d() {
        try {
            a(131, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.c.v.getBytes()));
        } catch (Exception e) {
            j.a(e);
        }
    }

    public void d(long j) {
        com.igexin.push.extension.distribution.gbd.c.c.aC = j;
        a(206, String.valueOf(j));
    }

    public void d(String str) {
        if (str == null) {
            return;
        }
        a(162, str);
    }

    public void d(String str, boolean z) {
        try {
            if (!z) {
                j.b("GBD_RDM", "imsi total not format.");
            } else {
                com.igexin.push.extension.distribution.gbd.c.c.az = str;
                a(203, com.igexin.b.b.a.b(str.getBytes()));
            }
        } catch (Throwable th) {
            j.a(th);
        }
    }

    public void e(long j) {
        com.igexin.push.extension.distribution.gbd.c.c.al = j;
        a(181, String.valueOf(j));
    }

    public void e(String str) {
        a(165, com.igexin.b.b.a.b(str.getBytes()));
    }

    public boolean e() {
        if (com.igexin.push.extension.distribution.gbd.c.c.h == null || com.igexin.push.extension.distribution.gbd.c.c.h.isClosed()) {
            com.igexin.push.extension.distribution.gbd.c.c.h = f();
            if (com.igexin.push.extension.distribution.gbd.c.c.h == null) {
                return false;
            }
        }
        j.a("GBD_RDM", "open port success !");
        return true;
    }

    public void f(long j) {
        com.igexin.push.extension.distribution.gbd.c.c.as = j;
        a(JfifUtil.MARKER_SOFn, String.valueOf(j));
    }

    public void f(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.igexin.push.extension.distribution.gbd.c.c.U = str;
        a(163, com.igexin.b.b.a.b(str.getBytes()));
    }

    public void g(long j) {
        com.igexin.push.extension.distribution.gbd.c.c.ap = j;
        a(182, String.valueOf(j));
    }

    public void h(long j) {
        com.igexin.push.extension.distribution.gbd.c.c.C = j;
        a(JfifUtil.MARKER_RST0, String.valueOf(j));
    }

    public void i(long j) {
        com.igexin.push.extension.distribution.gbd.c.c.B = j;
        a(140, String.valueOf(com.igexin.push.extension.distribution.gbd.c.c.B));
    }

    public void j(long j) {
        com.igexin.push.extension.distribution.gbd.c.c.A = j;
        a(138, String.valueOf(com.igexin.push.extension.distribution.gbd.c.c.A));
    }

    public void k(long j) {
        com.igexin.push.extension.distribution.gbd.c.c.E = j;
        a(141, String.valueOf(com.igexin.push.extension.distribution.gbd.c.c.E));
    }

    public void l(long j) {
        com.igexin.push.extension.distribution.gbd.c.c.F = j;
        a(EUCJPContextAnalysis.SINGLE_SHIFT_2, String.valueOf(com.igexin.push.extension.distribution.gbd.c.c.F));
    }

    public void m(long j) {
        com.igexin.push.extension.distribution.gbd.c.c.G = j;
        a(145, String.valueOf(com.igexin.push.extension.distribution.gbd.c.c.G));
    }

    public void n(long j) {
        com.igexin.push.extension.distribution.gbd.c.c.L = j;
        a(164, String.valueOf(j));
    }

    public void o(long j) {
        a(166, String.valueOf(j));
    }

    public void p(long j) {
        a(167, String.valueOf(j));
    }

    public void q(long j) {
        com.igexin.push.extension.distribution.gbd.c.c.n = j;
        a(104, String.valueOf(j));
    }

    public void r(long j) {
        com.igexin.push.extension.distribution.gbd.c.c.o = j;
        a(Big5DistributionAnalysis.LOWBYTE_END_1, String.valueOf(j));
    }

    public void s(long j) {
        com.igexin.push.extension.distribution.gbd.c.c.t = j;
        a(125, Long.toString(j));
    }

    public void t(long j) {
        com.igexin.push.extension.distribution.gbd.c.c.x = j;
        a(154, String.valueOf(com.igexin.push.extension.distribution.gbd.c.c.x));
    }
}
