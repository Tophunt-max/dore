###### Class com.igexin.push.core.e (com.igexin.push.core.e)
.class public Lcom/igexin/push/core/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/b/a/d/a/b;


# static fields
.field private static k:Lcom/igexin/push/core/e;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/igexin/push/core/h;

.field private c:Landroid/os/Handler;

.field private d:Landroid/os/Handler;

.field private e:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/igexin/push/core/a/f;

.field private g:Lcom/igexin/b/a/b/c;

.field private h:Lcom/igexin/b/a/b/b;

.field private i:Lcom/igexin/push/f/a;

.field private j:Lcom/igexin/push/b/b;

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/igexin/push/core/e;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/core/e;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/igexin/push/core/h;

    invoke-direct {v0}, Lcom/igexin/push/core/h;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/core/e;->b:Lcom/igexin/push/core/h;

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/core/e;->g:Lcom/igexin/b/a/b/c;

    new-instance v0, Lcom/igexin/push/e/a;

    iget-object v1, p0, Lcom/igexin/push/core/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igexin/push/e/a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/igexin/push/core/e;->g:Lcom/igexin/b/a/b/c;

    invoke-virtual {v1, v0}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/a/a;)V

    iget-object v0, p0, Lcom/igexin/push/core/e;->g:Lcom/igexin/b/a/b/c;

    invoke-virtual {v0, p0}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/a/b;)Z

    new-instance v0, Lcom/igexin/push/f/a;

    invoke-direct {v0}, Lcom/igexin/push/f/a;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/core/e;->i:Lcom/igexin/push/f/a;

    return-void
.end method

.method public static a()Lcom/igexin/push/core/e;
    .registers 1

    sget-object v0, Lcom/igexin/push/core/e;->k:Lcom/igexin/push/core/e;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/core/e;

    invoke-direct {v0}, Lcom/igexin/push/core/e;-><init>()V

    sput-object v0, Lcom/igexin/push/core/e;->k:Lcom/igexin/push/core/e;

    :cond_b
    sget-object v0, Lcom/igexin/push/core/e;->k:Lcom/igexin/push/core/e;

    return-object v0
.end method

.method private m()V
    .registers 3

    iget-object v0, p0, Lcom/igexin/push/core/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/push/util/t;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/igexin/push/core/f;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_2b

    :cond_11
    sget-object v0, Lcom/igexin/push/core/f;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/igexin/push/util/a;->a()Z

    move-result v0

    if-nez v0, :cond_20

    return-void

    :cond_20
    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v0

    invoke-static {}, Lcom/igexin/push/util/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/core/c/h;->b(Ljava/lang/String;)Z

    :cond_2b
    :goto_2b
    return-void
.end method

.method private n()Z
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.igexin.sdk.action.execute"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/igexin/push/core/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/push/core/e;->a:Landroid/content/Context;

    invoke-static {}, Lcom/igexin/push/core/o;->a()Lcom/igexin/push/core/o;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/push/core/e;->a:Landroid/content/Context;

    invoke-static {}, Lcom/igexin/push/core/n;->a()Lcom/igexin/push/core/n;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/igexin/push/core/e;->a:Landroid/content/Context;

    iget-object p1, p0, Lcom/igexin/push/core/e;->b:Lcom/igexin/push/core/h;

    const/4 v0, 0x1

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/igexin/push/core/h;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_12

    return v0

    :cond_12
    iget-object p1, p0, Lcom/igexin/push/core/e;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_3e

    const-string p1, "CoreLogic|start coreThread +++++"

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/igexin/push/core/e;->b:Lcom/igexin/push/core/h;

    invoke-virtual {p1}, Lcom/igexin/push/core/h;->start()V

    new-instance p1, Lcom/igexin/push/core/d;

    iget-object v1, p0, Lcom/igexin/push/core/e;->b:Lcom/igexin/push/core/h;

    invoke-virtual {v1}, Lcom/igexin/push/core/h;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/igexin/push/core/d;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/igexin/push/core/e;->c:Landroid/os/Handler;

    new-instance p1, Lcom/igexin/b/a/b/a/a/d;

    iget-object v1, p0, Lcom/igexin/push/core/e;->b:Lcom/igexin/push/core/h;

    invoke-virtual {v1}, Lcom/igexin/push/core/h;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/igexin/b/a/b/a/a/d;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/igexin/push/core/e;->d:Landroid/os/Handler;

    :cond_3e
    return v0
