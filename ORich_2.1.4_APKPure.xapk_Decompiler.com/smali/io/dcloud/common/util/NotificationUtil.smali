###### Class io.dcloud.common.util.NotificationUtil (io.dcloud.common.util.NotificationUtil)
.class public Lio/dcloud/common/util/NotificationUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static isNotificationChannel:Z = false

.field static sChannelId:Ljava/lang/String; = "DC_LOCAL_NEWS"

.field static sGroupId:Ljava/lang/String; = "DC_LOCAL_GROUP"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelNotification(Landroid/content/Context;I)V
    .registers 3

    const-string v0, "notification"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public static createCustomNotification(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;)V
    .registers 12

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/NotificationUtil;->createNotificationChannel(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCustomNotification content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;)V

    .line 4
    sget v0, Lio/dcloud/PdrR;->DRAWABLE_ICON:I

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 7
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_2f

    .line 8
    new-instance v3, Landroid/app/Notification$Builder;

    sget-object v4, Lio/dcloud/common/util/NotificationUtil;->sChannelId:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_34

    .line 10
    :cond_2f
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 12
    :goto_34
    invoke-virtual {v3, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 13
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 14
    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 15
    invoke-virtual {v3, p2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 17
    sget p1, Lio/dcloud/PdrR;->LAYOUT_CUSTION_NOTIFICATION_DCLOUD:I

    .line 18
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v1, Lio/dcloud/common/adapter/util/MobilePhoneModel;->MEIZU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "layout"

    if-eqz v0, :cond_55

    const-string p1, "dcloud_custom_notification_transparent"

    .line 19
    invoke-static {p0, v1, p1}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_61

    .line 20
    :cond_55
    invoke-static {p0}, Lio/dcloud/common/util/NotificationUtil;->isMiuiRom(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_61

    const-string p1, "dcloud_custom_notification_mi"

    .line 21
    invoke-static {p0, v1, p1}, Lio/dcloud/PdrR;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 23
    :cond_61
    :goto_61
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 25
    sget p1, Lio/dcloud/PdrR;->ID_IMAGE_NOTIFICATION_DCLOUD:I

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 27
    sget p1, Lio/dcloud/PdrR;->ID_TITLE_NOTIFICATION_DCLOUD:I

    invoke-virtual {v0, p1, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 29
    sget p1, Lio/dcloud/PdrR;->ID_TEXT_NOTIFICATION:I

    invoke-virtual {v0, p1, p4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 31
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 32
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 34
    invoke-static {p0}, Lio/dcloud/common/util/NotificationUtil;->isMiuiRom(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_f2

    .line 35
    invoke-virtual {p1}, Ljava/text/SimpleDateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object p1

    const/16 p3, 0xb

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 p3, 0x1

    if-ltz p1, :cond_a5

    if-ge p1, p3, :cond_a5

    .line 37
    sget p1, Lio/dcloud/base/R$string;->dcloud_nf_midnight:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_f4

    :cond_a5
    const/4 p4, 0x6

    if-lt p1, p3, :cond_b1

    if-ge p1, p4, :cond_b1

    .line 39
    sget p1, Lio/dcloud/base/R$string;->dcloud_nf_morning:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_f4

    :cond_b1
    const/16 p3, 0xc

    if-lt p1, p4, :cond_be

    if-ge p1, p3, :cond_be

    .line 41
    sget p1, Lio/dcloud/base/R$string;->dcloud_nf_forenoon:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_f4

    :cond_be
    const/16 p4, 0xd

    if-lt p1, p3, :cond_cb

    if-ge p1, p4, :cond_cb

    .line 43
    sget p1, Lio/dcloud/base/R$string;->dcloud_nf_noon:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_f4

    :cond_cb
    const/16 p3, 0x12

    if-lt p1, p4, :cond_d8

    if-ge p1, p3, :cond_d8

    .line 45
    sget p1, Lio/dcloud/base/R$string;->dcloud_nf_afternoon:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_f4

    :cond_d8
    const/16 p4, 0x13

    if-lt p1, p3, :cond_e5

    if-ge p1, p4, :cond_e5

    .line 47
    sget p1, Lio/dcloud/base/R$string;->dcloud_nf_evening:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_f4

    :cond_e5
    if-lt p1, p4, :cond_f2

    const/16 p3, 0x18

    if-ge p1, p3, :cond_f2

    .line 49
    sget p1, Lio/dcloud/base/R$string;->dcloud_nf_night:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_f4

    :cond_f2
    const-string p1, ""

    .line 53
    :goto_f4
    sget p3, Lio/dcloud/PdrR;->ID_TIME_NOTIFICATION_DCLOUD:I

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-virtual {v0, p3, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 60
    invoke-virtual {v3, p6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 62
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 63
    iget p2, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 p2, p2, 0x10

    iput p2, p1, Landroid/app/Notification;->flags:I

    const-string p2, "notification"

    .line 67
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 68
    invoke-virtual {p0, p5, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private static createNotificationChannel(Landroid/content/Context;)V
    .registers 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_34

    sget-boolean v0, Lio/dcloud/common/util/NotificationUtil;->isNotificationChannel:Z

    if-nez v0, :cond_34

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lio/dcloud/common/util/NotificationUtil;->isNotificationChannel:Z

    const-string v1, "notification"

    .line 3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 4
    new-instance v1, Landroid/app/NotificationChannelGroup;

    sget-object v2, Lio/dcloud/common/util/NotificationUtil;->sGroupId:Ljava/lang/String;

    const-string v3, "local_badge"

    invoke-direct {v1, v2, v3}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    .line 5
    new-instance v1, Landroid/app/NotificationChannel;

    sget-object v2, Lio/dcloud/common/util/NotificationUtil;->sChannelId:Ljava/lang/String;

    const/4 v3, 0x3

    const-string v4, "Information notice"

    invoke-direct {v1, v2, v4, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 6
    invoke-virtual {v1, v0}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 7
    invoke-virtual {v1, v0}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 8
    invoke-virtual {p0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_34
    return-void
.end method

.method private static isMiuiRom(Landroid/content/Context;)Z
    .registers 2

    const-string p0, "http.agent"

    .line 1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "miui"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public static showNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;I)V
    .registers 16

    .line 1
    invoke-static {p0}, Lio/dcloud/common/util/NotificationUtil;->createNotificationChannel(Landroid/content/Context;)V

    const-string v0, "notification"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "icon"

    const/16 v3, 0x10

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-lt v1, v3, :cond_5a

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_21

    .line 8
    new-instance v1, Landroid/app/Notification$Builder;

    sget-object v3, Lio/dcloud/common/util/NotificationUtil;->sChannelId:Ljava/lang/String;

    invoke-direct {v1, p0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_26

    .line 10
    :cond_21
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 13
    :goto_26
    :try_start_26
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 14
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-class v4, Landroid/R$drawable;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v2, v4, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 15
    invoke-virtual {v1, p0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_43} :catch_43

    .line 18
    :catch_43
    invoke-virtual {v1, p4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 19
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 20
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 21
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 22
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 23
    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 24
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    goto :goto_b3

    .line 26
    :cond_5a
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 28
    :try_start_5f
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 29
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-class v7, Landroid/R$drawable;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v2, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 30
    iput v2, v1, Landroid/app/Notification;->icon:I
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_7b} :catch_7b

    .line 34
    :catch_7b
    iput-object p4, v1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 36
    iput v5, v1, Landroid/app/Notification;->defaults:I

    .line 37
    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    const-string v2, "setLatestEventInfo"

    const/4 v3, 0x4

    :try_start_88
    new-array v6, v3, [Ljava/lang/Class;

    .line 41
    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, Ljava/lang/CharSequence;

    aput-object v7, v6, v5

    const-class v7, Ljava/lang/CharSequence;

    aput-object v7, v6, v4

    const-class v7, Landroid/app/PendingIntent;

    const/4 v9, 0x3

    aput-object v7, v6, v9

    invoke-virtual {p4, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p4

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v8

    aput-object p1, v2, v5

    aput-object p2, v2, v4

    aput-object p3, v2, v9

    .line 42
    invoke-virtual {p4, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_ad} :catch_ae

    goto :goto_b2

    :catch_ae
    move-exception p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_b2
    move-object p0, v1

    .line 48
    :goto_b3
    :try_start_b3
    invoke-virtual {v0, p5, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_b6} :catch_b7

    goto :goto_bb

    :catch_b7
    move-exception p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_bb
    return-void
.end method

.method public static showNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;IIIZ)V
    .registers 16

    .line 51
    invoke-static {p0}, Lio/dcloud/common/util/NotificationUtil;->createNotificationChannel(Landroid/content/Context;)V

    const-string v0, "notification"

    .line 52
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 57
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_14

    const/high16 v2, 0x44000000    # 512.0f

    goto :goto_16

    :cond_14
    const/high16 v2, 0x40000000    # 2.0f

    :goto_16
    if-eqz p7, :cond_1d

    .line 61
    invoke-static {p0, p6, p3, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    goto :goto_21

    .line 63
    :cond_1d
    invoke-static {p0, p6, p3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    :goto_21
    const/16 p7, 0x10

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-lt v1, p7, :cond_7a

    const/16 p7, 0x1a

    if-lt v1, p7, :cond_33

    .line 68
    new-instance p7, Landroid/app/Notification$Builder;

    sget-object v1, Lio/dcloud/common/util/NotificationUtil;->sChannelId:Ljava/lang/String;

    invoke-direct {p7, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_38

    .line 70
    :cond_33
    new-instance p7, Landroid/app/Notification$Builder;

    invoke-direct {p7, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_38
    if-eq v2, p4, :cond_3e

    .line 74
    invoke-virtual {p7, p4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_47

    .line 76
    :cond_3e
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    iget p4, p4, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p7, p4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    :goto_47
    if-eq v2, p5, :cond_55

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p7, p0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto :goto_66

    .line 81
    :cond_55
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {p4, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p7, p0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 84
    :goto_66
    invoke-virtual {p7, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 85
    invoke-virtual {p7, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 87
    invoke-virtual {p7, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 88
    invoke-virtual {p7, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 89
    invoke-virtual {p7, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 90
    invoke-virtual {p7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    goto :goto_e8

    .line 92
    :cond_7a
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v4, v1, Landroid/app/Notification;->icon:I

    if-eq v2, p4, :cond_8c

    .line 95
    iput p4, v1, Landroid/app/Notification;->icon:I

    goto :goto_94

    .line 97
    :cond_8c
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    iget p4, p4, Landroid/content/pm/ApplicationInfo;->icon:I

    iput p4, v1, Landroid/app/Notification;->icon:I

    :goto_94
    if-eq v2, p5, :cond_a1

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-static {p4, p5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p4

    iput-object p4, v1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    goto :goto_b1

    .line 102
    :cond_a1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p5

    iget p5, p5, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {p4, p5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p4

    iput-object p4, v1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 104
    :goto_b1
    iput v3, v1, Landroid/app/Notification;->defaults:I

    .line 105
    iput p7, v1, Landroid/app/Notification;->flags:I

    .line 106
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    const-string p5, "setLatestEventInfo"

    const/4 p7, 0x4

    :try_start_bc
    new-array v2, p7, [Ljava/lang/Class;

    .line 108
    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-class v4, Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    const-class v4, Ljava/lang/CharSequence;

    const/4 v6, 0x2

    aput-object v4, v2, v6

    const-class v4, Landroid/app/PendingIntent;

    const/4 v7, 0x3

    aput-object v4, v2, v7

    invoke-virtual {p4, p5, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p4

    new-array p5, p7, [Ljava/lang/Object;

    aput-object p0, p5, v5

    aput-object p1, p5, v3

    aput-object p2, p5, v6

    aput-object p3, p5, v7

    .line 109
    invoke-virtual {p4, v1, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_e2} :catch_e3

    goto :goto_e7

    :catch_e3
    move-exception p0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e7
    move-object p0, v1

    .line 115
    :goto_e8
    :try_start_e8
    invoke-virtual {v0, p6, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_eb} :catch_ec

    goto :goto_f0

    :catch_ec
    move-exception p0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_f0
    return-void
.end method
