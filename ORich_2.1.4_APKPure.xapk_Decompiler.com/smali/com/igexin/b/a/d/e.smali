###### Class com.igexin.b.a.d.e (com.igexin.b.a.d.e)
.class public abstract Lcom/igexin/b/a/d/e;
.super Lcom/igexin/b/a/d/a;


# static fields
.field protected static E:Lcom/igexin/b/a/d/f;


# instance fields
.field public A:I

.field public B:Ljava/lang/Exception;

.field public C:Ljava/lang/Object;

.field public D:Lcom/igexin/b/a/d/a/f;

.field protected final F:Ljava/util/concurrent/locks/ReentrantLock;

.field protected final G:Ljava/util/concurrent/locks/Condition;

.field H:Ljava/lang/Thread;

.field protected volatile I:Z

.field J:I

.field protected K:Lcom/igexin/b/a/d/a/c;

.field private a:B

.field protected volatile k:Z

.field protected volatile m:Z

.field protected volatile n:Z

.field protected volatile o:Z

.field protected volatile p:Z

.field protected volatile q:Z

.field protected volatile r:Z

.field protected volatile s:Z

.field protected volatile t:Z

.field protected volatile u:J

.field volatile v:I

.field public w:J

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/igexin/b/a/d/e;-><init>(ILcom/igexin/b/a/d/a/c;)V

    return-void
.end method

.method public constructor <init>(ILcom/igexin/b/a/d/a/c;)V
    .registers 3

    invoke-direct {p0}, Lcom/igexin/b/a/d/a;-><init>()V

    iput p1, p0, Lcom/igexin/b/a/d/e;->z:I

    iput-object p2, p0, Lcom/igexin/b/a/d/e;->K:Lcom/igexin/b/a/d/a/c;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/igexin/b/a/d/e;->F:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/igexin/b/a/d/e;->G:Ljava/util/concurrent/locks/Condition;

    return-void
.end method


# virtual methods
.method public final a(JLjava/util/concurrent/TimeUnit;)I
    .registers 10

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, -0x2

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-lez v5, :cond_29

    sget-object v3, Lcom/igexin/b/a/d/e;->E:Lcom/igexin/b/a/d/f;

    iget-object v3, v3, Lcom/igexin/b/a/d/f;->k:Lcom/igexin/b/a/d/d;

    invoke-virtual {v3, p0, p1, p2, p3}, Lcom/igexin/b/a/d/d;->a(Lcom/igexin/b/a/d/e;JLjava/util/concurrent/TimeUnit;)I

    move-result v3

    if-eq v3, v2, :cond_27

    if-eq v3, v1, :cond_18

    if-eq v3, v0, :cond_2a

    goto :goto_29

    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/igexin/b/a/d/e;->u:J

    const/4 v0, -0x1

    goto :goto_2a

    :cond_27
    const/4 v0, -0x2

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v0, 0x0

    :cond_2a
    :goto_2a
    return v0
.end method

.method public a(Ljava/util/concurrent/TimeUnit;)J
    .registers 5

    invoke-virtual {p0}, Lcom/igexin/b/a/d/e;->o()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(I)V
    .registers 3

    iget-byte v0, p0, Lcom/igexin/b/a/d/e;->a:B

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/igexin/b/a/d/e;->a:B

    and-int/lit8 p1, p1, 0xf

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p1, v0

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/igexin/b/a/d/e;->a:B

    return-void
.end method

.method public final a(ILcom/igexin/b/a/d/a/f;)V
    .registers 3

    if-ltz p1, :cond_7

    iput p1, p0, Lcom/igexin/b/a/d/e;->y:I

    iput-object p2, p0, Lcom/igexin/b/a/d/e;->D:Lcom/igexin/b/a/d/a/f;

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "second must > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/igexin/b/a/d/a/c;)V
    .registers 2

    iput-object p1, p0, Lcom/igexin/b/a/d/e;->K:Lcom/igexin/b/a/d/a/c;

    return-void
