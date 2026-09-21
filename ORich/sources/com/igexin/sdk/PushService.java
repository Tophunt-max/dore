package com.igexin.sdk;

import android.app.Service;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import android.util.Log;
import com.igexin.push.core.s;
import com.igexin.push.util.o;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class PushService extends Service {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f452a = "PushService";
    private Service b;

    public class GTJobService extends JobService {
        private Service b;

        public GTJobService(Service service) {
            this.b = service;
            try {
                o.a(getClass(), "attachBaseContext", (Class<?>[]) new Class[]{Context.class}).invoke(this, service);
            } catch (Throwable th) {
                Log.e(PushService.f452a, "GTJobService init err: " + th.toString());
            }
        }

        @Override // android.app.job.JobService
        public boolean onStartJob(JobParameters jobParameters) {
            try {
                Class<?> cls = Class.forName("android.app.job.JobWorkItem");
                Method methodA = o.a((Class<?>) JobParameters.class, "dequeueWork", (Class<?>[]) new Class[0]);
                Method methodA2 = o.a(cls, "getIntent", (Class<?>[]) new Class[0]);
                Method methodA3 = o.a((Class<?>) JobParameters.class, "completeWork", (Class<?>[]) new Class[]{cls});
                while (true) {
                    Object objInvoke = methodA.invoke(jobParameters, new Object[0]);
                    if (objInvoke == null) {
                        break;
                    }
                    s.a().a(this.b, (Intent) methodA2.invoke(objInvoke, new Object[0]), 0, 0);
                    methodA3.invoke(jobParameters, objInvoke);
                }
            } catch (Throwable th) {
                Log.e(PushService.f452a, "onStartJobService err: " + th.toString());
            }
            return false;
        }

        @Override // android.app.job.JobService
        public boolean onStopJob(JobParameters jobParameters) {
            return false;
        }
    }

    private void a(Intent intent) {
        Class clsC = s.a().c(this);
        if (intent != null) {
            intent.setClass(getApplicationContext(), clsC);
        } else {
            intent = new Intent(getApplicationContext(), (Class<?>) clsC);
        }
        getApplicationContext().startService(intent);
    }

    private boolean b() {
        return getClass() == PushService.class && s.a().b(this);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        String type;
        if (intent == null || (type = intent.getType()) == null || !type.startsWith("GB-")) {
            Service service = this.b;
            return service == null ? s.a().a(intent) : service.onBind(intent);
        }
        onStartCommand(intent, 0, 0);
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        s.a().a((Context) this);
        if (Build.VERSION.SDK_INT >= 26) {
            this.b = new GTJobService(this);
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        if (b()) {
            return;
        }
        s.a().c();
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        s.a().b();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        try {
            if (b()) {
                com.igexin.b.a.c.b.a(f452a, "isUserPushServiceSet = true, call -> startUserPushService");
                a(intent);
                stopSelf();
                return 2;
            }
        } catch (Throwable unused) {
        }
        return s.a().a(this, intent, i, i2);
    }
}
