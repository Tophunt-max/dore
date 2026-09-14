###### Class com.igexin.push.extension.distribution.gbd.d.k (com.igexin.push.extension.distribution.gbd.d.k)
.class public Lcom/igexin/push/extension/distribution/gbd/d/k;
.super Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "GBD-Thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_12

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_12
    :try_start_12
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->c:Lcom/igexin/push/extension/distribution/gbd/d/a;

    if-nez v0, :cond_1d

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/d/a;

    invoke-direct {v0}, Lcom/igexin/push/extension/distribution/gbd/d/a;-><init>()V

    sput-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->c:Lcom/igexin/push/extension/distribution/gbd/d/a;

    :cond_1d
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/d/d;->a()Lcom/igexin/push/extension/distribution/gbd/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/gbd/d/d;->b()V
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_25

    goto :goto_32

    :catchall_25
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GBDThread"

    invoke-static {v1, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_32
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
