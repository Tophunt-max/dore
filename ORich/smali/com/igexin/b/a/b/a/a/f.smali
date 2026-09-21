###### Class com.igexin.b.a.b.a.a.f (com.igexin.b.a.b.a.a.f)
.class public final Lcom/igexin/b/a/b/a/a/f;
.super Ljava/lang/Object;


# static fields
.field private static final m:Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/concurrent/locks/Lock;

.field public b:Ljava/util/concurrent/locks/Condition;

.field c:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/igexin/b/a/b/a/a/m;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/igexin/b/a/b/b;

.field private e:Lcom/igexin/b/a/b/d;

.field private f:Ljava/net/Socket;

.field private g:Lcom/igexin/b/a/b/a/a/l;

.field private h:Lcom/igexin/b/a/b/a/a/n;

.field private i:Lcom/igexin/b/a/b/a/a/c;

.field private j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private k:Z

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/igexin/b/a/b/a/a/m;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/os/Handler;

.field private o:J

.field private final p:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/igexin/b/a/b/a/a/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/igexin/b/a/b/a/a/f;->m:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->b:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->l:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/igexin/b/a/b/a/a/j;

    invoke-direct {v0, p0}, Lcom/igexin/b/a/b/a/a/j;-><init>(Lcom/igexin/b/a/b/a/a/f;)V

    iput-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->p:Ljava/util/Comparator;

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/e;->b()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->n:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/igexin/b/a/b/a/a/g;)V
    .registers 2

    invoke-direct {p0}, Lcom/igexin/b/a/b/a/a/f;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/igexin/b/a/b/a/a/f;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/igexin/b/a/b/a/a/f;->n:Landroid/os/Handler;

    return-object p0
.end method

.method public static a()Lcom/igexin/b/a/b/a/a/f;
    .registers 1

    invoke-static {}, Lcom/igexin/b/a/b/a/a/k;->a()Lcom/igexin/b/a/b/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/igexin/b/a/b/a/a/f;Lcom/igexin/b/a/b/a/a/m;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/igexin/b/a/b/a/a/f;->b(Lcom/igexin/b/a/b/a/a/m;)V

    return-void
.end method

.method static synthetic b(Lcom/igexin/b/a/b/a/a/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/igexin/b/a/b/a/a/f;->i()V

    return-void
.end method

.method private b(Lcom/igexin/b/a/b/a/a/m;)V
    .registers 10

    iget v0, p1, Lcom/igexin/b/a/b/a/a/m;->y:I

    if-lez v0, :cond_91

    iget-object v0, p1, Lcom/igexin/b/a/b/a/a/m;->D:Lcom/igexin/b/a/d/a/f;

    if-nez v0, :cond_a

    goto/16 :goto_91

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/igexin/b/a/b/a/a/m;->b(J)V

    sget-object v2, Lcom/igexin/b/a/b/a/a/f;->m:Ljava/lang/Object;

    monitor-enter v2

    :try_start_14
    iget-object v3, p0, Lcom/igexin/b/a/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/igexin/b/a/b/a/a/f;->l:Ljava/util/List;

    iget-object v4, p0, Lcom/igexin/b/a/b/a/a/f;->p:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/igexin/b/a/b/a/a/f;->l:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/igexin/b/a/b/a/a/m;

    iget v4, v4, Lcom/igexin/b/a/b/a/a/m;->y:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/igexin/b/a/b/a/a/f;->o:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_8c

    iget-object v3, p0, Lcom/igexin/b/a/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GS-M|add : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/igexin/b/a/b/a/a/m;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " set alarm "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "delay = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/igexin/b/a/b/a/a/f;->o:J

    sget-wide v6, Lcom/igexin/b/a/d/f;->u:J

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    iget-wide v3, p0, Lcom/igexin/b/a/b/a/a/f;->o:J

    add-long/2addr v0, v3

    sget-wide v3, Lcom/igexin/b/a/d/f;->u:J

    add-long/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Lcom/igexin/b/a/b/c;->b(J)V

    :cond_8c
    monitor-exit v2

    return-void

    :catchall_8e
    move-exception p1

    monitor-exit v2
    :try_end_90
    .catchall {:try_start_14 .. :try_end_90} :catchall_8e

    throw p1

    :cond_91
    :goto_91
    invoke-virtual {p1}, Lcom/igexin/b/a/b/a/a/m;->p()V

    return-void
.end method

.method private b(Ljava/net/Socket;)V
    .registers 5

    new-instance v0, Lcom/igexin/b/a/b/a/a/l;

    new-instance v1, Lcom/igexin/b/a/b/a/a/o;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/igexin/b/a/b/a/a/o;-><init>(Ljava/io/InputStream;)V

    iget-object p1, p0, Lcom/igexin/b/a/b/a/a/f;->d:Lcom/igexin/b/a/b/b;

    iget-object v2, p0, Lcom/igexin/b/a/b/a/a/f;->e:Lcom/igexin/b/a/b/d;

    invoke-direct {v0, v1, p1, v2}, Lcom/igexin/b/a/b/a/a/l;-><init>(Lcom/igexin/b/a/b/a/a/o;Lcom/igexin/b/a/b/b;Lcom/igexin/b/a/b/d;)V

    iput-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->g:Lcom/igexin/b/a/b/a/a/l;

    new-instance p1, Lcom/igexin/b/a/b/a/a/h;

    invoke-direct {p1, p0}, Lcom/igexin/b/a/b/a/a/h;-><init>(Lcom/igexin/b/a/b/a/a/f;)V

    invoke-virtual {v0, p1}, Lcom/igexin/b/a/b/a/a/l;->a(Lcom/igexin/b/a/b/a/a/a/b;)V

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->g:Lcom/igexin/b/a/b/a/a/l;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;Z)Z

    return-void
