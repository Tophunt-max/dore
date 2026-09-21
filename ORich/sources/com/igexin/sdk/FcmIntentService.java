package com.igexin.sdk;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.firebase.iid.FirebaseInstanceId;
import com.google.firebase.messaging.FirebaseMessaging;
import com.igexin.assist.control.fcm.GTJobService;
import com.igexin.assist.control.fcm.ServiceUtils;
import com.igexin.assist.sdk.AssistPushConsts;

/* JADX INFO: loaded from: classes.dex */
public class FcmIntentService extends GTJobService {
    public static final String GCM_DEFAULT_SENDER_ID = "gcm_defaultSenderId";
    public static final String TAG = "Assist_FCM";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f447a;

    private void a() {
        try {
            if (this.f447a == 0) {
                this.f447a = getResources().getIdentifier("gcm_defaultSenderId", "string", getPackageName());
            }
            if (this.f447a == 0) {
                Log.e("Assist_FCM", "not found fcm defaultSenderId!");
                return;
            }
            String token = FirebaseInstanceId.getInstance().getToken(getResources().getString(this.f447a), FirebaseMessaging.INSTANCE_ID_SCOPE);
            if (TextUtils.isEmpty(token)) {
                return;
            }
            Intent intent = new Intent(getApplicationContext(), (Class<?>) FcmPushIntentService.class);
            intent.putExtra(PushConsts.CMD_ACTION, "token");
            intent.putExtra("token", AssistPushConsts.FCM_PREFIX + token);
            ServiceUtils.startService(getApplicationContext(), intent);
        } catch (Throwable th) {
            Log.e("Assist_FCM", "fcm turnoff error = " + th.getMessage());
        }
    }

    private void b() {
        try {
            if (this.f447a == 0) {
                this.f447a = getResources().getIdentifier("gcm_defaultSenderId", "string", getPackageName());
            }
            if (this.f447a == 0) {
                Log.e("Assist_FCM", "not found fcm defaultSenderId!");
            } else {
                FirebaseInstanceId.getInstance().deleteToken(getResources().getString(this.f447a), FirebaseMessaging.INSTANCE_ID_SCOPE);
            }
        } catch (Throwable th) {
            Log.e("Assist_FCM", "fcm turnoff error = " + th.getMessage());
        }
    }

    @Override // com.igexin.assist.control.fcm.GTJobService
    protected void a(Intent intent) {
        if (intent == null) {
            return;
        }
        try {
            b(intent);
        } catch (Throwable unused) {
        }
    }

    @Override // com.igexin.assist.control.fcm.GTJobService
    protected void b(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras == null || extras.get(PushConsts.CMD_ACTION) == null) {
            return;
        }
        String string = extras.getString(PushConsts.CMD_ACTION);
        if (string.equals("turnOnPush")) {
            a();
        } else if (string.equals("turnOffPush")) {
            b();
        }
    }
}
