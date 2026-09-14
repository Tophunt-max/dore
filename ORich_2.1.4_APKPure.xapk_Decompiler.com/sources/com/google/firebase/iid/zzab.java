package com.google.firebase.iid;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class zzab {
    private static zzab zzca;
    private final Context zzag;
    private final ScheduledExecutorService zzcb;
    private zzac zzcc = new zzac(this);
    private int zzcd = 1;

    public static synchronized zzab zzc(Context context) {
        if (zzca == null) {
            zzca = new zzab(context, com.google.android.gms.internal.firebase_messaging.zza.zza().zza(1, new NamedThreadFactory("MessengerIpcClient"), com.google.android.gms.internal.firebase_messaging.zzf.zze));
        }
        return zzca;
    }

    private zzab(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.zzcb = scheduledExecutorService;
        this.zzag = context.getApplicationContext();
    }

    public final Task<Void> zza(int i, Bundle bundle) {
        return zza(new zzai(zzx(), 2, bundle));
    }

    public final Task<Bundle> zzb(int i, Bundle bundle) {
        return zza(new zzan(zzx(), 1, bundle));
    }

    private final synchronized <T> Task<T> zza(zzal<T> zzalVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String strValueOf = String.valueOf(zzalVar);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 9);
            sb.append("Queueing ");
            sb.append(strValueOf);
            Log.d("MessengerIpcClient", sb.toString());
        }
        if (!this.zzcc.zzb(zzalVar)) {
            zzac zzacVar = new zzac(this);
            this.zzcc = zzacVar;
            zzacVar.zzb(zzalVar);
        }
        return zzalVar.zzcn.getTask();
    }

    private final synchronized int zzx() {
        int i;
        i = this.zzcd;
        this.zzcd = i + 1;
        return i;
    }
}
