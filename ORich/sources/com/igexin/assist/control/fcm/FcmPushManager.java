package com.igexin.assist.control.fcm;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.messaging.FirebaseMessaging;
import com.igexin.assist.MessageBean;
import com.igexin.assist.action.MessageManger;
import com.igexin.assist.control.AbstractPushManager;
import com.igexin.assist.sdk.AssistPushConsts;
import com.igexin.assist.sdk.AssistPushManager;
import com.igexin.sdk.FcmIntentService;
import com.igexin.sdk.PushConsts;
import io.dcloud.common.constant.AbsoluteConst;

/* JADX INFO: loaded from: classes.dex */
public class FcmPushManager implements AbstractPushManager {
    public static final String GCM_DEFAULT_SENDER_ID = "gcm_defaultSenderId";
    public static final String TAG = "Assist_FCM";

    public FcmPushManager(Context context) {
    }

    public static boolean checkFcmDevice(Context context) {
        try {
            if (AssistPushManager.getToken() != null && AssistPushManager.getToken().startsWith(AssistPushConsts.FCM_PREFIX)) {
                return true;
            }
            String spToken = AssistPushManager.getInstance().getSpToken();
            if (spToken != null && spToken.startsWith(AssistPushConsts.FCM_PREFIX)) {
                return true;
            }
            int iIsGooglePlayServicesAvailable = GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(context);
            Log.e("Assist_FCM", "checkFcmDevice result = " + iIsGooglePlayServicesAvailable);
            return iIsGooglePlayServicesAvailable == 0;
        } catch (Throwable th) {
            Log.e("Assist_FCM", "checkFcmDevice error =" + th.getMessage());
            return false;
        }
    }

    @Override // com.igexin.assist.control.AbstractPushManager
    public String getToken(Context context) {
        try {
            int identifier = context.getResources().getIdentifier("gcm_defaultSenderId", "string", context.getPackageName());
            if (identifier == 0) {
                return null;
            }
            return FirebaseInstanceId.getInstance().getToken(context.getResources().getString(identifier), FirebaseMessaging.INSTANCE_ID_SCOPE);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.igexin.assist.control.AbstractPushManager
    public void register(Context context) {
        Log.d("Assist_FCM", "Register fcm push, and fcm is initialized when app launch");
        try {
            String spToken = AssistPushManager.getInstance().getSpToken();
            if (TextUtils.isEmpty(spToken) || !spToken.startsWith(AssistPushConsts.FCM_PREFIX)) {
                return;
            }
            MessageManger.getInstance().addMessage(new MessageBean(context, "token", spToken));
        } catch (Throwable unused) {
        }
    }

    @Override // com.igexin.assist.control.AbstractPushManager
    public void setSilentTime(Context context, int i, int i2) {
    }

    @Override // com.igexin.assist.control.AbstractPushManager
    public void turnOffPush(Context context) {
        try {
            Intent intent = new Intent(context, (Class<?>) FcmIntentService.class);
            intent.putExtra(PushConsts.CMD_ACTION, "turnOffPush");
            ServiceUtils.startService(context, intent);
            AssistPushManager.getInstance().saveToken(AbsoluteConst.FALSE);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.igexin.assist.control.AbstractPushManager
    public void turnOnPush(Context context) {
        try {
            Intent intent = new Intent(context, (Class<?>) FcmIntentService.class);
            intent.putExtra(PushConsts.CMD_ACTION, "turnOnPush");
            ServiceUtils.startService(context, intent);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.igexin.assist.control.AbstractPushManager
    public void unregister(Context context) {
        turnOffPush(context);
    }
}
