###### Class io.dcloud.feature.aps.ApsActionService (io.dcloud.feature.aps.ApsActionService)
.class public Lio/dcloud/feature/aps/ApsActionService;
.super Landroid/app/Service;
.source "ApsActionService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .registers 1

    .line 23
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    if-eqz p1, :cond_9

    .line 16
    invoke-virtual {p0}, Lio/dcloud/feature/aps/ApsActionService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lio/dcloud/feature/aps/NotificationReceiver;->sOnReceiver(Landroid/content/Context;Landroid/content/Intent;)V

    .line 18
    :cond_9
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
