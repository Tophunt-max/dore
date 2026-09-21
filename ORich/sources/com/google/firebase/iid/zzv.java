package com.google.firebase.iid;

import android.os.Bundle;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class zzv implements Continuation<Bundle, String> {
    private final /* synthetic */ zzr zzbu;

    zzv(zzr zzrVar) {
        this.zzbu = zzrVar;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ String then(Task<Bundle> task) throws Exception {
        Bundle result = task.getResult(IOException.class);
        zzr zzrVar = this.zzbu;
        return zzr.zza(result);
    }
}
