package io.dcloud.feature.unipush;

import android.content.Context;
import android.content.Intent;
import com.igexin.sdk.PushConsts;
import com.igexin.sdk.PushManager;
import io.dcloud.common.adapter.util.Logger;
import io.dcloud.feature.aps.NotificationReceiver;

/* JADX INFO: loaded from: classes2.dex */
public class GTNotificationReceiver extends NotificationReceiver {
    public GTNotificationReceiver() {
    }

    public GTNotificationReceiver(Context context) {
        super(context);
    }

    @Override // io.dcloud.feature.aps.NotificationReceiver, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        try {
            String action = intent.getAction();
            if (action != null) {
                if (action.equals(PushConsts.ACTION_BROADCAST_TO_BOOT)) {
                    Logger.d("ACTION_BOOT_COMPLETED:开机初始化.");
                    PushManager.getInstance().initialize(context.getApplicationContext(), null);
                    PushManager.getInstance().registerPushIntentService(context.getApplicationContext(), GTNormalIntentService.class);
                } else {
                    super.onReceive(context, intent);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
