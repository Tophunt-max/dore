###### Class com.igexin.b.a.d.d (com.igexin.b.a.d.d)
.class public Lcom/igexin/b/a/d/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/igexin/b/a/d/e;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic i:Z = true


# instance fields
.field public a:Ljava/lang/String;

.field final transient b:Ljava/util/concurrent/locks/ReentrantLock;

.field final transient c:Ljava/util/concurrent/locks/Condition;

.field final d:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "TE;>;"
        }
    .end annotation
.end field

.field final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field f:I

.field g:Lcom/igexin/b/a/d/f;

.field public final h:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;Lcom/igexin/b/a/d/f;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Lcom/igexin/b/a/d/f;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/b/a/d/d;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/igexin/b/a/d/d;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/b/a/d/d;->c:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/igexin/b/a/d/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/igexin/b/a/d/d;->h:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/igexin/b/a/d/d;->d:Ljava/util/TreeSet;

    iput-object p2, p0, Lcom/igexin/b/a/d/d;->g:Lcom/igexin/b/a/d/f;

    return-void
.end method

.method private e()Lcom/igexin/b/a/d/e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/igexin/b/a/d/d;->a()Lcom/igexin/b/a/d/e;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    iget-object v2, p0, Lcom/igexin/b/a/d/d;->d:Ljava/util/TreeSet;

    invoke-virtual {v2, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    return-object v0

    :cond_11
    return-object v1
.end method


# virtual methods
.method public final a(Lcom/igexin/b/a/d/e;JLjava/util/concurrent/TimeUnit;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")I"
        }
    .end annotation

    iget-object v0, p0, Lcom/igexin/b/a/d/d;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object v1, p0, Lcom/igexin/b/a/d/d;->d:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_31

    if-nez v1, :cond_12

    const/4 p1, -0x1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :cond_12
    :try_start_12
    iget-object v1, p0, Lcom/igexin/b/a/d/d;->d:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p2, p3, p4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p2

    add-long/2addr v1, p2

    iput-wide v1, p1, Lcom/igexin/b/a/d/e;->u:J

    invoke-virtual {p0, p1}, Lcom/igexin/b/a/d/d;->a(Lcom/igexin/b/a/d/e;)Z

    move-result p1
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_31

    if-eqz p1, :cond_2c

    const/4 p1, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p1, -0x2

    :goto_2d
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_31
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method a()Lcom/igexin/b/a/d/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/igexin/b/a/d/d;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/b/a/d/e;
    :try_end_8
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lcom/igexin/b/a/d/e;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/igexin/b/a/d/d;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_9
    invoke-virtual {p0}, Lcom/igexin/b/a/d/d;->a()Lcom/igexin/b/a/d/e;

    move-result-object v2

    iget v3, p0, Lcom/igexin/b/a/d/d;->f:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/igexin/b/a/d/d;->f:I

    iput v3, p1, Lcom/igexin/b/a/d/e;->v:I

    iget-object v3, p0, Lcom/igexin/b/a/d/d;->d:Ljava/util/TreeSet;

    invoke-virtual {v3, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    iget v2, p1, Lcom/igexin/b/a/d/e;->v:I

    sub-int/2addr v2, v4

    iput v2, p1, Lcom/igexin/b/a/d/e;->v:I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_22} :catch_42
    .catchall {:try_start_9 .. :try_end_22} :catchall_40

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :cond_26
    :try_start_26
    invoke-virtual {p1}, Lcom/igexin/b/a/d/e;->n()V

    if-eqz v2, :cond_37

    iget-object v3, p0, Lcom/igexin/b/a/d/d;->d:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_3c

    :cond_37
    iget-object p1, p0, Lcom/igexin/b/a/d/d;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3c} :catch_42
    .catchall {:try_start_26 .. :try_end_3c} :catchall_40

    :cond_3c
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v4

    :catchall_40
    move-exception p1

    goto :goto_4b

    :catch_42
    :try_start_42
    const-string p1, "ScheduleQueue|offer|error"

    invoke-static {p1}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_40

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :goto_4b
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final a(Ljava/lang/Class;)Z
    .registers 7

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    iget-object v0, p0, Lcom/igexin/b/a/d/d;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/igexin/b/a/d/d;->d:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/igexin/b/a/d/e;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, p1, :cond_14

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_2a
    iget-object p1, p0, Lcom/igexin/b/a/d/d;->d:Ljava/util/TreeSet;

    invoke-virtual {p1, v1}, Ljava/util/TreeSet;->removeAll(Ljava/util/Collection;)Z
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_34

    const/4 p1, 0x1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_34
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method final b()Z
    .registers 3

    iget-object v0, p0, Lcom/igexin/b/a/d/d;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object v1, p0, Lcom/igexin/b/a/d/d;->d:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_f

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_f
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public final c()Lcom/igexin/b/a/d/e;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/igexin/b/a/d/d;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_5
    :try_start_5
    invoke-virtual {p0}, Lcom/igexin/b/a/d/d;->a()Lcom/igexin/b/a/d/e;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/igexin/b/a/d/d;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput v2, p0, Lcom/igexin/b/a/d/d;->f:I

    iget-object v1, p0, Lcom/igexin/b/a/d/d;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_5

    :cond_1a
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4}, Lcom/igexin/b/a/d/e;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    iget-boolean v6, v1, Lcom/igexin/b/a/d/e;->k:Z

    if-nez v6, :cond_28

    iget-boolean v6, v1, Lcom/igexin/b/a/d/e;->m:Z

    if-eqz v6, :cond_29

    :cond_28
    const/4 v2, 0x1

    :cond_29
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_80

    if-eqz v2, :cond_32

    goto :goto_80

    :cond_32
    iget-object v2, p0, Lcom/igexin/b/a/d/d;->h:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v6, v1, Lcom/igexin/b/a/d/e;->u:J

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "schedule take|needAlarm = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/igexin/b/a/d/d;->g:Lcom/igexin/b/a/d/f;

    iget-boolean v3, v3, Lcom/igexin/b/a/d/f;->t:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igexin/b/a/c/b;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/igexin/b/a/d/d;->g:Lcom/igexin/b/a/d/f;

    iget-boolean v2, v2, Lcom/igexin/b/a/d/f;->t:Z

    if-eqz v2, :cond_7a

    iget-object v2, p0, Lcom/igexin/b/a/d/d;->g:Lcom/igexin/b/a/d/f;

    iget-wide v6, v1, Lcom/igexin/b/a/d/e;->u:J

    invoke-virtual {v2, v6, v7}, Lcom/igexin/b/a/d/f;->a(J)V

    :cond_7a
    iget-object v1, p0, Lcom/igexin/b/a/d/d;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, v4, v5}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    goto :goto_5

    :cond_80
    :goto_80
    invoke-direct {p0}, Lcom/igexin/b/a/d/d;->e()Lcom/igexin/b/a/d/e;

    move-result-object v1

    sget-boolean v2, Lcom/igexin/b/a/d/d;->i:Z

    if-nez v2, :cond_91

    if-eqz v1, :cond_8b

    goto :goto_91

    :cond_8b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_91
    :goto_91
    invoke-virtual {p0}, Lcom/igexin/b/a/d/d;->b()Z

    move-result v2

    if-nez v2, :cond_9c

    iget-object v2, p0, Lcom/igexin/b/a/d/d;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    :cond_9c
    iget-object v2, p0, Lcom/igexin/b/a/d/d;->h:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_a3
    .catchall {:try_start_5 .. :try_end_a3} :catchall_a7

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_a7
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public final d()V
    .registers 2

    iget-object v0, p0, Lcom/igexin/b/a/d/d;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    return-void
.end method
