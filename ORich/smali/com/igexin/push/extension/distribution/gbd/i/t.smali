###### Class com.igexin.push.extension.distribution.gbd.i.t (com.igexin.push.extension.distribution.gbd.i.t)
.class public Lcom/igexin/push/extension/distribution/gbd/i/t;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private final d:Ljava/util/concurrent/CountDownLatch;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/igexin/push/extension/distribution/gbd/i/v;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->b:Z

    iput-boolean v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->c:Z

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->d:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Z
    .registers 8

    iget-boolean v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->c:Z

    if-eqz v0, :cond_7

    iget-boolean p1, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->b:Z

    return p1

    :cond_7
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_50

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_50

    :cond_14
    :try_start_14
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->e:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_47

    if-eqz p1, :cond_47

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getLongVersionCode"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_3e
    .catchall {:try_start_14 .. :try_end_3e} :catchall_4f

    const-wide/16 v4, 0x1

    cmp-long p1, v2, v4

    if-ltz p1, :cond_45

    goto :goto_46

    :cond_45
    const/4 v0, 0x0

    :goto_46
    return v0

    :cond_47
    if-eqz p1, :cond_50

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-lt p1, v0, :cond_50

    const/4 v1, 0x1

    goto :goto_50

    :catchall_4f
    return v1

    :cond_50
    :goto_50
    iput-boolean v1, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->b:Z

    iput-boolean v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->c:Z

    iget-boolean p1, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->b:Z

    return p1
.end method

.method protected b()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/content/Context;)Z
    .registers 6

    if-eqz p1, :cond_4d

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_4d

    :cond_b
    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->i:Lcom/igexin/push/extension/distribution/gbd/i/v;

    if-nez v0, :cond_1a

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/i/v;

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, p0, v1, v2}, Lcom/igexin/push/extension/distribution/gbd/i/v;-><init>(Lcom/igexin/push/extension/distribution/gbd/i/t;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->i:Lcom/igexin/push/extension/distribution/gbd/i/v;

    :cond_1a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_39

    :cond_2d
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->f:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_39
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_46

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_46
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->i:Lcom/igexin/push/extension/distribution/gbd/i/v;

    invoke-virtual {v1, p1, v0}, Lcom/igexin/push/extension/distribution/gbd/i/v;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_4d
    :goto_4d
    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->i:Lcom/igexin/push/extension/distribution/gbd/i/v;

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/gbd/i/v;->a()Lcom/igexin/push/extension/distribution/gbd/i/u;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_44

    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->i:Lcom/igexin/push/extension/distribution/gbd/i/v;

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/gbd/i/v;->a()Lcom/igexin/push/extension/distribution/gbd/i/u;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/t;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/t;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/igexin/push/extension/distribution/gbd/i/t;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/igexin/push/extension/distribution/gbd/i/t;->b()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/igexin/push/extension/distribution/gbd/i/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->i:Lcom/igexin/push/extension/distribution/gbd/i/v;

    if-eqz v0, :cond_41

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3c
    .catchall {:try_start_13 .. :try_end_3c} :catchall_3d

    goto :goto_41

    :catchall_3d
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_41
    :goto_41
    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->a:Ljava/lang/String;

    return-object p1

    :cond_44
    :goto_44
    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/i/t;->a:Ljava/lang/String;

    return-object p1
.end method

.method protected d(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method protected e(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method
