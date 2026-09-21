package com.google.firebase.iid;

import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
final class zzav extends com.google.android.gms.internal.firebase_messaging.zze {
    private final /* synthetic */ zzas zzdj;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzav(zzas zzasVar, Looper looper) {
        super(looper);
        this.zzdj = zzasVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        this.zzdj.zzb(message);
    }
}
