package com.igexin.assist.control.fcm;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.Context;
import android.content.Intent;
import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public class JobSender {
    public static final String TAG = "Assist_FCM";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static JobSender f67a;

    private JobSender() {
    }

    public static synchronized JobSender getInstance() {
        if (f67a == null) {
            f67a = new JobSender();
        }
        return f67a;
    }

    public boolean runJob(Context context, Intent intent, int i) {
        if (Build.VERSION.SDK_INT >= 26 && context != null && intent != null && intent.getComponent() != null) {
            try {
                JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
                JobInfo jobInfoBuild = new JobInfo.Builder(i, intent.getComponent()).setOverrideDeadline(0L).build();
                Class<?> cls = Class.forName("android.app.job.JobWorkItem");
                JobScheduler.class.getDeclaredMethod("enqueue", JobInfo.class, cls).invoke(jobScheduler, jobInfoBuild, cls.getConstructor(Intent.class).newInstance(intent));
                return true;
            } catch (Throwable unused) {
            }
        }
        return false;
    }
}
