package com.igexin.assist.control.fcm;

import android.app.job.JobParameters;
import android.content.Intent;
import android.util.Log;
import com.igexin.assist.control.fcm.GTJobService;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
class b implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ JobParameters f68a;
    final /* synthetic */ GTJobService.JobIntentService b;

    b(GTJobService.JobIntentService jobIntentService, JobParameters jobParameters) {
        this.b = jobIntentService;
        this.f68a = jobParameters;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            Class<?> cls = Class.forName("android.app.job.JobWorkItem");
            Method methodFindMethod = InvokeUtil.findMethod(JobParameters.class, "dequeueWork", new Class[0]);
            Method methodFindMethod2 = InvokeUtil.findMethod(cls, "getIntent", new Class[0]);
            Method methodFindMethod3 = InvokeUtil.findMethod(JobParameters.class, "completeWork", cls);
            while (true) {
                Object objInvoke = methodFindMethod.invoke(this.f68a, new Object[0]);
                if (objInvoke == null) {
                    return;
                }
                Intent intent = (Intent) methodFindMethod2.invoke(objInvoke, new Object[0]);
                methodFindMethod3.invoke(this.f68a, objInvoke);
                GTJobService.this.a(intent);
            }
        } catch (Throwable th) {
            Log.e("Assist_FCM", "onStartJob error: " + th.toString());
        }
    }
}
