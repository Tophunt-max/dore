package io.dcloud.feature.aps;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.igexin.assist.sdk.AssistPushConsts;
import com.taobao.weex.common.Constants;
import io.dcloud.RInformation;
import io.dcloud.application.DCLoudApplicationImpl;
import io.dcloud.common.adapter.io.DHFile;
import io.dcloud.common.adapter.util.Logger;
import io.dcloud.common.constant.AbsoluteConst;
import io.dcloud.common.constant.IntentConst;
import io.dcloud.feature.push.R;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class NotificationReceiver extends BroadcastReceiver {
    private static final String LOCAL_PUSH_CHANNEL_ID = "DcloudChannelID";
    private static final String LOCAL_PUSH_GROUP_ID = "DcloudGroupID";

    public NotificationReceiver() {
    }

    public NotificationReceiver(Context context) {
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            notificationManager.createNotificationChannelGroup(new NotificationChannelGroup(LOCAL_PUSH_GROUP_ID, DCLoudApplicationImpl.self().getContext().getResources().getString(R.string.dcloud_feature_aps_notification_group)));
            NotificationChannel notificationChannel = new NotificationChannel(LOCAL_PUSH_CHANNEL_ID, DCLoudApplicationImpl.self().getContext().getResources().getString(R.string.dcloud_feature_aps_notification_channel), 3);
            notificationChannel.enableLights(true);
            notificationChannel.setShowBadge(true);
            notificationManager.createNotificationChannel(notificationChannel);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        sOnReceiver(context, intent);
    }

    public static void sOnReceiver(Context context, Intent intent) {
        Notification notificationBuild;
        Notification.Builder builder;
        Bitmap bitmapDecodeResource;
        APSFeatureImpl.initNotification(context);
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        String action = intent.getAction();
        if (APSFeatureImpl.CREATE_NOTIFICATION.equals(action)) {
            String stringExtra = intent.getStringExtra(AbsoluteConst.JSON_KEY_TITLE);
            String stringExtra2 = intent.getStringExtra("content");
            int intExtra = intent.getIntExtra("nId", 0);
            long longExtra = intent.getLongExtra("when", 0L);
            intent.getStringExtra("appid");
            String stringExtra3 = intent.getStringExtra(AbsoluteConst.JSON_KEY_ICON);
            String stringExtra4 = intent.getStringExtra("sound");
            Intent intent2 = new Intent(APSFeatureImpl.CLILK_NOTIFICATION);
            intent2.setComponent(new ComponentName(context.getPackageName(), "io.dcloud.feature.aps.ApsActionService"));
            intent2.putExtras(intent.getExtras());
            PendingIntent service = PendingIntent.getService(context, intExtra, intent2, Build.VERSION.SDK_INT >= 23 ? 1140850688 : 1073741824);
            if (Build.VERSION.SDK_INT >= 16) {
                if (Build.VERSION.SDK_INT >= 26) {
                    builder = new Notification.Builder(context, LOCAL_PUSH_CHANNEL_ID);
                } else {
                    builder = new Notification.Builder(context);
                }
                Bitmap bitmapDecodeFile = null;
                try {
                    if (!TextUtils.isEmpty(stringExtra3) && DHFile.isExist(stringExtra3)) {
                        bitmapDecodeFile = BitmapFactory.decodeFile(stringExtra3);
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                }
                if (bitmapDecodeFile != null) {
                    builder.setLargeIcon(bitmapDecodeFile);
                }
                int i = RInformation.getInt(context, "drawable", "push_small");
                if (i <= 0) {
                    builder.setSmallIcon(context.getApplicationInfo().icon);
                } else {
                    builder.setSmallIcon(i);
                }
                int i2 = RInformation.getInt(context, "drawable", "push");
                if (bitmapDecodeFile == null) {
                    if (i2 <= 0) {
                        bitmapDecodeResource = BitmapFactory.decodeResource(context.getResources(), context.getApplicationInfo().icon);
                    } else {
                        bitmapDecodeResource = BitmapFactory.decodeResource(context.getResources(), i2);
                    }
                    if (bitmapDecodeResource != null) {
                        builder.setLargeIcon(bitmapDecodeResource);
                    }
                }
                builder.setContentTitle(stringExtra);
                builder.setContentText(stringExtra2);
                builder.setWhen(longExtra);
                if ("system".equals(stringExtra4)) {
                    builder.setDefaults(1);
                }
                builder.setAutoCancel(true);
                builder.setContentIntent(service);
                notificationBuild = builder.build();
            } else {
                Notification notification = new Notification();
                notification.icon = context.getApplicationInfo().icon;
                if ("system".equals(stringExtra4)) {
                    notification.defaults = 1;
                }
                notification.flags = 16;
                notification.when = longExtra;
                try {
                    notification.getClass().getDeclaredMethod("setLatestEventInfo", Context.class, CharSequence.class, CharSequence.class, PendingIntent.class).invoke(notification, context, stringExtra, stringExtra2, service);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                notificationBuild = notification;
            }
            try {
                notificationManager.notify(intExtra, notificationBuild);
                return;
            } catch (Exception e3) {
                e3.printStackTrace();
                return;
            }
        }
        if (APSFeatureImpl.REMOVE_NOTIFICATION.equals(action)) {
            notificationManager.cancel(intent.getIntExtra("id", 0));
            return;
        }
        if (APSFeatureImpl.CLEAR_NOTIFICATION.equals(action)) {
            notificationManager.cancelAll();
            PushManager.getInstance(context).mAppsmMessages.remove(intent.getStringExtra("_appId"));
            return;
        }
        if (APSFeatureImpl.CLILK_NOTIFICATION.equals(action)) {
            clickHandle(context, intent, notificationManager);
            Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
            launchIntentForPackage.putExtra("appid", intent.getStringExtra("appid"));
            boolean booleanExtra = intent.getBooleanExtra(IntentConst.IS_START_FIRST_WEB, false);
            if (booleanExtra) {
                launchIntentForPackage.putExtra(IntentConst.IS_START_FIRST_WEB, booleanExtra);
                launchIntentForPackage.putExtra(IntentConst.FIRST_WEB_URL, intent.getStringExtra(IntentConst.FIRST_WEB_URL));
            }
            launchIntentForPackage.putExtra(IntentConst.START_FROM, 3);
            launchIntentForPackage.putExtra(IntentConst.PUSH_PAYLOAD, intent.getStringExtra(AssistPushConsts.MSG_TYPE_PAYLOAD));
            launchIntentForPackage.setFlags(335544320);
            context.startActivity(launchIntentForPackage);
        }
    }

    public static void clickHandle(Context context, Intent intent, NotificationManager notificationManager) {
        PushManager pushManager = PushManager.getInstance(context);
        Bundle extras = intent.getExtras();
        String string = extras.getString("appid");
        String string2 = extras.getString("uuid");
        boolean z = false;
        if (notificationManager != null) {
            notificationManager.cancel(intent.getIntExtra("id", 0));
        }
        PushMessage pushMessageFindPushMessage = pushManager.findPushMessage(string, string2);
        if (pushMessageFindPushMessage != null) {
            if (!TextUtils.isEmpty(pushMessageFindPushMessage.mPayload)) {
                try {
                    String strOptString = new JSONObject(pushMessageFindPushMessage.mPayload).optString("__adurl");
                    if (!TextUtils.isEmpty(strOptString)) {
                        intent.putExtra(IntentConst.IS_START_FIRST_WEB, true);
                        intent.putExtra(IntentConst.FIRST_WEB_URL, strOptString);
                        z = true;
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
            if (!z && !pushManager.execScript(Constants.Event.CLICK, pushMessageFindPushMessage.toJSON())) {
                pushManager.addNeedExecMessage(pushMessageFindPushMessage);
                Logger.d("addNeedExecMessage:");
            }
            pushManager.removePushMessage(string, pushMessageFindPushMessage);
        } else {
            PushMessage pushMessage = new PushMessage(extras);
            if (!TextUtils.isEmpty(pushMessage.mPayload)) {
                try {
                    String strOptString2 = new JSONObject(pushMessage.mPayload).optString("__adurl");
                    if (!TextUtils.isEmpty(strOptString2)) {
                        intent.putExtra(IntentConst.IS_START_FIRST_WEB, true);
                        intent.putExtra(IntentConst.FIRST_WEB_URL, strOptString2);
                    }
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
            pushManager.addNeedExecMessage(pushMessage);
        }
        extras.clear();
    }
}
