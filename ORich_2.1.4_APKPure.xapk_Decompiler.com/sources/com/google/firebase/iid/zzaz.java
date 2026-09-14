package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.PowerManager;
import android.util.Log;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class zzaz implements Runnable {
    private final zzba zzay;
    private final long zzdq;
    private final PowerManager.WakeLock zzdr;
    private final FirebaseInstanceId zzds;

    zzaz(FirebaseInstanceId firebaseInstanceId, zzam zzamVar, zzba zzbaVar, long j) {
        this.zzds = firebaseInstanceId;
        this.zzay = zzbaVar;
        this.zzdq = j;
        PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) getContext().getSystemService("power")).newWakeLock(1, "fiid-sync");
        this.zzdr = wakeLockNewWakeLock;
        wakeLockNewWakeLock.setReferenceCounted(false);
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean zZzd;
        try {
            if (zzau.zzai().zzd(getContext())) {
                this.zzdr.acquire();
            }
            this.zzds.zza(true);
            if (!this.zzds.zzo()) {
                this.zzds.zza(false);
                if (zZzd) {
                    return;
                } else {
                    return;
                }
            }
            if (zzau.zzai().zze(getContext()) && !zzao()) {
                new zzay(this).zzam();
                if (zzau.zzai().zzd(getContext())) {
                    this.zzdr.release();
                    return;
                }
                return;
            }
            if (zzan() && this.zzay.zzc(this.zzds)) {
                this.zzds.zza(false);
            } else {
                this.zzds.zza(this.zzdq);
            }
            if (zzau.zzai().zzd(getContext())) {
                this.zzdr.release();
            }
        } finally {
            if (zzau.zzai().zzd(getContext())) {
                this.zzdr.release();
            }
        }
    }

    private final boolean zzan() {
        zzaw zzawVarZzk = this.zzds.zzk();
        if (!this.zzds.zzr() && !this.zzds.zza(zzawVarZzk)) {
            return true;
        }
        try {
            String strZzl = this.zzds.zzl();
            if (strZzl == null) {
                Log.e("FirebaseInstanceId", "Token retrieval failed: null");
                return false;
            }
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                Log.d("FirebaseInstanceId", "Token successfully retrieved");
            }
            if (zzawVarZzk == null || (zzawVarZzk != null && !strZzl.equals(zzawVarZzk.zzbx))) {
                Context context = getContext();
                Intent intent = new Intent("com.google.firebase.messaging.NEW_TOKEN");
                intent.putExtra("token", strZzl);
                zzau.zzc(context, intent);
                zzau.zzb(context, new Intent("com.google.firebase.iid.TOKEN_REFRESH"));
            }
            return true;
        } catch (IOException | SecurityException e) {
            String strValueOf = String.valueOf(e.getMessage());
            Log.e("FirebaseInstanceId", strValueOf.length() != 0 ? "Token retrieval failed: ".concat(strValueOf) : new String("Token retrieval failed: "));
            return false;
        }
    }

    final Context getContext() {
        return this.zzds.zzi().getApplicationContext();
    }

    final boolean zzao() {
        ConnectivityManager connectivityManager = (ConnectivityManager) getContext().getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }
}
