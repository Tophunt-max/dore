###### Class io.dcloud.feature.aps.NotificationReceiver (io.dcloud.feature.aps.NotificationReceiver)
.class public Lio/dcloud/feature/aps/NotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationReceiver.java"


# static fields
.field private static final LOCAL_PUSH_CHANNEL_ID:Ljava/lang/String; = "DcloudChannelID"

.field private static final LOCAL_PUSH_GROUP_ID:Ljava/lang/String; = "DcloudGroupID"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 56
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_51

    const-string v0, "notification"

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 59
    new-instance v0, Landroid/app/NotificationChannelGroup;

    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/dcloud/feature/push/R$string;->dcloud_feature_aps_notification_group:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DcloudGroupID"

    invoke-direct {v0, v2, v1}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    .line 61
    new-instance v0, Landroid/app/NotificationChannel;

    .line 62
    invoke-static {}, Lio/dcloud/application/DCLoudApplicationImpl;->self()Lio/dcloud/application/DCLoudApplicationImpl;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/application/DCLoudApplicationImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lio/dcloud/feature/push/R$string;->dcloud_feature_aps_notification_channel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "DcloudChannelID"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x1

    .line 63
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 64
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 65
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_51
    return-void
.end method

.method public static clickHandle(Landroid/content/Context;Landroid/content/Intent;Landroid/app/NotificationManager;)V
    .registers 12

    .line 205
    invoke-static {p0}, Lio/dcloud/feature/aps/PushManager;->getInstance(Landroid/content/Context;)Lio/dcloud/feature/aps/PushManager;

    move-result-object p0

    .line 206
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "appid"

    .line 207
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "uuid"

    .line 208
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p2, :cond_20

    const-string v4, "id"

    .line 210
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 211
    invoke-virtual {p2, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 213
    :cond_20
    invoke-virtual {p0, v1, v2}, Lio/dcloud/feature/aps/PushManager;->findPushMessage(Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/aps/PushMessage;

    move-result-object p2

    const-string v2, "__first_web_url__"

    const-string v4, "__start_first_web__"

    const-string v5, "__adurl"

    const/4 v6, 0x1

    if-eqz p2, :cond_6c

    .line 216
    iget-object v7, p2, Lio/dcloud/feature/aps/PushMessage;->mPayload:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_52

    .line 218
    :try_start_35
    new-instance v7, Lorg/json/JSONObject;

    iget-object v8, p2, Lio/dcloud/feature/aps/PushMessage;->mPayload:Ljava/lang/String;

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 220
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_52

    .line 221
    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 222
    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4c
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_4c} :catch_4e

    const/4 v3, 0x1

    goto :goto_52

    :catch_4e
    move-exception p1

    .line 227
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_52
    :goto_52
    if-nez v3, :cond_68

    .line 230
    invoke-virtual {p2}, Lio/dcloud/feature/aps/PushMessage;->toJSON()Ljava/lang/String;

    move-result-object p1

    const-string v2, "click"

    invoke-virtual {p0, v2, p1}, Lio/dcloud/feature/aps/PushManager;->execScript(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_68

    .line 231
    invoke-virtual {p0, p2}, Lio/dcloud/feature/aps/PushManager;->addNeedExecMessage(Lio/dcloud/feature/aps/PushMessage;)V

    const-string p1, "addNeedExecMessage:"

    .line 232
    invoke-static {p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 235
    :cond_68
    invoke-virtual {p0, v1, p2}, Lio/dcloud/feature/aps/PushManager;->removePushMessage(Ljava/lang/String;Lio/dcloud/feature/aps/PushMessage;)V

    goto :goto_98

    .line 237
    :cond_6c
    new-instance p2, Lio/dcloud/feature/aps/PushMessage;

    invoke-direct {p2, v0}, Lio/dcloud/feature/aps/PushMessage;-><init>(Landroid/os/Bundle;)V

    .line 238
    iget-object v1, p2, Lio/dcloud/feature/aps/PushMessage;->mPayload:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_95

    .line 240
    :try_start_79
    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p2, Lio/dcloud/feature/aps/PushMessage;->mPayload:Ljava/lang/String;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_95

    .line 243
    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 244
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_90
    .catch Lorg/json/JSONException; {:try_start_79 .. :try_end_90} :catch_91

    goto :goto_95

    :catch_91
    move-exception p1

    .line 248
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 251
    :cond_95
    :goto_95
    invoke-virtual {p0, p2}, Lio/dcloud/feature/aps/PushManager;->addNeedExecMessage(Lio/dcloud/feature/aps/PushMessage;)V

    .line 254
    :goto_98
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    return-void
.end method

.method public static sOnReceiver(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16

    .line 76
    invoke-static {p0}, Lio/dcloud/feature/aps/APSFeatureImpl;->initNotification(Landroid/content/Context;)V

    const-string v0, "notification"

    .line 77
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 78
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 79
    sget-object v2, Lio/dcloud/feature/aps/APSFeatureImpl;->CREATE_NOTIFICATION:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x3

    const-string v4, "appid"

    const/4 v5, 0x0

    if-eqz v2, :cond_155

    const-string v1, "title"

    .line 80
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    .line 81
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "nId"

    .line 82
    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-wide/16 v7, 0x0

    const-string v9, "when"

    .line 83
    invoke-virtual {p1, v9, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 84
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v4, "icon"

    .line 85
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "sound"

    .line 86
    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 88
    new-instance v10, Landroid/content/Intent;

    sget-object v11, Lio/dcloud/feature/aps/APSFeatureImpl;->CLILK_NOTIFICATION:Ljava/lang/String;

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    new-instance v11, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "io.dcloud.feature.aps.ApsActionService"

    invoke-direct {v11, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v10, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p1, 0x40000000    # 2.0f

    .line 97
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x17

    if-lt v11, v12, :cond_6a

    const/high16 p1, 0x44000000    # 512.0f

    .line 100
    :cond_6a
    invoke-static {p0, v6, v10, p1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 102
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v11, "system"

    const/16 v12, 0x10

    const/4 v13, 0x1

    if-lt v10, v12, :cond_100

    .line 104
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v3, v5, :cond_85

    .line 105
    new-instance v3, Landroid/app/Notification$Builder;

    const-string v5, "DcloudChannelID"

    invoke-direct {v3, p0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_8a

    .line 107
    :cond_85
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_8a
    const/4 v5, 0x0

    .line 111
    :try_start_8b
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a1

    invoke-static {v4}, Lio/dcloud/common/adapter/io/DHFile;->isExist(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a1

    .line 112
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_9b} :catch_9d

    move-object v5, v4

    goto :goto_a1

    :catch_9d
    move-exception v4

    .line 115
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_a1
    :goto_a1
    if-eqz v5, :cond_a6

    .line 118
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    :cond_a6
    const-string v4, "drawable"

    const-string v10, "push_small"

    .line 120
    invoke-static {p0, v4, v10}, Lio/dcloud/RInformation;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-gtz v10, :cond_ba

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v3, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_bd

    .line 124
    :cond_ba
    invoke-virtual {v3, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    :goto_bd
    const-string v10, "push"

    .line 126
    invoke-static {p0, v4, v10}, Lio/dcloud/RInformation;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v5, :cond_e3

    if-gtz v4, :cond_d6

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v4, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_de

    .line 132
    :cond_d6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_de
    if-eqz p0, :cond_e3

    .line 135
    invoke-virtual {v3, p0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 137
    :cond_e3
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 138
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 139
    invoke-virtual {v3, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 141
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f5

    .line 142
    invoke-virtual {v3, v13}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 144
    :cond_f5
    invoke-virtual {v3, v13}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 145
    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 146
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    goto :goto_14a

    .line 148
    :cond_100
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v10, v4, Landroid/app/Notification;->icon:I

    .line 151
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_115

    .line 152
    iput v13, v4, Landroid/app/Notification;->defaults:I

    .line 154
    :cond_115
    iput v12, v4, Landroid/app/Notification;->flags:I

    .line 155
    iput-wide v7, v4, Landroid/app/Notification;->when:J

    .line 156
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    :try_start_11d
    const-string v8, "setLatestEventInfo"

    const/4 v9, 0x4

    new-array v10, v9, [Ljava/lang/Class;

    .line 158
    const-class v11, Landroid/content/Context;

    aput-object v11, v10, v5

    const-class v11, Ljava/lang/CharSequence;

    aput-object v11, v10, v13

    const-class v11, Ljava/lang/CharSequence;

    const/4 v12, 0x2

    aput-object v11, v10, v12

    const-class v11, Landroid/app/PendingIntent;

    aput-object v11, v10, v3

    invoke-virtual {v7, v8, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    aput-object p0, v8, v5

    aput-object v1, v8, v13

    aput-object v2, v8, v12

    aput-object p1, v8, v3

    .line 159
    invoke-virtual {v7, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_144} :catch_145

    goto :goto_149

    :catch_145
    move-exception p0

    .line 161
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_149
    move-object p0, v4

    .line 165
    :goto_14a
    :try_start_14a
    invoke-virtual {v0, v6, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_14d} :catch_14f

    goto/16 :goto_1cc

    :catch_14f
    move-exception p0

    .line 167
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1cc

    .line 169
    :cond_155
    sget-object v2, Lio/dcloud/feature/aps/APSFeatureImpl;->REMOVE_NOTIFICATION:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_167

    const-string p0, "id"

    .line 170
    invoke-virtual {p1, p0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 171
    invoke-virtual {v0, p0}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1cc

    .line 172
    :cond_167
    sget-object v2, Lio/dcloud/feature/aps/APSFeatureImpl;->CLEAR_NOTIFICATION:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_182

    .line 173
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    const-string v0, "_appId"

    .line 174
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 175
    invoke-static {p0}, Lio/dcloud/feature/aps/PushManager;->getInstance(Landroid/content/Context;)Lio/dcloud/feature/aps/PushManager;

    move-result-object p0

    iget-object p0, p0, Lio/dcloud/feature/aps/PushManager;->mAppsmMessages:Ljava/util/HashMap;

    .line 176
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1cc

    .line 177
    :cond_182
    sget-object v2, Lio/dcloud/feature/aps/APSFeatureImpl;->CLILK_NOTIFICATION:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1cc

    .line 178
    invoke-static {p0, p1, v0}, Lio/dcloud/feature/aps/NotificationReceiver;->clickHandle(Landroid/content/Context;Landroid/content/Intent;Landroid/app/NotificationManager;)V

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 181
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 183
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "__start_first_web__"

    .line 186
    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1b4

    .line 188
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "__first_web_url__"

    .line 189
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1b4
    const-string v1, "__start_from__"

    .line 191
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "payload"

    .line 192
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "__payload__"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x14000000

    .line 193
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 194
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1cc
    :goto_1cc
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 71
    invoke-static {p1, p2}, Lio/dcloud/feature/aps/NotificationReceiver;->sOnReceiver(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