.end method

.method private c(Ljava/net/Socket;)V
    .registers 5

    new-instance v0, Lcom/igexin/b/a/b/a/a/n;

    new-instance v1, Lcom/igexin/b/a/b/a/a/p;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/igexin/b/a/b/a/a/p;-><init>(Ljava/io/OutputStream;)V

    iget-object p1, p0, Lcom/igexin/b/a/b/a/a/f;->d:Lcom/igexin/b/a/b/b;

    iget-object v2, p0, Lcom/igexin/b/a/b/a/a/f;->e:Lcom/igexin/b/a/b/d;

    invoke-direct {v0, v1, p1, v2}, Lcom/igexin/b/a/b/a/a/n;-><init>(Lcom/igexin/b/a/b/a/a/p;Lcom/igexin/b/a/b/b;Lcom/igexin/b/a/b/d;)V

    iput-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->h:Lcom/igexin/b/a/b/a/a/n;

    new-instance p1, Lcom/igexin/b/a/b/a/a/i;

    invoke-direct {p1, p0}, Lcom/igexin/b/a/b/a/a/i;-><init>(Lcom/igexin/b/a/b/a/a/f;)V

    invoke-virtual {v0, p1}, Lcom/igexin/b/a/b/a/a/n;->a(Lcom/igexin/b/a/b/a/a/a/c;)V

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->h:Lcom/igexin/b/a/b/a/a/n;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;Z)Z

    return-void
.end method

.method private i()V
    .registers 3

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->n:Landroid/os/Handler;

    sget-object v1, Lcom/igexin/b/a/b/a/a/q;->a:Lcom/igexin/b/a/b/a/a/q;

    invoke-virtual {v1}, Lcom/igexin/b/a/b/a/a/q;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_14
    return-void
.end method

.method private j()V
    .registers 3

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/e;->g()Lcom/igexin/push/f/a;

    move-result-object v0

    sget-object v1, Lcom/igexin/b/a/b/a/a/q;->b:Lcom/igexin/b/a/b/a/a/q;

    invoke-virtual {v0, v1}, Lcom/igexin/push/f/a;->a(Lcom/igexin/b/a/b/a/a/q;)V

    return-void
.end method

.method private k()V
    .registers 2

    const-string v0, "GS-M|disconnect"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->i:Lcom/igexin/b/a/b/a/a/c;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/igexin/b/a/b/a/a/c;->j()V

    :cond_c
    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->h:Lcom/igexin/b/a/b/a/a/n;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/igexin/b/a/b/a/a/n;->j()V

    :cond_13
    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->g:Lcom/igexin/b/a/b/a/a/l;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/igexin/b/a/b/a/a/l;->j()V

    :cond_1a
    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->f:Ljava/net/Socket;

    if-eqz v0, :cond_29

    :try_start_1e
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->f:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_29} :catch_29

    :catch_29
    :cond_29
    return-void
