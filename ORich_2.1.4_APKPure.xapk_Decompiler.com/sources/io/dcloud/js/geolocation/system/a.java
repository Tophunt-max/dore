package io.dcloud.js.geolocation.system;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;
import com.google.firebase.analytics.FirebaseAnalytics;
import io.dcloud.common.DHInterface.IWebview;
import io.dcloud.common.adapter.util.Logger;
import io.dcloud.common.constant.DOMException;
import io.dcloud.common.util.Deprecated_JSUtil;
import io.dcloud.common.util.StringUtil;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static int l = 2;
    public static int m = 0;
    public static int n = 1;
    public static int o = 0;
    public static int p = 1;
    public static int q = 2;
    public static int r = 5000;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Timer f843a;
    private C0081a b;
    String e;
    IWebview f;
    private Context g;
    LocationManager h;
    String i = null;
    IWebview j = null;
    int k = 0;
    b c = null;
    c d = null;

    /* JADX INFO: renamed from: io.dcloud.js.geolocation.system.a$a, reason: collision with other inner class name */
    class C0081a extends TimerTask {
        C0081a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            a aVar = a.this;
            if (aVar.c == null && aVar.d == null) {
                return;
            }
            aVar.a(a.l, "No location providers available.", a.q);
        }
    }

    a(Context context, String str) {
        this.g = context;
        this.h = (LocationManager) context.getSystemService(FirebaseAnalytics.Param.LOCATION);
        if (this.f843a == null) {
            this.f843a = new Timer();
        }
    }

    private void b(int i) {
        if (this.f843a != null) {
            C0081a c0081a = this.b;
            if (c0081a != null) {
                c0081a.cancel();
            }
            C0081a c0081a2 = new C0081a();
            this.b = c0081a2;
            this.f843a.schedule(c0081a2, i);
        }
    }

    public void a() {
        c(q);
    }

    void c(int i) {
        a(-1);
        if (this.k <= 0) {
            if (i == o) {
                b bVar = this.c;
                if (bVar != null) {
                    bVar.b();
                    this.c = null;
                }
            } else if (i == p) {
                c cVar = this.d;
                if (cVar != null) {
                    cVar.a();
                    this.d = null;
                }
            } else {
                b bVar2 = this.c;
                if (bVar2 != null) {
                    bVar2.b();
                    this.c = null;
                }
                c cVar2 = this.d;
                if (cVar2 != null) {
                    cVar2.a();
                    this.d = null;
                }
            }
            this.k = 0;
        }
        Logger.d("GeoListener", "mUseCount=" + this.k);
    }

    private String a(Location location, String str) {
        return StringUtil.format("{latitude:%f,longitude:%f,altitude:%f,accuracy:%f,heading:%f,velocity:%f,altitudeAccuracy:%d,timestamp:new Date('%s'),coordsType:'%s'}", Double.valueOf(location.getLatitude()), Double.valueOf(location.getLongitude()), Double.valueOf(location.getAltitude()), Float.valueOf(location.getAccuracy()), Float.valueOf(location.getBearing()), Float.valueOf(location.getSpeed()), 0, Long.valueOf(location.getTime()), str);
    }

    void a(Location location, int i) {
        String str;
        IWebview iWebview;
        Log.i("geoListener", "successType==" + i);
        String strA = a(location, "wgs84");
        String str2 = this.i;
        if (str2 != null && (iWebview = this.j) != null) {
            Deprecated_JSUtil.excCallbackSuccess(iWebview, str2, strA, true, false);
            c(q);
            this.i = null;
            this.j = null;
        }
        IWebview iWebview2 = this.f;
        if (iWebview2 == null || (str = this.e) == null) {
            return;
        }
        Deprecated_JSUtil.excCallbackSuccess(iWebview2, str, strA, true, true);
    }

    void a(int i, String str, int i2) {
        String str2;
        IWebview iWebview;
        Log.i("geoListener", "failType==" + i2);
        c(i2);
        String str3 = this.i;
        if (str3 != null && (iWebview = this.j) != null && this.c == null && this.d == null) {
            Deprecated_JSUtil.excCallbackError(iWebview, str3, DOMException.toJSON(i, str), true);
        }
        IWebview iWebview2 = this.f;
        if (iWebview2 == null || (str2 = this.e) == null || this.c != null || this.d != null) {
            return;
        }
        Deprecated_JSUtil.excCallbackError(iWebview2, str2, DOMException.toJSON(i, str), true);
    }

    void a(IWebview iWebview, int i, String str) {
        this.j = iWebview;
        this.i = str;
        a(i, m);
    }

    private void a(int i) {
        this.k += i;
        Logger.d("GeoListener", "mUseCount=" + this.k);
    }

    private boolean a(int i, int i2) {
        C0081a c0081a;
        if (this.k == 0) {
            if (this.c == null && this.h.isProviderEnabled("gps")) {
                this.c = new b(this.g, this);
            }
            if (this.d == null && this.h.isProviderEnabled("network")) {
                this.d = new c(this.g, this);
            }
            b bVar = this.c;
            if (bVar != null) {
                bVar.a(i);
            }
            c cVar = this.d;
            if (cVar != null) {
                cVar.a(i);
            }
            if (i2 == m) {
                b(r);
            }
        }
        if (i2 == n && this.f843a != null && (c0081a = this.b) != null) {
            c0081a.cancel();
        }
        a(1);
        if (this.d != null || this.c != null) {
            return true;
        }
        a(l, "No location providers available.", q);
        return false;
    }

    boolean a(IWebview iWebview, int i, String str, int i2) {
        this.f = iWebview;
        this.e = str;
        r = i2;
        return a(i, n);
    }
}
