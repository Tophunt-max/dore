package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzom;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.igexin.assist.sdk.AssistPushConsts;
import com.taobao.weex.el.parse.Operators;
import io.dcloud.common.constant.AbsoluteConst;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzaj extends zzki {
    private static final String[] zza = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};
    private static final String[] zzb = {"origin", "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};
    private static final String[] zzc = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;", "safelisted_events", "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;", "ga_app_id", "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;", "config_last_modified_time", "ALTER TABLE apps ADD COLUMN config_last_modified_time TEXT;"};
    private static final String[] zzd = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};
    private static final String[] zze = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};
    private static final String[] zzg = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};
    private static final String[] zzh = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};
    private static final String[] zzi = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};
    private final zzai zzj;
    private final zzke zzk;

    zzaj(zzks zzksVar) {
        super(zzksVar);
        this.zzk = new zzke(this.zzs.zzav());
        this.zzs.zzf();
        this.zzj = new zzai(this, this.zzs.zzau(), "google_app_measurement.db");
    }

    static final void zzX(ContentValues contentValues, String str, Object obj) {
        Preconditions.checkNotEmpty("value");
        Preconditions.checkNotNull(obj);
        if (obj instanceof String) {
            contentValues.put("value", (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put("value", (Long) obj);
        } else {
            if (!(obj instanceof Double)) {
                throw new IllegalArgumentException("Invalid value type");
            }
            contentValues.put("value", (Double) obj);
        }
    }

    private final long zzab(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor cursorRawQuery = zzh().rawQuery(str, strArr);
                if (!cursorRawQuery.moveToFirst()) {
                    throw new SQLiteException("Database returned empty set");
                }
                long j = cursorRawQuery.getLong(0);
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return j;
            } catch (SQLiteException e) {
                this.zzs.zzay().zzd().zzc("Database error", str, e);
                throw e;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    private final long zzac(String str, String[] strArr, long j) {
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = zzh().rawQuery(str, strArr);
                if (cursorRawQuery.moveToFirst()) {
                    return cursorRawQuery.getLong(0);
                }
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return j;
            } catch (SQLiteException e) {
                this.zzs.zzay().zzd().zzc("Database error", str, e);
                throw e;
            }
        } finally {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
        }
    }

    final void zzA() {
        zzg();
        zzY();
        if (zzK()) {
            long jZza = this.zzf.zzs().zza.zza();
            long jElapsedRealtime = this.zzs.zzav().elapsedRealtime();
            long jAbs = Math.abs(jElapsedRealtime - jZza);
            this.zzs.zzf();
            if (jAbs > zzdy.zzx.zza(null).longValue()) {
                this.zzf.zzs().zza.zzb(jElapsedRealtime);
                zzg();
                zzY();
                if (zzK()) {
                    SQLiteDatabase sQLiteDatabaseZzh = zzh();
                    this.zzs.zzf();
                    int iDelete = sQLiteDatabaseZzh.delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(this.zzs.zzav().currentTimeMillis()), String.valueOf(zzaf.zzA())});
                    if (iDelete > 0) {
                        this.zzs.zzay().zzj().zzb("Deleted stale rows. rowsDeleted", Integer.valueOf(iDelete));
                    }
                }
            }
        }
    }

    public final void zzB(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzg();
        zzY();
        try {
            zzh().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            this.zzs.zzay().zzd().zzd("Error deleting user property. appId", zzel.zzn(str), this.zzs.zzj().zzf(str2), e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0343, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0344, code lost:
    
        r11.put("session_scoped", r0);
        r11.put("data", r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0358, code lost:
    
        if (zzh().insertWithOnConflict("property_filters", null, r11, 5) != (-1)) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x035a, code lost:
    
        r23.zzs.zzay().zzd().zzb("Failed to insert property filter (got -1). appId", com.google.android.gms.measurement.internal.zzel.zzn(r24));
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x036e, code lost:
    
        r0 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0372, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0373, code lost:
    
        r23.zzs.zzay().zzd().zzc("Error storing property filter. appId", com.google.android.gms.measurement.internal.zzel.zzn(r24), r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0386, code lost:
    
        zzY();
        zzg();
        com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r24);
        r0 = zzh();
        r3 = r17;
        r0.delete("property_filters", r3, new java.lang.String[]{r24, java.lang.String.valueOf(r10)});
        r0.delete("event_filters", r3, new java.lang.String[]{r24, java.lang.String.valueOf(r10)});
        r17 = r3;
        r4 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x03bd, code lost:
    
        r4 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x018b, code lost:
    
        r11 = r0.zzh().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0197, code lost:
    
        if (r11.hasNext() == false) goto L169;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x01a3, code lost:
    
        if (r11.next().zzj() != false) goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x01a5, code lost:
    
        r23.zzs.zzay().zzk().zzc("Property filter with no ID. Audience definition ignored. appId, audienceId", com.google.android.gms.measurement.internal.zzel.zzn(r24), java.lang.Integer.valueOf(r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x01be, code lost:
    
        r11 = r0.zzg().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x01d4, code lost:
    
        if (r11.hasNext() == false) goto L183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x01d6, code lost:
    
        r12 = r11.next();
        zzY();
        zzg();
        com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r24);
        com.google.android.gms.common.internal.Preconditions.checkNotNull(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01f0, code lost:
    
        if (android.text.TextUtils.isEmpty(r12.zzg()) == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01f2, code lost:
    
        r0 = r23.zzs.zzay().zzk();
        r8 = com.google.android.gms.measurement.internal.zzel.zzn(r24);
        r11 = java.lang.Integer.valueOf(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x020a, code lost:
    
        if (r12.zzp() == false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x020c, code lost:
    
        r20 = java.lang.Integer.valueOf(r12.zzb());
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0217, code lost:
    
        r20 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0219, code lost:
    
        r0.zzd("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", r8, r11, java.lang.String.valueOf(r20));
        r21 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0224, code lost:
    
        r3 = r12.zzbs();
        r21 = r4;
        r4 = new android.content.ContentValues();
        r4.put("app_id", r24);
        r4.put("audience_id", java.lang.Integer.valueOf(r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x023d, code lost:
    
        if (r12.zzp() == false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x023f, code lost:
    
        r8 = java.lang.Integer.valueOf(r12.zzb());
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0248, code lost:
    
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0249, code lost:
    
        r4.put("filter_id", r8);
        r4.put("event_name", r12.zzg());
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0259, code lost:
    
        if (r12.zzq() == false) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x025b, code lost:
    
        r8 = java.lang.Boolean.valueOf(r12.zzn());
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0264, code lost:
    
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0265, code lost:
    
        r4.put("session_scoped", r8);
        r4.put("data", r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0279, code lost:
    
        if (zzh().insertWithOnConflict("event_filters", null, r4, 5) != (-1)) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x027b, code lost:
    
        r23.zzs.zzay().zzd().zzb("Failed to insert event filter (got -1). appId", com.google.android.gms.measurement.internal.zzel.zzn(r24));
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x028e, code lost:
    
        r4 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0294, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0295, code lost:
    
        r23.zzs.zzay().zzd().zzc("Error storing event filter. appId", com.google.android.gms.measurement.internal.zzel.zzn(r24), r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x02aa, code lost:
    
        r21 = r4;
        r0 = r0.zzh().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x02b8, code lost:
    
        if (r0.hasNext() == false) goto L171;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x02ba, code lost:
    
        r3 = r0.next();
        zzY();
        zzg();
        com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r24);
        com.google.android.gms.common.internal.Preconditions.checkNotNull(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x02d4, code lost:
    
        if (android.text.TextUtils.isEmpty(r3.zze()) == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x02d6, code lost:
    
        r0 = r23.zzs.zzay().zzk();
        r7 = com.google.android.gms.measurement.internal.zzel.zzn(r24);
        r8 = java.lang.Integer.valueOf(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x02ee, code lost:
    
        if (r3.zzj() == false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x02f0, code lost:
    
        r3 = java.lang.Integer.valueOf(r3.zza());
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x02f9, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x02fa, code lost:
    
        r0.zzd("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", r7, r8, java.lang.String.valueOf(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0303, code lost:
    
        r4 = r3.zzbs();
        r11 = new android.content.ContentValues();
        r11.put("app_id", r24);
        r11.put("audience_id", java.lang.Integer.valueOf(r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x031a, code lost:
    
        if (r3.zzj() == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x031c, code lost:
    
        r12 = java.lang.Integer.valueOf(r3.zza());
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0325, code lost:
    
        r12 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0326, code lost:
    
        r11.put("filter_id", r12);
        r22 = r0;
        r11.put("property_name", r3.zze());
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0338, code lost:
    
        if (r3.zzk() == false) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x033a, code lost:
    
        r0 = java.lang.Boolean.valueOf(r3.zzi());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void zzC(java.lang.String r24, java.util.List<com.google.android.gms.internal.measurement.zzeh> r25) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1217
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzaj.zzC(java.lang.String, java.util.List):void");
    }

    public final void zzD() {
        zzY();
        zzh().setTransactionSuccessful();
    }

    public final void zzE(zzg zzgVar) {
        Preconditions.checkNotNull(zzgVar);
        zzg();
        zzY();
        String strZzt = zzgVar.zzt();
        Preconditions.checkNotNull(strZzt);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", strZzt);
        contentValues.put("app_instance_id", zzgVar.zzu());
        contentValues.put("gmp_app_id", zzgVar.zzz());
        contentValues.put("resettable_device_id_hash", zzgVar.zzB());
        contentValues.put("last_bundle_index", Long.valueOf(zzgVar.zzo()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(zzgVar.zzp()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(zzgVar.zzn()));
        contentValues.put("app_version", zzgVar.zzw());
        contentValues.put("app_store", zzgVar.zzv());
        contentValues.put("gmp_version", Long.valueOf(zzgVar.zzm()));
        contentValues.put("dev_cert_hash", Long.valueOf(zzgVar.zzj()));
        contentValues.put("measurement_enabled", Boolean.valueOf(zzgVar.zzaj()));
        contentValues.put("day", Long.valueOf(zzgVar.zzi()));
        contentValues.put("daily_public_events_count", Long.valueOf(zzgVar.zzg()));
        contentValues.put("daily_events_count", Long.valueOf(zzgVar.zzf()));
        contentValues.put("daily_conversions_count", Long.valueOf(zzgVar.zzd()));
        contentValues.put("config_fetched_time", Long.valueOf(zzgVar.zzc()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(zzgVar.zzl()));
        contentValues.put("app_version_int", Long.valueOf(zzgVar.zzb()));
        contentValues.put("firebase_instance_id", zzgVar.zzx());
        contentValues.put("daily_error_events_count", Long.valueOf(zzgVar.zze()));
        contentValues.put("daily_realtime_events_count", Long.valueOf(zzgVar.zzh()));
        contentValues.put("health_monitor_sample", zzgVar.zzA());
        contentValues.put("android_id", Long.valueOf(zzgVar.zza()));
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(zzgVar.zzai()));
        contentValues.put("admob_app_id", zzgVar.zzr());
        contentValues.put("dynamite_version", Long.valueOf(zzgVar.zzk()));
        List<String> listZzC = zzgVar.zzC();
        if (listZzC != null) {
            if (listZzC.size() == 0) {
                this.zzs.zzay().zzk().zzb("Safelisted events should not be an empty list. appId", strZzt);
            } else {
                contentValues.put("safelisted_events", TextUtils.join(",", listZzC));
            }
        }
        zzom.zzc();
        if (this.zzs.zzf().zzs(strZzt, zzdy.zzac)) {
            contentValues.put("ga_app_id", zzgVar.zzy());
        }
        try {
            SQLiteDatabase sQLiteDatabaseZzh = zzh();
            if (sQLiteDatabaseZzh.update(AbsoluteConst.XML_APPS, contentValues, "app_id = ?", new String[]{strZzt}) == 0 && sQLiteDatabaseZzh.insertWithOnConflict(AbsoluteConst.XML_APPS, null, contentValues, 5) == -1) {
                this.zzs.zzay().zzd().zzb("Failed to insert/update app (got -1). appId", zzel.zzn(strZzt));
            }
        } catch (SQLiteException e) {
            this.zzs.zzay().zzd().zzc("Error storing app. appId", zzel.zzn(strZzt), e);
        }
    }

    public final void zzF(zzap zzapVar) {
        Preconditions.checkNotNull(zzapVar);
        zzg();
        zzY();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzapVar.zza);
        contentValues.put("name", zzapVar.zzb);
        contentValues.put("lifetime_count", Long.valueOf(zzapVar.zzc));
        contentValues.put("current_bundle_count", Long.valueOf(zzapVar.zzd));
        contentValues.put("last_fire_timestamp", Long.valueOf(zzapVar.zzf));
        contentValues.put("last_bundled_timestamp", Long.valueOf(zzapVar.zzg));
        contentValues.put("last_bundled_day", zzapVar.zzh);
        contentValues.put("last_sampled_complex_event_id", zzapVar.zzi);
        contentValues.put("last_sampling_rate", zzapVar.zzj);
        contentValues.put("current_session_count", Long.valueOf(zzapVar.zze));
        Boolean bool = zzapVar.zzk;
        contentValues.put("last_exempt_from_sampling", (bool == null || !bool.booleanValue()) ? null : 1L);
        try {
            if (zzh().insertWithOnConflict("events", null, contentValues, 5) == -1) {
                this.zzs.zzay().zzd().zzb("Failed to insert/update event aggregates (got -1). appId", zzel.zzn(zzapVar.zza));
            }
        } catch (SQLiteException e) {
            this.zzs.zzay().zzd().zzc("Error storing event aggregates. appId", zzel.zzn(zzapVar.zza), e);
        }
    }

    public final void zzG(String str, byte[] bArr, String str2) {
        Preconditions.checkNotEmpty(str);
        zzg();
        zzY();
        ContentValues contentValues = new ContentValues();
        contentValues.put("remote_config", bArr);
        contentValues.put("config_last_modified_time", str2);
        try {
            if (zzh().update(AbsoluteConst.XML_APPS, contentValues, "app_id = ?", new String[]{str}) == 0) {
                this.zzs.zzay().zzd().zzb("Failed to update remote config (got 0). appId", zzel.zzn(str));
            }
        } catch (SQLiteException e) {
            this.zzs.zzay().zzd().zzc("Error storing remote config. appId", zzel.zzn(str), e);
        }
    }

    public final boolean zzH() {
        return zzab("select count(1) > 0 from raw_events", null) != 0;
    }

    public final boolean zzI() {
        return zzab("select count(1) > 0 from queue where has_realtime = 1", null) != 0;
    }

    public final boolean zzJ() {
        return zzab("select count(1) > 0 from raw_events where realtime = 1", null) != 0;
    }

    protected final boolean zzK() {
        Context contextZzau = this.zzs.zzau();
        this.zzs.zzf();
        return contextZzau.getDatabasePath("google_app_measurement.db").exists();
    }

    public final boolean zzL(String str, Long l, long j, com.google.android.gms.internal.measurement.zzfo zzfoVar) {
        zzg();
        zzY();
        Preconditions.checkNotNull(zzfoVar);
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(l);
        byte[] bArrZzbs = zzfoVar.zzbs();
        this.zzs.zzay().zzj().zzc("Saving complex main event, appId, data size", this.zzs.zzj().zzd(str), Integer.valueOf(bArrZzbs.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("event_id", l);
        contentValues.put("children_to_process", Long.valueOf(j));
        contentValues.put("main_event", bArrZzbs);
        try {
            if (zzh().insertWithOnConflict("main_event_params", null, contentValues, 5) != -1) {
                return true;
            }
            this.zzs.zzay().zzd().zzb("Failed to insert complex main event (got -1). appId", zzel.zzn(str));
            return false;
        } catch (SQLiteException e) {
            this.zzs.zzay().zzd().zzc("Error storing complex main event. appId", zzel.zzn(str), e);
            return false;
        }
    }

    public final boolean zzM(zzab zzabVar) {
        Preconditions.checkNotNull(zzabVar);
        zzg();
        zzY();
        String str = zzabVar.zza;
        Preconditions.checkNotNull(str);
        if (zzp(str, zzabVar.zzc.zzb) == null) {
            long jZzab = zzab("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{str});
            this.zzs.zzf();
            if (jZzab >= 1000) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("origin", zzabVar.zzb);
        contentValues.put("name", zzabVar.zzc.zzb);
        zzX(contentValues, "value", Preconditions.checkNotNull(zzabVar.zzc.zza()));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.ACTIVE, Boolean.valueOf(zzabVar.zze));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, zzabVar.zzf);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.valueOf(zzabVar.zzh));
        contentValues.put("timed_out_event", this.zzs.zzv().zzan(zzabVar.zzg));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, Long.valueOf(zzabVar.zzd));
        contentValues.put("triggered_event", this.zzs.zzv().zzan(zzabVar.zzi));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, Long.valueOf(zzabVar.zzc.zzc));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.valueOf(zzabVar.zzj));
        contentValues.put("expired_event", this.zzs.zzv().zzan(zzabVar.zzk));
        try {
            if (zzh().insertWithOnConflict("conditional_properties", null, contentValues, 5) == -1) {
                this.zzs.zzay().zzd().zzb("Failed to insert/update conditional user property (got -1)", zzel.zzn(str));
            }
        } catch (SQLiteException e) {
            this.zzs.zzay().zzd().zzc("Error storing conditional user property", zzel.zzn(str), e);
        }
        return true;
    }

    public final boolean zzN(zzkx zzkxVar) {
        Preconditions.checkNotNull(zzkxVar);
        zzg();
        zzY();
        if (zzp(zzkxVar.zza, zzkxVar.zzc) == null) {
            if (zzkz.zzah(zzkxVar.zzc)) {
                if (zzab("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{zzkxVar.zza}) >= this.zzs.zzf().zzf(zzkxVar.zza, zzdy.zzF, 25, 100)) {
                    return false;
                }
            } else if (!"_npa".equals(zzkxVar.zzc)) {
                long jZzab = zzab("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{zzkxVar.zza, zzkxVar.zzb});
                this.zzs.zzf();
                if (jZzab >= 25) {
                    return false;
                }
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzkxVar.zza);
        contentValues.put("origin", zzkxVar.zzb);
        contentValues.put("name", zzkxVar.zzc);
        contentValues.put("set_timestamp", Long.valueOf(zzkxVar.zzd));
        zzX(contentValues, "value", zzkxVar.zze);
        try {
            if (zzh().insertWithOnConflict("user_attributes", null, contentValues, 5) == -1) {
                this.zzs.zzay().zzd().zzb("Failed to insert/update user property (got -1). appId", zzel.zzn(zzkxVar.zza));
            }
        } catch (SQLiteException e) {
            this.zzs.zzay().zzd().zzc("Error storing user property. appId", zzel.zzn(zzkxVar.zza), e);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 4, insn: 0x023f: MOVE (r3 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:106:0x023f */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r4v3, types: [boolean] */
    public final void zzW(String str, long j, long j2, zzkr zzkrVar) throws Throwable {
        ?? IsEmpty;
        Cursor cursor;
        String str2;
        Cursor cursorRawQuery;
        String string;
        String str3;
        String[] strArr;
        Preconditions.checkNotNull(zzkrVar);
        zzg();
        zzY();
        Cursor cursor2 = null;
        string = null;
        string = null;
        String string2 = null;
        try {
            try {
                SQLiteDatabase sQLiteDatabaseZzh = zzh();
                IsEmpty = TextUtils.isEmpty(null);
                try {
                    if (IsEmpty != 0) {
                        String[] strArr2 = j2 != -1 ? new String[]{String.valueOf(j2), String.valueOf(j)} : new String[]{String.valueOf(j)};
                        str2 = j2 != -1 ? "rowid <= ? and " : "";
                        StringBuilder sb = new StringBuilder(str2.length() + 148);
                        sb.append("select app_id, metadata_fingerprint from raw_events where ");
                        sb.append(str2);
                        sb.append("app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;");
                        cursorRawQuery = sQLiteDatabaseZzh.rawQuery(sb.toString(), strArr2);
                        if (!cursorRawQuery.moveToFirst()) {
                            if (cursorRawQuery != null) {
                                cursorRawQuery.close();
                                return;
                            }
                            return;
                        } else {
                            string2 = cursorRawQuery.getString(0);
                            string = cursorRawQuery.getString(1);
                            cursorRawQuery.close();
                        }
                    } else {
                        String[] strArr3 = j2 != -1 ? new String[]{null, String.valueOf(j2)} : new String[]{null};
                        str2 = j2 != -1 ? " and rowid <= ?" : "";
                        StringBuilder sb2 = new StringBuilder(str2.length() + 84);
                        sb2.append("select metadata_fingerprint from raw_events where app_id = ?");
                        sb2.append(str2);
                        sb2.append(" order by rowid limit 1;");
                        cursorRawQuery = sQLiteDatabaseZzh.rawQuery(sb2.toString(), strArr3);
                        if (!cursorRawQuery.moveToFirst()) {
                            if (cursorRawQuery != null) {
                                cursorRawQuery.close();
                                return;
                            }
                            return;
                        }
                        string = cursorRawQuery.getString(0);
                        cursorRawQuery.close();
                    }
                    Cursor cursor3 = cursorRawQuery;
                    String str4 = string;
                    try {
                        Cursor cursorQuery = sQLiteDatabaseZzh.query("raw_events_metadata", new String[]{"metadata"}, "app_id = ? and metadata_fingerprint = ?", new String[]{string2, str4}, null, null, "rowid", AssistPushConsts.PUSHMESSAGE_ACTION_MULTI_BRAND_RECEIVE_HW);
                        try {
                            if (!cursorQuery.moveToFirst()) {
                                this.zzs.zzay().zzd().zzb("Raw event metadata record is missing. appId", zzel.zzn(string2));
                                if (cursorQuery != null) {
                                    cursorQuery.close();
                                    return;
                                }
                                return;
                            }
                            try {
                                try {
                                    com.google.android.gms.internal.measurement.zzfy zzfyVarZzaA = ((com.google.android.gms.internal.measurement.zzfx) zzku.zzl(com.google.android.gms.internal.measurement.zzfy.zzu(), cursorQuery.getBlob(0))).zzaA();
                                    if (cursorQuery.moveToNext()) {
                                        this.zzs.zzay().zzk().zzb("Get multiple raw event metadata records, expected one. appId", zzel.zzn(string2));
                                    }
                                    cursorQuery.close();
                                    Preconditions.checkNotNull(zzfyVarZzaA);
                                    zzkrVar.zza = zzfyVarZzaA;
                                    if (j2 != -1) {
                                        str3 = "app_id = ? and metadata_fingerprint = ? and rowid <= ?";
                                        strArr = new String[]{string2, str4, String.valueOf(j2)};
                                    } else {
                                        str3 = "app_id = ? and metadata_fingerprint = ?";
                                        strArr = new String[]{string2, str4};
                                    }
                                    Cursor cursorQuery2 = sQLiteDatabaseZzh.query("raw_events", new String[]{"rowid", "name", "timestamp", "data"}, str3, strArr, null, null, "rowid", null);
                                    if (!cursorQuery2.moveToFirst()) {
                                        this.zzs.zzay().zzk().zzb("Raw event data disappeared while in transaction. appId", zzel.zzn(string2));
                                        if (cursorQuery2 != null) {
                                            cursorQuery2.close();
                                            return;
                                        }
                                        return;
                                    }
                                    do {
                                        long j3 = cursorQuery2.getLong(0);
                                        try {
                                            com.google.android.gms.internal.measurement.zzfn zzfnVar = (com.google.android.gms.internal.measurement.zzfn) zzku.zzl(com.google.android.gms.internal.measurement.zzfo.zze(), cursorQuery2.getBlob(3));
                                            zzfnVar.zzi(cursorQuery2.getString(1));
                                            zzfnVar.zzm(cursorQuery2.getLong(2));
                                            if (!zzkrVar.zza(j3, zzfnVar.zzaA())) {
                                                if (cursorQuery2 != null) {
                                                    cursorQuery2.close();
                                                    return;
                                                }
                                                return;
                                            }
                                        } catch (IOException e) {
                                            this.zzs.zzay().zzd().zzc("Data loss. Failed to merge raw event. appId", zzel.zzn(string2), e);
                                        }
                                    } while (cursorQuery2.moveToNext());
                                    if (cursorQuery2 != null) {
                                        cursorQuery2.close();
                                    }
                                } catch (IOException e2) {
                                    this.zzs.zzay().zzd().zzc("Data loss. Failed to merge raw event metadata. appId", zzel.zzn(string2), e2);
                                    if (cursorQuery != null) {
                                        cursorQuery.close();
                                    }
                                }
                            } catch (SQLiteException e3) {
                                e = e3;
                                IsEmpty = cursorQuery;
                                this.zzs.zzay().zzd().zzc("Data loss. Error selecting raw event. appId", zzel.zzn(string2), e);
                                if (IsEmpty != 0) {
                                    IsEmpty.close();
                                }
                            } catch (Throwable th) {
                                th = th;
                                cursor2 = cursorQuery;
                                if (cursor2 != null) {
                                    cursor2.close();
                                }
                                throw th;
                            }
                        } catch (SQLiteException e4) {
                            e = e4;
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (SQLiteException e5) {
                        e = e5;
                        IsEmpty = cursor3;
                    } catch (Throwable th3) {
                        th = th3;
                        cursor2 = cursor3;
                    }
                } catch (SQLiteException e6) {
                    e = e6;
                }
            } catch (Throwable th4) {
                th = th4;
                cursor2 = cursor;
            }
        } catch (SQLiteException e7) {
            e = e7;
            IsEmpty = 0;
        } catch (Throwable th5) {
            th = th5;
        }
    }

    public final int zza(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzg();
        zzY();
        try {
            return zzh().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            this.zzs.zzay().zzd().zzd("Error deleting conditional property", zzel.zzn(str), this.zzs.zzj().zzf(str2), e);
            return 0;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzki
    protected final boolean zzb() {
        return false;
    }

    protected final long zzc(String str, String str2) {
        long jZzac;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty("first_open_count");
        zzg();
        zzY();
        SQLiteDatabase sQLiteDatabaseZzh = zzh();
        sQLiteDatabaseZzh.beginTransaction();
        long j = 0;
        try {
            try {
                StringBuilder sb = new StringBuilder(48);
                sb.append("select ");
                sb.append("first_open_count");
                sb.append(" from app2 where app_id=?");
                jZzac = zzac(sb.toString(), new String[]{str}, -1L);
            } catch (SQLiteException e) {
                e = e;
            }
            if (jZzac == -1) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("app_id", str);
                contentValues.put("first_open_count", (Integer) 0);
                contentValues.put("previous_install_count", (Integer) 0);
                if (sQLiteDatabaseZzh.insertWithOnConflict("app2", null, contentValues, 5) == -1) {
                    this.zzs.zzay().zzd().zzc("Failed to insert column (got -1). appId", zzel.zzn(str), "first_open_count");
                    return -1L;
                }
                jZzac = 0;
                this.zzs.zzay().zzd().zzd("Error inserting column. appId", zzel.zzn(str), "first_open_count", e);
                sQLiteDatabaseZzh.endTransaction();
                return j;
            }
            try {
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("app_id", str);
                contentValues2.put("first_open_count", Long.valueOf(1 + jZzac));
                if (sQLiteDatabaseZzh.update("app2", contentValues2, "app_id = ?", new String[]{str}) == 0) {
                    this.zzs.zzay().zzd().zzc("Failed to update column (got 0). appId", zzel.zzn(str), "first_open_count");
                    return -1L;
                }
                sQLiteDatabaseZzh.setTransactionSuccessful();
                return jZzac;
            } catch (SQLiteException e2) {
                e = e2;
                j = jZzac;
            }
        } finally {
            sQLiteDatabaseZzh.endTransaction();
        }
    }

    public final long zzd() {
        return zzac("select max(bundle_end_timestamp) from queue", null, 0L);
    }

    public final long zze() {
        return zzac("select max(timestamp) from raw_events", null, 0L);
    }

    public final long zzf(String str) {
        Preconditions.checkNotEmpty(str);
        return zzac("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    final SQLiteDatabase zzh() {
        zzg();
        try {
            return this.zzj.getWritableDatabase();
        } catch (SQLiteException e) {
            this.zzs.zzay().zzk().zzb("Error opening database", e);
            throw e;
        }
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x00dc: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:47:0x00dc */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.os.Bundle zzi(java.lang.String r8) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 227
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzaj.zzi(java.lang.String):android.os.Bundle");
    }

    /* JADX WARN: Not initialized variable reg: 4, insn: 0x020c: MOVE (r3 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:60:0x020c */
    /* JADX WARN: Removed duplicated region for block: B:62:0x020f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.measurement.internal.zzg zzj(java.lang.String r34) {
        /*
            Method dump skipped, instruction units count: 531
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzaj.zzj(java.lang.String):com.google.android.gms.measurement.internal.zzg");
    }

    /* JADX WARN: Not initialized variable reg: 10, insn: 0x012b: MOVE (r9 I:??[OBJECT, ARRAY]) = (r10 I:??[OBJECT, ARRAY]), block:B:33:0x012b */
    /* JADX WARN: Removed duplicated region for block: B:35:0x012e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.measurement.internal.zzab zzk(java.lang.String r31, java.lang.String r32) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 306
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzaj.zzk(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzab");
    }

    public final zzah zzl(long j, String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        return zzm(j, str, 1L, false, false, z3, false, z5);
    }

    public final zzah zzm(long j, String str, long j2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        Preconditions.checkNotEmpty(str);
        zzg();
        zzY();
        String[] strArr = {str};
        zzah zzahVar = new zzah();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase sQLiteDatabaseZzh = zzh();
                Cursor cursorQuery = sQLiteDatabaseZzh.query(AbsoluteConst.XML_APPS, new String[]{"day", "daily_events_count", "daily_public_events_count", "daily_conversions_count", "daily_error_events_count", "daily_realtime_events_count"}, "app_id=?", new String[]{str}, null, null, null);
                if (!cursorQuery.moveToFirst()) {
                    this.zzs.zzay().zzk().zzb("Not updating daily counts, app is not known. appId", zzel.zzn(str));
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return zzahVar;
                }
                if (cursorQuery.getLong(0) == j) {
                    zzahVar.zzb = cursorQuery.getLong(1);
                    zzahVar.zza = cursorQuery.getLong(2);
                    zzahVar.zzc = cursorQuery.getLong(3);
                    zzahVar.zzd = cursorQuery.getLong(4);
                    zzahVar.zze = cursorQuery.getLong(5);
                }
                if (z) {
                    zzahVar.zzb += j2;
                }
                if (z2) {
                    zzahVar.zza += j2;
                }
                if (z3) {
                    zzahVar.zzc += j2;
                }
                if (z4) {
                    zzahVar.zzd += j2;
                }
                if (z5) {
                    zzahVar.zze += j2;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("day", Long.valueOf(j));
                contentValues.put("daily_public_events_count", Long.valueOf(zzahVar.zza));
                contentValues.put("daily_events_count", Long.valueOf(zzahVar.zzb));
                contentValues.put("daily_conversions_count", Long.valueOf(zzahVar.zzc));
                contentValues.put("daily_error_events_count", Long.valueOf(zzahVar.zzd));
                contentValues.put("daily_realtime_events_count", Long.valueOf(zzahVar.zze));
                sQLiteDatabaseZzh.update(AbsoluteConst.XML_APPS, contentValues, "app_id=?", strArr);
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return zzahVar;
            } catch (SQLiteException e) {
                this.zzs.zzay().zzd().zzc("Error updating daily counts. appId", zzel.zzn(str), e);
                if (0 != 0) {
                    cursor.close();
                }
                return zzahVar;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x0154  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.measurement.internal.zzap zzn(java.lang.String r28, java.lang.String r29) {
        /*
            Method dump skipped, instruction units count: 344
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzaj.zzn(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzap");
    }

    /* JADX WARN: Not initialized variable reg: 11, insn: 0x00a9: MOVE (r10 I:??[OBJECT, ARRAY]) = (r11 I:??[OBJECT, ARRAY]), block:B:31:0x00a9 */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ac  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.measurement.internal.zzkx zzp(java.lang.String r20, java.lang.String r21) {
        /*
            r19 = this;
            r1 = r19
            r9 = r21
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r20)
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r21)
            r19.zzg()
            r19.zzY()
            r10 = 0
            android.database.sqlite.SQLiteDatabase r11 = r19.zzh()     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteException -> L83
            java.lang.String r0 = "set_timestamp"
            java.lang.String r2 = "value"
            java.lang.String r3 = "origin"
            java.lang.String[] r13 = new java.lang.String[]{r0, r2, r3}     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteException -> L83
            r0 = 2
            java.lang.String[] r15 = new java.lang.String[r0]     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteException -> L83
            r2 = 0
            r15[r2] = r20     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteException -> L83
            r3 = 1
            r15[r3] = r9     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteException -> L83
            java.lang.String r12 = "user_attributes"
            java.lang.String r14 = "app_id=? and name=?"
            r16 = 0
            r17 = 0
            r18 = 0
            android.database.Cursor r11 = r11.query(r12, r13, r14, r15, r16, r17, r18)     // Catch: java.lang.Throwable -> L81 android.database.sqlite.SQLiteException -> L83
            boolean r4 = r11.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L7f java.lang.Throwable -> La8
            if (r4 != 0) goto L42
            if (r11 == 0) goto L41
            r11.close()
        L41:
            return r10
        L42:
            long r6 = r11.getLong(r2)     // Catch: android.database.sqlite.SQLiteException -> L7f java.lang.Throwable -> La8
            java.lang.Object r8 = r1.zzq(r11, r3)     // Catch: android.database.sqlite.SQLiteException -> L7f java.lang.Throwable -> La8
            if (r8 != 0) goto L52
            if (r11 == 0) goto L51
            r11.close()
        L51:
            return r10
        L52:
            java.lang.String r4 = r11.getString(r0)     // Catch: android.database.sqlite.SQLiteException -> L7f java.lang.Throwable -> La8
            com.google.android.gms.measurement.internal.zzkx r0 = new com.google.android.gms.measurement.internal.zzkx     // Catch: android.database.sqlite.SQLiteException -> L7f java.lang.Throwable -> La8
            r2 = r0
            r3 = r20
            r5 = r21
            r2.<init>(r3, r4, r5, r6, r8)     // Catch: android.database.sqlite.SQLiteException -> L7f java.lang.Throwable -> La8
            boolean r2 = r11.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L7f java.lang.Throwable -> La8
            if (r2 == 0) goto L79
            com.google.android.gms.measurement.internal.zzfv r2 = r1.zzs     // Catch: android.database.sqlite.SQLiteException -> L7f java.lang.Throwable -> La8
            com.google.android.gms.measurement.internal.zzel r2 = r2.zzay()     // Catch: android.database.sqlite.SQLiteException -> L7f java.lang.Throwable -> La8
            com.google.android.gms.measurement.internal.zzej r2 = r2.zzd()     // Catch: android.database.sqlite.SQLiteException -> L7f java.lang.Throwable -> La8
            java.lang.String r3 = "Got multiple records for user property, expected one. appId"
            java.lang.Object r4 = com.google.android.gms.measurement.internal.zzel.zzn(r20)     // Catch: android.database.sqlite.SQLiteException -> L7f java.lang.Throwable -> La8
            r2.zzb(r3, r4)     // Catch: android.database.sqlite.SQLiteException -> L7f java.lang.Throwable -> La8
        L79:
            if (r11 == 0) goto L7e
            r11.close()
        L7e:
            return r0
        L7f:
            r0 = move-exception
            goto L85
        L81:
            r0 = move-exception
            goto Laa
        L83:
            r0 = move-exception
            r11 = r10
        L85:
            com.google.android.gms.measurement.internal.zzfv r2 = r1.zzs     // Catch: java.lang.Throwable -> La8
            com.google.android.gms.measurement.internal.zzel r2 = r2.zzay()     // Catch: java.lang.Throwable -> La8
            com.google.android.gms.measurement.internal.zzej r2 = r2.zzd()     // Catch: java.lang.Throwable -> La8
            java.lang.String r3 = "Error querying user property. appId"
            java.lang.Object r4 = com.google.android.gms.measurement.internal.zzel.zzn(r20)     // Catch: java.lang.Throwable -> La8
            com.google.android.gms.measurement.internal.zzfv r5 = r1.zzs     // Catch: java.lang.Throwable -> La8
            com.google.android.gms.measurement.internal.zzeg r5 = r5.zzj()     // Catch: java.lang.Throwable -> La8
            java.lang.String r5 = r5.zzf(r9)     // Catch: java.lang.Throwable -> La8
            r2.zzd(r3, r4, r5, r0)     // Catch: java.lang.Throwable -> La8
            if (r11 == 0) goto La7
            r11.close()
        La7:
            return r10
        La8:
            r0 = move-exception
            r10 = r11
        Laa:
            if (r10 == 0) goto Laf
            r10.close()
        Laf:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzaj.zzp(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzkx");
    }

    final Object zzq(Cursor cursor, int i) {
        int type = cursor.getType(i);
        if (type == 0) {
            this.zzs.zzay().zzd().zza("Loaded invalid null value from database");
            return null;
        }
        if (type == 1) {
            return Long.valueOf(cursor.getLong(i));
        }
        if (type == 2) {
            return Double.valueOf(cursor.getDouble(i));
        }
        if (type == 3) {
            return cursor.getString(i);
        }
        if (type != 4) {
            this.zzs.zzay().zzd().zzb("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
            return null;
        }
        this.zzs.zzay().zzd().zza("Loaded invalid blob type value, ignoring it");
        return null;
    }

    public final String zzr() throws Throwable {
        SQLiteException e;
        Cursor cursorRawQuery;
        Cursor cursor = null;
        try {
            cursorRawQuery = zzh().rawQuery("select app_id from queue order by has_realtime desc, rowid asc limit 1;", null);
            try {
                try {
                    if (!cursorRawQuery.moveToFirst()) {
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                        return null;
                    }
                    String string = cursorRawQuery.getString(0);
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return string;
                } catch (SQLiteException e2) {
                    e = e2;
                    this.zzs.zzay().zzd().zzb("Database error getting next bundle app id", e);
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                cursor = cursorRawQuery;
                th = th;
            }
            cursor = cursorRawQuery;
            th = th;
        } catch (SQLiteException e3) {
            e = e3;
            cursorRawQuery = null;
        } catch (Throwable th2) {
            th = th2;
        }
        if (cursor != null) {
            cursor.close();
        }
        throw th;
    }

    public final List<zzab> zzs(String str, String str2, String str3) {
        Preconditions.checkNotEmpty(str);
        zzg();
        zzY();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder sb = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            sb.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(String.valueOf(str3).concat(Operators.MUL));
            sb.append(" and name glob ?");
        }
        return zzt(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0058, code lost:
    
        r2 = r27.zzs.zzay().zzd();
        r27.zzs.zzf();
        r2.zzb("Read more than the max allowed conditional properties, ignoring extra", 1000);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzab> zzt(java.lang.String r28, java.lang.String[] r29) {
        /*
            Method dump skipped, instruction units count: 307
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzaj.zzt(java.lang.String, java.lang.String[]):java.util.List");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzkx> zzu(java.lang.String r14) {
        /*
            r13 = this;
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r14)
            r13.zzg()
            r13.zzY()
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.lang.String r9 = "1000"
            r10 = 0
            android.database.sqlite.SQLiteDatabase r1 = r13.zzh()     // Catch: java.lang.Throwable -> L87 android.database.sqlite.SQLiteException -> L89
            java.lang.String r2 = "user_attributes"
            java.lang.String r3 = "name"
            java.lang.String r4 = "origin"
            java.lang.String r5 = "set_timestamp"
            java.lang.String r6 = "value"
            java.lang.String[] r3 = new java.lang.String[]{r3, r4, r5, r6}     // Catch: java.lang.Throwable -> L87 android.database.sqlite.SQLiteException -> L89
            java.lang.String r4 = "app_id=?"
            r11 = 1
            java.lang.String[] r5 = new java.lang.String[r11]     // Catch: java.lang.Throwable -> L87 android.database.sqlite.SQLiteException -> L89
            r12 = 0
            r5[r12] = r14     // Catch: java.lang.Throwable -> L87 android.database.sqlite.SQLiteException -> L89
            java.lang.String r8 = "rowid"
            com.google.android.gms.measurement.internal.zzfv r6 = r13.zzs     // Catch: java.lang.Throwable -> L87 android.database.sqlite.SQLiteException -> L89
            r6.zzf()     // Catch: java.lang.Throwable -> L87 android.database.sqlite.SQLiteException -> L89
            r6 = 0
            r7 = 0
            android.database.Cursor r10 = r1.query(r2, r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L87 android.database.sqlite.SQLiteException -> L89
            boolean r1 = r10.moveToFirst()     // Catch: java.lang.Throwable -> L87 android.database.sqlite.SQLiteException -> L89
            if (r1 == 0) goto L81
        L3e:
            java.lang.String r5 = r10.getString(r12)     // Catch: java.lang.Throwable -> L87 android.database.sqlite.SQLiteException -> L89
            java.lang.String r1 = r10.getString(r11)     // Catch: java.lang.Throwable -> L87 android.database.sqlite.SQLiteException -> L89
            if (r1 != 0) goto L4a
            java.lang.String r1 = ""
        L4a:
            r4 = r1
            r1 = 2
            long r6 = r10.getLong(r1)     // Catch: java.lang.Throwable -> L87 android.database.sqlite.SQLiteException -> L89
            r1 = 3
            java.lang.Object r8 = r13.zzq(r10, r1)     // Catch: java.lang.Throwable -> L87 android.database.sqlite.SQLiteException -> L89
            if (r8 != 0) goto L6b
            com.google.android.gms.measurement.internal.zzfv r1 = r13.zzs     // Catch: java.lang.Throwable -> L87 android.database.sqlite.SQLiteException -> L89
            com.google.android.gms.measurement.internal.zzel r1 = r1.zzay()     // Catch: java.lang.Throwable -> L87 android.database.sqlite.SQLiteException -> L89
            com.google.android.gms.measurement.internal.zzej r1 = r1.zzd()     // Catch: java.lang.Throwable -> L87 android.database.sqlite.SQLiteException -> L89
            java.lang.String r2 = "Read invalid user property value, ignoring it. appId"
            java.lang.Object r3 = com.google.android.gms.measurement.internal.zzel.zzn(r14)     // Catch: java.lang.Throwable -> L87 android.database.sqlite.SQLiteException -> L89
            r1.zzb(r2, r3)     // Catch: java.lang.Throwable -> L87 android.database.sqlite.SQLiteException -> L89
            goto L75
        L6b:
            com.google.android.gms.measurement.internal.zzkx r1 = new com.google.android.gms.measurement.internal.zzkx     // Catch: java.lang.Throwable -> L87 android.database.sqlite.SQLiteException -> L89
            r2 = r1
            r3 = r14
            r2.<init>(r3, r4, r5, r6, r8)     // Catch: java.lang.Throwable -> L87 android.database.sqlite.SQLiteException -> L89
            r0.add(r1)     // Catch: java.lang.Throwable -> L87 android.database.sqlite.SQLiteException -> L89
        L75:
            boolean r1 = r10.moveToNext()     // Catch: java.lang.Throwable -> L87 android.database.sqlite.SQLiteException -> L89
            if (r1 != 0) goto L3e
            if (r10 == 0) goto L80
            r10.close()
        L80:
            return r0
        L81:
            if (r10 == 0) goto L86
            r10.close()
        L86:
            return r0
        L87:
            r14 = move-exception
            goto La7
        L89:
            r0 = move-exception
            com.google.android.gms.measurement.internal.zzfv r1 = r13.zzs     // Catch: java.lang.Throwable -> L87
            com.google.android.gms.measurement.internal.zzel r1 = r1.zzay()     // Catch: java.lang.Throwable -> L87
            com.google.android.gms.measurement.internal.zzej r1 = r1.zzd()     // Catch: java.lang.Throwable -> L87
            java.lang.String r2 = "Error querying user properties. appId"
            java.lang.Object r14 = com.google.android.gms.measurement.internal.zzel.zzn(r14)     // Catch: java.lang.Throwable -> L87
            r1.zzc(r2, r14, r0)     // Catch: java.lang.Throwable -> L87
            java.util.List r14 = java.util.Collections.emptyList()     // Catch: java.lang.Throwable -> L87
            if (r10 == 0) goto La6
            r10.close()
        La6:
            return r14
        La7:
            if (r10 == 0) goto Lac
            r10.close()
        Lac:
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzaj.zzu(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x009e, code lost:
    
        r2 = r16.zzs.zzay().zzd();
        r16.zzs.zzf();
        r2.zzb("Read more than the max allowed user properties, ignoring excess", 1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0121  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzkx> zzv(java.lang.String r17, java.lang.String r18, java.lang.String r19) {
        /*
            Method dump skipped, instruction units count: 299
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzaj.zzv(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    public final void zzw() {
        zzY();
        zzh().beginTransaction();
    }

    public final void zzx(List<Long> list) {
        Preconditions.checkNotNull(list);
        zzg();
        zzY();
        StringBuilder sb = new StringBuilder("rowid in (");
        for (int i = 0; i < list.size(); i++) {
            if (i != 0) {
                sb.append(",");
            }
            sb.append(list.get(i).longValue());
        }
        sb.append(Operators.BRACKET_END_STR);
        int iDelete = zzh().delete("raw_events", sb.toString(), null);
        if (iDelete != list.size()) {
            this.zzs.zzay().zzd().zzc("Deleted fewer rows from raw events table than expected", Integer.valueOf(iDelete), Integer.valueOf(list.size()));
        }
    }

    public final void zzy() {
        zzY();
        zzh().endTransaction();
    }

    final void zzz(List<Long> list) {
        zzg();
        zzY();
        Preconditions.checkNotNull(list);
        Preconditions.checkNotZero(list.size());
        if (zzK()) {
            String strJoin = TextUtils.join(",", list);
            StringBuilder sb = new StringBuilder(String.valueOf(strJoin).length() + 2);
            sb.append(Operators.BRACKET_START_STR);
            sb.append(strJoin);
            sb.append(Operators.BRACKET_END_STR);
            String string = sb.toString();
            StringBuilder sb2 = new StringBuilder(string.length() + 80);
            sb2.append("SELECT COUNT(1) FROM queue WHERE rowid IN ");
            sb2.append(string);
            sb2.append(" AND retry_count =  2147483647 LIMIT 1");
            if (zzab(sb2.toString(), null) > 0) {
                this.zzs.zzay().zzk().zza("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                SQLiteDatabase sQLiteDatabaseZzh = zzh();
                StringBuilder sb3 = new StringBuilder(string.length() + 127);
                sb3.append("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN ");
                sb3.append(string);
                sb3.append(" AND (retry_count IS NULL OR retry_count < ");
                sb3.append(Integer.MAX_VALUE);
                sb3.append(Operators.BRACKET_END_STR);
                sQLiteDatabaseZzh.execSQL(sb3.toString());
            } catch (SQLiteException e) {
                this.zzs.zzay().zzd().zzb("Error incrementing retry count. error", e);
            }
        }
    }
}