.end method

.method private l()V
    .registers 3

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->h:Lcom/igexin/b/a/b/a/a/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iput-object v1, v0, Lcom/igexin/b/a/b/a/a/n;->j:Lcom/igexin/b/a/b/a/a/p;

    iput-object v1, p0, Lcom/igexin/b/a/b/a/a/f;->h:Lcom/igexin/b/a/b/a/a/n;

    :cond_9
    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->g:Lcom/igexin/b/a/b/a/a/l;

    if-eqz v0, :cond_11

    iput-object v1, v0, Lcom/igexin/b/a/b/a/a/l;->i:Lcom/igexin/b/a/b/a/a/o;

    iput-object v1, p0, Lcom/igexin/b/a/b/a/a/f;->g:Lcom/igexin/b/a/b/a/a/l;

    :cond_11
    iput-object v1, p0, Lcom/igexin/b/a/b/a/a/f;->i:Lcom/igexin/b/a/b/a/a/c;

    iput-object v1, p0, Lcom/igexin/b/a/b/a/a/f;->f:Ljava/net/Socket;

    iput-object v1, p0, Lcom/igexin/b/a/b/a/a/f;->e:Lcom/igexin/b/a/b/d;

    return-void
.end method

.method private m()Z
    .registers 2

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->i:Lcom/igexin/b/a/b/a/a/c;

    if-eqz v0, :cond_8

    iget-boolean v0, v0, Lcom/igexin/b/a/b/a/a/c;->e:Z

    if-eqz v0, :cond_18

    :cond_8
    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->g:Lcom/igexin/b/a/b/a/a/l;

    if-eqz v0, :cond_10

    iget-boolean v0, v0, Lcom/igexin/b/a/b/a/a/l;->e:Z

    if-eqz v0, :cond_18

    :cond_10
    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->h:Lcom/igexin/b/a/b/a/a/n;

    if-eqz v0, :cond_1a

    iget-boolean v0, v0, Lcom/igexin/b/a/b/a/a/n;->e:Z

    if-nez v0, :cond_1a

    :cond_18
    const/4 v0, 0x0

    return v0

    :cond_1a
    invoke-direct {p0}, Lcom/igexin/b/a/b/a/a/f;->l()V

    const/4 v0, 0x1

    return v0
.end method

.method private n()Z
    .registers 2

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->f:Ljava/net/Socket;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private o()V
    .registers 4

    invoke-static {}, Lcom/igexin/push/util/p;->d()Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/b/a/b/c;->e()V

    const-string v0, "GS-M|cancel alrm"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/igexin/b/a/b/a/a/f;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_15
    iget-object v1, p0, Lcom/igexin/b/a/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_38

    iget-object v1, p0, Lcom/igexin/b/a/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/igexin/b/a/b/a/a/m;

    invoke-virtual {v2}, Lcom/igexin/b/a/b/a/a/m;->p()V

    goto :goto_23

    :cond_33
    iget-object v1, p0, Lcom/igexin/b/a/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_38
    monitor-exit v0

    goto :goto_3d

    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_15 .. :try_end_3c} :catchall_3a

    throw v1

    :cond_3d
    :goto_3d
    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igexin/b/a/b/a/a/m;

    invoke-virtual {v1}, Lcom/igexin/b/a/b/a/a/m;->p()V

    goto :goto_4b

    :cond_5b
    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    :cond_60
    return-void
.end method


