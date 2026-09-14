package com.igexin.assist.control.fcm;

import android.app.Service;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class GTJobService extends Service {
    public static final String TAG = "Assist_FCM";
    public static final long WAIT_TIME = 30000;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private BlockingQueue<Intent> f65a;
    private Service b;
    private volatile Looper c;
    private volatile c d;

    public class JobIntentService extends JobService {
        public JobIntentService(Service service) {
            try {
                InvokeUtil.findMethod(getClass(), "attachBaseContext", Context.class).invoke(this, service);
            } catch (Throwable th) {
                Log.e("Assist_FCM", "GTJobService init error: " + th.toString());
            }
        }

        @Override // android.app.job.JobService
        public boolean onStartJob(JobParameters jobParameters) {
            GTJobService.this.d.post(new b(this, jobParameters));
            return true;
        }

        @Override // android.app.job.JobService
        public boolean onStopJob(JobParameters jobParameters) {
            return false;
        }
    }

    protected void a(Intent intent) {
        if (intent == null) {
            return;
        }
        try {
            b(intent);
            BlockingQueue<Intent> blockingQueue = this.f65a;
            if (blockingQueue != null) {
                blockingQueue.remove(intent);
                this.f65a.poll(30000L, TimeUnit.MILLISECONDS);
            }
        } catch (Throwable unused) {
        }
    }

    protected abstract void b(Intent intent);

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        Service service = this.b;
        if (service == null) {
            return null;
        }
        return service.onBind(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        HandlerThread handlerThread = new HandlerThread(getClass().getSimpleName());
        handlerThread.start();
        this.c = handlerThread.getLooper();
        this.d = new c(this, this.c);
        if (Build.VERSION.SDK_INT >= 26) {
            this.b = new JobIntentService(this);
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.c.quit();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        try {
            if (this.f65a == null) {
                this.f65a = new LinkedBlockingQueue();
            }
            this.f65a.offer(intent);
            Message messageObtainMessage = this.d.obtainMessage();
            messageObtainMessage.arg1 = i2;
            messageObtainMessage.obj = intent;
            this.d.sendMessage(messageObtainMessage);
            return 2;
        } catch (Throwable unused) {
            return 2;
        }
    }
}
