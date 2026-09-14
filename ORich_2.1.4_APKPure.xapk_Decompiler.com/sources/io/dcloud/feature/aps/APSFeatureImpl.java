package io.dcloud.feature.aps;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.taobao.weex.el.parse.Operators;
import io.dcloud.common.DHInterface.AbsMgr;
import io.dcloud.common.DHInterface.BaseFeature;
import io.dcloud.common.DHInterface.IWebview;
import io.dcloud.feature.internal.sdk.SDK;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes2.dex */
public class APSFeatureImpl extends BaseFeature {
    public static String CLEAR_NOTIFICATION = "__CLEAR_NOTIFICATION";
    public static String CLILK_NOTIFICATION = "__CLILK_NOTIFICATION";
    public static String CREATE_NOTIFICATION = "__CREATE_NOTIFICATION";
    public static final String F_CLEAR_NOTIFICATION = "__CLEAR_NOTIFICATION";
    public static final String F_CLILK_NOTIFICATION = "__CLILK_NOTIFICATION";
    public static final String F_CREATE_NOTIFICATION = "__CREATE_NOTIFICATION";
    public static final String F_REMOVE_NOTIFICATION = "__REMOVE_NOTIFICATION";
    public static String PRE = null;
    public static String REMOVE_NOTIFICATION = "__REMOVE_NOTIFICATION";
    private NotificationReceiver mNotificationReceiver;
    protected PushManager mPushManager;

    @Override // io.dcloud.common.DHInterface.BaseFeature
    public String execute(IWebview iWebview, String str, JSONArray jSONArray) {
        try {
            if (SDK.isUniMPSDK()) {
                return null;
            }
            return this.mPushManager.execute(iWebview, str, jSONArray, this);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // io.dcloud.common.DHInterface.BaseFeature, io.dcloud.common.DHInterface.IFeature
    public void init(AbsMgr absMgr, String str) {
        super.init(absMgr, str);
        Context context = absMgr.getContext();
        this.mPushManager = PushManager.getInstance(context);
        initNotification(context);
        registReceiver(context);
    }

    private void registReceiver(Context context) {
        if (isNeedDynamicsReceiver(context)) {
            this.mNotificationReceiver = new NotificationReceiver(this.mApplicationContext);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(CLEAR_NOTIFICATION);
            intentFilter.addAction(REMOVE_NOTIFICATION);
            intentFilter.addAction(CREATE_NOTIFICATION);
            LocalBroadcastManager.getInstance(this.mApplicationContext).registerReceiver(this.mNotificationReceiver, intentFilter);
        }
    }

    public static void initNotification(Context context) {
        if (PRE == null) {
            PRE = context.getPackageName();
        }
        if (CREATE_NOTIFICATION.startsWith(PRE)) {
            return;
        }
        CREATE_NOTIFICATION = PRE + Operators.DOT_STR + F_CREATE_NOTIFICATION;
        REMOVE_NOTIFICATION = PRE + Operators.DOT_STR + F_REMOVE_NOTIFICATION;
        CLEAR_NOTIFICATION = PRE + Operators.DOT_STR + F_CLEAR_NOTIFICATION;
        CLILK_NOTIFICATION = PRE + Operators.DOT_STR + F_CLILK_NOTIFICATION;
    }

    @Override // io.dcloud.common.DHInterface.BaseFeature, io.dcloud.common.DHInterface.IBoot
    public void onStart(Context context, Bundle bundle, String[] strArr) {
        ArrayList<BaseFeature.BaseModule> arrayListLoadModules;
        super.onStart(context, bundle, strArr);
        if (SDK.isUniMPSDK() || (arrayListLoadModules = loadModules()) == null || arrayListLoadModules.isEmpty()) {
            return;
        }
        Iterator<BaseFeature.BaseModule> it = arrayListLoadModules.iterator();
        while (it.hasNext()) {
            ((AbsPushService) it.next()).onStart(context, bundle, strArr);
        }
    }

    @Override // io.dcloud.common.DHInterface.BaseFeature
    public void onReceiver(Intent intent) {
        super.onReceiver(intent);
        ArrayList<BaseFeature.BaseModule> arrayListLoadModules = loadModules();
        if (arrayListLoadModules == null || arrayListLoadModules.isEmpty()) {
            return;
        }
        Iterator<BaseFeature.BaseModule> it = arrayListLoadModules.iterator();
        while (it.hasNext()) {
            ((AbsPushService) it.next()).onReceiver(intent);
        }
    }

    @Override // io.dcloud.common.DHInterface.BaseFeature, io.dcloud.common.DHInterface.IFeature
    public void dispose(String str) {
        try {
            if (this.mNotificationReceiver != null) {
                LocalBroadcastManager.getInstance(this.mApplicationContext).unregisterReceiver(this.mNotificationReceiver);
            }
            ArrayList<BaseFeature.BaseModule> arrayListLoadModules = loadModules();
            if (arrayListLoadModules == null || arrayListLoadModules.isEmpty()) {
                return;
            }
            Iterator<BaseFeature.BaseModule> it = arrayListLoadModules.iterator();
            while (it.hasNext()) {
                ((AbsPushService) it.next()).onStop();
            }
        } catch (IllegalArgumentException unused) {
        }
    }

    public static void addPushMessage(Context context, String str, PushMessage pushMessage) {
        PushManager.getInstance(context).addPushMessage(str, pushMessage);
    }

    public static boolean execScript(Context context, String str, String str2) {
        return PushManager.getInstance(context).execScript(str, str2);
    }

    public static void sendCreateNotificationBroadcast(Context context, String str, PushMessage pushMessage) {
        PushManager.getInstance(context).sendCreateNotificationBroadcast(context, str, pushMessage);
    }

    public static void addNeedExecReceiveMessage(Context context, PushMessage pushMessage) {
        PushManager.getInstance(context).addNeedExecReceiveMessage(pushMessage);
    }

    public static void addNeedExecMessage(Context context, PushMessage pushMessage) {
        PushManager.getInstance(context).addNeedExecMessage(pushMessage);
    }

    public static boolean isNeedDynamicsReceiver(Context context) {
        return Build.VERSION.SDK_INT >= 26;
    }
}
