package com.google.firebase.iid;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
final class zzan extends zzal<Bundle> {
    zzan(int i, int i2, Bundle bundle) {
        super(i, 1, bundle);
    }

    @Override // com.google.firebase.iid.zzal
    final boolean zzab() {
        return false;
    }

    @Override // com.google.firebase.iid.zzal
    final void zzb(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("data");
        if (bundle2 == null) {
            bundle2 = Bundle.EMPTY;
        }
        finish(bundle2);
    }
}
