###### Class com.igexin.push.extension.distribution.gbd.a.c.k (com.igexin.push.extension.distribution.gbd.a.c.k)
.class Lcom/igexin/push/extension/distribution/gbd/a/c/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;


# direct methods
.method public constructor <init>(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)V
    .registers 3

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/k;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->a(Lcom/igexin/push/extension/distribution/gbd/a/c/f;Z)Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    :goto_0
    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/k;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->c(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Z

    move-result v0

    if-eqz v0, :cond_7e

    :try_start_8
    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/k;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->d(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    const/16 v1, 0xd3

    new-array v2, v1, [B

    new-instance v3, Ljava/net/DatagramPacket;

    const/16 v4, 0x89

    invoke-direct {v3, v2, v1, v0, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/k;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->b(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/k;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v2}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->e(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/k;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v2}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->e(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igexin/push/extension/distribution/gbd/b/h;

    goto :goto_59

    :cond_4b
    new-instance v2, Lcom/igexin/push/extension/distribution/gbd/b/h;

    invoke-direct {v2}, Lcom/igexin/push/extension/distribution/gbd/b/h;-><init>()V

    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/k;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v3}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->e(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_59
    invoke-virtual {v2, v1}, Lcom/igexin/push/extension/distribution/gbd/b/h;->c(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    const/16 v4, 0x39

    const/16 v5, 0xf

    invoke-direct {v3, v0, v4, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v3}, Lcom/igexin/push/extension/distribution/gbd/b/h;->b(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/igexin/push/extension/distribution/gbd/b/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/k;->a:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->e(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_78
    .catchall {:try_start_8 .. :try_end_78} :catchall_79

    goto :goto_0

    :catchall_79
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_7e
    return-void
.end method
