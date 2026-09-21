package com.igexin.push.extension.distribution.gbd.a.c;

import android.content.Context;
import android.location.GpsStatus;
import android.location.Location;
import android.location.LocationManager;
import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Location f345a;
    private Context b;
    private c c;
    private LocationManager d;
    private long e = 0;
    private long f = 0;
    private int g = 0;
    private GpsStatus.Listener h = new b(this);

    public a(Context context) {
        try {
            this.b = context;
            this.d = (LocationManager) com.igexin.push.extension.distribution.gbd.c.c.f373a.getSystemService(FirebaseAnalytics.Param.LOCATION);
            boolean zE = com.igexin.push.extension.distribution.gbd.d.d.a().e();
            com.igexin.push.extension.distribution.gbd.i.j.b("GBD_LA", "LocationAction init checkSafeStatus = " + zE);
            if (zE && this.d != null && b()) {
                this.d.addGpsStatusListener(this.h);
            }
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
        }
    }

    private boolean a(Location location) {
        return location != null && location.getLatitude() == 0.0d && location.getLongitude() == 0.0d && location.getTime() == 0 && !location.hasAccuracy();
    }

    private boolean b() {
        if (com.igexin.push.extension.distribution.gbd.i.k.e()) {
            if (com.igexin.push.extension.distribution.gbd.i.k.d("com.huawei.android.hwouc", this.b)) {
                long jCurrentTimeMillis = System.currentTimeMillis() - com.igexin.push.extension.distribution.gbd.c.c.o;
                long j = com.igexin.push.extension.distribution.gbd.c.a.Z * 24 * 60 * 60 * 1000;
                if (com.igexin.push.extension.distribution.gbd.c.a.Y && jCurrentTimeMillis > j) {
                    if (a(this.d.getLastKnownLocation("network"))) {
                        com.igexin.push.extension.distribution.gbd.e.a.g.a().r(System.currentTimeMillis());
                        return false;
                    }
                }
            }
            return true;
        }
        return false;
    }

    static /* synthetic */ int d(a aVar) {
        int i = aVar.g;
        aVar.g = i + 1;
        return i;
    }

    protected Location a(boolean z) {
        LocationManager locationManager;
        String str;
        Location lastKnownLocation = null;
        try {
            if (this.d == null || !b()) {
                return null;
            }
            if (z) {
                locationManager = this.d;
                str = "gps";
            } else {
                locationManager = this.d;
                str = "network";
            }
            lastKnownLocation = locationManager.getLastKnownLocation(str);
            return lastKnownLocation;
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
            return lastKnownLocation;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0081 A[Catch: all -> 0x009f, TryCatch #2 {all -> 0x009f, blocks: (B:3:0x0001, B:5:0x0007, B:7:0x0019, B:9:0x001f, B:11:0x0026, B:14:0x0039, B:16:0x0041, B:17:0x0048, B:31:0x0077, B:37:0x008a, B:35:0x0081, B:30:0x0072, B:21:0x0053, B:23:0x0057, B:24:0x005e), top: B:45:0x0001 }] */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.igexin.push.extension.distribution.gbd.b.c] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [int] */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v18 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v20 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected com.igexin.push.extension.distribution.gbd.b.c a() {
        /*
            r8 = this;
            r0 = 0
            boolean r1 = r8.b()     // Catch: java.lang.Throwable -> L9f
            if (r1 == 0) goto La3
            android.content.Context r1 = r8.b     // Catch: java.lang.Throwable -> L9f
            java.lang.String r2 = "phone"
            java.lang.Object r1 = r1.getSystemService(r2)     // Catch: java.lang.Throwable -> L9f
            android.telephony.TelephonyManager r1 = (android.telephony.TelephonyManager) r1     // Catch: java.lang.Throwable -> L9f
            int r2 = r1.getSimState()     // Catch: java.lang.Throwable -> L9f
            r3 = 5
            r4 = 0
            if (r2 != r3) goto L86
            java.lang.String r2 = r1.getNetworkOperator()     // Catch: java.lang.Throwable -> L9f
            if (r2 == 0) goto L37
            int r3 = r2.length()     // Catch: java.lang.Throwable -> L9f
            r5 = 3
            if (r3 < r5) goto L37
            java.lang.String r3 = r2.substring(r4, r5)     // Catch: java.lang.Throwable -> L9f
            int r3 = java.lang.Integer.parseInt(r3)     // Catch: java.lang.Throwable -> L9f
            java.lang.String r2 = r2.substring(r5)     // Catch: java.lang.Throwable -> L9f
            int r2 = java.lang.Integer.parseInt(r2)     // Catch: java.lang.Throwable -> L9f
            goto L39
        L37:
            r2 = 0
            r3 = 0
        L39:
            android.telephony.CellLocation r5 = r1.getCellLocation()     // Catch: java.lang.Exception -> L70 java.lang.Throwable -> L9f
            boolean r6 = r5 instanceof android.telephony.gsm.GsmCellLocation     // Catch: java.lang.Exception -> L70 java.lang.Throwable -> L9f
            if (r6 == 0) goto L53
            r6 = r5
            android.telephony.gsm.GsmCellLocation r6 = (android.telephony.gsm.GsmCellLocation) r6     // Catch: java.lang.Exception -> L70 java.lang.Throwable -> L9f
            int r6 = r6.getLac()     // Catch: java.lang.Exception -> L70 java.lang.Throwable -> L9f
            android.telephony.gsm.GsmCellLocation r5 = (android.telephony.gsm.GsmCellLocation) r5     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L9f
            int r4 = r5.getCid()     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L9f
        L4e:
            r5 = r4
            r4 = r6
            goto L6d
        L51:
            r5 = move-exception
            goto L72
        L53:
            boolean r6 = r5 instanceof android.telephony.cdma.CdmaCellLocation     // Catch: java.lang.Exception -> L70 java.lang.Throwable -> L9f
            if (r6 == 0) goto L6c
            r6 = r5
            android.telephony.cdma.CdmaCellLocation r6 = (android.telephony.cdma.CdmaCellLocation) r6     // Catch: java.lang.Exception -> L70 java.lang.Throwable -> L9f
            int r6 = r6.getNetworkId()     // Catch: java.lang.Exception -> L70 java.lang.Throwable -> L9f
            r7 = r5
            android.telephony.cdma.CdmaCellLocation r7 = (android.telephony.cdma.CdmaCellLocation) r7     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L9f
            int r2 = r7.getSystemId()     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L9f
            android.telephony.cdma.CdmaCellLocation r5 = (android.telephony.cdma.CdmaCellLocation) r5     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L9f
            int r4 = r5.getBaseStationId()     // Catch: java.lang.Exception -> L51 java.lang.Throwable -> L9f
            goto L4e
        L6c:
            r5 = 0
        L6d:
            r6 = r4
            r4 = r2
            goto L77
        L70:
            r5 = move-exception
            r6 = 0
        L72:
            com.igexin.push.extension.distribution.gbd.i.j.a(r5)     // Catch: java.lang.Throwable -> L9f
            r4 = r2
            r5 = 0
        L77:
            int r2 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L9f
            r7 = 29
            if (r2 < r7) goto L81
            r1 = r0
        L7e:
            r2 = r4
            r4 = r3
            goto L8a
        L81:
            java.util.List r1 = r1.getNeighboringCellInfo()     // Catch: java.lang.Throwable -> L9f
            goto L7e
        L86:
            r1 = r0
            r2 = 0
            r5 = 0
            r6 = 0
        L8a:
            com.igexin.push.extension.distribution.gbd.b.c r3 = new com.igexin.push.extension.distribution.gbd.b.c     // Catch: java.lang.Throwable -> L9f
            r3.<init>()     // Catch: java.lang.Throwable -> L9f
            r3.a(r4)     // Catch: java.lang.Throwable -> L9f
            r3.b(r2)     // Catch: java.lang.Throwable -> L9f
            r3.c(r6)     // Catch: java.lang.Throwable -> L9f
            r3.d(r5)     // Catch: java.lang.Throwable -> L9f
            r3.a(r1)     // Catch: java.lang.Throwable -> L9f
            return r3
        L9f:
            r1 = move-exception
            com.igexin.push.extension.distribution.gbd.i.j.a(r1)
        La3:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.gbd.a.c.a.a():com.igexin.push.extension.distribution.gbd.b.c");
    }

    public void a(c cVar) {
        this.c = cVar;
    }
}
