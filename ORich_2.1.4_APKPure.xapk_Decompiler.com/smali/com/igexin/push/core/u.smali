###### Class com.igexin.push.core.u (com.igexin.push.core.u)
.class Lcom/igexin/push/core/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:I

.field final synthetic d:Lcom/igexin/push/core/s;


# direct methods
.method constructor <init>(Lcom/igexin/push/core/s;Landroid/content/Context;Landroid/content/Intent;I)V
    .registers 5

    iput-object p1, p0, Lcom/igexin/push/core/u;->d:Lcom/igexin/push/core/s;

    iput-object p2, p0, Lcom/igexin/push/core/u;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/igexin/push/core/u;->b:Landroid/content/Intent;

    iput p4, p0, Lcom/igexin/push/core/u;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .registers 5

    iget v0, p0, Lcom/igexin/push/core/u;->c:I

    const v1, 0x71605faf

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/igexin/push/core/u;->b:Landroid/content/Intent;

    iget-object v1, p0, Lcom/igexin/push/core/u;->a:Landroid/content/Context;

    const-class v2, Lcom/igexin/sdk/PushService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :cond_10
    invoke-static {}, Lcom/igexin/sdk/JobSender;->getInstance()Lcom/igexin/sdk/JobSender;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/core/u;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/igexin/push/core/u;->b:Landroid/content/Intent;

    iget v3, p0, Lcom/igexin/push/core/u;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/sdk/JobSender;->runJob(Landroid/content/Context;Landroid/content/Intent;I)Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1d

    invoke-static {}, Lcom/igexin/push/util/a;->i()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/igexin/push/core/u;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/push/util/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-direct {p0}, Lcom/igexin/push/core/u;->a()V

    const-string v0, "ServiceManager|startService by job"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    goto :goto_49

    :cond_1d
    iget-object v0, p0, Lcom/igexin/push/core/u;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/core/u;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_29

    goto :goto_49

    :catchall_29
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceManager|startPushService err\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    instance-of v0, v0, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_49

    invoke-direct {p0}, Lcom/igexin/push/core/u;->a()V

    :cond_49
    :goto_49
    return-void
.end method
