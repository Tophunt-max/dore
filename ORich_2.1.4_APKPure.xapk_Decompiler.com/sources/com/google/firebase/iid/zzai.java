package com.google.firebase.iid;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
final class zzai extends zzal<Void> {
    zzai(int i, int i2, Bundle bundle) {
        super(i, 2, bundle);
    }

    @Override // com.google.firebase.iid.zzal
    final boolean zzab() {
        return true;
    }

    @Override // com.google.firebase.iid.zzal
    final void zzb(Bundle bundle) {
        if (bundle.getBoolean("ack", false)) {
            finish(null);
        } else {
            zza(new zzak(4, "Invalid response to one way request"));
        }
    }
}
