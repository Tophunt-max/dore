package io.dcloud.feature.unipush;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import com.igexin.sdk.GTIntentService;
import com.igexin.sdk.message.GTCmdMessage;
import com.igexin.sdk.message.GTNotificationMessage;
import com.igexin.sdk.message.GTTransmitMessage;
import com.taobao.weex.common.Constants;
import io.dcloud.common.adapter.util.Logger;
import io.dcloud.common.constant.AbsoluteConst;
import io.dcloud.common.util.BaseInfo;
import io.dcloud.common.util.PdrUtil;
import io.dcloud.feature.aps.APSFeatureImpl;
import io.dcloud.feature.aps.AbsPushService;
import io.dcloud.feature.aps.PushMessage;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class GTNormalIntentService extends GTIntentService {
    public static final String TAG = "GTNormalIntentService";

    @Override // com.igexin.sdk.GTIntentService
    public void onNotificationMessageArrived(Context context, GTNotificationMessage gTNotificationMessage) {
    }

    @Override // com.igexin.sdk.GTIntentService
    public void onReceiveServicePid(Context context, int i) {
    }

    @Override // com.igexin.sdk.GTIntentService
    public void onNotificationMessageClicked(Context context, GTNotificationMessage gTNotificationMessage) {
        String str = BaseInfo.sDefaultBootApp;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(AbsoluteConst.JSON_KEY_TITLE, gTNotificationMessage.getTitle());
            jSONObject.put("content", gTNotificationMessage.getContent());
            PushMessage pushMessage = new PushMessage(jSONObject.toString(), str, getApplicationName(context));
            if (APSFeatureImpl.execScript(context, Constants.Event.CLICK, pushMessage.toJSON())) {
                return;
            }
            APSFeatureImpl.addNeedExecMessage(context, pushMessage);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.igexin.sdk.GTIntentService
    public void onReceiveMessageData(Context context, GTTransmitMessage gTTransmitMessage) {
        String str = TAG;
        Logger.e(str, "onReceiveMessageData -> msg = " + gTTransmitMessage);
        byte[] payload = gTTransmitMessage.getPayload();
        if (payload != null) {
            String str2 = new String(payload);
            if (PdrUtil.isEmpty(str2)) {
                return;
            }
            Logger.e(str, "onReceiveMessageData -> msg data= " + str2);
            String str3 = BaseInfo.sDefaultBootApp;
            PushMessage pushMessage = new PushMessage(str2, str3, getApplicationName(context));
            if (AbsPushService.getAutoNotification(context, str3, GTPushService.ID) && pushMessage.needCreateNotifcation()) {
                APSFeatureImpl.sendCreateNotificationBroadcast(context, str3, pushMessage);
            } else if (!APSFeatureImpl.execScript(context, "receive", pushMessage.toJSON())) {
                APSFeatureImpl.addNeedExecReceiveMessage(context, pushMessage);
            }
            APSFeatureImpl.addPushMessage(context, str3, pushMessage);
        }
    }

    public String getApplicationName(Context context) {
        PackageManager packageManager;
        ApplicationInfo applicationInfo = null;
        try {
            packageManager = context.getApplicationContext().getPackageManager();
            try {
                applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 0);
            } catch (PackageManager.NameNotFoundException unused) {
            }
        } catch (PackageManager.NameNotFoundException unused2) {
            packageManager = null;
        }
        return (String) packageManager.getApplicationLabel(applicationInfo);
    }

    @Override // com.igexin.sdk.GTIntentService
    public void onReceiveClientId(Context context, String str) {
        Logger.e(TAG, "onReceiveClientId -> clientid = " + str);
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("clientid_unipush", 0).edit();
        editorEdit.putString(AbsPushService.PUSH_CLIENT_ID_NAME, str);
        editorEdit.commit();
    }

    @Override // com.igexin.sdk.GTIntentService
    public void onReceiveOnlineState(Context context, boolean z) {
        Logger.e(TAG, "onReceiveOnlineState -> online = " + z);
    }

    @Override // com.igexin.sdk.GTIntentService
    public void onReceiveCommandResult(Context context, GTCmdMessage gTCmdMessage) {
        Logger.e(TAG, "onReceiveCommandResult -> cmdMessage = " + gTCmdMessage);
    }
}
