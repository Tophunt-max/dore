package com.google.firebase.iid;

import android.util.Log;
import android.util.Pair;
import androidx.collection.ArrayMap;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
final class zzar {
    private final Executor executor;
    private final Map<Pair<String, String>, Task<InstanceIdResult>> zzcx = new ArrayMap();

    zzar(Executor executor) {
        this.executor = executor;
    }

    final synchronized Task<InstanceIdResult> zza(String str, String str2, zzat zzatVar) {
        final Pair<String, String> pair = new Pair<>(str, str2);
        Task<InstanceIdResult> task = this.zzcx.get(pair);
        if (task != null) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String strValueOf = String.valueOf(pair);
                StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 29);
                sb.append("Joining ongoing request for: ");
                sb.append(strValueOf);
                Log.d("FirebaseInstanceId", sb.toString());
            }
            return task;
        }
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            String strValueOf2 = String.valueOf(pair);
            StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf2).length() + 24);
            sb2.append("Making new request for: ");
            sb2.append(strValueOf2);
            Log.d("FirebaseInstanceId", sb2.toString());
        }
        Task taskContinueWithTask = zzatVar.zzs().continueWithTask(this.executor, new Continuation(this, pair) { // from class: com.google.firebase.iid.zzaq
            private final zzar zzcv;
            private final Pair zzcw;

            {
                this.zzcv = this;
                this.zzcw = pair;
            }

            @Override // com.google.android.gms.tasks.Continuation
            public final Object then(Task task2) {
                return this.zzcv.zza(this.zzcw, task2);
            }
        });
        this.zzcx.put(pair, (Task<InstanceIdResult>) taskContinueWithTask);
        return taskContinueWithTask;
    }

    final /* synthetic */ Task zza(Pair pair, Task task) throws Exception {
        synchronized (this) {
            this.zzcx.remove(pair);
        }
        return task;
    }
}
