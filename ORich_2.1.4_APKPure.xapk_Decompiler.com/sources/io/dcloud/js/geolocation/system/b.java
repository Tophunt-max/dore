package io.dcloud.js.geolocation.system;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import com.google.firebase.analytics.FirebaseAnalytics;
import io.dcloud.common.adapter.util.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class b implements LocationListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f845a;
    private LocationManager b;
    private a c;
    private boolean e;
    private boolean d = false;
    long f = System.currentTimeMillis();

    public b(Context context, a aVar) {
        this.e = false;
        this.c = aVar;
        this.f845a = context;
        this.b = (LocationManager) context.getSystemService(FirebaseAnalytics.Param.LOCATION);
        this.e = false;
    }

    private void a(boolean z) {
        this.d = z;
        if (z) {
            this.f = System.currentTimeMillis();
        }
    }

    public void b() {
        if (this.e) {
            this.b.removeUpdates(this);
        }
        this.e = false;
    }

    @Override // android.location.LocationListener
    public void onLocationChanged(Location location) {
        Logger.d("GpsListener: The location has been updated!");
        a(true);
        this.c.a(location, a.o);
    }

    @Override // android.location.LocationListener
    public void onProviderDisabled(String str) {
        this.e = false;
        if (this.d) {
            return;
        }
        this.c.a(a.l, "GPS provider disabled.", a.o);
    }

    @Override // android.location.LocationListener
    public void onProviderEnabled(String str) {
        Logger.d("GpsListener: The provider " + str + " is enabled");
    }

    @Override // android.location.LocationListener
    public void onStatusChanged(String str, int i, Bundle bundle) {
        Logger.d("GpsListener: The status of the provider " + str + " has changed");
        if (i == 0) {
            Logger.d("GpsListener: " + str + " is OUT OF SERVICE");
            this.c.a(a.l, "GPS out of service.", a.o);
            return;
        }
        if (i == 1) {
            Logger.d("GpsListener: " + str + " is TEMPORARILY_UNAVAILABLE");
            return;
        }
        Logger.d("GpsListener: " + str + " is Available");
    }

    public boolean a() {
        if (!(System.currentTimeMillis() - this.f < 10000)) {
            this.d = false;
        }
        return this.d;
    }

    public void a(int i) {
        if (this.e) {
            return;
        }
        this.e = true;
        this.b.requestLocationUpdates("gps", i, 0.0f, this);
    }
}
