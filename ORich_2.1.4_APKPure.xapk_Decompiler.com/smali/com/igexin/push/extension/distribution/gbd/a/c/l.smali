###### Class com.igexin.push.extension.distribution.gbd.a.c.l (com.igexin.push.extension.distribution.gbd.a.c.l)
.class Lcom/igexin/push/extension/distribution/gbd/a/c/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/igexin/push/extension/distribution/gbd/a/c/f;


# direct methods
.method public constructor <init>(Lcom/igexin/push/extension/distribution/gbd/a/c/f;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/l;->b:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/l;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/l;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/l;->b:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->a(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)[B

    move-result-object v1

    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, v1

    const/16 v4, 0x89

    invoke-direct {v2, v1, v3, v0, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/a/c/l;->b:Lcom/igexin/push/extension/distribution/gbd/a/c/f;

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/a/c/f;->b(Lcom/igexin/push/extension/distribution/gbd/a/c/f;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    goto :goto_22

    :catchall_1e
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_22
    return-void
.end method
