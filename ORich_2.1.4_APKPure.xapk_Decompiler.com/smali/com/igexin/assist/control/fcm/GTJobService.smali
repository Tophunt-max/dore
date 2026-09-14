###### Class com.igexin.assist.control.fcm.GTJobService (com.igexin.assist.control.fcm.GTJobService)
.class public abstract Lcom/igexin/assist/control/fcm/GTJobService;
.super Landroid/app/Service;


# static fields
.field public static final TAG:Ljava/lang/String; = "Assist_FCM"

.field public static final WAIT_TIME:J = 0x7530L


# instance fields
.field private a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/app/Service;

.field private volatile c:Landroid/os/Looper;

.field private volatile d:Lcom/igexin/assist/control/fcm/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/igexin/assist/control/fcm/GTJobService;)Lcom/igexin/assist/control/fcm/c;
    .registers 1

    iget-object p0, p0, Lcom/igexin/assist/control/fcm/GTJobService;->d:Lcom/igexin/assist/control/fcm/c;

    return-object p0
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/igexin/assist/control/fcm/GTJobService;->b(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/igexin/assist/control/fcm/GTJobService;->a:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_16

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/igexin/assist/control/fcm/GTJobService;->a:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v0, 0x7530

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_16

    :catchall_16
    :cond_16
    return-void
.end method

.method protected abstract b(Landroid/content/Intent;)V
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Lcom/igexin/assist/control/fcm/GTJobService;->b:Landroid/app/Service;

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

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/assist/control/fcm/GTJobService;->c:Landroid/os/Looper;

    new-instance v0, Lcom/igexin/assist/control/fcm/c;

    iget-object v1, p0, Lcom/igexin/assist/control/fcm/GTJobService;->c:Landroid/os/Looper;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/igexin/assist/control/fcm/c;-><init>(Lcom/igexin/assist/control/fcm/GTJobService;Landroid/os/Looper;Lcom/igexin/assist/control/fcm/a;)V

    iput-object v0, p0, Lcom/igexin/assist/control/fcm/GTJobService;->d:Lcom/igexin/assist/control/fcm/c;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_30

    new-instance v0, Lcom/igexin/assist/control/fcm/GTJobService$JobIntentService;

    invoke-direct {v0, p0, p0}, Lcom/igexin/assist/control/fcm/GTJobService$JobIntentService;-><init>(Lcom/igexin/assist/control/fcm/GTJobService;Landroid/app/Service;)V

    iput-object v0, p0, Lcom/igexin/assist/control/fcm/GTJobService;->b:Landroid/app/Service;

    :cond_30
    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/igexin/assist/control/fcm/GTJobService;->c:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    :try_start_0
    iget-object p2, p0, Lcom/igexin/assist/control/fcm/GTJobService;->a:Ljava/util/concurrent/BlockingQueue;

    if-nez p2, :cond_b

    new-instance p2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p2, p0, Lcom/igexin/assist/control/fcm/GTJobService;->a:Ljava/util/concurrent/BlockingQueue;

    :cond_b
    iget-object p2, p0, Lcom/igexin/assist/control/fcm/GTJobService;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p2, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/igexin/assist/control/fcm/GTJobService;->d:Lcom/igexin/assist/control/fcm/c;

    invoke-virtual {p2}, Lcom/igexin/assist/control/fcm/c;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    iput p3, p2, Landroid/os/Message;->arg1:I

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/igexin/assist/control/fcm/GTJobService;->d:Lcom/igexin/assist/control/fcm/c;

    invoke-virtual {p1, p2}, Lcom/igexin/assist/control/fcm/c;->sendMessage(Landroid/os/Message;)Z
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_1f

    :catchall_1f
    const/4 p1, 0x2

    return p1
.end method

###### Class com.igexin.assist.control.fcm.GTJobService.JobIntentService (com.igexin.assist.control.fcm.GTJobService$JobIntentService)
.class public Lcom/igexin/assist/control/fcm/GTJobService$JobIntentService;
.super Landroid/app/job/JobService;


# instance fields
.field final synthetic a:Lcom/igexin/assist/control/fcm/GTJobService;


# direct methods
.method public constructor <init>(Lcom/igexin/assist/control/fcm/GTJobService;Landroid/app/Service;)V
    .registers 8

    iput-object p1, p0, Lcom/igexin/assist/control/fcm/GTJobService$JobIntentService;->a:Lcom/igexin/assist/control/fcm/GTJobService;

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

    invoke-static {p1, v0, v2}, Lcom/igexin/assist/control/fcm/InvokeUtil;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

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

    const-string v0, "GTJobService init error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Assist_FCM"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 4

    iget-object v0, p0, Lcom/igexin/assist/control/fcm/GTJobService$JobIntentService;->a:Lcom/igexin/assist/control/fcm/GTJobService;

    invoke-static {v0}, Lcom/igexin/assist/control/fcm/GTJobService;->a(Lcom/igexin/assist/control/fcm/GTJobService;)Lcom/igexin/assist/control/fcm/c;

    move-result-object v0

    new-instance v1, Lcom/igexin/assist/control/fcm/b;

    invoke-direct {v1, p0, p1}, Lcom/igexin/assist/control/fcm/b;-><init>(Lcom/igexin/assist/control/fcm/GTJobService$JobIntentService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v0, v1}, Lcom/igexin/assist/control/fcm/c;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
