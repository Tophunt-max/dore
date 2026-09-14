package com.google.firebase.iid;

import android.text.TextUtils;
import android.util.Log;
import com.taobao.weex.common.WXConfig;
import com.taobao.weex.el.parse.Operators;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class zzaw {
    private static final long zzdk = TimeUnit.DAYS.toMillis(7);
    private final long timestamp;
    final String zzbx;
    private final String zzdl;

    private zzaw(String str, String str2, long j) {
        this.zzbx = str;
        this.zzdl = str2;
        this.timestamp = j;
    }

    static zzaw zzf(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith(Operators.BLOCK_START_STR)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                return new zzaw(jSONObject.getString("token"), jSONObject.getString(WXConfig.appVersion), jSONObject.getLong("timestamp"));
            } catch (JSONException e) {
                String strValueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 23);
                sb.append("Failed to parse token: ");
                sb.append(strValueOf);
                Log.w("FirebaseInstanceId", sb.toString());
                return null;
            }
        }
        return new zzaw(str, null, 0L);
    }

    static String zza(String str, String str2, long j) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("token", str);
            jSONObject.put(WXConfig.appVersion, str2);
            jSONObject.put("timestamp", j);
            return jSONObject.toString();
        } catch (JSONException e) {
            String strValueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 24);
            sb.append("Failed to encode token: ");
            sb.append(strValueOf);
            Log.w("FirebaseInstanceId", sb.toString());
            return null;
        }
    }

    static String zzb(zzaw zzawVar) {
        if (zzawVar == null) {
            return null;
        }
        return zzawVar.zzbx;
    }

    final boolean zzg(String str) {
        return System.currentTimeMillis() > this.timestamp + zzdk || !str.equals(this.zzdl);
    }
}
