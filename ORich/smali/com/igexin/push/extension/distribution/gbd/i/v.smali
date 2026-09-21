###### Class com.igexin.push.extension.distribution.gbd.i.v (com.igexin.push.extension.distribution.gbd.i.v)
.class Lcom/igexin/push/extension/distribution/gbd/i/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/igexin/push/extension/distribution/gbd/i/t;

.field private b:Lcom/igexin/push/extension/distribution/gbd/i/u;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/concurrent/CountDownLatch;

.field private e:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/igexin/push/extension/distribution/gbd/i/t;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/i/v;->a:Lcom/igexin/push/extension/distribution/gbd/i/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/igexin/push/extension/distribution/gbd/i/v;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/igexin/push/extension/distribution/gbd/i/v;->d:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method a()Lcom/igexin/push/extension/distribution/gbd/i/u;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/v;->b:Lcom/igexin/push/extension/distribution/gbd/i/u;

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/i/v;->b:Lcom/igexin/push/extension/distribution/gbd/i/u;

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    return v2

    :cond_a
    :try_start_a
    invoke-virtual {p1, p2, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iget-object p2, p0, Lcom/igexin/push/extension/distribution/gbd/i/v;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->await()V

    iget-object p2, p0, Lcom/igexin/push/extension/distribution/gbd/i/v;->e:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/i/v;->c:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/igexin/push/extension/distribution/gbd/i/u;->a(Landroid/os/IBinder;Ljava/lang/String;)Lcom/igexin/push/extension/distribution/gbd/i/u;

    move-result-object p2

    iput-object p2, p0, Lcom/igexin/push/extension/distribution/gbd/i/v;->b:Lcom/igexin/push/extension/distribution/gbd/i/u;
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1e

    return p1

    :catchall_1e
    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    :try_start_0
    iput-object p2, p0, Lcom/igexin/push/extension/distribution/gbd/i/v;->e:Landroid/os/IBinder;

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/i/v;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_7

    :catchall_7
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/i/v;->b:Lcom/igexin/push/extension/distribution/gbd/i/u;

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/i/v;->e:Landroid/os/IBinder;

    return-void
.end method
