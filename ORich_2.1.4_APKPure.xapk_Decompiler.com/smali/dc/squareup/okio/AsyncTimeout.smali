###### Class dc.squareup.okio.AsyncTimeout (dc.squareup.okio.AsyncTimeout)
.class public Ldc/squareup/okio/AsyncTimeout;
.super Ldc/squareup/okio/Timeout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/squareup/okio/AsyncTimeout$Watchdog;
    }
.end annotation


# static fields
.field private static final IDLE_TIMEOUT_MILLIS:J

.field private static final IDLE_TIMEOUT_NANOS:J

.field private static final TIMEOUT_WRITE_SIZE:I = 0x10000

.field static head:Ldc/squareup/okio/AsyncTimeout;


# instance fields
.field private inQueue:Z

.field private next:Ldc/squareup/okio/AsyncTimeout;

.field private timeoutAt:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Ldc/squareup/okio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    .line 2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Ldc/squareup/okio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ldc/squareup/okio/Timeout;-><init>()V

    return-void
.end method

.method static awaitTimeout()Ldc/squareup/okio/AsyncTimeout;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    const-class v0, Ldc/squareup/okio/AsyncTimeout;

    sget-object v1, Ldc/squareup/okio/AsyncTimeout;->head:Ldc/squareup/okio/AsyncTimeout;

    iget-object v1, v1, Ldc/squareup/okio/AsyncTimeout;->next:Ldc/squareup/okio/AsyncTimeout;

    const/4 v2, 0x0

    if-nez v1, :cond_26

    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 6
    sget-wide v5, Ldc/squareup/okio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 7
    sget-object v0, Ldc/squareup/okio/AsyncTimeout;->head:Ldc/squareup/okio/AsyncTimeout;

    iget-object v0, v0, Ldc/squareup/okio/AsyncTimeout;->next:Ldc/squareup/okio/AsyncTimeout;

    if-nez v0, :cond_25

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v3

    sget-wide v3, Ldc/squareup/okio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    cmp-long v5, v0, v3

    if-ltz v5, :cond_25

    sget-object v2, Ldc/squareup/okio/AsyncTimeout;->head:Ldc/squareup/okio/AsyncTimeout;

    :cond_25
    return-object v2

    .line 12
    :cond_26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ldc/squareup/okio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_41

    const-wide/32 v5, 0xf4240

    .line 18
    div-long v7, v3, v5

    mul-long v5, v5, v7

    sub-long/2addr v3, v5

    long-to-int v1, v3

    .line 20
    invoke-virtual {v0, v7, v8, v1}, Ljava/lang/Object;->wait(JI)V

    return-object v2

    .line 25
    :cond_41
    sget-object v0, Ldc/squareup/okio/AsyncTimeout;->head:Ldc/squareup/okio/AsyncTimeout;

    iget-object v3, v1, Ldc/squareup/okio/AsyncTimeout;->next:Ldc/squareup/okio/AsyncTimeout;

    iput-object v3, v0, Ldc/squareup/okio/AsyncTimeout;->next:Ldc/squareup/okio/AsyncTimeout;

    .line 26
    iput-object v2, v1, Ldc/squareup/okio/AsyncTimeout;->next:Ldc/squareup/okio/AsyncTimeout;

    return-object v1
.end method

