###### Class com.igexin.sdk.GTIntentService (com.igexin.sdk.GTIntentService)
.class public abstract Lcom/igexin/sdk/GTIntentService;
.super Landroid/app/Service;


# static fields
.field public static final TAG:Ljava/lang/String; = "GTIntentService"

.field public static final WAIT_TIME:J = 0x7530L


# instance fields
.field private mService:Landroid/app/Service;

.field private volatile mServiceHandler:Lcom/igexin/sdk/c;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private messageQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/igexin/sdk/GTIntentService;)Lcom/igexin/sdk/c;
    .registers 1

    iget-object p0, p0, Lcom/igexin/sdk/GTIntentService;->mServiceHandler:Lcom/igexin/sdk/c;

    return-object p0
.end method

.method private processOnHandleIntent(Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_7c

    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7c

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-nez v2, :cond_17

    goto :goto_7c

    :cond_17
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x2711

    if-eq v1, v2, :cond_71

    const/16 v2, 0x2712

    if-eq v1, v2, :cond_67

    const/16 v2, 0x2717

    if-eq v1, v2, :cond_5d

    const/16 v2, 0x2718

    if-eq v1, v2, :cond_53

    packed-switch v1, :pswitch_data_7e

    goto :goto_7c

    :pswitch_2f
    const-string v0, "notification_clicked"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/igexin/sdk/message/GTNotificationMessage;

    invoke-virtual {p0, p0, p1}, Lcom/igexin/sdk/GTIntentService;->onNotificationMessageClicked(Landroid/content/Context;Lcom/igexin/sdk/message/GTNotificationMessage;)V

    goto :goto_7c

    :pswitch_3b
    const-string v0, "notification_arrived"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/igexin/sdk/message/GTNotificationMessage;

    invoke-virtual {p0, p0, p1}, Lcom/igexin/sdk/GTIntentService;->onNotificationMessageArrived(Landroid/content/Context;Lcom/igexin/sdk/message/GTNotificationMessage;)V

    goto :goto_7c

    :pswitch_47
    const-string v0, "cmd_msg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/igexin/sdk/message/GTCmdMessage;

    invoke-virtual {p0, p0, p1}, Lcom/igexin/sdk/GTIntentService;->onReceiveCommandResult(Landroid/content/Context;Lcom/igexin/sdk/message/GTCmdMessage;)V

    goto :goto_7c

    :cond_53
    const-string p1, "pid"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p0, p1}, Lcom/igexin/sdk/GTIntentService;->onReceiveServicePid(Landroid/content/Context;I)V

    goto :goto_7c

    :cond_5d
    const-string p1, "onlineState"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p0, p1}, Lcom/igexin/sdk/GTIntentService;->onReceiveOnlineState(Landroid/content/Context;Z)V

    goto :goto_7c

    :cond_67
    const-string p1, "clientid"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p0, p1}, Lcom/igexin/sdk/GTIntentService;->onReceiveClientId(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_7c

    :cond_71
    const-string v0, "transmit_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/igexin/sdk/message/GTTransmitMessage;

    invoke-virtual {p0, p0, p1}, Lcom/igexin/sdk/GTIntentService;->onReceiveMessageData(Landroid/content/Context;Lcom/igexin/sdk/message/GTTransmitMessage;)V

    :cond_7c
    :goto_7c
    return-void

    nop

    :pswitch_data_7e
    .packed-switch 0x271a
        :pswitch_47
        :pswitch_3b
        :pswitch_2f
    .end packed-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Lcom/igexin/sdk/GTIntentService;->mService:Landroid/app/Service;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0, p1}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    :goto_a
    return-object p1
.end method

