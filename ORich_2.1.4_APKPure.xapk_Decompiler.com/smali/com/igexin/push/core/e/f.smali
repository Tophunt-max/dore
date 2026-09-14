###### Class com.igexin.push.core.e.f (com.igexin.push.core.e.f)
.class Lcom/igexin/push/core/e/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/push/core/e/c;


# static fields
.field private static a:Ljava/lang/String; = null

.field private static b:Z = false

.field private static c:Z = false

.field private static final d:Ljava/util/concurrent/CountDownLatch;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/igexin/push/core/e/i;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/igexin/push/core/e/f;->d:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/igexin/push/core/e/f;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/igexin/push/core/e/f;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/igexin/push/core/e/f;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/igexin/push/core/e/f;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(Landroid/content/pm/PackageInfo;)J
    .registers 6

    :try_start_0
    const-class v0, Landroid/content/pm/PackageInfo;

    const-string v1, "getLongVersionCode"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    return-wide v0

    :catch_1c
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected a()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Z
    .registers 8

    sget-boolean v0, Lcom/igexin/push/core/e/f;->c:Z

    if-eqz v0, :cond_7

    sget-boolean p1, Lcom/igexin/push/core/e/f;->b:Z

    return p1

    :cond_7
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3c

    iget-object v2, p0, Lcom/igexin/push/core/e/f;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_3c

    :cond_14
    :try_start_14
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v2, p0, Lcom/igexin/push/core/e/f;->e:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_33

    if-eqz p1, :cond_31

    invoke-virtual {p0, p1}, Lcom/igexin/push/core/e/f;->a(Landroid/content/pm/PackageInfo;)J

    move-result-wide v2
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_3b

    const-wide/16 v4, 0x1

    cmp-long p1, v2, v4

    if-ltz p1, :cond_31

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    return v0

    :cond_33
    if-eqz p1, :cond_3c

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-lt p1, v0, :cond_3c

    const/4 v1, 0x1

    goto :goto_3c

    :catchall_3b
    return v1

    :cond_3c
    :goto_3c
    sput-boolean v1, Lcom/igexin/push/core/e/f;->b:Z

    sput-boolean v0, Lcom/igexin/push/core/e/f;->c:Z

    sget-boolean p1, Lcom/igexin/push/core/e/f;->b:Z

    return p1
.end method

.method protected b()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    sget-object v0, Lcom/igexin/push/core/e/f;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/igexin/push/core/e/f;->i:Lcom/igexin/push/core/e/i;

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Lcom/igexin/push/core/e/i;->a()Lcom/igexin/push/core/e/h;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_3f

    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/igexin/push/core/e/f;->i:Lcom/igexin/push/core/e/i;

    invoke-virtual {v0}, Lcom/igexin/push/core/e/i;->a()Lcom/igexin/push/core/e/h;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/igexin/push/core/e/f;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/igexin/push/core/e/f;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/igexin/push/core/e/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/igexin/push/core/e/f;->b()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/igexin/push/core/e/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/e/f;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/igexin/push/core/e/f;->i:Lcom/igexin/push/core/e/i;

    if-eqz v0, :cond_3c

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3c
    .catchall {:try_start_13 .. :try_end_3c} :catchall_3c

    :catchall_3c
    :cond_3c
    sget-object p1, Lcom/igexin/push/core/e/f;->a:Ljava/lang/String;

    return-object p1

    :cond_3f
    :goto_3f
    sget-object p1, Lcom/igexin/push/core/e/f;->a:Ljava/lang/String;

    return-object p1
.end method

.method public c(Landroid/content/Context;)Z
    .registers 6

    if-eqz p1, :cond_4d

    iget-object v0, p0, Lcom/igexin/push/core/e/f;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_4d

    :cond_b
    iget-object v0, p0, Lcom/igexin/push/core/e/f;->i:Lcom/igexin/push/core/e/i;

    if-nez v0, :cond_1a

    new-instance v0, Lcom/igexin/push/core/e/i;

    iget-object v1, p0, Lcom/igexin/push/core/e/f;->h:Ljava/lang/String;

    sget-object v2, Lcom/igexin/push/core/e/f;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1, v2}, Lcom/igexin/push/core/e/i;-><init>(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    iput-object v0, p0, Lcom/igexin/push/core/e/f;->i:Lcom/igexin/push/core/e/i;

    :cond_1a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/igexin/push/core/e/f;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/igexin/push/core/e/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_39

    :cond_2d
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/igexin/push/core/e/f;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/igexin/push/core/e/f;->f:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_39
    iget-object v1, p0, Lcom/igexin/push/core/e/f;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_46

    iget-object v1, p0, Lcom/igexin/push/core/e/f;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_46
    iget-object v1, p0, Lcom/igexin/push/core/e/f;->i:Lcom/igexin/push/core/e/i;

    invoke-virtual {v1, p1, v0}, Lcom/igexin/push/core/e/i;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    return p1

    :cond_4d
    :goto_4d
    const/4 p1, 0x0

    return p1
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
