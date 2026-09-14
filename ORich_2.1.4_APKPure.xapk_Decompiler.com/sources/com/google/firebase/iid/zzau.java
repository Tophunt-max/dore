package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import androidx.collection.SimpleArrayMap;
import java.util.ArrayDeque;
import java.util.Queue;

/* JADX INFO: loaded from: classes.dex */
public final class zzau {
    private static zzau zzdd;
    private final SimpleArrayMap<String, String> zzde = new SimpleArrayMap<>();
    private Boolean zzdf = null;
    private Boolean zzdg = null;
    final Queue<Intent> zzdh = new ArrayDeque();
    private final Queue<Intent> zzdi = new ArrayDeque();

    public static synchronized zzau zzai() {
        if (zzdd == null) {
            zzdd = new zzau();
        }
        return zzdd;
    }

    private zzau() {
    }

    public static void zzb(Context context, Intent intent) {
        context.sendBroadcast(zza(context, "com.google.firebase.INSTANCE_ID_EVENT", intent));
    }

    public static void zzc(Context context, Intent intent) {
        context.sendBroadcast(zza(context, "com.google.firebase.MESSAGING_EVENT", intent));
    }

    private static Intent zza(Context context, String str, Intent intent) {
        Intent intent2 = new Intent(context, (Class<?>) FirebaseInstanceIdReceiver.class);
        intent2.setAction(str);
        intent2.putExtra("wrapped_intent", intent);
        return intent2;
    }

    public final Intent zzaj() {
        return this.zzdi.poll();
    }

    public final int zzb(Context context, String str, Intent intent) {
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            String strValueOf = String.valueOf(str);
            Log.d("FirebaseInstanceId", strValueOf.length() != 0 ? "Starting service: ".concat(strValueOf) : new String("Starting service: "));
        }
        str.hashCode();
        if (str.equals("com.google.firebase.INSTANCE_ID_EVENT")) {
            this.zzdh.offer(intent);
        } else if (str.equals("com.google.firebase.MESSAGING_EVENT")) {
            this.zzdi.offer(intent);
        } else {
            String strValueOf2 = String.valueOf(str);
            Log.w("FirebaseInstanceId", strValueOf2.length() != 0 ? "Unknown service action: ".concat(strValueOf2) : new String("Unknown service action: "));
            return 500;
        }
        Intent intent2 = new Intent(str);
        intent2.setPackage(context.getPackageName());
        return zzd(context, intent2);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00b5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final int zzd(android.content.Context r6, android.content.Intent r7) {
        /*
            Method dump skipped, instruction units count: 306
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.iid.zzau.zzd(android.content.Context, android.content.Intent):int");
    }

    final boolean zzd(Context context) {
        if (this.zzdf == null) {
            this.zzdf = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0);
        }
        if (!this.zzdf.booleanValue() && Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", "Missing Permission: android.permission.WAKE_LOCK this should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        }
        return this.zzdf.booleanValue();
    }

    final boolean zze(Context context) {
        if (this.zzdg == null) {
            this.zzdg = Boolean.valueOf(context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0);
        }
        if (!this.zzdf.booleanValue() && Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", "Missing Permission: android.permission.ACCESS_NETWORK_STATE this should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        }
        return this.zzdg.booleanValue();
    }
}
