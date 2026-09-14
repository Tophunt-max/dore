###### Class com.igexin.push.core.s (com.igexin.push.core.s)
.class public Lcom/igexin/push/core/s;
.super Ljava/lang/Object;


# static fields
.field public static a:Landroid/content/Context;


# instance fields
.field private b:Lcom/igexin/sdk/IPushCore;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/igexin/push/core/s;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/core/s;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method synthetic constructor <init>(Lcom/igexin/push/core/t;)V
    .registers 2

    invoke-direct {p0}, Lcom/igexin/push/core/s;-><init>()V

    return-void
.end method

.method private a(Landroid/app/Service;)I
    .registers 4

    const-string v0, "ServiceManager|start by system ####"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/igexin/push/core/s;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "ServiceManager|intent = null"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/core/s;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/igexin/push/core/s;->a(Landroid/app/Service;Landroid/content/Intent;)V

    :cond_1e
    invoke-virtual {p0}, Lcom/igexin/push/core/s;->d()I

    move-result p1

    return p1

    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceManager|start by system, needLook = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/igexin/push/config/k;->u:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", firstInit = true or (ss = 1 switchOn = false), stop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    const/4 p1, 0x2

    return p1
.end method

.method private a(Landroid/content/Intent;II)I
    .registers 5

    iget-object v0, p0, Lcom/igexin/push/core/s;->b:Lcom/igexin/sdk/IPushCore;

    if-eqz v0, :cond_10

    const-string v0, "ServiceManager|inInit = true, call onServiceStartCommand..."

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/core/s;->b:Lcom/igexin/sdk/IPushCore;

    invoke-interface {v0, p1, p2, p3}, Lcom/igexin/sdk/IPushCore;->onServiceStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    :cond_10
    invoke-virtual {p0}, Lcom/igexin/push/core/s;->d()I

    move-result p1

    return p1
.end method

