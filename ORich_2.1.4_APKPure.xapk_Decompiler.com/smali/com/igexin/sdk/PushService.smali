###### Class com.igexin.sdk.PushService (com.igexin.sdk.PushService)
.class public Lcom/igexin/sdk/PushService;
.super Landroid/app/Service;


# static fields
.field private static a:Ljava/lang/String; = "PushService"


# instance fields
.field private b:Landroid/app/Service;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/igexin/sdk/PushService;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .registers 4

    invoke-static {}, Lcom/igexin/push/core/s;->a()Lcom/igexin/push/core/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/igexin/push/core/s;->c(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lcom/igexin/sdk/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1b

    :cond_12
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/igexin/sdk/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_1b
    invoke-virtual {p0}, Lcom/igexin/sdk/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private b()Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/igexin/sdk/PushService;

    if-ne v0, v1, :cond_14

    invoke-static {}, Lcom/igexin/push/core/s;->a()Lcom/igexin/push/core/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/igexin/push/core/s;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v1, "GB-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/igexin/sdk/PushService;->onStartCommand(Landroid/content/Intent;II)I

    const/4 p1, 0x0

    return-object p1

    :cond_16
    iget-object v0, p0, Lcom/igexin/sdk/PushService;->b:Landroid/app/Service;

    if-nez v0, :cond_23

    invoke-static {}, Lcom/igexin/push/core/s;->a()Lcom/igexin/push/core/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igexin/push/core/s;->a(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    goto :goto_27

    :cond_23
    invoke-virtual {v0, p1}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    :goto_27
    return-object p1
.end method

.method public onCreate()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Lcom/igexin/push/core/s;->a()Lcom/igexin/push/core/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/igexin/push/core/s;->a(Landroid/content/Context;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_17

    new-instance v0, Lcom/igexin/sdk/PushService$GTJobService;

    invoke-direct {v0, p0, p0}, Lcom/igexin/sdk/PushService$GTJobService;-><init>(Lcom/igexin/sdk/PushService;Landroid/app/Service;)V

    iput-object v0, p0, Lcom/igexin/sdk/PushService;->b:Landroid/app/Service;

    :cond_17
    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-direct {p0}, Lcom/igexin/sdk/PushService;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    invoke-static {}, Lcom/igexin/push/core/s;->a()Lcom/igexin/push/core/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/s;->c()V

    return-void
.end method

.method public onLowMemory()V
    .registers 2

    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    invoke-static {}, Lcom/igexin/push/core/s;->a()Lcom/igexin/push/core/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/s;->b()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    :try_start_3
    invoke-direct {p0}, Lcom/igexin/sdk/PushService;->b()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/igexin/sdk/PushService;->a:Ljava/lang/String;

    const-string v1, "isUserPushServiceSet = true, call -> startUserPushService"

    invoke-static {v0, v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/igexin/sdk/PushService;->a(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/igexin/sdk/PushService;->stopSelf()V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    const/4 p1, 0x2

    return p1

    :catchall_18
    :cond_18
    invoke-static {}, Lcom/igexin/push/core/s;->a()Lcom/igexin/push/core/s;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/igexin/push/core/s;->a(Landroid/app/Service;Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

###### Class com.igexin.sdk.PushService.GTJobService (com.igexin.sdk.PushService$GTJobService)
.class public Lcom/igexin/sdk/PushService$GTJobService;
.super Landroid/app/job/JobService;


# instance fields
.field final synthetic a:Lcom/igexin/sdk/PushService;

.field private b:Landroid/app/Service;


# direct methods
.method public constructor <init>(Lcom/igexin/sdk/PushService;Landroid/app/Service;)V
    .registers 8

    iput-object p1, p0, Lcom/igexin/sdk/PushService$GTJobService;->a:Lcom/igexin/sdk/PushService;

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    iput-object p2, p0, Lcom/igexin/sdk/PushService$GTJobService;->b:Landroid/app/Service;

    :try_start_7
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
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_21

    goto :goto_3e

    :catchall_21
    move-exception p1

    invoke-static {}, Lcom/igexin/sdk/PushService;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GTJobService init err: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3e
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 11

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.app.job.JobWorkItem"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/app/job/JobParameters;

    const-string v3, "dequeueWork"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/igexin/push/util/o;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "getIntent"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-static {v1, v3, v4}, Lcom/igexin/push/util/o;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-class v4, Landroid/app/job/JobParameters;

    const-string v5, "completeWork"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v1, v7, v0

    invoke-static {v4, v5, v7}, Lcom/igexin/push/util/o;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    :goto_26
    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_64

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    invoke-static {}, Lcom/igexin/push/core/s;->a()Lcom/igexin/push/core/s;

    move-result-object v7

    iget-object v8, p0, Lcom/igexin/sdk/PushService$GTJobService;->b:Landroid/app/Service;

    invoke-virtual {v7, v8, v5, v0, v0}, Lcom/igexin/push/core/s;->a(Landroid/app/Service;Landroid/content/Intent;II)I

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v4, v5, v0

    invoke-virtual {v1, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_47

    goto :goto_26

    :catchall_47
    move-exception p1

    invoke-static {}, Lcom/igexin/sdk/PushService;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartJobService err: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
