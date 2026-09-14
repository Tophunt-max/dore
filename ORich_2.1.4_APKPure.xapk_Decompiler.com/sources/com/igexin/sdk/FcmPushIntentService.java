package com.igexin.sdk;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.igexin.assist.MessageBean;
import com.igexin.assist.action.MessageManger;
import com.igexin.assist.control.fcm.GTJobService;
import com.igexin.assist.sdk.AssistPushConsts;

/* JADX INFO: loaded from: classes.dex */
public class FcmPushIntentService extends GTJobService {
    public static final String TAG = "Assist_FCM";

    private void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        MessageManger.getInstance().addMessage(new MessageBean(getApplicationContext(), "token", str));
    }

    private void b(String str) {
        if (str != null) {
            MessageBean messageBean = new MessageBean(getApplicationContext(), AssistPushConsts.MSG_TYPE_ACTIONS, str);
            messageBean.setMessageSource(AssistPushConsts.FCM_PREFIX);
            MessageManger.getInstance().addMessage(messageBean);
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
        if (string.equals("token")) {
            a(intent.getStringExtra("token"));
        } else if (string.equals(AssistPushConsts.MSG_TYPE_ACTIONS)) {
            b(intent.getStringExtra(AssistPushConsts.MSG_TYPE_ACTIONS));
        }
    }
}
