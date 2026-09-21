package com.google.firebase.iid;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.taobao.weex.el.parse.Operators;

/* JADX INFO: loaded from: classes.dex */
abstract class zzal<T> {
    final int what;
    final int zzcm;
    final TaskCompletionSource<T> zzcn = new TaskCompletionSource<>();
    final Bundle zzco;

    zzal(int i, int i2, Bundle bundle) {
        this.zzcm = i;
        this.what = i2;
        this.zzco = bundle;
    }

    abstract boolean zzab();

    abstract void zzb(Bundle bundle);

    final void finish(T t) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String strValueOf = String.valueOf(this);
            String strValueOf2 = String.valueOf(t);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 16 + String.valueOf(strValueOf2).length());
            sb.append("Finishing ");
            sb.append(strValueOf);
            sb.append(" with ");
            sb.append(strValueOf2);
            Log.d("MessengerIpcClient", sb.toString());
        }
        this.zzcn.setResult(t);
    }

    final void zza(zzak zzakVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String strValueOf = String.valueOf(this);
            String strValueOf2 = String.valueOf(zzakVar);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 14 + String.valueOf(strValueOf2).length());
            sb.append("Failing ");
            sb.append(strValueOf);
            sb.append(" with ");
            sb.append(strValueOf2);
            Log.d("MessengerIpcClient", sb.toString());
        }
        this.zzcn.setException(zzakVar);
    }

    public String toString() {
        int i = this.what;
        int i2 = this.zzcm;
        boolean zZzab = zzab();
        StringBuilder sb = new StringBuilder(55);
        sb.append("Request { what=");
        sb.append(i);
        sb.append(" id=");
        sb.append(i2);
        sb.append(" oneWay=");
        sb.append(zZzab);
        sb.append(Operators.BLOCK_END_STR);
        return sb.toString();
    }
}
