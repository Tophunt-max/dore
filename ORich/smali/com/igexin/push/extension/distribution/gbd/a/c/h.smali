###### Class com.igexin.push.extension.distribution.gbd.a.c.h (com.igexin.push.extension.distribution.gbd.a.c.h)
.class Lcom/igexin/push/extension/distribution/gbd/a/c/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;


# direct methods
.method private constructor <init>(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/h;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/igexin/push/extension/distribution/gbd/a/c/f;Lcom/igexin/push/extension/distribution/gbd/a/c/g;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/igexin/push/extension/distribution/gbd/a/c/h;-><init>(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/h;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v2}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->f(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    if-eqz v2, :cond_ec

    :cond_a
    const-wide/16 v2, 0x1f40

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/h;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v2}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->f(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v2

    iget-object v4, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/h;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v4}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->f(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor;->getTaskCount()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    sub-long/2addr v4, v6

    cmp-long v6, v2, v4

    if-ltz v6, :cond_a

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/h;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v2, v1}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->a(Lcom/igexin/push/extension/distribution/gbd/a/c/f;Z)Z

    const-string v2, "GBD_SLMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/igexin/push/extension/distribution/gbd/c/a;->ax:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/igexin/push/extension/distribution/gbd/c/a;->ax:I

    invoke-static {v2}, Lcom/igexin/push/extension/distribution/gbd/i/k;->b(I)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3
    :try_end_51
    .catchall {:try_start_2 .. :try_end_51} :catchall_108

    if-eqz v3, :cond_74

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/h;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v2, v1}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->a(Lcom/igexin/push/extension/distribution/gbd/a/c/f;Z)Z

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/h;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->b(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/net/DatagramSocket;

    move-result-object v1

    if-eqz v1, :cond_73

    :try_start_60
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/h;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->b(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/net/DatagramSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/h;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v1, v0}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->a(Lcom/igexin/push/extension/distribution/gbd/a/c/f;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;
    :try_end_6e
    .catchall {:try_start_60 .. :try_end_6e} :catchall_6f

    goto :goto_73

    :catchall_6f
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_73
    :goto_73
    return-void

    :cond_74
    :try_start_74
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v4

    const/16 v5, 0x1e

    if-le v4, v5, :cond_ce

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    iget-object v5, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/h;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v5}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->g(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v5

    new-instance v6, Lcom/igexin/push/extension/distribution/gbd/a/c/j;

    iget-object v7, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/h;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-interface {v3, v1, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v7, v8, v2}, Lcom/igexin/push/extension/distribution/gbd/a/c/j;-><init>(Lcom/igexin/push/extension/distribution/gbd/a/c/f;Ljava/util/List;Ljava/util/HashMap;)V

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/h;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v5}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->g(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v5

    new-instance v6, Lcom/igexin/push/extension/distribution/gbd/a/c/j;

    iget-object v7, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/h;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    mul-int/lit8 v8, v4, 0x2

    invoke-interface {v3, v4, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-direct {v6, v7, v4, v2}, Lcom/igexin/push/extension/distribution/gbd/a/c/j;-><init>(Lcom/igexin/push/extension/distribution/gbd/a/c/f;Ljava/util/List;Ljava/util/HashMap;)V

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/h;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v4}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->g(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    new-instance v5, Lcom/igexin/push/extension/distribution/gbd/a/c/j;

    iget-object v6, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/h;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v3, v8, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v5, v6, v3, v2}, Lcom/igexin/push/extension/distribution/gbd/a/c/j;-><init>(Lcom/igexin/push/extension/distribution/gbd/a/c/f;Ljava/util/List;Ljava/util/HashMap;)V

    :goto_ca
    invoke-virtual {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_dc

    :cond_ce
    iget-object v4, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/h;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v4}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->g(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v4

    new-instance v5, Lcom/igexin/push/extension/distribution/gbd/a/c/j;

    iget-object v6, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/h;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-direct {v5, v6, v3, v2}, Lcom/igexin/push/extension/distribution/gbd/a/c/j;-><init>(Lcom/igexin/push/extension/distribution/gbd/a/c/f;Ljava/util/List;Ljava/util/HashMap;)V

    goto :goto_ca

    :goto_dc
    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/h;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v2}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->g(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    new-instance v3, Lcom/igexin/push/extension/distribution/gbd/a/c/i;

    iget-object v4, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/h;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-direct {v3, v4, v0}, Lcom/igexin/push/extension/distribution/gbd/a/c/i;-><init>(Lcom/igexin/push/extension/distribution/gbd/a/c/f;Lcom/igexin/push/extension/distribution/gbd/a/c/g;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_ec
    .catchall {:try_start_74 .. :try_end_ec} :catchall_108

    :cond_ec
    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/h;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v2, v1}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->a(Lcom/igexin/push/extension/distribution/gbd/a/c/f;Z)Z

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/h;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->b(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/net/DatagramSocket;

    move-result-object v1

    if-eqz v1, :cond_12c

    :try_start_f9
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/h;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->b(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/net/DatagramSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/h;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v1, v0}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->a(Lcom/igexin/push/extension/distribution/gbd/a/c/f;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;
    :try_end_107
    .catchall {:try_start_f9 .. :try_end_107} :catchall_128

    goto :goto_12c

    :catchall_108
    move-exception v2

    :try_start_109
    invoke-static {v2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_10c
    .catchall {:try_start_109 .. :try_end_10c} :catchall_12d

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/h;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v2, v1}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->a(Lcom/igexin/push/extension/distribution/gbd/a/c/f;Z)Z

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/h;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->b(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/net/DatagramSocket;

    move-result-object v1

    if-eqz v1, :cond_12c

    :try_start_119
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/h;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->b(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/net/DatagramSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/h;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v1, v0}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->a(Lcom/igexin/push/extension/distribution/gbd/a/c/f;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;
    :try_end_127
    .catchall {:try_start_119 .. :try_end_127} :catchall_128

    goto :goto_12c

    :catchall_128
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_12c
    :goto_12c
    return-void

    :catchall_12d
    move-exception v2

    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/h;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v3, v1}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->a(Lcom/igexin/push/extension/distribution/gbd/a/c/f;Z)Z

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/h;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->b(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/net/DatagramSocket;

    move-result-object v1

    if-eqz v1, :cond_14e

    :try_start_13b
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/h;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->b(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/net/DatagramSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/h;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v1, v0}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->a(Lcom/igexin/push/extension/distribution/gbd/a/c/f;Ljava/net/DatagramSocket;)Ljava/net/DatagramSocket;
    :try_end_149
    .catchall {:try_start_13b .. :try_end_149} :catchall_14a

    goto :goto_14e

    :catchall_14a
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_14e
    :goto_14e
    throw v2
.end method
