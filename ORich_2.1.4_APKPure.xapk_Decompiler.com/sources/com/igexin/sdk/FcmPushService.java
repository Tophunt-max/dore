package com.igexin.sdk;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import com.igexin.assist.control.fcm.ServiceUtils;
import com.igexin.assist.sdk.AssistPushConsts;
import com.igexin.assist.sdk.AssistPushManager;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class FcmPushService extends FirebaseMessagingService {
    public static final String PAYLOAD_KEY = "GT";
    public static final String TAG = "Assist_FCM";

    private boolean a(Context context) {
        return AssistPushManager.checkSupportDevice(context);
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageReceived(RemoteMessage remoteMessage) {
        try {
            Log.d("Assist_FCM", "onMessageReceived receive meaasge ...");
            if (remoteMessage == null || remoteMessage.getData() == null || remoteMessage.getData().size() <= 0) {
                return;
            }
            Map<String, String> data = remoteMessage.getData();
            if (data.containsKey(PAYLOAD_KEY)) {
                String str = data.get(PAYLOAD_KEY);
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                Intent intent = new Intent(this, (Class<?>) FcmPushIntentService.class);
                intent.putExtra(PushConsts.CMD_ACTION, AssistPushConsts.MSG_TYPE_ACTIONS);
                intent.putExtra(AssistPushConsts.MSG_TYPE_ACTIONS, str);
                ServiceUtils.startService(getApplicationContext(), intent);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onNewToken(String str) {
        try {
            if (a(getApplicationContext())) {
                Log.e("Assist_FCM", "already support other assist sdk!");
                return;
            }
            Log.e("Assist_FCM", "onNewToken token = " + str);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            Intent intent = new Intent(getApplicationContext(), (Class<?>) FcmPushIntentService.class);
            intent.putExtra(PushConsts.CMD_ACTION, "token");
            intent.putExtra("token", AssistPushConsts.FCM_PREFIX + str);
            ServiceUtils.startService(getApplicationContext(), intent);
        } catch (Throwable unused) {
        }
    }
}
