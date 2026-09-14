package com.igexin.sdk;

import android.app.Service;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.igexin.push.util.o;
import com.igexin.sdk.message.GTCmdMessage;
import com.igexin.sdk.message.GTNotificationMessage;
import com.igexin.sdk.message.GTTransmitMessage;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class GTIntentService extends Service {
    public static final String TAG = "GTIntentService";
    public static final long WAIT_TIME = 30000;
    private Service mService;
    private volatile c mServiceHandler;
    private volatile Looper mServiceLooper;
    private BlockingQueue<Intent> messageQueue;

    public class JobIntentService extends JobService {
        public JobIntentService(Service service) {
            try {
                o.a(getClass(), "attachBaseContext", (Class<?>[]) new Class[]{Context.class}).invoke(this, service);
            } catch (Throwable th) {
                Log.e(GTIntentService.TAG, "GTJobService init err: " + th.toString());
            }
        }

        @Override // android.app.job.JobService
        public boolean onStartJob(JobParameters jobParameters) {
            GTIntentService.this.mServiceHandler.post(new b(this, jobParameters));
            return true;
        }

        @Override // android.app.job.JobService
        public boolean onStopJob(JobParameters jobParameters) {
            return false;
        }
    }

    private void processOnHandleIntent(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras == null || extras.get(PushConsts.CMD_ACTION) == null || !(extras.get(PushConsts.CMD_ACTION) instanceof Integer)) {
            return;
        }
        int i = extras.getInt(PushConsts.CMD_ACTION);
        if (i == 10001) {
            onReceiveMessageData(this, (GTTransmitMessage) intent.getSerializableExtra(PushConsts.KEY_MESSAGE_DATA));
        }
        if (i == 10002) {
            onReceiveClientId(this, extras.getString(PushConsts.KEY_CLIENT_ID));
            return;
        }
        if (i == 10007) {
            onReceiveOnlineState(this, extras.getBoolean(PushConsts.KEY_ONLINE_STATE));
            return;
        }
        if (i == 10008) {
            onReceiveServicePid(this, extras.getInt(PushConsts.KEY_SERVICE_PIT));
            return;
        }
        switch (i) {
            case 10010:
                onReceiveCommandResult(this, (GTCmdMessage) intent.getSerializableExtra(PushConsts.KEY_CMD_MSG));
                break;
            case 10011:
                onNotificationMessageArrived(this, (GTNotificationMessage) intent.getSerializableExtra(PushConsts.KEY_NOTIFICATION_ARRIVED));
                break;
            case PushConsts.ACTION_NOTIFICATION_CLICKED /* 10012 */:
                onNotificationMessageClicked(this, (GTNotificationMessage) intent.getSerializableExtra(PushConsts.KEY_NOTIFICATION_CLICKED));
                break;
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        Service service = this.mService;
        if (service == null) {
            return null;
        }
        return service.onBind(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        HandlerThread handlerThread = new HandlerThread("IntentService[GTJob]");
        handlerThread.start();
        this.mServiceLooper = handlerThread.getLooper();
        this.mServiceHandler = new c(this, this.mServiceLooper);
        if (Build.VERSION.SDK_INT >= 26) {
            this.mService = new JobIntentService(this);
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.mServiceLooper.quit();
    }

    protected void onHandleIntent(Intent intent) {
        if (intent == null) {
            return;
        }
        try {
            processOnHandleIntent(intent);
            BlockingQueue<Intent> blockingQueue = this.messageQueue;
            if (blockingQueue != null) {
                blockingQueue.remove(intent);
                this.messageQueue.poll(30000L, TimeUnit.MILLISECONDS);
            }
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("GTIntentService|" + th.toString());
        }
    }

    public abstract void onNotificationMessageArrived(Context context, GTNotificationMessage gTNotificationMessage);

    public abstract void onNotificationMessageClicked(Context context, GTNotificationMessage gTNotificationMessage);

    public abstract void onReceiveClientId(Context context, String str);

    public abstract void onReceiveCommandResult(Context context, GTCmdMessage gTCmdMessage);

    public abstract void onReceiveMessageData(Context context, GTTransmitMessage gTTransmitMessage);

    public abstract void onReceiveOnlineState(Context context, boolean z);

    public abstract void onReceiveServicePid(Context context, int i);

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        try {
            if (this.messageQueue == null) {
                this.messageQueue = new LinkedBlockingQueue();
            }
            this.messageQueue.offer(intent);
            Message messageObtainMessage = this.mServiceHandler.obtainMessage();
            messageObtainMessage.arg1 = i2;
            messageObtainMessage.obj = intent;
            this.mServiceHandler.sendMessage(messageObtainMessage);
            return 2;
        } catch (Throwable th) {
            com.igexin.b.a.c.b.a("GTIntentService|" + th.toString());
            return 2;
        }
    }
}