.method public onCreate()V
    .registers 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IntentService[GTJob]"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/sdk/GTIntentService;->mServiceLooper:Landroid/os/Looper;

    new-instance v0, Lcom/igexin/sdk/c;

    iget-object v1, p0, Lcom/igexin/sdk/GTIntentService;->mServiceLooper:Landroid/os/Looper;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/igexin/sdk/c;-><init>(Lcom/igexin/sdk/GTIntentService;Landroid/os/Looper;Lcom/igexin/sdk/a;)V

    iput-object v0, p0, Lcom/igexin/sdk/GTIntentService;->mServiceHandler:Lcom/igexin/sdk/c;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2a

    new-instance v0, Lcom/igexin/sdk/GTIntentService$JobIntentService;

    invoke-direct {v0, p0, p0}, Lcom/igexin/sdk/GTIntentService$JobIntentService;-><init>(Lcom/igexin/sdk/GTIntentService;Landroid/app/Service;)V

    iput-object v0, p0, Lcom/igexin/sdk/GTIntentService;->mService:Landroid/app/Service;

    :cond_2a
    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/igexin/sdk/GTIntentService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_3
    invoke-direct {p0, p1}, Lcom/igexin/sdk/GTIntentService;->processOnHandleIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/igexin/sdk/GTIntentService;->messageQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_30

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/igexin/sdk/GTIntentService;->messageQueue:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v0, 0x7530

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_17

    goto :goto_30

    :catchall_17
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GTIntentService|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_30
    :goto_30
    return-void
.end method

.method public abstract onNotificationMessageArrived(Landroid/content/Context;Lcom/igexin/sdk/message/GTNotificationMessage;)V
.end method

.method public abstract onNotificationMessageClicked(Landroid/content/Context;Lcom/igexin/sdk/message/GTNotificationMessage;)V
.end method

.method public abstract onReceiveClientId(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract onReceiveCommandResult(Landroid/content/Context;Lcom/igexin/sdk/message/GTCmdMessage;)V
.end method

.method public abstract onReceiveMessageData(Landroid/content/Context;Lcom/igexin/sdk/message/GTTransmitMessage;)V
.end method

.method public abstract onReceiveOnlineState(Landroid/content/Context;Z)V
.end method

.method public abstract onReceiveServicePid(Landroid/content/Context;I)V
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    :try_start_0
    iget-object p2, p0, Lcom/igexin/sdk/GTIntentService;->messageQueue:Ljava/util/concurrent/BlockingQueue;

    if-nez p2, :cond_b

    new-instance p2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p2, p0, Lcom/igexin/sdk/GTIntentService;->messageQueue:Ljava/util/concurrent/BlockingQueue;

    :cond_b
    iget-object p2, p0, Lcom/igexin/sdk/GTIntentService;->messageQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p2, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/igexin/sdk/GTIntentService;->mServiceHandler:Lcom/igexin/sdk/c;

    invoke-virtual {p2}, Lcom/igexin/sdk/c;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    iput p3, p2, Landroid/os/Message;->arg1:I

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/igexin/sdk/GTIntentService;->mServiceHandler:Lcom/igexin/sdk/c;

    invoke-virtual {p1, p2}, Lcom/igexin/sdk/c;->sendMessage(Landroid/os/Message;)Z
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    goto :goto_39

    :catchall_20
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "GTIntentService|"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :goto_39
    const/4 p1, 0x2

    return p1
.end method

###### Class com.igexin.sdk.GTIntentService.JobIntentService (com.igexin.sdk.GTIntentService$JobIntentService)
.class public Lcom/igexin/sdk/GTIntentService$JobIntentService;
.super Landroid/app/job/JobService;


# instance fields
.field final synthetic a:Lcom/igexin/sdk/GTIntentService;


# direct methods
.method public constructor <init>(Lcom/igexin/sdk/GTIntentService;Landroid/app/Service;)V
    .registers 8

    iput-object p1, p0, Lcom/igexin/sdk/GTIntentService$JobIntentService;->a:Lcom/igexin/sdk/GTIntentService;

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "attachBaseContext"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1, v0, v2}, Lcom/igexin/push/util/o;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v4

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    goto :goto_3a

    :catchall_1f
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GTJobService init err: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GTIntentService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 4

    iget-object v0, p0, Lcom/igexin/sdk/GTIntentService$JobIntentService;->a:Lcom/igexin/sdk/GTIntentService;

    invoke-static {v0}, Lcom/igexin/sdk/GTIntentService;->access$100(Lcom/igexin/sdk/GTIntentService;)Lcom/igexin/sdk/c;

    move-result-object v0

    new-instance v1, Lcom/igexin/sdk/b;

    invoke-direct {v1, p0, p1}, Lcom/igexin/sdk/b;-><init>(Lcom/igexin/sdk/GTIntentService$JobIntentService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v0, v1}, Lcom/igexin/sdk/c;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
