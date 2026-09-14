package com.google.firebase.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import androidx.core.content.ContextCompat;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.nio.channels.Channels;
import java.nio.channels.FileChannel;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Properties;

/* JADX INFO: loaded from: classes.dex */
final class zzx {
    zzx() {
    }

    final zzaa zzb(Context context, String str) throws zzz {
        zzaa zzaaVarZzd = zzd(context, str);
        return zzaaVarZzd != null ? zzaaVarZzd : zzc(context, str);
    }

    final zzaa zzc(Context context, String str) {
        zzaa zzaaVar = new zzaa(zza.zzc(), System.currentTimeMillis());
        zzaa zzaaVarZza = zza(context, str, zzaaVar, true);
        if (zzaaVarZza != null && !zzaaVarZza.equals(zzaaVar)) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                Log.d("FirebaseInstanceId", "Loaded key after generating new one, using loaded one");
            }
            return zzaaVarZza;
        }
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", "Generated new key");
        }
        zza(context, str, zzaaVar);
        return zzaaVar;
    }

    static void zza(Context context) {
        for (File file : zzb(context).listFiles()) {
            if (file.getName().startsWith("com.google.InstanceId")) {
                file.delete();
            }
        }
    }

    private final zzaa zzd(Context context, String str) throws zzz {
        try {
            zzaa zzaaVarZze = zze(context, str);
            if (zzaaVarZze != null) {
                zza(context, str, zzaaVarZze);
                return zzaaVarZze;
            }
            e = null;
        } catch (zzz e) {
            e = e;
        }
        try {
            zzaa zzaaVarZza = zza(context.getSharedPreferences("com.google.android.gms.appid", 0), str);
            if (zzaaVarZza != null) {
                zza(context, str, zzaaVarZza, false);
                return zzaaVarZza;
            }
        } catch (zzz e2) {
            e = e2;
        }
        if (e == null) {
            return null;
        }
        throw e;
    }

    private static KeyPair zzc(String str, String str2) throws zzz {
        try {
            byte[] bArrDecode = Base64.decode(str, 8);
            byte[] bArrDecode2 = Base64.decode(str2, 8);
            try {
                KeyFactory keyFactory = KeyFactory.getInstance("RSA");
                return new KeyPair(keyFactory.generatePublic(new X509EncodedKeySpec(bArrDecode)), keyFactory.generatePrivate(new PKCS8EncodedKeySpec(bArrDecode2)));
            } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
                String strValueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 19);
                sb.append("Invalid key stored ");
                sb.append(strValueOf);
                Log.w("FirebaseInstanceId", sb.toString());
                throw new zzz(e);
            }
        } catch (IllegalArgumentException e2) {
            throw new zzz(e2);
        }
    }

    private final zzaa zze(Context context, String str) throws zzz {
        File fileZzf = zzf(context, str);
        if (!fileZzf.exists()) {
            return null;
        }
        try {
            return zza(fileZzf);
        } catch (zzz | IOException e) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String strValueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 40);
                sb.append("Failed to read key from file, retrying: ");
                sb.append(strValueOf);
                Log.d("FirebaseInstanceId", sb.toString());
            }
            try {
                return zza(fileZzf);
            } catch (IOException e2) {
                String strValueOf2 = String.valueOf(e2);
                StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf2).length() + 45);
                sb2.append("IID file exists, but failed to read from it: ");
                sb2.append(strValueOf2);
                Log.w("FirebaseInstanceId", sb2.toString());
                throw new zzz(e2);
            }
        }
    }

    private final zzaa zza(Context context, String str, zzaa zzaaVar, boolean z) {
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", "Writing key to properties file");
        }
        Properties properties = new Properties();
        properties.setProperty("pub", zzaaVar.zzv());
        properties.setProperty("pri", zzaaVar.zzw());
        properties.setProperty("cre", String.valueOf(zzaaVar.zzbz));
        File fileZzf = zzf(context, str);
        try {
            fileZzf.createNewFile();
            RandomAccessFile randomAccessFile = new RandomAccessFile(fileZzf, "rw");
            try {
                FileChannel channel = randomAccessFile.getChannel();
                try {
                    channel.lock();
                    if (z && channel.size() > 0) {
                        try {
                            channel.position(0L);
                            zzaa zzaaVarZza = zza(channel);
                            if (channel != null) {
                                zza((Throwable) null, channel);
                            }
                            zza((Throwable) null, randomAccessFile);
                            return zzaaVarZza;
                        } catch (zzz | IOException e) {
                            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                                String strValueOf = String.valueOf(e);
                                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 64);
                                sb.append("Tried reading key pair before writing new one, but failed with: ");
                                sb.append(strValueOf);
                                Log.d("FirebaseInstanceId", sb.toString());
                            }
                        }
                    }
                    channel.position(0L);
                    properties.store(Channels.newOutputStream(channel), (String) null);
                    if (channel != null) {
                        zza((Throwable) null, channel);
                    }
                    zza((Throwable) null, randomAccessFile);
                    return zzaaVar;
                } finally {
                }
            } finally {
            }
        } catch (IOException e2) {
            String strValueOf2 = String.valueOf(e2);
            StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf2).length() + 21);
            sb2.append("Failed to write key: ");
            sb2.append(strValueOf2);
            Log.w("FirebaseInstanceId", sb2.toString());
            return null;
        }
    }

    private static File zzb(Context context) {
        File noBackupFilesDir = ContextCompat.getNoBackupFilesDir(context);
        if (noBackupFilesDir != null && noBackupFilesDir.isDirectory()) {
            return noBackupFilesDir;
        }
        Log.w("FirebaseInstanceId", "noBackupFilesDir doesn't exist, using regular files directory instead");
        return context.getFilesDir();
    }

    private static File zzf(Context context, String str) {
        String string;
        if (TextUtils.isEmpty(str)) {
            string = "com.google.InstanceId.properties";
        } else {
            try {
                String strEncodeToString = Base64.encodeToString(str.getBytes("UTF-8"), 11);
                StringBuilder sb = new StringBuilder(String.valueOf(strEncodeToString).length() + 33);
                sb.append("com.google.InstanceId_");
                sb.append(strEncodeToString);
                sb.append(".properties");
                string = sb.toString();
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            }
        }
        return new File(zzb(context), string);
    }

    private final zzaa zza(File file) throws zzz, IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            FileChannel channel = fileInputStream.getChannel();
            try {
                channel.lock(0L, Long.MAX_VALUE, true);
                zzaa zzaaVarZza = zza(channel);
                if (channel != null) {
                    zza((Throwable) null, channel);
                }
                zza((Throwable) null, fileInputStream);
                return zzaaVarZza;
            } finally {
            }
        } finally {
        }
    }

    private static zzaa zza(FileChannel fileChannel) throws zzz, IOException {
        Properties properties = new Properties();
        properties.load(Channels.newInputStream(fileChannel));
        String property = properties.getProperty("pub");
        String property2 = properties.getProperty("pri");
        if (property == null || property2 == null) {
            throw new zzz("Invalid properties file");
        }
        try {
            return new zzaa(zzc(property, property2), Long.parseLong(properties.getProperty("cre")));
        } catch (NumberFormatException e) {
            throw new zzz(e);
        }
    }

    private static zzaa zza(SharedPreferences sharedPreferences, String str) throws zzz {
        String string = sharedPreferences.getString(zzax.zzd(str, "|P|"), null);
        String string2 = sharedPreferences.getString(zzax.zzd(str, "|K|"), null);
        if (string == null || string2 == null) {
            return null;
        }
        return new zzaa(zzc(string, string2), zzb(sharedPreferences, str));
    }

    private final void zza(Context context, String str, zzaa zzaaVar) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.android.gms.appid", 0);
        try {
            if (zzaaVar.equals(zza(sharedPreferences, str))) {
                return;
            }
        } catch (zzz unused) {
        }
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            Log.d("FirebaseInstanceId", "Writing key to shared preferences");
        }
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString(zzax.zzd(str, "|P|"), zzaaVar.zzv());
        editorEdit.putString(zzax.zzd(str, "|K|"), zzaaVar.zzw());
        editorEdit.putString(zzax.zzd(str, "cre"), String.valueOf(zzaaVar.zzbz));
        editorEdit.commit();
    }

    private static long zzb(SharedPreferences sharedPreferences, String str) {
        String string = sharedPreferences.getString(zzax.zzd(str, "cre"), null);
        if (string == null) {
            return 0L;
        }
        try {
            return Long.parseLong(string);
        } catch (NumberFormatException unused) {
            return 0L;
        }
    }

    private static /* synthetic */ void zza(Throwable th, FileChannel fileChannel) {
        if (th == null) {
            fileChannel.close();
            return;
        }
        try {
            fileChannel.close();
        } catch (Throwable th2) {
            com.google.android.gms.internal.firebase_messaging.zzn.zza(th, th2);
        }
    }

    private static /* synthetic */ void zza(Throwable th, RandomAccessFile randomAccessFile) throws IOException {
        if (th == null) {
            randomAccessFile.close();
            return;
        }
        try {
            randomAccessFile.close();
        } catch (Throwable th2) {
            com.google.android.gms.internal.firebase_messaging.zzn.zza(th, th2);
        }
    }

    private static /* synthetic */ void zza(Throwable th, FileInputStream fileInputStream) throws IOException {
        if (th == null) {
            fileInputStream.close();
            return;
        }
        try {
            fileInputStream.close();
        } catch (Throwable th2) {
            com.google.android.gms.internal.firebase_messaging.zzn.zza(th, th2);
        }
    }
}