.end method

.method public a(Landroid/os/Message;)Z
    .registers 3

    sget-object v0, Lcom/igexin/push/core/f;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/igexin/push/core/e;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_13

    :cond_e
    iget-object v0, p0, Lcom/igexin/push/core/e;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :goto_13
    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcom/igexin/b/a/d/a/e;Lcom/igexin/b/a/d/f;)Z
    .registers 3

    iget-object p2, p0, Lcom/igexin/push/core/e;->f:Lcom/igexin/push/core/a/f;

    if-eqz p2, :cond_c

    invoke-virtual {p2, p1}, Lcom/igexin/push/core/a/f;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public a(Lcom/igexin/b/a/d/e;Lcom/igexin/b/a/d/f;)Z
    .registers 3

    iget-object p2, p0, Lcom/igexin/push/core/e;->f:Lcom/igexin/push/core/a/f;

    if-eqz p2, :cond_c

    invoke-virtual {p2, p1}, Lcom/igexin/push/core/a/f;->a(Lcom/igexin/b/a/d/e;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public a(Lcom/igexin/push/g/b/h;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_f

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v0}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public a(Z)Z
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoreLogic|start sdkSwitch isSlave = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    const/4 v1, 0x1

    if-eqz v0, :cond_61

    new-instance v0, Lcom/igexin/sdk/a/e;

    sget-object v2, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/igexin/sdk/a/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/sdk/a/e;->a()V

    sput-boolean v1, Lcom/igexin/push/core/f;->i:Z

    new-instance v0, Lcom/igexin/sdk/a/c;

    sget-object v2, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/igexin/sdk/a/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/sdk/a/c;->b()Z

    move-result v0

    if-nez v0, :cond_48

    new-instance v0, Lcom/igexin/sdk/a/d;

    sget-object v2, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/igexin/sdk/a/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/sdk/a/d;->a()V

    sput-boolean v1, Lcom/igexin/push/core/f;->j:Z

    new-instance v0, Lcom/igexin/sdk/a/c;

    sget-object v2, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/igexin/sdk/a/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/sdk/a/c;->a()V

    :cond_48
    if-eqz p1, :cond_56

    new-instance p1, Lcom/igexin/sdk/a/d;

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/igexin/sdk/a/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/igexin/sdk/a/d;->a()V

    sput-boolean v1, Lcom/igexin/push/core/f;->j:Z

    :cond_56
    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/core/e;->g()Lcom/igexin/push/f/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/push/f/a;->b()V

    :cond_61
    return v1
.end method

.method public b()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/e;->d:Landroid/os/Handler;

    return-object v0
.end method

.method public c()V
    .registers 5

    :try_start_0
    new-instance v0, Lcom/igexin/push/b/b;

    iget-object v1, p0, Lcom/igexin/push/core/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igexin/push/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igexin/push/core/e;->j:Lcom/igexin/push/b/b;

    iget-object v0, p0, Lcom/igexin/push/core/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/push/core/f;->a(Landroid/content/Context;)Z

    invoke-static {}, Lcom/igexin/push/config/i;->a()Lcom/igexin/push/config/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/config/i;->b()Z

    invoke-direct {p0}, Lcom/igexin/push/core/e;->n()Z

    new-instance v0, Lcom/igexin/push/b/a;

    invoke-direct {v0}, Lcom/igexin/push/b/a;-><init>()V

    invoke-static {}, Lcom/igexin/push/core/c/h;->a()Lcom/igexin/push/core/c/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/b/a;->a(Lcom/igexin/push/core/c/a;)V

    invoke-static {}, Lcom/igexin/push/core/c/d;->a()Lcom/igexin/push/core/c/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/b/a;->a(Lcom/igexin/push/core/c/a;)V

    invoke-static {}, Lcom/igexin/push/core/c/b;->a()Lcom/igexin/push/core/c/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/b/a;->a(Lcom/igexin/push/core/c/a;)V

    invoke-static {}, Lcom/igexin/push/config/a;->a()Lcom/igexin/push/config/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/b/a;->a(Lcom/igexin/push/core/c/a;)V

    invoke-static {}, Lcom/igexin/push/core/c/aj;->a()Lcom/igexin/push/core/c/aj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/push/b/a;->a(Lcom/igexin/push/core/c/a;)V

    iget-object v1, p0, Lcom/igexin/push/core/e;->g:Lcom/igexin/b/a/b/c;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    iget-object v0, p0, Lcom/igexin/push/core/e;->g:Lcom/igexin/b/a/b/c;

    iget-object v1, p0, Lcom/igexin/push/core/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/igexin/b/a/b/c;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/f;->A:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/b/a;->a([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/b/a/b/c;->a([B)V

    iget-object v0, p0, Lcom/igexin/push/core/e;->g:Lcom/igexin/b/a/b/c;

    invoke-static {}, Lcom/igexin/push/g/b/c;->i()Lcom/igexin/push/g/b/c;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    move-result v0

    sput-boolean v0, Lcom/igexin/push/core/f;->aa:Z

    iget-object v0, p0, Lcom/igexin/push/core/e;->g:Lcom/igexin/b/a/b/c;

    invoke-static {}, Lcom/igexin/push/g/b/g;->i()Lcom/igexin/push/g/b/g;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    move-result v0

    sput-boolean v0, Lcom/igexin/push/core/f;->ab:Z

    invoke-static {}, Lcom/igexin/push/c/i;->a()Lcom/igexin/push/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/c/i;->b()V

    invoke-virtual {p0}, Lcom/igexin/push/core/e;->d()Lcom/igexin/push/g/b/a;

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/core/e;->f:Lcom/igexin/push/core/a/f;

    iget-object v0, p0, Lcom/igexin/push/core/e;->i:Lcom/igexin/push/f/a;

    invoke-virtual {v0}, Lcom/igexin/push/f/a;->b()V

    invoke-direct {p0}, Lcom/igexin/push/core/e;->m()V

    invoke-static {}, Lcom/igexin/push/a/a/c;->c()Lcom/igexin/push/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/a/a/c;->d()V

    sget-object v0, Lcom/igexin/push/core/f;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Lcom/igexin/push/core/a;->a()Lcom/igexin/push/core/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/push/core/a;->a(I)V

    invoke-static {}, Lcom/igexin/push/d/c;->a()Lcom/igexin/push/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/d/c;->c()V

    invoke-static {}, Lcom/igexin/push/extension/a;->a()Lcom/igexin/push/extension/a;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/core/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/igexin/push/extension/a;->a(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/igexin/push/core/e;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_bc
    :goto_bc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    iget-object v2, p0, Lcom/igexin/push/core/e;->c:Landroid/os/Handler;

    if-eqz v2, :cond_bc

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_bc

    :cond_d0
    invoke-static {}, Lcom/igexin/push/core/r;->a()Lcom/igexin/push/core/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/r;->e()V
    :try_end_d7
    .catchall {:try_start_0 .. :try_end_d7} :catchall_ea

    :try_start_d7
    invoke-static {}, Lcom/igexin/assist/sdk/AssistPushManager;->getInstance()Lcom/igexin/assist/sdk/AssistPushManager;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/igexin/assist/sdk/AssistPushManager;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/igexin/assist/sdk/AssistPushManager;->getInstance()Lcom/igexin/assist/sdk/AssistPushManager;

    move-result-object v0

    sget-object v1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/igexin/assist/sdk/AssistPushManager;->register(Landroid/content/Context;)V
    :try_end_e9
    .catchall {:try_start_d7 .. :try_end_e9} :catchall_103

    goto :goto_103

    :catchall_ea
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CoreLogic|init|failed|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    :catchall_103
    :goto_103
    return-void
.end method

.method public d()Lcom/igexin/push/g/b/a;
    .registers 5

    invoke-static {}, Lcom/igexin/push/g/b/a;->i()Lcom/igexin/push/g/b/a;

    move-result-object v0

    new-instance v1, Lcom/igexin/push/a/a/b;

    invoke-direct {v1}, Lcom/igexin/push/a/a/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igexin/push/g/b/a;->a(Lcom/igexin/push/g/b/d;)Z

    new-instance v2, Lcom/igexin/push/a/a/a;

    invoke-direct {v2}, Lcom/igexin/push/a/a/a;-><init>()V

    invoke-virtual {v0, v2}, Lcom/igexin/push/g/b/a;->a(Lcom/igexin/push/g/b/d;)Z

    new-instance v2, Lcom/igexin/push/a/a/d;

    invoke-direct {v2}, Lcom/igexin/push/a/a/d;-><init>()V

    invoke-virtual {v0, v2}, Lcom/igexin/push/g/b/a;->a(Lcom/igexin/push/g/b/d;)Z

    invoke-static {}, Lcom/igexin/push/a/a/c;->c()Lcom/igexin/push/a/a/c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/igexin/push/g/b/a;->a(Lcom/igexin/push/g/b/d;)Z

    :try_start_23
    invoke-virtual {v1}, Lcom/igexin/push/a/a/b;->a()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/igexin/push/a/a/b;->a(J)V
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_2d

    :catchall_2d
    iget-object v1, p0, Lcom/igexin/push/core/e;->g:Lcom/igexin/b/a/b/c;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    move-result v1

    sput-boolean v1, Lcom/igexin/push/core/f;->ac:Z

    return-object v0
.end method

.method public e()Z
    .registers 3

    sget-object v0, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    if-eqz v0, :cond_18

    new-instance v0, Lcom/igexin/sdk/a/d;

    sget-object v1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igexin/sdk/a/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/sdk/a/d;->b()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/igexin/push/core/f;->j:Z

    sput-boolean v0, Lcom/igexin/push/core/f;->m:Z

    iget-object v0, p0, Lcom/igexin/push/core/e;->i:Lcom/igexin/push/f/a;

    invoke-virtual {v0}, Lcom/igexin/push/f/a;->c()V

    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public f()Lcom/igexin/b/a/b/b;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/e;->h:Lcom/igexin/b/a/b/b;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/igexin/push/e/a/b;->a()Lcom/igexin/b/a/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/core/e;->h:Lcom/igexin/b/a/b/b;

    :cond_a
    iget-object v0, p0, Lcom/igexin/push/core/e;->h:Lcom/igexin/b/a/b/b;

    return-object v0
.end method

.method public g()Lcom/igexin/push/f/a;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/e;->i:Lcom/igexin/push/f/a;

    return-object v0
.end method

.method public h()Lcom/igexin/push/core/a/f;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/e;->f:Lcom/igexin/push/core/a/f;

    return-object v0
.end method

.method public i()Lcom/igexin/push/b/b;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/core/e;->j:Lcom/igexin/push/b/b;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/igexin/push/core/f;->f:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_e

    return-object v0

    :cond_e
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    const-string v0, "wifi"

    return-object v0

    :cond_1e
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_26

    const-string v0, "mobile"
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_26

    :catchall_26
    :cond_26
    return-object v0
.end method

.method public k()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public l()J
    .registers 3

    const-wide/32 v0, 0x17258

    return-wide v0
.end method
