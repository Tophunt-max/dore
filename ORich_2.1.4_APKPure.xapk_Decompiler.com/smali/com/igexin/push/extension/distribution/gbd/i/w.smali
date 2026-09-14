###### Class com.igexin.push.extension.distribution.gbd.i.w (com.igexin.push.extension.distribution.gbd.i.w)
.class public Lcom/igexin/push/extension/distribution/gbd/i/w;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String; = "OaidManager"

.field private static b:Lcom/igexin/push/extension/distribution/gbd/i/w;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/igexin/push/extension/distribution/gbd/i/y;

.field private volatile e:Z

.field private f:Ljava/util/concurrent/locks/Lock;

.field private g:Ljava/util/concurrent/locks/Condition;

.field private h:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->g:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/i/x;

    invoke-direct {v0, p0}, Lcom/igexin/push/extension/distribution/gbd/i/x;-><init>(Lcom/igexin/push/extension/distribution/gbd/i/w;)V

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->p:Landroid/content/ServiceConnection;

    invoke-static {}, Lcom/igexin/push/extension/distribution/gbd/i/k;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->i:Ljava/lang/String;

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/c/c;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "redmi"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "blackshark"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "huawei"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "hua_wei"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "honor"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "vivo"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "oppo"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "meizu"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a()Lcom/igexin/push/extension/distribution/gbd/i/w;
    .registers 2

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/i/w;->b:Lcom/igexin/push/extension/distribution/gbd/i/w;

    if-nez v0, :cond_17

    const-class v0, Lcom/igexin/push/extension/distribution/gbd/i/w;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/igexin/push/extension/distribution/gbd/i/w;->b:Lcom/igexin/push/extension/distribution/gbd/i/w;

    if-nez v1, :cond_12

    new-instance v1, Lcom/igexin/push/extension/distribution/gbd/i/w;

    invoke-direct {v1}, Lcom/igexin/push/extension/distribution/gbd/i/w;-><init>()V

    sput-object v1, Lcom/igexin/push/extension/distribution/gbd/i/w;->b:Lcom/igexin/push/extension/distribution/gbd/i/w;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/i/w;->b:Lcom/igexin/push/extension/distribution/gbd/i/w;

    return-object v0
.end method

.method static synthetic a(Lcom/igexin/push/extension/distribution/gbd/i/w;Lcom/igexin/push/extension/distribution/gbd/i/y;)Lcom/igexin/push/extension/distribution/gbd/i/y;
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->d:Lcom/igexin/push/extension/distribution/gbd/i/y;

    return-object p1
.end method

