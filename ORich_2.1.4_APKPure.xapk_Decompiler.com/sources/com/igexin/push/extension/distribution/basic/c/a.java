package com.igexin.push.extension.distribution.basic.c;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.Context;
import android.content.Intent;
import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f298a;

    private a() {
    }

    public static synchronized a a() {
        if (f298a == null) {
            f298a = new a();
        }
        return f298a;
    }

    public boolean a(Context context, Intent intent, int i) {
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
}
