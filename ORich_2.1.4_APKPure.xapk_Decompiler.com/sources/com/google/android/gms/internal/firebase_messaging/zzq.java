package com.google.android.gms.internal.firebase_messaging;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class zzq extends zzm {
    private final zzp zzp = new zzp();

    zzq() {
    }

    @Override // com.google.android.gms.internal.firebase_messaging.zzm
    public final void zza(Throwable th, Throwable th2) {
        if (th2 == th) {
            throw new IllegalArgumentException("Self suppression is not allowed.", th2);
        }
        Objects.requireNonNull(th2, "The suppressed exception cannot be null.");
        this.zzp.zza(th, true).add(th2);
    }
}