.method private static declared-synchronized cancelScheduledTimeout(Ldc/squareup/okio/AsyncTimeout;)Z
    .registers 4

    const-class v0, Ldc/squareup/okio/AsyncTimeout;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Ldc/squareup/okio/AsyncTimeout;->head:Ldc/squareup/okio/AsyncTimeout;

    :goto_5
    if-eqz v1, :cond_17

    .line 2
    iget-object v2, v1, Ldc/squareup/okio/AsyncTimeout;->next:Ldc/squareup/okio/AsyncTimeout;

    if-ne v2, p0, :cond_15

    .line 3
    iget-object v2, p0, Ldc/squareup/okio/AsyncTimeout;->next:Ldc/squareup/okio/AsyncTimeout;

    iput-object v2, v1, Ldc/squareup/okio/AsyncTimeout;->next:Ldc/squareup/okio/AsyncTimeout;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Ldc/squareup/okio/AsyncTimeout;->next:Ldc/squareup/okio/AsyncTimeout;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_19

    const/4 p0, 0x0

    :goto_13
    monitor-exit v0

    return p0

    :cond_15
    move-object v1, v2

    goto :goto_5

    :cond_17
    const/4 p0, 0x1

    goto :goto_13

    :catchall_19
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private remainingNanos(J)J
    .registers 5

    .line 1
    iget-wide v0, p0, Ldc/squareup/okio/AsyncTimeout;->timeoutAt:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private static declared-synchronized scheduleTimeout(Ldc/squareup/okio/AsyncTimeout;JZ)V
    .registers 10

    const-class v0, Ldc/squareup/okio/AsyncTimeout;

    monitor-enter v0

    .line 1
    :try_start_3
    sget-object v1, Ldc/squareup/okio/AsyncTimeout;->head:Ldc/squareup/okio/AsyncTimeout;

    if-nez v1, :cond_16

    .line 2
    new-instance v1, Ldc/squareup/okio/AsyncTimeout;

    invoke-direct {v1}, Ldc/squareup/okio/AsyncTimeout;-><init>()V

    sput-object v1, Ldc/squareup/okio/AsyncTimeout;->head:Ldc/squareup/okio/AsyncTimeout;

    .line 3
    new-instance v1, Ldc/squareup/okio/AsyncTimeout$Watchdog;

    invoke-direct {v1}, Ldc/squareup/okio/AsyncTimeout$Watchdog;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 6
    :cond_16
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-eqz v5, :cond_2f

    if-eqz p3, :cond_2f

    .line 10
    invoke-virtual {p0}, Ldc/squareup/okio/Timeout;->deadlineNanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    add-long/2addr p1, v1

    iput-wide p1, p0, Ldc/squareup/okio/AsyncTimeout;->timeoutAt:J

    goto :goto_3d

    :cond_2f
    if-eqz v5, :cond_35

    add-long/2addr p1, v1

    .line 12
    iput-wide p1, p0, Ldc/squareup/okio/AsyncTimeout;->timeoutAt:J

    goto :goto_3d

    :cond_35
    if-eqz p3, :cond_62

    .line 14
    invoke-virtual {p0}, Ldc/squareup/okio/Timeout;->deadlineNanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Ldc/squareup/okio/AsyncTimeout;->timeoutAt:J

    .line 20
    :goto_3d
    invoke-direct {p0, v1, v2}, Ldc/squareup/okio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide p1

    .line 21
    sget-object p3, Ldc/squareup/okio/AsyncTimeout;->head:Ldc/squareup/okio/AsyncTimeout;

    .line 22
    :goto_43
    iget-object v3, p3, Ldc/squareup/okio/AsyncTimeout;->next:Ldc/squareup/okio/AsyncTimeout;

    if-eqz v3, :cond_53

    invoke-direct {v3, v1, v2}, Ldc/squareup/okio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v3

    cmp-long v5, p1, v3

    if-gez v5, :cond_50

    goto :goto_53

    .line 23
    :cond_50
    iget-object p3, p3, Ldc/squareup/okio/AsyncTimeout;->next:Ldc/squareup/okio/AsyncTimeout;

    goto :goto_43

    .line 25
    :cond_53
    :goto_53
    iget-object p1, p3, Ldc/squareup/okio/AsyncTimeout;->next:Ldc/squareup/okio/AsyncTimeout;

    iput-object p1, p0, Ldc/squareup/okio/AsyncTimeout;->next:Ldc/squareup/okio/AsyncTimeout;

    .line 26
    iput-object p0, p3, Ldc/squareup/okio/AsyncTimeout;->next:Ldc/squareup/okio/AsyncTimeout;

    .line 27
    sget-object p0, Ldc/squareup/okio/AsyncTimeout;->head:Ldc/squareup/okio/AsyncTimeout;

    if-ne p3, p0, :cond_60

    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_68

    :cond_60
    monitor-exit v0

    return-void

    .line 29
    :cond_62
    :try_start_62
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_68

    :catchall_68
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final enter()V
    .registers 7

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okio/AsyncTimeout;->inQueue:Z

    if-nez v0, :cond_1c

    .line 2
    invoke-virtual {p0}, Ldc/squareup/okio/Timeout;->timeoutNanos()J

    move-result-wide v0

    .line 3
    invoke-virtual {p0}, Ldc/squareup/okio/Timeout;->hasDeadline()Z

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_15

    if-nez v2, :cond_15

    return-void

    :cond_15
    const/4 v3, 0x1

    .line 7
    iput-boolean v3, p0, Ldc/squareup/okio/AsyncTimeout;->inQueue:Z

    .line 8
    invoke-static {p0, v0, v1, v2}, Ldc/squareup/okio/AsyncTimeout;->scheduleTimeout(Ldc/squareup/okio/AsyncTimeout;JZ)V

    return-void

    .line 9
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final exit(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Ldc/squareup/okio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    .line 7
    :cond_7
    invoke-virtual {p0, p1}, Ldc/squareup/okio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method final exit(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Ldc/squareup/okio/AsyncTimeout;->exit()Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez p1, :cond_9

    goto :goto_f

    :cond_9
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Ldc/squareup/okio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_f
    :goto_f
    return-void
.end method

.method public final exit()Z
    .registers 3

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okio/AsyncTimeout;->inQueue:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    iput-boolean v1, p0, Ldc/squareup/okio/AsyncTimeout;->inQueue:Z

    .line 3
    invoke-static {p0}, Ldc/squareup/okio/AsyncTimeout;->cancelScheduledTimeout(Ldc/squareup/okio/AsyncTimeout;)Z

    move-result v0

    return v0
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4

    .line 1
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    .line 3
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_c
    return-object v0
.end method

.method public final sink(Ldc/squareup/okio/Sink;)Ldc/squareup/okio/Sink;
    .registers 3

    .line 1
    new-instance v0, Ldc/squareup/okio/AsyncTimeout$1;

    invoke-direct {v0, p0, p1}, Ldc/squareup/okio/AsyncTimeout$1;-><init>(Ldc/squareup/okio/AsyncTimeout;Ldc/squareup/okio/Sink;)V

    return-object v0
.end method

.method public final source(Ldc/squareup/okio/Source;)Ldc/squareup/okio/Source;
    .registers 3

    .line 1
    new-instance v0, Ldc/squareup/okio/AsyncTimeout$2;

    invoke-direct {v0, p0, p1}, Ldc/squareup/okio/AsyncTimeout$2;-><init>(Ldc/squareup/okio/AsyncTimeout;Ldc/squareup/okio/Source;)V

    return-object v0
.end method

.method protected timedOut()V
    .registers 1

    return-void
.end method

###### Class dc.squareup.okio.AsyncTimeout.AnonymousClass1 (dc.squareup.okio.AsyncTimeout$1)
.class Ldc/squareup/okio/AsyncTimeout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldc/squareup/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc/squareup/okio/AsyncTimeout;->sink(Ldc/squareup/okio/Sink;)Ldc/squareup/okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldc/squareup/okio/AsyncTimeout;

.field final synthetic val$sink:Ldc/squareup/okio/Sink;


# direct methods
.method constructor <init>(Ldc/squareup/okio/AsyncTimeout;Ldc/squareup/okio/Sink;)V
    .registers 3

    .line 1
    iput-object p1, p0, Ldc/squareup/okio/AsyncTimeout$1;->this$0:Ldc/squareup/okio/AsyncTimeout;

    iput-object p2, p0, Ldc/squareup/okio/AsyncTimeout$1;->val$sink:Ldc/squareup/okio/Sink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/AsyncTimeout$1;->this$0:Ldc/squareup/okio/AsyncTimeout;

    invoke-virtual {v0}, Ldc/squareup/okio/AsyncTimeout;->enter()V

    .line 3
    :try_start_5
    iget-object v0, p0, Ldc/squareup/okio/AsyncTimeout$1;->val$sink:Ldc/squareup/okio/Sink;

    invoke-interface {v0}, Ldc/squareup/okio/Sink;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_13
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    .line 8
    iget-object v0, p0, Ldc/squareup/okio/AsyncTimeout$1;->this$0:Ldc/squareup/okio/AsyncTimeout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldc/squareup/okio/AsyncTimeout;->exit(Z)V

    return-void

    :catchall_11
    move-exception v0

    goto :goto_1b

    :catch_13
    move-exception v0

    .line 9
    :try_start_14
    iget-object v1, p0, Ldc/squareup/okio/AsyncTimeout$1;->this$0:Ldc/squareup/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Ldc/squareup/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_11

    .line 11
    :goto_1b
    iget-object v1, p0, Ldc/squareup/okio/AsyncTimeout$1;->this$0:Ldc/squareup/okio/AsyncTimeout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ldc/squareup/okio/AsyncTimeout;->exit(Z)V

    .line 12
    throw v0
.end method

.method public flush()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/AsyncTimeout$1;->this$0:Ldc/squareup/okio/AsyncTimeout;

    invoke-virtual {v0}, Ldc/squareup/okio/AsyncTimeout;->enter()V

    .line 3
    :try_start_5
    iget-object v0, p0, Ldc/squareup/okio/AsyncTimeout$1;->val$sink:Ldc/squareup/okio/Sink;

    invoke-interface {v0}, Ldc/squareup/okio/Sink;->flush()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_13
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    .line 8
    iget-object v0, p0, Ldc/squareup/okio/AsyncTimeout$1;->this$0:Ldc/squareup/okio/AsyncTimeout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldc/squareup/okio/AsyncTimeout;->exit(Z)V

    return-void

    :catchall_11
    move-exception v0

    goto :goto_1b

    :catch_13
    move-exception v0

    .line 9
    :try_start_14
    iget-object v1, p0, Ldc/squareup/okio/AsyncTimeout$1;->this$0:Ldc/squareup/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Ldc/squareup/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_11

    .line 11
    :goto_1b
    iget-object v1, p0, Ldc/squareup/okio/AsyncTimeout$1;->this$0:Ldc/squareup/okio/AsyncTimeout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ldc/squareup/okio/AsyncTimeout;->exit(Z)V

    .line 12
    throw v0
.end method

.method public timeout()Ldc/squareup/okio/Timeout;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/AsyncTimeout$1;->this$0:Ldc/squareup/okio/AsyncTimeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldc/squareup/okio/AsyncTimeout$1;->val$sink:Ldc/squareup/okio/Sink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ldc/squareup/okio/Buffer;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p1, Ldc/squareup/okio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Ldc/squareup/okio/Util;->checkOffsetAndCount(JJJ)V

    :goto_8
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_4a

    .line 6
    iget-object v2, p1, Ldc/squareup/okio/Buffer;->head:Ldc/squareup/okio/Segment;

    :goto_10
    const-wide/32 v3, 0x10000

    cmp-long v5, v0, v3

    if-gez v5, :cond_27

    .line 7
    iget v3, v2, Ldc/squareup/okio/Segment;->limit:I

    iget v4, v2, Ldc/squareup/okio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v0, v3

    cmp-long v3, v0, p2

    if-ltz v3, :cond_24

    move-wide v0, p2

    goto :goto_27

    .line 8
    :cond_24
    iget-object v2, v2, Ldc/squareup/okio/Segment;->next:Ldc/squareup/okio/Segment;

    goto :goto_10

    :cond_27
    :goto_27
    const/4 v2, 0x0

    .line 19
    iget-object v3, p0, Ldc/squareup/okio/AsyncTimeout$1;->this$0:Ldc/squareup/okio/AsyncTimeout;

    invoke-virtual {v3}, Ldc/squareup/okio/AsyncTimeout;->enter()V

    .line 21
    :try_start_2d
    iget-object v3, p0, Ldc/squareup/okio/AsyncTimeout$1;->val$sink:Ldc/squareup/okio/Sink;

    invoke-interface {v3, p1, v0, v1}, Ldc/squareup/okio/Sink;->write(Ldc/squareup/okio/Buffer;J)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_32} :catch_3c
    .catchall {:try_start_2d .. :try_end_32} :catchall_3a

    sub-long/2addr p2, v0

    .line 27
    iget-object v0, p0, Ldc/squareup/okio/AsyncTimeout$1;->this$0:Ldc/squareup/okio/AsyncTimeout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldc/squareup/okio/AsyncTimeout;->exit(Z)V

    goto :goto_8

    :catchall_3a
    move-exception p1

    goto :goto_44

    :catch_3c
    move-exception p1

    .line 28
    :try_start_3d
    iget-object p2, p0, Ldc/squareup/okio/AsyncTimeout$1;->this$0:Ldc/squareup/okio/AsyncTimeout;

    invoke-virtual {p2, p1}, Ldc/squareup/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_3a

    .line 30
    :goto_44
    iget-object p2, p0, Ldc/squareup/okio/AsyncTimeout$1;->this$0:Ldc/squareup/okio/AsyncTimeout;

    invoke-virtual {p2, v2}, Ldc/squareup/okio/AsyncTimeout;->exit(Z)V

    .line 31
    throw p1

    :cond_4a
    return-void
.end method

###### Class dc.squareup.okio.AsyncTimeout.AnonymousClass2 (dc.squareup.okio.AsyncTimeout$2)
.class Ldc/squareup/okio/AsyncTimeout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldc/squareup/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc/squareup/okio/AsyncTimeout;->source(Ldc/squareup/okio/Source;)Ldc/squareup/okio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldc/squareup/okio/AsyncTimeout;

.field final synthetic val$source:Ldc/squareup/okio/Source;


# direct methods
.method constructor <init>(Ldc/squareup/okio/AsyncTimeout;Ldc/squareup/okio/Source;)V
    .registers 3

    .line 1
    iput-object p1, p0, Ldc/squareup/okio/AsyncTimeout$2;->this$0:Ldc/squareup/okio/AsyncTimeout;

    iput-object p2, p0, Ldc/squareup/okio/AsyncTimeout$2;->val$source:Ldc/squareup/okio/Source;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/AsyncTimeout$2;->this$0:Ldc/squareup/okio/AsyncTimeout;

    invoke-virtual {v0}, Ldc/squareup/okio/AsyncTimeout;->enter()V

    .line 3
    :try_start_5
    iget-object v0, p0, Ldc/squareup/okio/AsyncTimeout$2;->val$source:Ldc/squareup/okio/Source;

    invoke-interface {v0}, Ldc/squareup/okio/Source;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_13
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    .line 8
    iget-object v0, p0, Ldc/squareup/okio/AsyncTimeout$2;->this$0:Ldc/squareup/okio/AsyncTimeout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldc/squareup/okio/AsyncTimeout;->exit(Z)V

    return-void

    :catchall_11
    move-exception v0

    goto :goto_1b

    :catch_13
    move-exception v0

    .line 9
    :try_start_14
    iget-object v1, p0, Ldc/squareup/okio/AsyncTimeout$2;->this$0:Ldc/squareup/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Ldc/squareup/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_11

    .line 11
    :goto_1b
    iget-object v1, p0, Ldc/squareup/okio/AsyncTimeout$2;->this$0:Ldc/squareup/okio/AsyncTimeout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ldc/squareup/okio/AsyncTimeout;->exit(Z)V

    .line 12
    throw v0
.end method

.method public read(Ldc/squareup/okio/Buffer;J)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/AsyncTimeout$2;->this$0:Ldc/squareup/okio/AsyncTimeout;

    invoke-virtual {v0}, Ldc/squareup/okio/AsyncTimeout;->enter()V

    .line 3
    :try_start_5
    iget-object v0, p0, Ldc/squareup/okio/AsyncTimeout$2;->val$source:Ldc/squareup/okio/Source;

    invoke-interface {v0, p1, p2, p3}, Ldc/squareup/okio/Source;->read(Ldc/squareup/okio/Buffer;J)J

    move-result-wide p1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_14
    .catchall {:try_start_5 .. :try_end_b} :catchall_12

    .line 9
    iget-object p3, p0, Ldc/squareup/okio/AsyncTimeout$2;->this$0:Ldc/squareup/okio/AsyncTimeout;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Ldc/squareup/okio/AsyncTimeout;->exit(Z)V

    return-wide p1

    :catchall_12
    move-exception p1

    goto :goto_1c

    :catch_14
    move-exception p1

    .line 10
    :try_start_15
    iget-object p2, p0, Ldc/squareup/okio/AsyncTimeout$2;->this$0:Ldc/squareup/okio/AsyncTimeout;

    invoke-virtual {p2, p1}, Ldc/squareup/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_12

    .line 12
    :goto_1c
    iget-object p2, p0, Ldc/squareup/okio/AsyncTimeout$2;->this$0:Ldc/squareup/okio/AsyncTimeout;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ldc/squareup/okio/AsyncTimeout;->exit(Z)V

    .line 13
    throw p1
.end method

.method public timeout()Ldc/squareup/okio/Timeout;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/AsyncTimeout$2;->this$0:Ldc/squareup/okio/AsyncTimeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTimeout.source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldc/squareup/okio/AsyncTimeout$2;->val$source:Ldc/squareup/okio/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class dc.squareup.okio.AsyncTimeout.Watchdog (dc.squareup.okio.AsyncTimeout$Watchdog)
.class final Ldc/squareup/okio/AsyncTimeout$Watchdog;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Watchdog"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const-string v0, "Okio Watchdog"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    :catch_0
    :goto_0
    :try_start_0
    const-class v0, Ldc/squareup/okio/AsyncTimeout;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_0

    .line 2
    :try_start_3
    invoke-static {}, Ldc/squareup/okio/AsyncTimeout;->awaitTimeout()Ldc/squareup/okio/AsyncTimeout;

    move-result-object v1

    if-nez v1, :cond_b

    .line 5
    monitor-exit v0

    goto :goto_0

    .line 9
    :cond_b
    sget-object v2, Ldc/squareup/okio/AsyncTimeout;->head:Ldc/squareup/okio/AsyncTimeout;

    if-ne v1, v2, :cond_14

    const/4 v1, 0x0

    .line 10
    sput-object v1, Ldc/squareup/okio/AsyncTimeout;->head:Ldc/squareup/okio/AsyncTimeout;

    .line 11
    monitor-exit v0

    return-void

    .line 13
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    .line 16
    :try_start_15
    invoke-virtual {v1}, Ldc/squareup/okio/AsyncTimeout;->timedOut()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_0

    goto :goto_0

    :catchall_19
    move-exception v1

    .line 17
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    :try_start_1b
    throw v1
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1c} :catch_0
.end method
