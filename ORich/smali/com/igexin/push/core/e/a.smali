###### Class com.igexin.push.core.e.a (com.igexin.push.core.e.a)
.class public Lcom/igexin/push/core/e/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/igexin/push/core/e/c;

.field private static volatile b:Lcom/igexin/push/core/e/a; = null

.field private static c:Landroid/content/Context; = null

.field private static d:Z = false

.field private static e:Z = false

.field private static f:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0xa

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v7, Lcom/igexin/push/core/e/a;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/push/core/e/d;->a(Ljava/lang/String;)Lcom/igexin/push/core/e/c;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/core/e/a;->a:Lcom/igexin/push/core/e/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/igexin/push/core/e/a;
    .registers 2

    sget-object v0, Lcom/igexin/push/core/e/a;->b:Lcom/igexin/push/core/e/a;

    if-nez v0, :cond_17

    const-class v0, Lcom/igexin/push/core/e/a;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/igexin/push/core/e/a;->b:Lcom/igexin/push/core/e/a;

    if-nez v1, :cond_12

    new-instance v1, Lcom/igexin/push/core/e/a;

    invoke-direct {v1}, Lcom/igexin/push/core/e/a;-><init>()V

    sput-object v1, Lcom/igexin/push/core/e/a;->b:Lcom/igexin/push/core/e/a;

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
    sget-object v0, Lcom/igexin/push/core/e/a;->b:Lcom/igexin/push/core/e/a;

    return-object v0
.end method

.method static synthetic a(Lcom/igexin/push/core/e/a;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/igexin/push/core/e/a;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/igexin/push/core/e/a;->g:Ljava/lang/String;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/igexin/push/core/e/a;->a:Lcom/igexin/push/core/e/c;

    if-eqz v0, :cond_1d

    if-nez p1, :cond_7

    goto :goto_1d

    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/igexin/push/core/e/a;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/igexin/push/core/e/a;->c()Z

    move-result p1

    sput-boolean p1, Lcom/igexin/push/core/e/a;->e:Z

    if-eqz p1, :cond_1d

    sget-object p1, Lcom/igexin/push/core/e/a;->c:Landroid/content/Context;

    invoke-interface {v0, p1}, Lcom/igexin/push/core/e/c;->c(Landroid/content/Context;)Z

    move-result p1

    sput-boolean p1, Lcom/igexin/push/core/e/a;->d:Z

    :cond_1d
    :goto_1d
    return-void
.end method

.method static synthetic a(Lcom/igexin/push/core/e/a;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/igexin/push/core/e/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b()Z
    .registers 1

    sget-boolean v0, Lcom/igexin/push/core/e/a;->e:Z

    return v0
.end method

.method private c()Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/igexin/push/core/e/a;->c:Landroid/content/Context;

    if-nez v1, :cond_6

    return v0

    :cond_6
    sget-object v2, Lcom/igexin/push/core/e/a;->a:Lcom/igexin/push/core/e/c;

    if-nez v2, :cond_b

    return v0

    :cond_b
    invoke-interface {v2, v1}, Lcom/igexin/push/core/e/c;->a(Landroid/content/Context;)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    :catchall_f
    return v0
.end method

.method private d()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/igexin/push/core/e/a;->c:Landroid/content/Context;

    if-nez v1, :cond_6

    return-object v0

    :cond_6
    sget-object v2, Lcom/igexin/push/core/e/a;->a:Lcom/igexin/push/core/e/c;

    if-eqz v2, :cond_13

    sget-boolean v3, Lcom/igexin/push/core/e/a;->d:Z

    if-nez v3, :cond_f

    goto :goto_13

    :cond_f
    invoke-interface {v2, v1}, Lcom/igexin/push/core/e/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_13

    :catchall_13
    :cond_13
    :goto_13
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/igexin/push/core/e/e;)V
    .registers 5

    sget-object v0, Lcom/igexin/push/core/e/a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    if-eqz p2, :cond_11

    const/4 p1, 0x1

    sget-object v0, Lcom/igexin/push/core/e/a;->g:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lcom/igexin/push/core/e/e;->a(ZLjava/lang/String;)V

    return-void

    :cond_11
    :try_start_11
    sget-object v0, Lcom/igexin/push/core/e/a;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/igexin/push/core/e/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/igexin/push/core/e/b;-><init>(Lcom/igexin/push/core/e/a;Landroid/content/Context;Lcom/igexin/push/core/e/e;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_1b

    :catchall_1b
    return-void
.end method
