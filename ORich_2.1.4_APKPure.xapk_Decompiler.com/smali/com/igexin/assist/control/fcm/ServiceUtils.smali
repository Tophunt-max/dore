###### Class com.igexin.assist.control.fcm.ServiceUtils (com.igexin.assist.control.fcm.ServiceUtils)
.class public Lcom/igexin/assist/control/fcm/ServiceUtils;
.super Ljava/lang/Object;


# static fields
.field public static final FCM_JOB_ID:I = 0x716e4310

.field public static final TAG:Ljava/lang/String; = "Assist_FCM"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startService(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_20

    :catchall_8
    move-exception v0

    instance-of v0, v0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_20

    const-string v0, "Assist_FCM"

    const-string v1, "startService in background, use job service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/igexin/assist/control/fcm/JobSender;->getInstance()Lcom/igexin/assist/control/fcm/JobSender;

    move-result-object v0

    const v1, 0x716e4310

    invoke-virtual {v0, p0, p1, v1}, Lcom/igexin/assist/control/fcm/JobSender;->runJob(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result p0

    return p0

    :cond_20
    :goto_20
    const/4 p0, 0x0

    return p0
.end method
