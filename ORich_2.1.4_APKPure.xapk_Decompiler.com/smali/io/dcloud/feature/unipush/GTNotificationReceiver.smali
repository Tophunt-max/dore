###### Class io.dcloud.feature.unipush.GTNotificationReceiver (io.dcloud.feature.unipush.GTNotificationReceiver)
.class public Lio/dcloud/feature/unipush/GTNotificationReceiver;
.super Lio/dcloud/feature/aps/NotificationReceiver;
.source "GTNotificationReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lio/dcloud/feature/aps/NotificationReceiver;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 16
    invoke-direct {p0, p1}, Lio/dcloud/feature/aps/NotificationReceiver;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 23
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string p2, "ACTION_BOOT_COMPLETED:\u5f00\u673a\u521d\u59cb\u5316."

    .line 26
    invoke-static {p2}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/igexin/sdk/PushManager;->getInstance()Lcom/igexin/sdk/PushManager;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/igexin/sdk/PushManager;->initialize(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    invoke-static {}, Lcom/igexin/sdk/PushManager;->getInstance()Lcom/igexin/sdk/PushManager;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lio/dcloud/feature/unipush/GTNormalIntentService;

    invoke-virtual {p2, p1, v0}, Lcom/igexin/sdk/PushManager;->registerPushIntentService(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_35

    .line 30
    :cond_2d
    invoke-super {p0, p1, p2}, Lio/dcloud/feature/aps/NotificationReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_35
    :goto_35
    return-void
.end method
