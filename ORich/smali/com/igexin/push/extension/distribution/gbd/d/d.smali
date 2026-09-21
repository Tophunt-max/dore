###### Class com.igexin.push.extension.distribution.gbd.d.d (com.igexin.push.extension.distribution.gbd.d.d)
.class public Lcom/igexin/push/extension/distribution/gbd/d/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/igexin/push/extension/distribution/gbd/d/d;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/igexin/push/extension/distribution/gbd/d/k;

.field private d:Lcom/igexin/push/extension/distribution/gbd/g/a;

.field private e:Lcom/igexin/push/extension/distribution/gbd/g/d;

.field private f:Lcom/igexin/push/extension/distribution/gbd/g/b;

.field private g:Lcom/igexin/push/extension/distribution/gbd/g/c;

.field private h:Lcom/igexin/push/extension/distribution/gbd/h/a;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/d/k;

    invoke-direct {v0}, Lcom/igexin/push/extension/distribution/gbd/d/k;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->c:Lcom/igexin/push/extension/distribution/gbd/d/k;

    return-void
.end method

.method public static a()Lcom/igexin/push/extension/distribution/gbd/d/d;
    .registers 1

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/d/d;->a:Lcom/igexin/push/extension/distribution/gbd/d/d;

    if-nez v0, :cond_b

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/d/d;

    invoke-direct {v0}, Lcom/igexin/push/extension/distribution/gbd/d/d;-><init>()V

    sput-object v0, Lcom/igexin/push/extension/distribution/gbd/d/d;->a:Lcom/igexin/push/extension/distribution/gbd/d/d;

    :cond_b
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/d/d;->a:Lcom/igexin/push/extension/distribution/gbd/d/d;

    return-object v0
.end method

.method static synthetic a(Lcom/igexin/push/extension/distribution/gbd/d/d;)Lcom/igexin/push/extension/distribution/gbd/h/a;
    .registers 1

    iget-object p0, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->h:Lcom/igexin/push/extension/distribution/gbd/h/a;

    return-object p0
.end method