# virtual methods
.method a(Lcom/igexin/b/a/b/a/a/m;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/igexin/b/a/b/a/a/f;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_15

    :catch_f
    :try_start_f
    iget-object p1, p0, Lcom/igexin/b/a/b/a/a/f;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_1c

    goto :goto_1c

    :catchall_15
    move-exception p1

    :try_start_16
    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_1b

    :catch_1b
    throw p1

    :catch_1c
    :goto_1c
    return-void
.end method

.method public a(Lcom/igexin/b/a/b/b;)V
    .registers 3

    iput-object p1, p0, Lcom/igexin/b/a/b/a/a/f;->d:Lcom/igexin/b/a/b/b;

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->g:Lcom/igexin/b/a/b/a/a/l;

    if-eqz v0, :cond_8

    iput-object p1, v0, Lcom/igexin/b/a/b/a/a/l;->j:Lcom/igexin/b/a/b/b;

    :cond_8
    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->h:Lcom/igexin/b/a/b/a/a/n;

    if-eqz v0, :cond_e

    iput-object p1, v0, Lcom/igexin/b/a/b/a/a/n;->i:Lcom/igexin/b/a/b/b;

    :cond_e
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 12

    invoke-static {}, Lcom/igexin/push/util/p;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/igexin/b/a/b/a/a/f;->m:Ljava/lang/Object;

    monitor-enter v2

    :try_start_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GS-M|receive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -- resp"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/igexin/b/a/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2d
    :goto_2d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_64

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/igexin/b/a/b/a/a/m;

    iget-object v7, v3, Lcom/igexin/b/a/b/a/a/m;->D:Lcom/igexin/b/a/d/a/f;

    invoke-interface {v7, v0, v1, v3}, Lcom/igexin/b/a/d/a/f;->a(JLcom/igexin/b/a/d/e;)Z

    move-result v7

    if-eqz v7, :cond_51

    invoke-virtual {v3}, Lcom/igexin/b/a/b/a/a/m;->p()V

    iget-object v7, v3, Lcom/igexin/b/a/b/a/a/m;->D:Lcom/igexin/b/a/d/a/f;

    invoke-interface {v7, v3}, Lcom/igexin/b/a/d/a/f;->a(Lcom/igexin/b/a/d/e;)V

    const/4 v3, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_65

    :cond_51
    iget-object v6, v3, Lcom/igexin/b/a/b/a/a/m;->D:Lcom/igexin/b/a/d/a/f;

    invoke-interface {v6, v0, v1, v3}, Lcom/igexin/b/a/d/a/f;->b(JLcom/igexin/b/a/d/e;)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/igexin/b/a/b/a/a/f;->o:J

    cmp-long v3, v8, v4

    if-ltz v3, :cond_61

    cmp-long v3, v8, v6

    if-lez v3, :cond_2d

    :cond_61
    iput-wide v6, p0, Lcom/igexin/b/a/b/a/a/f;->o:J

    goto :goto_2d

    :cond_64
    const/4 v3, 0x0

    :goto_65
    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igexin/b/a/b/c;->e()V

    if-eqz v3, :cond_78

    const-string p1, "GS-M|time out"

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/igexin/b/a/b/a/a/f;->e()V

    monitor-exit v2

    return-void

    :cond_78
    iget-object p1, p0, Lcom/igexin/b/a/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_97

    iget-object p1, p0, Lcom/igexin/b/a/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/igexin/b/a/b/a/a/m;

    invoke-virtual {p1}, Lcom/igexin/b/a/b/a/a/m;->p()V

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/igexin/b/a/b/c;->a(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/igexin/b/a/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_97
    iget-object p1, p0, Lcom/igexin/b/a/b/a/a/f;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_c8

    iget-wide v6, p0, Lcom/igexin/b/a/b/a/a/f;->o:J

    cmp-long p1, v6, v4

    if-lez p1, :cond_c8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GS-M|set alarm = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/igexin/b/a/b/a/a/f;->o:J

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object p1

    iget-wide v3, p0, Lcom/igexin/b/a/b/a/a/f;->o:J

    add-long/2addr v0, v3

    sget-wide v3, Lcom/igexin/b/a/d/f;->u:J

    add-long/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Lcom/igexin/b/a/b/c;->b(J)V

    :cond_c8
    monitor-exit v2

    return-void

    :catchall_ca
    move-exception p1

    monitor-exit v2
    :try_end_cc
    .catchall {:try_start_e .. :try_end_cc} :catchall_ca

    throw p1
.end method

.method a(Ljava/net/Socket;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->i:Lcom/igexin/b/a/b/a/a/c;

    invoke-virtual {v0}, Lcom/igexin/b/a/b/a/a/c;->i()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iput-object p1, p0, Lcom/igexin/b/a/b/a/a/f;->f:Ljava/net/Socket;

    new-instance v0, Lcom/igexin/b/a/b/d;

    invoke-direct {v0}, Lcom/igexin/b/a/b/d;-><init>()V

    iput-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->e:Lcom/igexin/b/a/b/d;

    invoke-direct {p0, p1}, Lcom/igexin/b/a/b/a/a/f;->b(Ljava/net/Socket;)V

    invoke-direct {p0, p1}, Lcom/igexin/b/a/b/a/a/f;->c(Ljava/net/Socket;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_35

    :catch_19
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GS-M|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/igexin/b/a/b/a/a/f;->i()V

    :goto_35
    return-void
.end method

.method b()V
    .registers 3

    invoke-static {}, Lcom/igexin/push/core/e;->a()Lcom/igexin/push/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/push/core/e;->g()Lcom/igexin/push/f/a;

    move-result-object v0

    sget-object v1, Lcom/igexin/b/a/b/a/a/q;->a:Lcom/igexin/b/a/b/a/a/q;

    invoke-virtual {v0, v1}, Lcom/igexin/push/f/a;->a(Lcom/igexin/b/a/b/a/a/q;)V

    return-void
.end method

.method public declared-synchronized c()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->n:Landroid/os/Handler;

    sget-object v1, Lcom/igexin/b/a/b/a/a/q;->g:Lcom/igexin/b/a/b/a/a/q;

    invoke-virtual {v1}, Lcom/igexin/b/a/b/a/a/q;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d()V
    .registers 3

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->n:Landroid/os/Handler;

    sget-object v1, Lcom/igexin/b/a/b/a/a/q;->d:Lcom/igexin/b/a/b/a/a/q;

    invoke-virtual {v1}, Lcom/igexin/b/a/b/a/a/q;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igexin/b/a/b/a/a/f;->k:Z

    return-void
.end method

.method public e()V
    .registers 2

    const-string v0, "GS-M|alarm timeout~~"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/igexin/b/a/b/a/a/f;->i()V

    return-void
.end method

.method public f()V
    .registers 2

    invoke-direct {p0}, Lcom/igexin/b/a/b/a/a/f;->o()V

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->i:Lcom/igexin/b/a/b/a/a/c;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->h:Lcom/igexin/b/a/b/a/a/n;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->g:Lcom/igexin/b/a/b/a/a/l;

    if-eqz v0, :cond_15

    :cond_f
    invoke-direct {p0}, Lcom/igexin/b/a/b/a/a/f;->m()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_15
    invoke-direct {p0}, Lcom/igexin/b/a/b/a/a/f;->j()V

    goto :goto_1c

    :cond_19
    invoke-direct {p0}, Lcom/igexin/b/a/b/a/a/f;->k()V

    :goto_1c
    return-void
.end method

.method g()V
    .registers 4

    invoke-direct {p0}, Lcom/igexin/b/a/b/a/a/f;->n()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v1, p0, Lcom/igexin/b/a/b/a/a/f;->i:Lcom/igexin/b/a/b/a/a/c;

    if-eqz v1, :cond_b

    goto :goto_27

    :cond_b
    const-string v0, "GS-M|disconnect = true, reconnect"

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/igexin/b/a/b/a/a/c;

    new-instance v1, Lcom/igexin/b/a/b/a/a/g;

    invoke-direct {v1, p0}, Lcom/igexin/b/a/b/a/a/g;-><init>(Lcom/igexin/b/a/b/a/a/f;)V

    invoke-direct {v0, v1}, Lcom/igexin/b/a/b/a/a/c;-><init>(Lcom/igexin/b/a/b/a/a/a/d;)V

    iput-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->i:Lcom/igexin/b/a/b/a/a/c;

    invoke-static {}, Lcom/igexin/b/a/b/c;->b()Lcom/igexin/b/a/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/b/a/b/a/a/f;->i:Lcom/igexin/b/a/b/a/a/c;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/d/e;Z)Z

    return-void

    :cond_27
    :goto_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GS-Mstart connect, isConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", ctask = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/f;->i:Lcom/igexin/b/a/b/a/a/c;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method h()V
    .registers 2

    invoke-direct {p0}, Lcom/igexin/b/a/b/a/a/f;->m()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/igexin/b/a/b/a/a/f;->k:Z

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/igexin/b/a/b/a/a/f;->j()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/b/a/b/a/a/f;->k:Z

    :cond_10
    return-void
.end method