.method static synthetic a(Lcom/igexin/push/extension/distribution/gbd/i/w;)Ljava/util/concurrent/locks/Lock;
    .registers 1

    iget-object p0, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->f:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .registers 5

    :try_start_0
    sget-object p1, Lcom/igexin/push/extension/distribution/gbd/i/w;->a:Ljava/lang/String;

    const-string v0, "start bind oaidForHUAWEI service"

    invoke-static {p1, v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.huawei.hwid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->p:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_20
    return-void
.end method

.method static synthetic b(Lcom/igexin/push/extension/distribution/gbd/i/w;)V
    .registers 1

    invoke-direct {p0}, Lcom/igexin/push/extension/distribution/gbd/i/w;->d()V

    return-void
.end method

.method static synthetic c(Lcom/igexin/push/extension/distribution/gbd/i/w;)Landroid/content/ServiceConnection;
    .registers 1

    iget-object p0, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->p:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic c()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/i/w;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    :try_start_0
    const-string v0, "com.android.id.impl.IdProviderImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getOAID"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-boolean v3, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->e:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_27

    return-object p1

    :catchall_27
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    const-string p1, ""

    return-object p1
.end method

.method static synthetic d(Lcom/igexin/push/extension/distribution/gbd/i/w;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->c:Landroid/content/Context;

    return-object p0
.end method

.method private d(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string p1, "content://com.vivo.vms.IdProvider/IdentifierId/OAID"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3f

    :try_start_14
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "value"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->e:Z
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_2d

    :try_start_24
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_2c

    :catchall_28
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_2c
    return-object v0

    :catchall_2d
    move-exception v0

    :try_start_2e
    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_35

    :try_start_31
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_43

    goto :goto_47

    :catchall_35
    move-exception v0

    :try_start_36
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_3e

    :catchall_3a
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_3e
    throw v0

    :cond_3f
    :try_start_3f
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_47
    const-string p1, ""

    return-object p1
.end method

.method private d()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->d:Lcom/igexin/push/extension/distribution/gbd/i/y;

    invoke-virtual {v0}, Lcom/igexin/push/extension/distribution/gbd/i/y;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->j:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->e:Z

    sget-object v0, Lcom/igexin/push/extension/distribution/gbd/i/w;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get oaidForHUAWEI result>> oaidForHUAWEI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_24

    goto :goto_28

    :catchall_24
    move-exception v0

    invoke-static {v0}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_28
    return-void
.end method

.method private e(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    :try_start_0
    const-string v0, "content://com.meizu.flyme.openidsdk/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string p1, "oaid"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2e

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "value"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->e:Z
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    return-object p1

    :catchall_2a
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_2e
    const-string p1, ""

    return-object p1
.end method

.method static synthetic e(Lcom/igexin/push/extension/distribution/gbd/i/w;)Ljava/util/concurrent/locks/Condition;
    .registers 1

    iget-object p0, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->g:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method

.method private f(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/i/z;

    invoke-direct {v0}, Lcom/igexin/push/extension/distribution/gbd/i/z;-><init>()V

    invoke-virtual {v0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/t;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/t;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/t;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->e:Z
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return-object p1

    :catchall_19
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_1d
    const-string p1, ""

    return-object p1
.end method

.method private g(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    new-instance v0, Lcom/igexin/push/extension/distribution/gbd/i/aa;

    invoke-direct {v0}, Lcom/igexin/push/extension/distribution/gbd/i/aa;-><init>()V

    invoke-virtual {v0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/t;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/t;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/t;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->e:Z
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_19

    return-object p1

    :catchall_19
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :cond_1d
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->i:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_a2

    goto/16 :goto_71

    :sswitch_c
    const-string v2, "samsung"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    const/16 v1, 0x9

    goto :goto_71

    :sswitch_17
    const-string v2, "hua_wei"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    const/4 v1, 0x4

    goto :goto_71

    :sswitch_21
    const-string v2, "redmi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    const/4 v1, 0x1

    goto :goto_71

    :sswitch_2b
    const-string v2, "meizu"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    const/4 v1, 0x7

    goto :goto_71

    :sswitch_35
    const-string v2, "honor"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    const/4 v1, 0x5

    goto :goto_71

    :sswitch_3f
    const-string v2, "vivo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    const/4 v1, 0x6

    goto :goto_71

    :sswitch_49
    const-string v2, "oppo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    const/16 v1, 0x8

    goto :goto_71

    :sswitch_54
    const-string v2, "xiaomi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    const/4 v1, 0x0

    goto :goto_71

    :sswitch_5e
    const-string v2, "huawei"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    const/4 v1, 0x3

    goto :goto_71

    :sswitch_68
    const-string v2, "blackshark"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    const/4 v1, 0x2

    :cond_71
    :goto_71
    packed-switch v1, :pswitch_data_cc

    goto :goto_a0

    :pswitch_75
    invoke-direct {p0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/w;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->o:Ljava/lang/String;

    goto :goto_a0

    :pswitch_7c
    invoke-direct {p0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/w;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->m:Ljava/lang/String;

    goto :goto_a0

    :pswitch_83
    invoke-direct {p0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/w;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->n:Ljava/lang/String;

    goto :goto_a0

    :pswitch_8a
    invoke-direct {p0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/w;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->l:Ljava/lang/String;

    goto :goto_a0

    :pswitch_91
    invoke-direct {p0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/w;->b(Landroid/content/Context;)V

    goto :goto_a0

    :pswitch_95
    invoke-direct {p0, p1}, Lcom/igexin/push/extension/distribution/gbd/i/w;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->k:Ljava/lang/String;
    :try_end_9b
    .catchall {:try_start_0 .. :try_end_9b} :catchall_9c

    goto :goto_a0

    :catchall_9c
    move-exception p1

    invoke-static {p1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V

    :goto_a0
    return-void

    nop

    :sswitch_data_a2
    .sparse-switch
        -0x608d18ba -> :sswitch_68
        -0x47e95e19 -> :sswitch_5e
        -0x2d450b45 -> :sswitch_54
        0x3427a0 -> :sswitch_49
        0x373cac -> :sswitch_3f
        0x5edac6a -> :sswitch_35
        0x62f84cc -> :sswitch_2b
        0x675e5ed -> :sswitch_21
        0x4ab2f590 -> :sswitch_17
        0x6f28bffa -> :sswitch_c
    .end sparse-switch

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_95
        :pswitch_95
        :pswitch_95
        :pswitch_91
        :pswitch_91
        :pswitch_91
        :pswitch_8a
        :pswitch_83
        :pswitch_7c
        :pswitch_75
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->e:Z

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->c:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/igexin/push/extension/distribution/gbd/i/w;->a(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_d
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->g:Ljava/util/concurrent/locks/Condition;

    const-wide/32 v2, 0x77359400

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_1b

    :goto_15
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_20

    :catchall_1b
    move-exception v1

    :try_start_1c
    invoke-static {v1}, Lcom/igexin/push/extension/distribution/gbd/i/j;->a(Ljava/lang/Throwable;)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_bc

    goto :goto_15

    :goto_20
    iget-boolean v1, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->e:Z

    const-string v2, ""

    if-nez v1, :cond_27

    return-object v2

    :cond_27
    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_c4

    :goto_34
    const/4 v0, -0x1

    goto/16 :goto_a6

    :sswitch_37
    const-string v0, "samsung"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_34

    :cond_40
    const/16 v0, 0x9

    goto/16 :goto_a6

    :sswitch_44
    const-string v0, "hua_wei"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto :goto_34

    :cond_4d
    const/16 v0, 0x8

    goto :goto_a6

    :sswitch_50
    const-string v0, "redmi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto :goto_34

    :cond_59
    const/4 v0, 0x7

    goto :goto_a6

    :sswitch_5b
    const-string v0, "meizu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    goto :goto_34

    :cond_64
    const/4 v0, 0x6

    goto :goto_a6

    :sswitch_66
    const-string v0, "honor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    goto :goto_34

    :cond_6f
    const/4 v0, 0x5

    goto :goto_a6

    :sswitch_71
    const-string v0, "vivo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    goto :goto_34

    :cond_7a
    const/4 v0, 0x4

    goto :goto_a6

    :sswitch_7c
    const-string v0, "oppo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    goto :goto_34

    :cond_85
    const/4 v0, 0x3

    goto :goto_a6

    :sswitch_87
    const-string v0, "xiaomi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    goto :goto_34

    :cond_90
    const/4 v0, 0x2

    goto :goto_a6

    :sswitch_92
    const-string v0, "huawei"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    goto :goto_34

    :cond_9b
    const/4 v0, 0x1

    goto :goto_a6

    :sswitch_9d
    const-string v4, "blackshark"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a6

    goto :goto_34

    :cond_a6
    :goto_a6
    packed-switch v0, :pswitch_data_ee

    goto :goto_bb

    :pswitch_aa
    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->o:Ljava/lang/String;

    goto :goto_bb

    :pswitch_ad
    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->n:Ljava/lang/String;

    goto :goto_bb

    :pswitch_b0
    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->l:Ljava/lang/String;

    goto :goto_bb

    :pswitch_b3
    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->m:Ljava/lang/String;

    goto :goto_bb

    :pswitch_b6
    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->j:Ljava/lang/String;

    goto :goto_bb

    :pswitch_b9
    iget-object v2, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->k:Ljava/lang/String;

    :goto_bb
    return-object v2

    :catchall_bc
    move-exception v0

    iget-object v1, p0, Lcom/igexin/push/extension/distribution/gbd/i/w;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    nop

    :sswitch_data_c4
    .sparse-switch
        -0x608d18ba -> :sswitch_9d
        -0x47e95e19 -> :sswitch_92
        -0x2d450b45 -> :sswitch_87
        0x3427a0 -> :sswitch_7c
        0x373cac -> :sswitch_71
        0x5edac6a -> :sswitch_66
        0x62f84cc -> :sswitch_5b
        0x675e5ed -> :sswitch_50
        0x4ab2f590 -> :sswitch_44
        0x6f28bffa -> :sswitch_37
    .end sparse-switch

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_b9
        :pswitch_b6
        :pswitch_b9
        :pswitch_b3
        :pswitch_b0
        :pswitch_b6
        :pswitch_ad
        :pswitch_b9
        :pswitch_b6
        :pswitch_aa
    .end packed-switch
.end method