.end method

.method public final b(J)V
    .registers 3

    iput-wide p1, p0, Lcom/igexin/b/a/d/e;->w:J

    return-void
.end method

.method public b_()V
    .registers 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/b/a/d/e;->H:Ljava/lang/Thread;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/b/a/d/e;->p:Z

    return-void
.end method

.method public c()V
    .registers 2

    iget-boolean v0, p0, Lcom/igexin/b/a/d/e;->k:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/igexin/b/a/d/e;->m:Z

    if-eqz v0, :cond_b

    :cond_8
    invoke-virtual {p0}, Lcom/igexin/b/a/d/e;->f()V

    :cond_b
    return-void
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/b/a/d/e;->s:Z

    return-void
.end method

.method protected abstract e()V
.end method

.method public f()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igexin/b/a/d/e;->C:Ljava/lang/Object;

    iput-object v0, p0, Lcom/igexin/b/a/d/e;->B:Ljava/lang/Exception;

    iput-object v0, p0, Lcom/igexin/b/a/d/e;->H:Ljava/lang/Thread;

    return-void
.end method

.method protected g()V
    .registers 1

    return-void
.end method

.method protected h()V
    .registers 3

    iget-boolean v0, p0, Lcom/igexin/b/a/d/e;->o:Z

    const/4 v1, 0x0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/igexin/b/a/d/e;->q:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/igexin/b/a/d/e;->r:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/b/a/d/e;->k:Z

    goto :goto_19

    :cond_11
    iget-boolean v0, p0, Lcom/igexin/b/a/d/e;->q:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/igexin/b/a/d/e;->k:Z

    if-nez v0, :cond_1c

    :goto_19
    iput-boolean v1, p0, Lcom/igexin/b/a/d/e;->p:Z

    goto :goto_29

    :cond_1c
    iget-boolean v0, p0, Lcom/igexin/b/a/d/e;->o:Z

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/igexin/b/a/d/e;->n:Z

    if-nez v0, :cond_29

    iget-boolean v0, p0, Lcom/igexin/b/a/d/e;->k:Z

    if-nez v0, :cond_29

    goto :goto_19

    :cond_29
    :goto_29
    return-void
.end method

.method final n()V
    .registers 3

    iget v0, p0, Lcom/igexin/b/a/d/e;->J:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/igexin/b/a/d/e;->J:I

    const v1, 0x40fffffe    # 7.999999f

    and-int/2addr v0, v1

    iput v0, p0, Lcom/igexin/b/a/d/e;->J:I

    return-void
.end method

.method o()J
    .registers 5

    iget-wide v0, p0, Lcom/igexin/b/a/d/e;->u:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final p()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/b/a/d/e;->k:Z

    return-void
.end method

.method public final q()Z
    .registers 2

    iget-boolean v0, p0, Lcom/igexin/b/a/d/e;->n:Z

    return v0
.end method

.method public final r()Z
    .registers 2

    iget-boolean v0, p0, Lcom/igexin/b/a/d/e;->m:Z

    return v0
.end method

.method public final s()Ljava/lang/Thread;
    .registers 2

    iget-object v0, p0, Lcom/igexin/b/a/d/e;->H:Ljava/lang/Thread;

    return-object v0
.end method

.method public final t()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/b/a/d/e;->m:Z

    return-void
.end method

.method protected u()V
    .registers 3

    iget-object v0, p0, Lcom/igexin/b/a/d/e;->K:Lcom/igexin/b/a/d/a/c;

    if-eqz v0, :cond_9

    sget-object v1, Lcom/igexin/b/a/d/a/d;->a:Lcom/igexin/b/a/d/a/d;

    invoke-interface {v0, v1}, Lcom/igexin/b/a/d/a/c;->a(Lcom/igexin/b/a/d/a/d;)V

    :cond_9
    return-void
.end method
