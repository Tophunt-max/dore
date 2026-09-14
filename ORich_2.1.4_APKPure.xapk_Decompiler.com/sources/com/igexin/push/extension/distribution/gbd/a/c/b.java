package com.igexin.push.extension.distribution.gbd.a.c;

import android.location.GpsStatus;
import android.location.Location;

/* JADX INFO: loaded from: classes.dex */
class b implements GpsStatus.Listener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f346a;

    b(a aVar) {
        this.f346a = aVar;
    }

    @Override // android.location.GpsStatus.Listener
    public void onGpsStatusChanged(int i) {
        Location locationA;
        try {
            if (i == 1) {
                this.f346a.e = System.currentTimeMillis();
                return;
            }
            if (i != 4) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.f346a.e > com.igexin.push.extension.distribution.gbd.c.a.u * 1000) {
                this.f346a.e = jCurrentTimeMillis;
                this.f346a.g = 0;
            }
            if (this.f346a.g >= 3 || jCurrentTimeMillis - this.f346a.f < com.igexin.push.extension.distribution.gbd.c.a.w * 1000) {
                return;
            }
            a.d(this.f346a);
            this.f346a.f = jCurrentTimeMillis;
            if (com.igexin.push.extension.distribution.gbd.d.d.a().e() && (locationA = this.f346a.a(true)) != null && "gps".equals(locationA.getProvider())) {
                if (this.f346a.f345a == null || locationA.distanceTo(this.f346a.f345a) >= com.igexin.push.extension.distribution.gbd.c.a.v) {
                    this.f346a.c.a(locationA);
                    this.f346a.f345a = new Location(locationA);
                }
            }
        } catch (Throwable th) {
            com.igexin.push.extension.distribution.gbd.i.j.a(th);
        }
    }
}
