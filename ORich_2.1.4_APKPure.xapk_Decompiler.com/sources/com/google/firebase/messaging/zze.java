package com.google.firebase.messaging;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.firebase_messaging.zzj;
import com.google.android.gms.internal.firebase_messaging.zzk;
import com.google.android.gms.internal.firebase_messaging.zzn;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
final class zze implements Closeable {
    private final URL url;
    private Task<Bitmap> zzef;
    private volatile InputStream zzeg;

    public static zze zzo(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new zze(new URL(str));
        } catch (MalformedURLException unused) {
            String strValueOf = String.valueOf(str);
            Log.w("FirebaseMessaging", strValueOf.length() != 0 ? "Not downloading image, bad URL: ".concat(strValueOf) : new String("Not downloading image, bad URL: "));
            return null;
        }
    }

    private zze(URL url) {
        this.url = url;
    }

    public final void zza(Executor executor) {
        this.zzef = Tasks.call(executor, new Callable(this) { // from class: com.google.firebase.messaging.zzd
            private final zze zzee;

            {
                this.zzee = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzee.zzat();
            }
        });
    }

    public final Task<Bitmap> getTask() {
        return (Task) Preconditions.checkNotNull(this.zzef);
    }

    public final Bitmap zzat() throws IOException {
        String strValueOf = String.valueOf(this.url);
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 22);
        sb.append("Starting download of: ");
        sb.append(strValueOf);
        Log.i("FirebaseMessaging", sb.toString());
        try {
            InputStream inputStream = this.url.openConnection().getInputStream();
            try {
                InputStream inputStreamZza = zzj.zza(inputStream, PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED);
                try {
                    this.zzeg = inputStream;
                    Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamZza);
                    if (bitmapDecodeStream == null) {
                        String strValueOf2 = String.valueOf(this.url);
                        StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf2).length() + 24);
                        sb2.append("Failed to decode image: ");
                        sb2.append(strValueOf2);
                        String string = sb2.toString();
                        Log.w("FirebaseMessaging", string);
                        throw new IOException(string);
                    }
                    if (Log.isLoggable("FirebaseMessaging", 3)) {
                        String strValueOf3 = String.valueOf(this.url);
                        StringBuilder sb3 = new StringBuilder(String.valueOf(strValueOf3).length() + 31);
                        sb3.append("Successfully downloaded image: ");
                        sb3.append(strValueOf3);
                        Log.d("FirebaseMessaging", sb3.toString());
                    }
                    zza(null, inputStreamZza);
                    if (inputStream != null) {
                        zza(null, inputStream);
                    }
                    return bitmapDecodeStream;
                } finally {
                }
            } finally {
            }
        } catch (IOException e) {
            String strValueOf4 = String.valueOf(this.url);
            StringBuilder sb4 = new StringBuilder(String.valueOf(strValueOf4).length() + 26);
            sb4.append("Failed to download image: ");
            sb4.append(strValueOf4);
            Log.w("FirebaseMessaging", sb4.toString());
            throw e;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        zzk.zza(this.zzeg);
    }

    private static /* synthetic */ void zza(Throwable th, InputStream inputStream) throws IOException {
        if (th == null) {
            inputStream.close();
            return;
        }
        try {
            inputStream.close();
        } catch (Throwable th2) {
            zzn.zza(th, th2);
        }
    }
}
