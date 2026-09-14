###### Class com.igexin.b.a.b.a.a.c (com.igexin.b.a.b.a.a.c)
.class public final Lcom/igexin/b/a/b/a/a/c;
.super Lcom/igexin/b/a/b/a/a/a;


# instance fields
.field private i:Lcom/igexin/b/a/b/a/a/a/d;

.field private j:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/igexin/b/a/b/a/a/a/d;)V
    .registers 4

    const/16 v0, -0x7f5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/igexin/b/a/b/a/a/a;-><init>(ILjava/lang/String;Lcom/igexin/b/a/b/b;)V

    iput-object p1, p0, Lcom/igexin/b/a/b/a/a/c;->i:Lcom/igexin/b/a/b/a/a/a/d;

    return-void
.end method


# virtual methods
.method public final b()I
    .registers 2

    const/16 v0, -0x7f5

    return v0
.end method

.method public b_()V
    .registers 7

    invoke-super {p0}, Lcom/igexin/b/a/b/a/a/a;->b_()V

    invoke-static {}, Lcom/igexin/push/c/i;->a()Lcom/igexin/push/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/c/i;->d()Lcom/igexin/push/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/c/a;->a()Z

    invoke-static {}, Lcom/igexin/push/config/SDKUrlConfig;->getCmAddress()Ljava/lang/String;

    move-result-object v0

    :try_start_12
    invoke-static {v0}, Lcom/igexin/b/a/b/f;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v3, v1, v2

    const/4 v4, 0x2

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_20} :catch_b1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GS-C|start connect :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " *********"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/igexin/b/a/b/a/a/c;->i:Lcom/igexin/b/a/b/a/a/a/d;

    if-eqz v4, :cond_40

    invoke-interface {v4, v0}, Lcom/igexin/b/a/b/a/a/a/d;->a(Ljava/lang/String;)V

    :cond_40
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V

    iput-object v4, p0, Lcom/igexin/b/a/b/a/a/c;->j:Ljava/net/Socket;

    :try_start_47
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v3, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v1, 0x2710

    invoke-virtual {v4, v5, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GS-C|connected :  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #########"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GS-C|local-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/igexin/b/a/b/a/a/c;->j:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/igexin/b/a/b/a/a/c;->j:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/c;->f:Lcom/igexin/b/a/b/a/a/b;

    sget-object v1, Lcom/igexin/b/a/b/a/a/b;->c:Lcom/igexin/b/a/b/a/a/b;

    if-eq v0, v1, :cond_ae

    sget-object v0, Lcom/igexin/b/a/b/a/a/b;->a:Lcom/igexin/b/a/b/a/a/b;

    iput-object v0, p0, Lcom/igexin/b/a/b/a/a/c;->f:Lcom/igexin/b/a/b/a/a/b;
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_9c} :catch_9d

    goto :goto_ae

    :catch_9d
    move-exception v0

    iget-object v1, p0, Lcom/igexin/b/a/b/a/a/c;->f:Lcom/igexin/b/a/b/a/a/b;

    sget-object v3, Lcom/igexin/b/a/b/a/a/b;->c:Lcom/igexin/b/a/b/a/a/b;

    if-eq v1, v3, :cond_ae

    sget-object v1, Lcom/igexin/b/a/b/a/a/b;->b:Lcom/igexin/b/a/b/a/a/b;

    iput-object v1, p0, Lcom/igexin/b/a/b/a/a/c;->f:Lcom/igexin/b/a/b/a/a/b;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/b/a/b/a/a/c;->g:Ljava/lang/String;

    :cond_ae
    :goto_ae
    iput-boolean v2, p0, Lcom/igexin/b/a/b/a/a/c;->e:Z

    return-void

    :catch_b1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GS-C|ips invalid, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    throw v0
.end method

.method public f()V
    .registers 4

    invoke-super {p0}, Lcom/igexin/b/a/b/a/a/a;->f()V

    const-string v0, "GS-C|sc dispose"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/c;->i:Lcom/igexin/b/a/b/a/a/a/d;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/c;->f:Lcom/igexin/b/a/b/a/a/b;

    sget-object v1, Lcom/igexin/b/a/b/a/a/b;->c:Lcom/igexin/b/a/b/a/a/b;

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/c;->i:Lcom/igexin/b/a/b/a/a/a/d;

    invoke-interface {v0, p0}, Lcom/igexin/b/a/b/a/a/a/d;->a(Lcom/igexin/b/a/b/e;)V

    goto :goto_42

    :cond_18
    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/c;->f:Lcom/igexin/b/a/b/a/a/b;

    sget-object v1, Lcom/igexin/b/a/b/a/a/b;->b:Lcom/igexin/b/a/b/a/a/b;

    if-ne v0, v1, :cond_33

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/c;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/c;->i:Lcom/igexin/b/a/b/a/a/a/d;

    new-instance v1, Ljava/lang/Exception;

    iget-object v2, p0, Lcom/igexin/b/a/b/a/a/c;->g:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/igexin/b/a/b/a/a/a/d;->a(Ljava/lang/Exception;)V

    goto :goto_42

    :cond_33
    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/c;->f:Lcom/igexin/b/a/b/a/a/b;

    sget-object v1, Lcom/igexin/b/a/b/a/a/b;->a:Lcom/igexin/b/a/b/a/a/b;

    if-ne v0, v1, :cond_42

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/c;->j:Ljava/net/Socket;

    if-eqz v0, :cond_42

    iget-object v1, p0, Lcom/igexin/b/a/b/a/a/c;->i:Lcom/igexin/b/a/b/a/a/a/d;

    invoke-interface {v1, v0}, Lcom/igexin/b/a/b/a/a/a/d;->a(Ljava/net/Socket;)V

    :cond_42
    :goto_42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igexin/b/a/b/a/a/c;->i:Lcom/igexin/b/a/b/a/a/a/d;

    return-void
.end method

.method public j()V
    .registers 2

    sget-object v0, Lcom/igexin/b/a/b/a/a/b;->c:Lcom/igexin/b/a/b/a/a/b;

    iput-object v0, p0, Lcom/igexin/b/a/b/a/a/c;->f:Lcom/igexin/b/a/b/a/a/b;

    return-void
.end method
