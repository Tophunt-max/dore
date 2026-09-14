###### Class com.igexin.push.c.r (com.igexin.push.c.r)
.class Lcom/igexin/push/c/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/igexin/push/c/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/igexin/push/c/q;


# direct methods
.method constructor <init>(Lcom/igexin/push/c/q;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/c/r;->a:Lcom/igexin/push/c/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/igexin/push/c/j;
    .registers 12

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_179

    const/4 v0, 0x0

    :try_start_b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_16

    return-object v0

    :cond_16
    const-class v1, Lcom/igexin/push/c/p;

    monitor-enter v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_19} :catch_10a
    .catchall {:try_start_b .. :try_end_19} :catchall_106

    :try_start_19
    iget-object v2, p0, Lcom/igexin/push/c/r;->a:Lcom/igexin/push/c/q;

    invoke-static {v2}, Lcom/igexin/push/c/q;->a(Lcom/igexin/push/c/q;)Lcom/igexin/push/c/p;

    move-result-object v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/igexin/push/c/r;->a:Lcom/igexin/push/c/q;

    invoke-static {v2}, Lcom/igexin/push/c/q;->a(Lcom/igexin/push/c/q;)Lcom/igexin/push/c/p;

    move-result-object v2

    iget-object v3, p0, Lcom/igexin/push/c/r;->a:Lcom/igexin/push/c/q;

    invoke-static {v3}, Lcom/igexin/push/c/q;->b(Lcom/igexin/push/c/q;)Lcom/igexin/push/c/j;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/igexin/push/c/p;->a(Lcom/igexin/push/c/j;)V

    :cond_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_19 .. :try_end_31} :catchall_103

    :try_start_31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/igexin/push/c/r;->a:Lcom/igexin/push/c/q;

    invoke-static {v3}, Lcom/igexin/push/c/q;->b(Lcom/igexin/push/c/q;)Lcom/igexin/push/c/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igexin/push/c/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/igexin/b/a/b/f;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_48} :catch_10a
    .catchall {:try_start_31 .. :try_end_48} :catchall_106

    :try_start_48
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v5, 0x1

    aget-object v3, v3, v5

    iget-object v5, p0, Lcom/igexin/push/c/r;->a:Lcom/igexin/push/c/q;

    invoke-static {v5}, Lcom/igexin/push/c/q;->b(Lcom/igexin/push/c/q;)Lcom/igexin/push/c/j;

    move-result-object v5

    invoke-virtual {v5}, Lcom/igexin/push/c/j;->d()I

    move-result v5

    invoke-direct {v0, v3, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v3, 0x9c4

    invoke-virtual {v4, v0, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v0, p0, Lcom/igexin/push/c/r;->a:Lcom/igexin/push/c/q;

    invoke-static {v0}, Lcom/igexin/push/c/q;->b(Lcom/igexin/push/c/q;)Lcom/igexin/push/c/j;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "socket://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/igexin/push/c/r;->a:Lcom/igexin/push/c/q;

    invoke-static {v3}, Lcom/igexin/push/c/q;->b(Lcom/igexin/push/c/q;)Lcom/igexin/push/c/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igexin/push/c/j;->d()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sub-long v7, v9, v1

    invoke-virtual/range {v5 .. v10}, Lcom/igexin/push/c/j;->a(Ljava/lang/String;JJ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/igexin/push/c/q;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|detect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/igexin/push/c/r;->a:Lcom/igexin/push/c/q;

    invoke-static {v1}, Lcom/igexin/push/c/q;->c(Lcom/igexin/push/c/q;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/igexin/push/c/r;->a:Lcom/igexin/push/c/q;

    invoke-static {v1}, Lcom/igexin/push/c/q;->b(Lcom/igexin/push/c/q;)Lcom/igexin/push/c/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/c/j;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const-class v0, Lcom/igexin/push/c/p;

    monitor-enter v0
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_cf} :catch_101
    .catchall {:try_start_48 .. :try_end_cf} :catchall_16c

    :try_start_cf
    iget-object v1, p0, Lcom/igexin/push/c/r;->a:Lcom/igexin/push/c/q;

    invoke-static {v1}, Lcom/igexin/push/c/q;->a(Lcom/igexin/push/c/q;)Lcom/igexin/push/c/p;

    move-result-object v1

    if-eqz v1, :cond_f2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_f2

    iget-object v1, p0, Lcom/igexin/push/c/r;->a:Lcom/igexin/push/c/q;

    invoke-static {v1}, Lcom/igexin/push/c/q;->a(Lcom/igexin/push/c/q;)Lcom/igexin/push/c/p;

    move-result-object v1

    sget-object v2, Lcom/igexin/push/c/g;->a:Lcom/igexin/push/c/g;

    iget-object v3, p0, Lcom/igexin/push/c/r;->a:Lcom/igexin/push/c/q;

    invoke-static {v3}, Lcom/igexin/push/c/q;->b(Lcom/igexin/push/c/q;)Lcom/igexin/push/c/j;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/igexin/push/c/p;->a(Lcom/igexin/push/c/g;Lcom/igexin/push/c/j;)V

    :cond_f2
    monitor-exit v0
    :try_end_f3
    .catchall {:try_start_cf .. :try_end_f3} :catchall_fe

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_179

    :goto_f9
    :try_start_f9
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_fc} :catch_179

    goto/16 :goto_179

    :catchall_fe
    move-exception v1

    :try_start_ff
    monitor-exit v0
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_fe

    :try_start_100
    throw v1
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_101} :catch_101
    .catchall {:try_start_100 .. :try_end_101} :catchall_16c

    :catch_101
    move-exception v0

    goto :goto_10d

    :catchall_103
    move-exception v2

    :try_start_104
    monitor-exit v1
    :try_end_105
    .catchall {:try_start_104 .. :try_end_105} :catchall_103

    :try_start_105
    throw v2
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_106} :catch_10a
    .catchall {:try_start_105 .. :try_end_106} :catchall_106

    :catchall_106
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_16d

    :catch_10a
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    :goto_10d
    :try_start_10d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/igexin/push/c/q;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|detect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/igexin/push/c/r;->a:Lcom/igexin/push/c/q;

    invoke-static {v2}, Lcom/igexin/push/c/q;->c(Lcom/igexin/push/c/q;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "thread -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    const-class v0, Lcom/igexin/push/c/p;

    monitor-enter v0
    :try_end_13d
    .catchall {:try_start_10d .. :try_end_13d} :catchall_16c

    :try_start_13d
    iget-object v1, p0, Lcom/igexin/push/c/r;->a:Lcom/igexin/push/c/q;

    invoke-static {v1}, Lcom/igexin/push/c/q;->a(Lcom/igexin/push/c/q;)Lcom/igexin/push/c/p;

    move-result-object v1

    if-eqz v1, :cond_15f

    iget-object v1, p0, Lcom/igexin/push/c/r;->a:Lcom/igexin/push/c/q;

    invoke-static {v1}, Lcom/igexin/push/c/q;->b(Lcom/igexin/push/c/q;)Lcom/igexin/push/c/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/push/c/j;->b()V

    iget-object v1, p0, Lcom/igexin/push/c/r;->a:Lcom/igexin/push/c/q;

    invoke-static {v1}, Lcom/igexin/push/c/q;->a(Lcom/igexin/push/c/q;)Lcom/igexin/push/c/p;

    move-result-object v1

    sget-object v2, Lcom/igexin/push/c/g;->c:Lcom/igexin/push/c/g;

    iget-object v3, p0, Lcom/igexin/push/c/r;->a:Lcom/igexin/push/c/q;

    invoke-static {v3}, Lcom/igexin/push/c/q;->b(Lcom/igexin/push/c/q;)Lcom/igexin/push/c/j;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/igexin/push/c/p;->a(Lcom/igexin/push/c/g;Lcom/igexin/push/c/j;)V

    :cond_15f
    monitor-exit v0
    :try_end_160
    .catchall {:try_start_13d .. :try_end_160} :catchall_169

    if-eqz v4, :cond_179

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_179

    goto :goto_f9

    :catchall_169
    move-exception v1

    :try_start_16a
    monitor-exit v0
    :try_end_16b
    .catchall {:try_start_16a .. :try_end_16b} :catchall_169

    :try_start_16b
    throw v1
    :try_end_16c
    .catchall {:try_start_16b .. :try_end_16c} :catchall_16c

    :catchall_16c
    move-exception v0

    :goto_16d
    if-eqz v4, :cond_178

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_178

    :try_start_175
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_175 .. :try_end_178} :catch_178

    :catch_178
    :cond_178
    throw v0

    :catch_179
    :cond_179
    :goto_179
    iget-object v0, p0, Lcom/igexin/push/c/r;->a:Lcom/igexin/push/c/q;

    invoke-static {v0}, Lcom/igexin/push/c/q;->b(Lcom/igexin/push/c/q;)Lcom/igexin/push/c/j;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/igexin/push/c/r;->a()Lcom/igexin/push/c/j;

    move-result-object v0

    return-object v0
.end method