.method public static a()Lcom/igexin/push/core/s;
    .registers 1

    invoke-static {}, Lcom/igexin/push/core/v;->a()Lcom/igexin/push/core/s;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/app/Service;Landroid/content/Intent;)V
    .registers 3

    const-string p2, "ServiceManager|startPushCore ++++"

    invoke-static {p2}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/push/util/EncryptUtils;->isLoadSuccess()Z

    move-result p2

    if-eqz p2, :cond_22

    invoke-static {}, Lcom/igexin/sdk/a/a;->a()Lcom/igexin/sdk/a/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/igexin/sdk/a/a;->a(Landroid/content/Context;)Z

    invoke-static {}, Lcom/igexin/sdk/a/a;->a()Lcom/igexin/sdk/a/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/igexin/sdk/a/a;->b()Lcom/igexin/sdk/IPushCore;

    move-result-object p2

    iput-object p2, p0, Lcom/igexin/push/core/s;->b:Lcom/igexin/sdk/IPushCore;

    if-eqz p2, :cond_2a

    invoke-interface {p2, p1}, Lcom/igexin/sdk/IPushCore;->start(Landroid/content/Context;)Z

    goto :goto_2a

    :cond_22
    new-instance p2, Lcom/igexin/push/core/t;

    invoke-direct {p2, p0, p1}, Lcom/igexin/push/core/t;-><init>(Lcom/igexin/push/core/s;Landroid/app/Service;)V

    invoke-static {p2, p1}, Lcom/igexin/push/util/d;->a(Lcom/igexin/push/util/f;Landroid/content/Context;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;I)Z
    .registers 6

    iget-object v0, p0, Lcom/igexin/push/core/s;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/igexin/push/core/u;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/igexin/push/core/u;-><init>(Lcom/igexin/push/core/s;Landroid/content/Context;Landroid/content/Intent;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method private a(Landroid/content/Context;Z)Z
    .registers 5

    invoke-static {p1}, Lcom/igexin/push/util/t;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-static {p1}, Lcom/igexin/push/util/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    :cond_f
    if-eqz p2, :cond_19

    invoke-static {p1}, Lcom/igexin/push/config/l;->a(Landroid/content/Context;)V

    sget-boolean p1, Lcom/igexin/push/config/k;->u:Z

    if-nez p1, :cond_19

    return v1

    :cond_19
    const/4 p1, 0x1

    return p1
.end method

.method private b(Landroid/app/Service;Landroid/content/Intent;II)I
    .registers 6

    const-string v0, "ServiceManager|start from initialize..."

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/igexin/push/core/s;->a(Landroid/app/Service;Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/igexin/push/core/s;->b:Lcom/igexin/sdk/IPushCore;

    if-eqz p1, :cond_11

    invoke-interface {p1, p2, p3, p4}, Lcom/igexin/sdk/IPushCore;->onServiceStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    :cond_11
    invoke-virtual {p0}, Lcom/igexin/push/core/s;->d()I

    move-result p1

    return p1
.end method

.method private b(Landroid/content/Intent;)V
    .registers 4

    :try_start_0
    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    sget v1, Lcom/igexin/push/core/b;->m:I

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/igexin/push/core/e;->a(Landroid/os/Message;)Z
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    goto :goto_37

    :catchall_1e
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceManager|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_37
    :goto_37
    return-void
.end method

.method private c(Landroid/app/Service;Landroid/content/Intent;II)I
    .registers 6

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/igexin/push/core/s;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0, p2}, Lcom/igexin/push/core/s;->b(Landroid/content/Intent;)V

    invoke-direct {p0, p1, p2}, Lcom/igexin/push/core/s;->a(Landroid/app/Service;Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/igexin/push/core/s;->b:Lcom/igexin/sdk/IPushCore;

    if-eqz p1, :cond_35

    invoke-interface {p1, p2, p3, p4}, Lcom/igexin/sdk/IPushCore;->onServiceStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    :cond_16
    iget-object p2, p0, Lcom/igexin/push/core/s;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ServiceManager|start by g, availabe = false|"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p3, Lcom/igexin/push/config/k;->u:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    :cond_35
    const/4 p1, 0x2

    return p1
.end method


# virtual methods
.method public a(Landroid/app/Service;Landroid/content/Intent;II)I
    .registers 8

    if-nez p2, :cond_7

    :try_start_2
    invoke-direct {p0, p1}, Lcom/igexin/push/core/s;->a(Landroid/app/Service;)I

    move-result p1

    return p1

    :cond_7
    invoke-static {p1, p2}, Lcom/igexin/push/util/t;->a(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v0, "action"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/igexin/sdk/PushConsts;->ACTION_SERVICE_INITIALIZE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {p1}, Lcom/igexin/push/util/g;->b(Landroid/content/Context;)V

    :cond_1b
    iget-object v1, p0, Lcom/igexin/push/core/s;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-direct {p0, p2, p3, p4}, Lcom/igexin/push/core/s;->a(Landroid/content/Intent;II)I

    move-result p1

    return p1

    :cond_28
    iget-object v1, p0, Lcom/igexin/push/core/s;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v1, Lcom/igexin/sdk/PushConsts;->ACTION_SERVICE_INITIALIZE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/igexin/push/core/s;->b(Landroid/app/Service;Landroid/content/Intent;II)I

    move-result p1

    return p1

    :cond_3b
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/igexin/push/core/s;->c(Landroid/app/Service;Landroid/content/Intent;II)I

    move-result p1
    :try_end_3f
    .catchall {:try_start_2 .. :try_end_3f} :catchall_40

    return p1

    :catchall_40
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ServiceManager|"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const/4 p1, 0x2

    return p1
.end method

.method public a(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const-string v0, "ServiceManager|onBind..."

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/core/s;->b:Lcom/igexin/sdk/IPushCore;

    if-eqz v0, :cond_e

    invoke-interface {v0, p1}, Lcom/igexin/sdk/IPushCore;->onServiceBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    :cond_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/app/Activity;)V
    .registers 9

    const-string v0, "op_app"

    const-string v1, "isSlave"

    const-string v2, "action"

    :try_start_6
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/igexin/push/core/a/f;->a(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_88

    if-eqz v3, :cond_7f

    :try_start_19
    invoke-virtual {v3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7f

    invoke-virtual {v3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7f

    invoke-virtual {v3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v4, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "da action = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isSlave = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_65} :catch_66
    .catchall {:try_start_19 .. :try_end_65} :catchall_88

    goto :goto_7f

    :catch_66
    move-exception v0

    :try_start_67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceManager|put extra exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_7f
    :goto_7f
    invoke-virtual {p0, p1, v4}, Lcom/igexin/push/core/s;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    const-string v0, "ServiceManager|start PushService from da"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_67 .. :try_end_87} :catchall_88

    goto :goto_a1

    :catchall_88
    move-exception v0

    :try_start_89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_a1
    .catchall {:try_start_89 .. :try_end_a1} :catchall_a5

    :goto_a1
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :catchall_a5
    move-exception v0

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    throw v0
.end method

.method public a(Landroid/content/Context;)V
    .registers 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/igexin/push/core/s;->a:Landroid/content/Context;

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 4

    const v0, 0x71605faf

    invoke-direct {p0, p1, p2, v0}, Lcom/igexin/push/core/s;->a(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result p1

    return p1
.end method

.method public b()V
    .registers 2

    const-string v0, "ServiceManager|onLowMemory..."

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "us"

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/igexin/push/util/t;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    return v0

    :cond_12
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_17

    const/4 p1, 0x1

    return p1

    :catch_17
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceManager|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return v0
.end method

.method public b(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 4

    const v0, 0x71603a60

    invoke-direct {p0, p1, p2, v0}, Lcom/igexin/push/core/s;->a(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result p1

    return p1
.end method

.method public c(Landroid/content/Context;)Ljava/lang/Class;
    .registers 4

    :try_start_0
    const-string v0, "us"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/igexin/push/util/t;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-class p1, Lcom/igexin/sdk/PushService;

    return-object p1

    :cond_13
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    return-object p1

    :catchall_18
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceManager|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const-class p1, Lcom/igexin/sdk/PushService;

    return-object p1
.end method

.method public c()V
    .registers 2

    const-string v0, "ServiceManager|onDestroy..."

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/core/s;->b:Lcom/igexin/sdk/IPushCore;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/igexin/sdk/IPushCore;->onServiceDestroy()V

    :cond_c
    return-void
.end method

.method public d()I
    .registers 3

    invoke-static {}, Lcom/igexin/push/util/c;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_e

    const/4 v0, 0x2

    return v0

    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method public d(Landroid/content/Context;)Ljava/lang/Class;
    .registers 4

    :try_start_0
    const-string v0, "uis"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/igexin/push/util/t;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-object p1

    :catchall_15
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceManager|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :cond_2e
    const/4 p1, 0x0

    return-object p1
.end method

.method public e(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "ua"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/igexin/push/util/t;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
