###### Class com.igexin.push.c.q (com.igexin.push.c.q)
.class public Lcom/igexin/push/c/q;
.super Lcom/igexin/push/g/b/h;


# static fields
.field public static final a:I

.field private static final b:Ljava/lang/String;

.field private static c:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private e:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lcom/igexin/push/c/j;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/igexin/push/c/j;

.field private g:Lcom/igexin/push/c/p;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/igexin/push/c/q;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/push/c/q;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sput v0, Lcom/igexin/push/c/q;->a:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const-wide/32 v0, 0x240c8400

    invoke-direct {p0, v0, v1}, Lcom/igexin/push/g/b/h;-><init>(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/push/c/q;->o:Z

    return-void
.end method

.method static synthetic a(Lcom/igexin/push/c/q;)Lcom/igexin/push/c/p;
    .registers 1

    iget-object p0, p0, Lcom/igexin/push/c/q;->g:Lcom/igexin/push/c/p;

    return-object p0
.end method

.method static synthetic b(Lcom/igexin/push/c/q;)Lcom/igexin/push/c/j;
    .registers 1

    iget-object p0, p0, Lcom/igexin/push/c/q;->f:Lcom/igexin/push/c/j;

    return-object p0
.end method

.method static synthetic c(Lcom/igexin/push/c/q;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/igexin/push/c/q;->w()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e_()V
    .registers 2

    invoke-static {}, Lcom/igexin/push/config/SDKUrlConfig;->getXfrAddress()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    sget-object v0, Lcom/igexin/push/c/q;->c:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_12

    :try_start_c
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/igexin/push/c/q;->c:Ljava/util/concurrent/ExecutorService;
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_12

    :catchall_12
    :cond_12
    return-void
.end method

.method static synthetic k()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/igexin/push/c/q;->b:Ljava/lang/String;

    return-object v0
.end method

.method private v()V
    .registers 9

    sget-object v0, Lcom/igexin/push/c/q;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_18

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/16 v3, 0xc

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/igexin/push/c/q;->c:Ljava/util/concurrent/ExecutorService;

    :cond_18
    sget-object v0, Lcom/igexin/push/c/q;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/igexin/push/c/r;

    invoke-direct {v1, p0}, Lcom/igexin/push/c/r;-><init>(Lcom/igexin/push/c/q;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/push/c/q;->e:Ljava/util/concurrent/Future;

    return-void
.end method

.method private w()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/igexin/push/c/q;->f:Lcom/igexin/push/c/j;

    invoke-virtual {v1}, Lcom/igexin/push/c/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/igexin/push/c/q;->f:Lcom/igexin/push/c/j;

    invoke-virtual {v1}, Lcom/igexin/push/c/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private x()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/igexin/push/c/q;->e:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/igexin/push/c/q;->e:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/igexin/push/c/q;->e:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igexin/push/c/q;->e:Ljava/util/concurrent/Future;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1b

    :catch_1b
    :cond_1b
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v1, 0x1b7740

    invoke-virtual {p0, v1, v2, v0}, Lcom/igexin/push/c/q;->a(JLjava/util/concurrent/TimeUnit;)I

    const-class v0, Lcom/igexin/push/c/p;

    monitor-enter v0

    :try_start_b
    iget-object v1, p0, Lcom/igexin/push/c/q;->g:Lcom/igexin/push/c/p;

    if-eqz v1, :cond_12

    invoke-direct {p0}, Lcom/igexin/push/c/q;->v()V

    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_14

    throw v1
.end method

.method public a(Lcom/igexin/push/c/j;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/push/c/q;->f:Lcom/igexin/push/c/j;

    return-void
.end method

.method public a(Lcom/igexin/push/c/p;)V
    .registers 3

    const-class v0, Lcom/igexin/push/c/p;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/igexin/push/c/q;->g:Lcom/igexin/push/c/p;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/igexin/push/c/q;->h:Z

    return-void
.end method

.method public final b()I
    .registers 2

    sget v0, Lcom/igexin/push/c/q;->a:I

    return v0
.end method

.method public c()V
    .registers 1

    invoke-super {p0}, Lcom/igexin/push/g/b/h;->c()V

    return-void
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method public f_()Lcom/igexin/push/c/j;
    .registers 2

    iget-object v0, p0, Lcom/igexin/push/c/q;->f:Lcom/igexin/push/c/j;

    return-object v0
.end method

.method public g_()V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/c/q;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|start detect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/igexin/push/c/q;->f:Lcom/igexin/push/c/j;

    invoke-virtual {v1}, Lcom/igexin/push/c/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v1, v2, v0}, Lcom/igexin/push/c/q;->a(JLjava/util/concurrent/TimeUnit;)I

    return-void
.end method

.method public i()V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/push/c/q;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|stop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/igexin/push/c/q;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " task"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/igexin/push/c/q;->x()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v1, 0x240c8400

    invoke-virtual {p0, v1, v2, v0}, Lcom/igexin/push/c/q;->a(JLjava/util/concurrent/TimeUnit;)I

    return-void
.end method

.method public j()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/igexin/push/c/q;->a(Lcom/igexin/push/c/p;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igexin/push/c/q;->o:Z

    invoke-virtual {p0}, Lcom/igexin/push/c/q;->p()V

    invoke-direct {p0}, Lcom/igexin/push/c/q;->x()V

    return-void
.end method
