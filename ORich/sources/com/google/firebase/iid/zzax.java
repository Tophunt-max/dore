package com.google.firebase.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import androidx.collection.ArrayMap;
import androidx.core.content.ContextCompat;
import java.io.File;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzax {
    private final Context zzag;
    private final SharedPreferences zzdm;
    private final zzx zzdn;
    private final Map<String, zzaa> zzdo;

    public zzax(Context context) {
        this(context, new zzx());
    }

    private zzax(Context context, zzx zzxVar) {
        this.zzdo = new ArrayMap();
        this.zzag = context;
        this.zzdm = context.getSharedPreferences("com.google.android.gms.appid", 0);
        this.zzdn = zzxVar;
        File file = new File(ContextCompat.getNoBackupFilesDir(context), "com.google.android.gms.appid-no-backup");
        if (file.exists()) {
            return;
        }
        try {
            if (!file.createNewFile() || isEmpty()) {
                return;
            }
            Log.i("FirebaseInstanceId", "App restored, clearing state");
            zzal();
            FirebaseInstanceId.getInstance().zzn();
        } catch (IOException e) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String strValueOf = String.valueOf(e.getMessage());
                Log.d("FirebaseInstanceId", strValueOf.length() != 0 ? "Error creating file in no backup dir: ".concat(strValueOf) : new String("Error creating file in no backup dir: "));
            }
        }
    }

    public final synchronized String zzak() {
        return this.zzdm.getString("topic_operaion_queue", "");
    }

    public final synchronized void zzh(String str) {
        this.zzdm.edit().putString("topic_operaion_queue", str).apply();
    }

    private final synchronized boolean isEmpty() {
        return this.zzdm.getAll().isEmpty();
    }

    private static String zza(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 4 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append("|T|");
        sb.append(str2);
        sb.append("|");
        sb.append(str3);
        return sb.toString();
    }

    static String zzd(String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("|S|");
        sb.append(str2);
        return sb.toString();
    }

    public final synchronized void zzal() {
        this.zzdo.clear();
        zzx.zza(this.zzag);
        this.zzdm.edit().clear().commit();
    }

    public final synchronized zzaw zzb(String str, String str2, String str3) {
        return zzaw.zzf(this.zzdm.getString(zza(str, str2, str3), null));
    }

    public final synchronized void zza(String str, String str2, String str3, String str4, String str5) {
        String strZza = zzaw.zza(str4, str5, System.currentTimeMillis());
        if (strZza == null) {
            return;
        }
        SharedPreferences.Editor editorEdit = this.zzdm.edit();
        editorEdit.putString(zza(str, str2, str3), strZza);
        editorEdit.commit();
    }

    public final synchronized void zzc(String str, String str2, String str3) {
        String strZza = zza(str, str2, str3);
        SharedPreferences.Editor editorEdit = this.zzdm.edit();
        editorEdit.remove(strZza);
        editorEdit.commit();
    }

    public final synchronized zzaa zzi(String str) {
        zzaa zzaaVarZzc;
        zzaa zzaaVar = this.zzdo.get(str);
        if (zzaaVar != null) {
            return zzaaVar;
        }
        try {
            zzaaVarZzc = this.zzdn.zzb(this.zzag, str);
        } catch (zzz unused) {
            Log.w("FirebaseInstanceId", "Stored data is corrupt, generating new identity");
            FirebaseInstanceId.getInstance().zzn();
            zzaaVarZzc = this.zzdn.zzc(this.zzag, str);
        }
        this.zzdo.put(str, zzaaVarZzc);
        return zzaaVarZzc;
    }

    public final synchronized void zzj(String str) {
        String strConcat = String.valueOf(str).concat("|T|");
        SharedPreferences.Editor editorEdit = this.zzdm.edit();
        for (String str2 : this.zzdm.getAll().keySet()) {
            if (str2.startsWith(strConcat)) {
                editorEdit.remove(str2);
            }
        }
        editorEdit.commit();
    }
}
