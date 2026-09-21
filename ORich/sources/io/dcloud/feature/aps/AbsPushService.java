package io.dcloud.feature.aps;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import io.dcloud.common.DHInterface.BaseFeature;
import io.dcloud.common.DHInterface.IReflectAble;
import io.dcloud.common.DHInterface.IWebview;
import io.dcloud.common.adapter.util.MessageHandler;
import io.dcloud.common.util.Deprecated_JSUtil;
import io.dcloud.common.util.JSUtil;
import io.dcloud.common.util.StringUtil;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AbsPushService extends BaseFeature.BaseModule implements IReflectAble {
    public static final String CLIENTID = "clientid_";
    public static String CLIENT_INFO_TEMPLATE = "{id:'%s',token:'%s',clientid:'%s',appid:'%s',appkey:'%s'}";
    public static String PUSH_CLIENT_ID_NAME = "clientid";
    public static String PUSH_DB_DEFAULT_AUTO_NOTIFICATION = "auto_notification";
    public static String PUSH_DB_NAME = "push_db_name";
    private static final int SP_READ_MODE = 0;
    public String id = null;
    public String clientid = null;
    public String appid = null;
    public String appkey = null;
    public String appsecret = null;
    private Handler mHandler = new Handler();

    public boolean doHandleAction(String str) {
        return false;
    }

    public void onReceiver(Intent intent) {
    }

    public void onStart(Context context, Bundle bundle, String[] strArr) {
    }

    public void onStop() {
    }

    @Override // io.dcloud.common.DHInterface.BaseFeature.BaseModule
    public JSONObject toJSONObject() throws JSONException {
        return null;
    }

    @Override // io.dcloud.common.DHInterface.BaseFeature.BaseModule
    public void init(Context context) {
        super.init(context);
        initClientId(context);
    }

    public String getClientInfo(Context context) {
        String str = CLIENT_INFO_TEMPLATE;
        String str2 = this.clientid;
        return Deprecated_JSUtil.wrapJsVar(StringUtil.format(str, this.id, str2, str2, this.appid, this.appkey), false);
    }

    public void getClientInfoAsync(final IWebview iWebview, final String str) {
        String str2 = this.clientid;
        if (str2 != null) {
            Deprecated_JSUtil.execCallback(iWebview, str, StringUtil.format(CLIENT_INFO_TEMPLATE, this.id, str2, str2, this.appid, this.appkey), JSUtil.OK, true, false);
            return;
        }
        final SharedPreferences sharedPreferences = iWebview.getContext().getSharedPreferences(CLIENTID + this.id, 0);
        final SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: io.dcloud.feature.aps.AbsPushService.1
            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
            public void onSharedPreferenceChanged(SharedPreferences sharedPreferences2, String str3) {
                if (str3.equals(AbsPushService.PUSH_CLIENT_ID_NAME)) {
                    AbsPushService.this.mHandler.removeCallbacksAndMessages(null);
                    AbsPushService.this.getClientInfo(iWebview.getContext());
                    Deprecated_JSUtil.execCallback(iWebview, str, StringUtil.format(AbsPushService.CLIENT_INFO_TEMPLATE, AbsPushService.this.id, AbsPushService.this.clientid, AbsPushService.this.clientid, AbsPushService.this.appid, AbsPushService.this.appkey), JSUtil.OK, true, false);
                    sharedPreferences2.unregisterOnSharedPreferenceChangeListener(this);
                }
            }
        };
        sharedPreferences.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
        getClientInfo(iWebview.getContext());
        this.mHandler.postDelayed(new Runnable() { // from class: io.dcloud.feature.aps.AbsPushService.2
            @Override // java.lang.Runnable
            public void run() {
                if (AbsPushService.this.clientid == null) {
                    AbsPushService.this.getClientInfo(iWebview.getContext());
                }
                if (AbsPushService.this.clientid != null) {
                    Deprecated_JSUtil.execCallback(iWebview, str, StringUtil.format(AbsPushService.CLIENT_INFO_TEMPLATE, AbsPushService.this.id, AbsPushService.this.clientid, AbsPushService.this.clientid, AbsPushService.this.appid, AbsPushService.this.appkey), JSUtil.OK, true, false);
                } else {
                    Deprecated_JSUtil.execCallback(iWebview, str, "{code:-1,message:'failed,check appkey or appid'}", JSUtil.ERROR, true, false);
                }
                sharedPreferences.unregisterOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
            }
        }, 15000L);
    }

    public void saveClientId(Context context) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(CLIENTID + this.id, 0).edit();
        editorEdit.putString(PUSH_CLIENT_ID_NAME, this.clientid);
        editorEdit.commit();
    }

    public void initClientId(Context context) {
        this.clientid = context.getSharedPreferences(CLIENTID + this.id, 0).getString(PUSH_CLIENT_ID_NAME, this.clientid);
    }

    public boolean setAutoNotification(IWebview iWebview, JSONArray jSONArray, String str) throws JSONException {
        boolean z = Boolean.parseBoolean(jSONArray.getString(0));
        SharedPreferences.Editor editorEdit = iWebview.getContext().getSharedPreferences(PUSH_DB_NAME, 0).edit();
        editorEdit.putBoolean(PUSH_DB_DEFAULT_AUTO_NOTIFICATION, z);
        editorEdit.commit();
        return z;
    }

    public static boolean getAutoNotification(Context context, String str, String str2) {
        return context.getSharedPreferences(PUSH_DB_NAME, 0).getBoolean(PUSH_DB_DEFAULT_AUTO_NOTIFICATION, true);
    }

    public void remove(Context context, JSONArray jSONArray, String str) throws JSONException {
        PushManager pushManager = PushManager.getInstance(context);
        PushMessage pushMessageFindPushMessage = pushManager.findPushMessage(str, jSONArray.getString(0));
        Intent intent = new Intent(APSFeatureImpl.REMOVE_NOTIFICATION);
        intent.putExtra("id", pushMessageFindPushMessage.nID);
        LocalBroadcastManager.getInstance(context).sendBroadcast(intent);
        pushManager.removePushMessage(str, pushMessageFindPushMessage);
    }

    public void addEventListener(Context context, IWebview iWebview, JSONArray jSONArray) throws JSONException {
        PushManager pushManager = PushManager.getInstance(context);
        String string = jSONArray.getString(2);
        ArrayList<String> arrayListFindWebViewCallbacks = pushManager.findWebViewCallbacks(iWebview, string);
        String string2 = jSONArray.getString(1);
        arrayListFindWebViewCallbacks.add(string2);
        pushManager.dispatchEvent(iWebview, string2, string);
    }

    public void clear(Context context, String str) {
        Intent intent = new Intent(APSFeatureImpl.CLEAR_NOTIFICATION);
        intent.putExtra("_appId", str);
        LocalBroadcastManager.getInstance(context).sendBroadcast(intent);
    }

    public String createMessage(IWebview iWebview, JSONArray jSONArray, final String str, final Context context) throws JSONException {
        final PushManager pushManager = PushManager.getInstance(context);
        final PushMessage pushMessage = new PushMessage(jSONArray.getString(0), iWebview.obtainApp());
        if (pushMessage.mDelay == 0) {
            pushManager.addPushMessage(str, pushMessage);
            pushManager.sendCreateNotificationBroadcast(context, str, pushMessage);
        } else {
            MessageHandler.sendMessage(new MessageHandler.IMessages() { // from class: io.dcloud.feature.aps.AbsPushService.3
                @Override // io.dcloud.common.adapter.util.MessageHandler.IMessages
                public void execute(Object obj) {
                    pushManager.addPushMessage(str, pushMessage);
                    pushManager.sendCreateNotificationBroadcast(context, str, pushMessage);
                }
            }, pushMessage.mDelay * 1000, null);
        }
        return JSUtil.wrapJsVar(pushMessage.mUUID);
    }
}
