###### Class com.igexin.push.extension.distribution.gbd.i.x (com.igexin.push.extension.distribution.gbd.i.x)
.class Lcom/igexin/push/extension/distribution/gbd/i/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/igexin/push/extension/distribution/gbd/i/w;


# direct methods
.method constructor <init>(Lcom/igexin/push/extension/distribution/gbd/i/w;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/i/x;->a:Lcom/igexin/push/extension/distribution/gbd/i/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/i/x;->a:Lcom/igexin/push/extension/distribution/gbd/i/w;

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/w;->a(Lcom/igexin/push/extension/distribution/gbd/i/w;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/w;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/i/x;->a:Lcom/igexin/push/extension/distribution/gbd/i/w;

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/i/y;

    invoke-direct {v0, p2}, Lcom/igexin/push/extension/distribution/gbd/i/y;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/igexin/push/extension/distribution/gbd/i/w;->a(Lcom/igexin/push/extension/distribution/gbd/i/w;Lcom/igexin/push/extension/distribution/gbd/i/y;)Lcom/igexin/push/extension/distribution/gbd/i/y;

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/i/x;->a:Lcom/igexin/push/extension/distribution/gbd/i/w;

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/w;->b(Lcom/igexin/push/extension/distribution/gbd/i/w;)V

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/i/x;->a:Lcom/igexin/push/extension/distribution/gbd/i/w;

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/w;->d(Lcom/igexin/push/extension/distribution/gbd/i/w;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/igexin/push/extension/distribution/gbd/i/x;->a:Lcom/igexin/push/extension/distribution/gbd/i/w;

    invoke-static {p2}, Lcom/igexin/push/extension/distribution/gbd/i/w;->c(Lcom/igexin/push/extension/distribution/gbd/i/w;)Landroid/content/ServiceConnection;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/w;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "oaidForHUAWEI service unBind"

    invoke-static {p1, p2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/i/x;->a:Lcom/igexin/push/extension/distribution/gbd/i/w;

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/w;->e(Lcom/igexin/push/extension/distribution/gbd/i/w;)Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_42
    .catchall {:try_start_9 .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception p1

    :try_start_44
    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_51

    :goto_47
    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/i/x;->a:Lcom/igexin/push/extension/distribution/gbd/i/w;

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/w;->a(Lcom/igexin/push/extension/distribution/gbd/i/w;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_51
    move-exception p1

    iget-object p2, p0, Lcom/igexin/push/extension/distribution/gbd/i/x;->a:Lcom/igexin/push/extension/distribution/gbd/i/w;

    invoke-static {p2}, Lcom/igexin/push/extension/distribution/gbd/i/w;->a(Lcom/igexin/push/extension/distribution/gbd/i/w;)Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/w;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
