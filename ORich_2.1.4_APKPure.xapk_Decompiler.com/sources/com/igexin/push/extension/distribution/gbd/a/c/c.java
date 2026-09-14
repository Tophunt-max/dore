package com.igexin.push.extension.distribution.gbd.a.c;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.Location;
import android.net.wifi.ScanResult;
import android.os.Build;
import android.os.SystemClock;
import android.telephony.NeighboringCellInfo;
import android.text.TextUtils;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static int f347a = 1;
    protected static int b = 0;
    protected static int c = -1;
    protected static int d = -2;
    protected static int e = -3;
    protected static int f = -4;
    protected static int g = -5;
    protected static int h = -6;
    protected static int i = -7;
    protected static int j = -8;
    protected static int k = -9;
    private static c l;
    private Context m;
    private a o;
    private m p;
    private long q;
    private float r;
    private ThreadPoolExecutor t;
    private final Object n = new Object();
    private volatile boolean s = false;

    private c(Context context) {
        try {
            this.m = context;
            a aVar = new a(context);
            this.o = aVar;
            aVar.a(this);
            m mVar = new m(context);
            this.p = mVar;
            mVar.a(this);
            this.t = new ThreadPoolExecutor(0, 2, 3L, TimeUnit.SECONDS, new LinkedBlockingDeque(2));
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
        }
    }

    public static c a() {
        if (l == null) {
            l = new c(com.igexin.push.extension.distribution.gbd.c.c.f373a);
        }
        return l;
    }

    private String a(ScanResult scanResult) {
        if (scanResult == null) {
            return "";
        }
        String strReplace = scanResult.SSID.replace("|", "").replace("#", "").replace(",", "");
        long jX = 0;
        if (Build.VERSION.SDK_INT >= 17) {
            jX = com.igexin.push.extension.distribution.gbd.i.k.x() - (((SystemClock.elapsedRealtimeNanos() / 1000) / 1000) - (scanResult.timestamp / 1000));
        }
        return strReplace + "#" + scanResult.BSSID + "#" + scanResult.level + "#" + scanResult.capabilities + "#" + jX;
    }

    private String a(com.igexin.push.extension.distribution.gbd.b.c cVar) {
        StringBuilder sb = new StringBuilder();
        if (cVar == null) {
            sb.append(0);
            sb.append("|");
            sb.append(0);
            sb.append("|");
            sb.append(0);
            sb.append("|");
            sb.append(0);
            sb.append("|");
        } else {
            sb.append(cVar.a());
            sb.append("|");
            sb.append(cVar.b());
            sb.append("|");
            sb.append(cVar.c());
            sb.append("|");
            sb.append(cVar.d());
            sb.append("|");
            List<NeighboringCellInfo> listE = cVar.e();
            for (int i2 = 0; listE != null && i2 < listE.size(); i2++) {
                sb.append(listE.get(i2).getCid());
                if (i2 < listE.size() - 1) {
                    sb.append(",");
                }
            }
        }
        sb.append("|");
        return sb.toString();
    }

    private String a(List<ScanResult> list) {
        StringBuilder sb = new StringBuilder();
        if (list != null) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                sb.append(a(list.get(i2)));
                if (i2 < list.size() - 1) {
                    sb.append(",");
                }
            }
        }
        sb.append("|");
        return sb.toString();
    }

    private String a(List<ScanResult> list, Location location, com.igexin.push.extension.distribution.gbd.b.c cVar, int i2, int i3, ConcurrentHashMap<String, Object> concurrentHashMap, List<Float> list2, boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(new Date(com.igexin.push.extension.distribution.gbd.i.k.x())));
        sb.append("|");
        sb.append(com.igexin.push.core.f.s);
        sb.append("|");
        sb.append(com.igexin.push.core.f.f238a);
        sb.append("|");
        String strB = b(location);
        String strA = a(cVar);
        String strA2 = a(list);
        sb.append(strB);
        sb.append(strA);
        sb.append(strA2);
        sb.append("|");
        sb.append(i2);
        sb.append("|");
        sb.append(d());
        sb.append("|");
        sb.append(e());
        sb.append("|");
        sb.append(this.q);
        sb.append("|");
        sb.append(this.r);
        sb.append("|");
        sb.append("|");
        sb.append("ANDROID");
        sb.append("|");
        sb.append(i3);
        sb.append("|");
        sb.append("|");
        sb.append("|");
        sb.append("|");
        sb.append(com.igexin.push.extension.distribution.gbd.i.k.B());
        sb.append("|");
        if (z) {
            sb.append(com.igexin.push.extension.distribution.gbd.i.k.a());
            sb.append("|");
            sb.append(com.igexin.push.extension.distribution.gbd.i.k.b());
        } else {
            sb.append("|");
        }
        return sb.toString();
    }

    private void a(String str) {
        com.igexin.push.extension.distribution.gbd.e.a.b.a().b(str, b());
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_RLA", "saveRALData: type = " + b());
    }

    private String b(Location location) {
        long time;
        long jX;
        float accuracy;
        StringBuilder sb = new StringBuilder();
        if (location == null) {
            sb.append("none");
            sb.append("|");
            sb.append("0");
            sb.append("|");
            sb.append("0");
            sb.append("|");
            sb.append("0");
            sb.append("|");
            this.q = 0L;
            accuracy = 0.0f;
        } else {
            sb.append(location.getProvider());
            sb.append("|");
            sb.append(location.getLongitude());
            sb.append("|");
            sb.append(location.getLatitude());
            sb.append("|");
            sb.append(location.getAltitude());
            sb.append("|");
            if (Build.VERSION.SDK_INT >= 17) {
                time = ((location.getElapsedRealtimeNanos() - SystemClock.elapsedRealtimeNanos()) / 1000) / 1000;
                jX = com.igexin.push.extension.distribution.gbd.i.k.x();
            } else {
                time = location.getTime();
                jX = com.igexin.push.extension.distribution.gbd.c.c.T;
            }
            this.q = time + jX;
            accuracy = location.getAccuracy();
        }
        this.r = accuracy;
        return sb.toString();
    }

    private void b(String str) {
        com.igexin.push.extension.distribution.gbd.e.a.b.a().a(str, b());
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_RLA", "instantReport: type = " + b());
    }

    private int d() {
        try {
            Intent intentRegisterReceiver = this.m.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (intentRegisterReceiver != null && intentRegisterReceiver.getExtras() != null) {
                int i2 = intentRegisterReceiver.getExtras().getInt("status");
                if (i2 == 1) {
                    return 0;
                }
                if (i2 == 2) {
                    return 2;
                }
                if (i2 == 3 || i2 == 4) {
                    return 1;
                }
                return i2 != 5 ? 0 : 3;
            }
            return 0;
        } catch (Exception e2) {
            com.igexin.push.extension.distribution.gbd.i.j.a(e2);
            return 0;
        }
    }

    private int e() {
        try {
            Intent intentRegisterReceiver = this.m.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            if (intentRegisterReceiver != null && intentRegisterReceiver.getExtras() != null) {
                int i2 = intentRegisterReceiver.getExtras().getInt("plugged");
                if (i2 == 1) {
                    return 1;
                }
                if (i2 != 2) {
                    return i2 != 4 ? 0 : 3;
                }
                return 2;
            }
            return 0;
        } catch (Exception e2) {
            com.igexin.push.extension.distribution.gbd.i.j.a(e2);
            return 0;
        }
    }

    public void a(int i2) {
        try {
            if (com.igexin.push.extension.distribution.gbd.i.k.c(b())) {
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_RLA", "type " + b() + " in type black list, return.");
                return;
            }
            if (!com.igexin.push.extension.distribution.gbd.c.a.n) {
                com.igexin.push.extension.distribution.gbd.i.j.b("GBD_RLA", "doSample 11 not enable.");
                return;
            }
            boolean zE = com.igexin.push.extension.distribution.gbd.d.d.a().e();
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_RLA", "doSample checkSafeStatus = " + zE + ", dyn/sta type = " + i2);
            boolean z = false;
            if (!TextUtils.isEmpty(com.igexin.push.extension.distribution.gbd.c.a.ah) && !"none".equals(com.igexin.push.extension.distribution.gbd.c.a.ah)) {
                String[] strArrSplit = com.igexin.push.extension.distribution.gbd.c.a.ah.split(",");
                String strR = com.igexin.push.extension.distribution.gbd.i.k.r();
                int i3 = Build.VERSION.SDK_INT;
                for (String str : strArrSplit) {
                    String[] strArrSplit2 = str.split(":");
                    if (strArrSplit2.length != 1) {
                        if (strArrSplit2.length == 2) {
                            int i4 = Integer.parseInt(strArrSplit2[1]);
                            if (strR.equalsIgnoreCase(strArrSplit2[0]) && i3 >= i4) {
                                z = true;
                                break;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        if (strR.equalsIgnoreCase(strArrSplit2[0])) {
                            z = true;
                            break;
                        }
                    }
                }
            }
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_RLA", "isInBrandBlackList: " + z);
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (i2 == 11 && jCurrentTimeMillis - com.igexin.push.extension.distribution.gbd.c.c.aD > com.igexin.push.extension.distribution.gbd.c.a.bF * 1000) {
                com.igexin.push.extension.distribution.gbd.e.a.g.a().b(jCurrentTimeMillis);
            }
            if (!zE) {
                this.p.f356a = e.SCAN_END;
            } else {
                ThreadPoolExecutor threadPoolExecutor = this.t;
                if (threadPoolExecutor != null) {
                    threadPoolExecutor.execute(new d(this, i2));
                }
            }
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_RLA", "type11 exception = " + th.toString());
        }
    }

    protected void a(Location location) {
        List<ScanResult> scanResults = com.igexin.push.extension.distribution.gbd.c.c.i ? com.igexin.push.extension.distribution.gbd.c.c.d.getScanResults() : null;
        com.igexin.push.extension.distribution.gbd.b.c cVarA = this.o.a();
        com.igexin.push.extension.distribution.gbd.i.j.b("GBD_RLA", "gps location data.");
        String strA = a(scanResults, location, cVarA, f347a, 13, null, null, false);
        if (strA != null) {
            a(strA);
        }
    }

    /*  JADX ERROR: ConcurrentModificationException in pass: ConstructorVisitor
        java.util.ConcurrentModificationException
        	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1095)
        	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:1049)
        	at jadx.core.dex.visitors.ConstructorVisitor.insertPhiInsn(ConstructorVisitor.java:139)
        	at jadx.core.dex.visitors.ConstructorVisitor.processInvoke(ConstructorVisitor.java:91)
        	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:56)
        	at jadx.core.dex.visitors.ConstructorVisitor.visit(ConstructorVisitor.java:42)
        */
    protected void a(
    /*  JADX ERROR: ConcurrentModificationException in pass: ConstructorVisitor
        java.util.ConcurrentModificationException
        	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1095)
        	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:1049)
        	at jadx.core.dex.visitors.ConstructorVisitor.insertPhiInsn(ConstructorVisitor.java:139)
        	at jadx.core.dex.visitors.ConstructorVisitor.processInvoke(ConstructorVisitor.java:91)
        	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:56)
        */
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r17v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:224)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:169)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:407)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:337)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:303)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
        */

    public int b() {
        return 11;
    }

    public String c() {
        return "* * * * *";
    }
}
