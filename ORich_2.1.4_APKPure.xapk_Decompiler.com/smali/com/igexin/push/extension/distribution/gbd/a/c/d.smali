###### Class com.igexin.push.extension.distribution.gbd.a.c.d (com.igexin.push.extension.distribution.gbd.a.c.d)
.class Lcom/igexin/push/extension/distribution/gbd/a/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/igexin/push/extension/distribution/gbd/a/c/c;

.field private b:I


# direct methods
.method constructor <init>(Lcom/igexin/push/extension/distribution/gbd/a/c/c;I)V
    .registers 3

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/d;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/d;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/d;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/c;

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->a(Lcom/igexin/push/extension/distribution/gbd/a/c/c;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/16 v1, 0xa

    :try_start_9
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/d;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/c;

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->b(Lcom/igexin/push/extension/distribution/gbd/a/c/c;)Lcom/igexin/push/extension/distribution/gbd/a/c/m;

    move-result-object v1

    sget-object v2, Lcom/igexin/push/extension/distribution/gbd/a/c/e;->b:Lcom/igexin/push/extension/distribution/gbd/a/c/e;

    iput-object v2, v1, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/e;

    const-string v1, "GBD_RLA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dyn/sta type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/d;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/d;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/c;

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/a/c/c;->b(Lcom/igexin/push/extension/distribution/gbd/a/c/c;)Lcom/igexin/push/extension/distribution/gbd/a/c/m;

    move-result-object v1

    iget v2, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/d;->b:I

    invoke-virtual {v1, v2}, Lcom/igexin/push/extension/distribution/gbd/a/c/m;->a(I)V
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_3a

    goto :goto_3e

    :catchall_3a
    move-exception v1

    :try_start_3b
    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_3e
    monitor-exit v0

    return-void

    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_40

    throw v1
.end method