.method static synthetic b(Lcom/igexin/push/extension/distribution/gbd/d/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/d/d;->m()V

    return-void
.end method

.method static synthetic c(Lcom/igexin/push/extension/distribution/gbd/d/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/d/d;->o()V

    return-void
.end method

.method static synthetic d(Lcom/igexin/push/extension/distribution/gbd/d/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/d/d;->l()V

    return-void
.end method

.method static synthetic e(Lcom/igexin/push/extension/distribution/gbd/d/d;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->b:Landroid/content/Context;

    return-object p0
.end method

.method private f()V
    .registers 4

    sget v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->bH:I

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    new-instance v2, Lcom/igexin/push/extension/distribution/gbd/d/e;

    invoke-direct {v2, p0, v0, v1}, Lcom/igexin/push/extension/distribution/gbd/d/e;-><init>(Lcom/igexin/push/extension/distribution/gbd/d/d;J)V

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/igexin/push/core/e;->a(Lcom/igexin/push/g/b/h;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add data TimerTask result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GBD_Logic"

    invoke-static {v1, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private g()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/k;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "http://sdk.open.phone.igexin.com/api/addr.htm"

    new-instance v1, Lcom/igexin/push/extension/distribution/gbd/f/a/b;

    new-instance v2, Lcom/igexin/push/extension/distribution/gbd/d/f;

    invoke-direct {v2, p0}, Lcom/igexin/push/extension/distribution/gbd/d/f;-><init>(Lcom/igexin/push/extension/distribution/gbd/d/d;)V

    invoke-direct {v1, v2}, Lcom/igexin/push/extension/distribution/gbd/f/a/b;-><init>(Lcom/igexin/push/extension/distribution/gbd/f/c;)V

    invoke-virtual {v1, v0}, Lcom/igexin/push/extension/distribution/gbd/f/a/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    new-instance v2, Lcom/igexin/push/extension/distribution/gbd/f/a;

    invoke-direct {v2, v1}, Lcom/igexin/push/extension/distribution/gbd/f/a;-><init>(Lcom/igexin/push/extension/distribution/gbd/f/d;)V

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method private h()V
    .registers 6

    sget v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->ad:I

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sget v2, Lcom/igexin/push/extension/distribution/gbd/c/a;->ae:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    new-instance v2, Lcom/igexin/push/extension/distribution/gbd/d/g;

    invoke-direct {v2, p0, v0, v1}, Lcom/igexin/push/extension/distribution/gbd/d/g;-><init>(Lcom/igexin/push/extension/distribution/gbd/d/d;J)V

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/igexin/push/core/e;->a(Lcom/igexin/push/g/b/h;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add guard TimerTask result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "|guardTime = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GBD_Logic"

    invoke-static {v1, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private i()V
    .registers 4

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/d/j;

    const-wide/16 v1, 0xbb8

    invoke-direct {v0, p0, v1, v2}, Lcom/igexin/push/extension/distribution/gbd/d/j;-><init>(Lcom/igexin/push/extension/distribution/gbd/d/d;J)V

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/push/core/e;->a(Lcom/igexin/push/g/b/h;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add gbd config TimerTask result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GBD_Logic"

    invoke-static {v1, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private j()V
    .registers 3

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/e/a;

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/e/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->b:Lcom/igexin/push/extension/distribution/gbd/e/a;

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/a;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/gbd/e/a/a;->b()V

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->b()V

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/gbd/e/a/b;->b()V

    return-void
.end method

.method private k()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->b:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sput-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->d:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x1

    sput-boolean v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->i:Z
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_24

    goto :goto_28

    :catchall_24
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_28
    :goto_28
    return-void
.end method

.method private l()V
    .registers 4

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/g/b;

    invoke-direct {v0}, Lcom/igexin/push/extension/distribution/gbd/g/b;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->f:Lcom/igexin/push/extension/distribution/gbd/g/b;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->f:Lcom/igexin/push/extension/distribution/gbd/g/b;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private m()V
    .registers 4

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/g/a;

    invoke-direct {v0}, Lcom/igexin/push/extension/distribution/gbd/g/a;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->d:Lcom/igexin/push/extension/distribution/gbd/g/a;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->d:Lcom/igexin/push/extension/distribution/gbd/g/a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private n()V
    .registers 4

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/g/d;

    invoke-direct {v0}, Lcom/igexin/push/extension/distribution/gbd/g/d;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->e:Lcom/igexin/push/extension/distribution/gbd/g/d;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.igexin.sdk.action.QOkj0EWj4X5ymiTKHegll8"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->e:Lcom/igexin/push/extension/distribution/gbd/g/d;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private o()V
    .registers 4

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/g/c;

    invoke-direct {v0}, Lcom/igexin/push/extension/distribution/gbd/g/c;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->g:Lcom/igexin/push/extension/distribution/gbd/g/c;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->g:Lcom/igexin/push/extension/distribution/gbd/g/c;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private p()V
    .registers 4

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->w()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/h/a/c;->i_()Lcom/igexin/push/extension/distribution/gbd/h/a/c;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;ZZ)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCAT  result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GBD_Logic"

    invoke-static {v1, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method private q()V
    .registers 14

    const-string v0, ","

    const-string v1, "GBD_Logic"

    :try_start_4
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->w()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CAE  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_127

    const-string v3, ""

    const-wide/16 v4, 0x0

    if-nez v2, :cond_49

    :try_start_22
    sput-wide v4, Lcom/igexin/push/extension/distribution/gbd/c/c;->N:J

    sput-wide v4, Lcom/igexin/push/extension/distribution/gbd/c/c;->O:J

    sput-object v3, Lcom/igexin/push/extension/distribution/gbd/c/c;->M:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    move-result-object v0

    sget-wide v2, Lcom/igexin/push/extension/distribution/gbd/c/c;->N:J

    invoke-virtual {v0, v2, v3}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->o(J)V

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    move-result-object v0

    sget-wide v2, Lcom/igexin/push/extension/distribution/gbd/c/c;->O:J

    invoke-virtual {v0, v2, v3}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->p(J)V

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    move-result-object v0

    sget-object v2, Lcom/igexin/push/extension/distribution/gbd/c/c;->M:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->e(Ljava/lang/String;)V

    const-string v0, "clean CAD. "

    invoke-static {v1, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_49
    sget-object v2, Lcom/igexin/push/extension/distribution/gbd/c/c;->M:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/16 v6, 0xc8

    if-lt v2, v6, :cond_64

    const-string v2, " CAD length > 200, clean. "

    invoke-static {v1, v2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/igexin/push/extension/distribution/gbd/c/c;->M:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    move-result-object v2

    sget-object v3, Lcom/igexin/push/extension/distribution/gbd/c/c;->M:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->e(Ljava/lang/String;)V

    :cond_64
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->x()J

    move-result-wide v2

    sget-wide v6, Lcom/igexin/push/extension/distribution/gbd/c/c;->N:J

    sget-wide v8, Lcom/igexin/push/extension/distribution/gbd/c/c;->O:J

    add-long/2addr v6, v8

    sub-long v6, v2, v6

    sget-wide v8, Lcom/igexin/push/extension/distribution/gbd/c/c;->N:J

    cmp-long v10, v8, v4

    if-nez v10, :cond_8c

    sput-wide v2, Lcom/igexin/push/extension/distribution/gbd/c/c;->N:J

    sput-wide v4, Lcom/igexin/push/extension/distribution/gbd/c/c;->O:J

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    move-result-object v0

    sget-wide v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->N:J

    invoke-virtual {v0, v1, v2}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->o(J)V

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    move-result-object v0

    sget-wide v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->O:J

    invoke-virtual {v0, v1, v2}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->p(J)V

    return-void

    :cond_8c
    sget-wide v8, Lcom/igexin/push/extension/distribution/gbd/c/a;->aL:J

    const-wide/16 v10, 0x3e8

    mul-long v8, v8, v10

    cmp-long v12, v6, v8

    if-gtz v12, :cond_b9

    sget-wide v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->N:J

    sub-long v0, v2, v0

    sput-wide v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->O:J

    sget-wide v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->O:J

    cmp-long v6, v0, v4

    if-gez v6, :cond_a6

    sput-wide v2, Lcom/igexin/push/extension/distribution/gbd/c/c;->N:J

    sput-wide v4, Lcom/igexin/push/extension/distribution/gbd/c/c;->O:J

    :cond_a6
    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    move-result-object v0

    sget-wide v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->N:J

    invoke-virtual {v0, v1, v2}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->o(J)V

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    move-result-object v0

    sget-wide v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->O:J

    invoke-virtual {v0, v1, v2}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->p(J)V

    return-void

    :cond_b9
    sget-wide v6, Lcom/igexin/push/extension/distribution/gbd/c/c;->O:J

    const-wide/16 v8, 0x2710

    cmp-long v12, v6, v8

    if-ltz v12, :cond_110

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v7, Lcom/igexin/push/extension/distribution/gbd/c/c;->N:J

    div-long/2addr v7, v10

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v7, Lcom/igexin/push/extension/distribution/gbd/c/c;->O:J

    div-long/2addr v7, v10

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/igexin/push/extension/distribution/gbd/c/c;->M:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->M:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    move-result-object v0

    sget-object v6, Lcom/igexin/push/extension/distribution/gbd/c/c;->M:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CAD update =  "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/igexin/push/extension/distribution/gbd/c/c;->M:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_110
    sput-wide v2, Lcom/igexin/push/extension/distribution/gbd/c/c;->N:J

    sput-wide v4, Lcom/igexin/push/extension/distribution/gbd/c/c;->O:J

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    move-result-object v0

    sget-wide v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->N:J

    invoke-virtual {v0, v1, v2}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->o(J)V

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->a()Lcom/igexin/push/extension/distribution/gbd/e/a/g;

    move-result-object v0

    sget-wide v1, Lcom/igexin/push/extension/distribution/gbd/c/c;->O:J

    invoke-virtual {v0, v1, v2}, Lcom/igexin/push/extension/distribution/gbd/e/a/g;->p(J)V
    :try_end_126
    .catchall {:try_start_22 .. :try_end_126} :catchall_127

    goto :goto_12b

    :catchall_127
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_12b
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->b:Landroid/content/Context;

    iget-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->c:Lcom/igexin/push/extension/distribution/gbd/d/k;

    invoke-virtual {p1}, Lcom/igexin/push/extension/distribution/gbd/d/k;->start()V

    return-void
.end method

.method public b()V
    .registers 3

    const-string v0, "GBD_Logic"

    const-string v1, "gbd logic init"

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->b:Landroid/content/Context;

    sput-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/d/d;->n()V

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/aj;->a()V

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/d/d;->j()V

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/d/d;->q()V

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/d/d;->p()V

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/d/d;->i()V

    sget-boolean v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->b:Z

    if-eqz v0, :cond_3d

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/d/d;->k()V

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/d/d;->g()V

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/a/d;->a()Lcom/igexin/push/extension/distribution/gbd/a/a/d;

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/a/a;->a()Lcom/igexin/push/extension/distribution/gbd/a/a/a;

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/a/e/a;->a()Lcom/igexin/push/extension/distribution/gbd/a/e/a;

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/h/a;

    invoke-direct {v0}, Lcom/igexin/push/extension/distribution/gbd/h/a;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->h:Lcom/igexin/push/extension/distribution/gbd/h/a;

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/d/d;->h()V

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/d/d;->f()V

    :cond_3d
    return-void
.end method

.method public c()V
    .registers 7

    sget-boolean v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->as:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->G()Ljava/util/List;

    move-result-object v0

    goto :goto_14

    :cond_a
    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4f

    :try_start_1a
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-gtz v4, :cond_4c

    new-instance v4, Lcom/igexin/push/extension/distribution/gbd/b/a;

    invoke-direct {v4}, Lcom/igexin/push/extension/distribution/gbd/b/a;-><init>()V

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/igexin/push/extension/distribution/gbd/b/a;->a(Ljava/lang/String;)V

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/igexin/push/extension/distribution/gbd/b/a;->c(Ljava/lang/String;)V

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/igexin/push/extension/distribution/gbd/b/a;->d(Ljava/lang/String;)V

    sget-object v2, Lcom/igexin/push/extension/distribution/gbd/c/c;->p:Ljava/util/Map;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_47} :catch_48

    goto :goto_4c

    :catch_48
    move-exception v2

    invoke-static {v2}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_4c
    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_4f
    return-void
.end method

.method public d()V
    .registers 4

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->b:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "GBD_Logic"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->d:Lcom/igexin/push/extension/distribution/gbd/g/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->b:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->d:Lcom/igexin/push/extension/distribution/gbd/g/a;

    :cond_18
    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->e:Lcom/igexin/push/extension/distribution/gbd/g/d;

    if-eqz v0, :cond_23

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->b:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->e:Lcom/igexin/push/extension/distribution/gbd/g/d;

    :cond_23
    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->f:Lcom/igexin/push/extension/distribution/gbd/g/b;

    if-eqz v0, :cond_2e

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->b:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->f:Lcom/igexin/push/extension/distribution/gbd/g/b;

    :cond_2e
    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->g:Lcom/igexin/push/extension/distribution/gbd/g/c;

    if-eqz v0, :cond_39

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->b:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/d/d;->g:Lcom/igexin/push/extension/distribution/gbd/g/c;

    :cond_39
    return-void
.end method

.method public e()Z
    .registers 17

    move-object/from16 v1, p0

    const-string v0, "#"

    const-string v2, ","

    const-string v3, "none"

    const/4 v4, 0x0

    :try_start_9
    sget-object v5, Lcom/igexin/push/extension/distribution/gbd/c/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16a

    sget-object v5, Lcom/igexin/push/extension/distribution/gbd/c/a;->c:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    :goto_18
    array-length v7, v5
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_16c

    const-string v8, "GBD_Logic"

    if-ge v6, v7, :cond_3f

    :try_start_1d
    aget-object v7, v5, v6

    iget-object v9, v1, Lcom/igexin/push/extension/distribution/gbd/d/d;->b:Landroid/content/Context;

    invoke-static {v7, v9}, Lcom/igexin/push/extension/distribution/gbd/i/k;->d(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSafeStatus pkgName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_3c
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_3f
    sget-object v5, Lcom/igexin/push/extension/distribution/gbd/c/a;->d:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_10a

    sget-object v5, Lcom/igexin/push/extension/distribution/gbd/c/a;->d:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10a

    sget-object v5, Lcom/igexin/push/extension/distribution/gbd/c/a;->d:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    const/4 v9, 0x0

    :goto_58
    if-ge v9, v7, :cond_10a

    aget-object v10, v5, v9

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_105

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x3

    if-ne v11, v12, :cond_100

    aget-object v11, v10, v4

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_100

    aget-object v11, v10, v4

    new-instance v12, Ljava/util/ArrayList;

    aget-object v13, v10, v6

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v13, Ljava/util/ArrayList;

    const/4 v14, 0x2

    aget-object v10, v10, v14

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v13, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->r()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->t()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_105

    const-string v0, "11 checkStatus brand match."

    invoke-static {v8, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_f0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0
    :try_end_bc
    .catchall {:try_start_1d .. :try_end_bc} :catchall_16c

    if-ne v0, v6, :cond_f0

    const/4 v2, 0x0

    :try_start_bf
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_d1
    .catchall {:try_start_bf .. :try_end_d1} :catchall_ed

    :try_start_d1
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v14}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    cmpl-double v2, v7, v3

    if-ltz v2, :cond_eb

    if-lt v15, v0, :cond_eb

    const/4 v4, 0x1

    goto :goto_ec

    :cond_eb
    const/4 v4, 0x0

    :goto_ec
    return v4

    :catchall_ed
    move-exception v0

    goto/16 :goto_16e

    :cond_f0
    invoke-interface {v12, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fe

    invoke-interface {v13, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fe

    const/4 v4, 0x1

    goto :goto_ff

    :cond_fe
    const/4 v4, 0x0

    :goto_ff
    return v4

    :cond_100
    const-string v4, "11 rom format error,continue."

    invoke-static {v8, v4}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_105
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x0

    goto/16 :goto_58

    :cond_10a
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->e:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_168

    iget-object v0, v1, Lcom/igexin/push/extension/distribution/gbd/d/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/k;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_168

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lcom/igexin/push/extension/distribution/gbd/c/a;->as:Z

    if-eqz v2, :cond_129

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->G()Ljava/util/List;

    move-result-object v2

    goto :goto_134

    :cond_129
    sget-object v2, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    :goto_134
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_138
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_167

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v3, :cond_138

    array-length v4, v3

    if-lez v4, :cond_138

    array-length v4, v3

    const/4 v5, 0x0

    :goto_14d
    if-ge v5, v4, :cond_138

    aget-object v7, v3, v5

    array-length v8, v0

    const/4 v9, 0x0

    :goto_153
    if-ge v9, v8, :cond_164

    aget-object v10, v0, v9

    iget-object v11, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_15d
    .catchall {:try_start_d1 .. :try_end_15d} :catchall_16c

    if-eqz v10, :cond_161

    const/4 v10, 0x0

    return v10

    :cond_161
    add-int/lit8 v9, v9, 0x1

    goto :goto_153

    :cond_164
    add-int/lit8 v5, v5, 0x1

    goto :goto_14d

    :cond_167
    return v6

    :cond_168
    const/4 v2, 0x0

    return v2

    :cond_16a
    const/4 v2, 0x0

    return v2

    :catchall_16c
    move-exception v0

    const/4 v2, 0x0

    :goto_16e
    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    return v2
.end method
