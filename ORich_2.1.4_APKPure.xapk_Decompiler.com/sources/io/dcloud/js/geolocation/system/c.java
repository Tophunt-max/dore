package io.dcloud.js.geolocation.system;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import com.google.firebase.analytics.FirebaseAnalytics;
import io.dcloud.common.adapter.util.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class c implements LocationListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f846a;
    private LocationManager b;
    private a c;
    private boolean d = false;
    private boolean e;

    public c(Context context, a aVar) {
        this.e = false;
        this.c = aVar;
        this.f846a = context;
        this.b = (LocationManager) context.getSystemService(FirebaseAnalytics.Param.LOCATION);
        this.e = false;
    }

    public void a(int i) {
        if (this.e) {
            return;
        }
        this.e = true;
        this.b.requestLocationUpdates("network", i, 0.0f, this);
    }

    @Override // android.location.LocationListener
    public void onLocationChanged(Location location) {
        Logger.d("NetworkListener: The location has been updated!");
        this.d = true;
        this.c.a(location, a.p);
    }

    @Override // android.location.LocationListener
    public void onProviderDisabled(String str) {
        b bVar;
        this.e = false;
        if (!this.d && ((bVar = this.c.c) == null || !bVar.a())) {
            this.c.a(a.l, "The provider " + str + " is disabled", a.p);
        }
        Logger.d("NetworkListener: The provider " + str + " is disabled");
    }

    @Override // android.location.LocationListener
    public void onProviderEnabled(String str) {
        Logger.d("NetworkListener: The provider " + str + " is enabled");
    }

    @Override // android.location.LocationListener
    public void onStatusChanged(String str, int i, Bundle bundle) {
        Logger.d("NetworkListener: The status of the provider " + str + " has changed");
        if (i == 0) {
            Logger.d("NetworkListener: " + str + " is OUT OF SERVICE");
            return;
        }
        if (i == 1) {
            Logger.d("NetworkListener: " + str + " is TEMPORARILY_UNAVAILABLE");
            return;
        }
        Logger.d("NetworkListener: " + str + " is Available");
    }

    public void a() {
        if (this.e) {
            this.b.removeUpdates(this);
        }
        this.e = false;
    }
}
