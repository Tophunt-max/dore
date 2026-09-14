package com.igexin.sdk;

import android.app.job.JobParameters;
import android.content.Intent;
import android.util.Log;
import com.igexin.push.util.o;
import com.igexin.sdk.GTIntentService;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
class b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ JobParameters f460a;
    final /* synthetic */ GTIntentService.JobIntentService b;

    b(GTIntentService.JobIntentService jobIntentService, JobParameters jobParameters) {
        this.b = jobIntentService;
        this.f460a = jobParameters;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            Class<?> cls = Class.forName("android.app.job.JobWorkItem");
            Method methodA = o.a((Class<?>) JobParameters.class, "dequeueWork", (Class<?>[]) new Class[0]);
            Method methodA2 = o.a(cls, "getIntent", (Class<?>[]) new Class[0]);
            Method methodA3 = o.a((Class<?>) JobParameters.class, "completeWork", (Class<?>[]) new Class[]{cls});
            while (true) {
                Object objInvoke = methodA.invoke(this.f460a, new Object[0]);
                if (objInvoke == null) {
                    return;
                }
                Intent intent = (Intent) methodA2.invoke(objInvoke, new Object[0]);
                methodA3.invoke(this.f460a, objInvoke);
                GTIntentService.this.onHandleIntent(intent);
            }
        } catch (Throwable th) {
            Log.e(GTIntentService.TAG, "onStartJobIntentService err: " + th.toString());
        }
    }
}
