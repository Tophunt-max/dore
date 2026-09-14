package com.igexin.sdk;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.Context;
import android.content.Intent;
import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public class JobSender {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static JobSender f449a;

    private JobSender() {
    }

    public static synchronized JobSender getInstance() {
        if (f449a == null) {
            f449a = new JobSender();
        }
        return f449a;
    }

    public boolean runJob(Context context, Intent intent, int i) {
        com.igexin.b.a.c.b.a("JobSender| JobSender.runJob()");
        if (Build.VERSION.SDK_INT >= 26 && context != null && intent != null && intent.getComponent() != null) {
            try {
                JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
                JobInfo jobInfoBuild = new JobInfo.Builder(i, intent.getComponent()).setOverrideDeadline(0L).build();
                Class<?> cls = Class.forName("android.app.job.JobWorkItem");
                JobScheduler.class.getDeclaredMethod("enqueue", JobInfo.class, cls).invoke(jobScheduler, jobInfoBuild, cls.getConstructor(Intent.class).newInstance(intent));
                com.igexin.b.a.c.b.a("JobSender| started by JobSender");
                return true;
            } catch (Throwable th) {
                com.igexin.b.a.c.b.a("JobSender|" + th.toString());
            }
        }
        return false;
    }

    public int size(Context context) {
        try {
            return ((JobScheduler) context.getSystemService("jobscheduler")).getAllPendingJobs().size();
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("JobSender|" + th.toString());
            return -1;
        }
    }
}
