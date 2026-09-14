###### Class dc.squareup.okio.Pipe (dc.squareup.okio.Pipe)
.class public final Ldc/squareup/okio/Pipe;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/squareup/okio/Pipe$PipeSource;,
        Ldc/squareup/okio/Pipe$PipeSink;
    }
.end annotation


# instance fields
.field final buffer:Ldc/squareup/okio/Buffer;

.field private foldedSink:Ldc/squareup/okio/Sink;

.field final maxBufferSize:J

.field private final sink:Ldc/squareup/okio/Sink;

.field sinkClosed:Z

.field private final source:Ldc/squareup/okio/Source;

.field sourceClosed:Z


# direct methods
.method public constructor <init>(J)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ldc/squareup/okio/Buffer;

    invoke-direct {v0}, Ldc/squareup/okio/Buffer;-><init>()V

    iput-object v0, p0, Ldc/squareup/okio/Pipe;->buffer:Ldc/squareup/okio/Buffer;

    .line 5
    new-instance v0, Ldc/squareup/okio/Pipe$PipeSink;

    invoke-direct {v0, p0}, Ldc/squareup/okio/Pipe$PipeSink;-><init>(Ldc/squareup/okio/Pipe;)V

    iput-object v0, p0, Ldc/squareup/okio/Pipe;->sink:Ldc/squareup/okio/Sink;

    .line 6
    new-instance v0, Ldc/squareup/okio/Pipe$PipeSource;

    invoke-direct {v0, p0}, Ldc/squareup/okio/Pipe$PipeSource;-><init>(Ldc/squareup/okio/Pipe;)V

    iput-object v0, p0, Ldc/squareup/okio/Pipe;->source:Ldc/squareup/okio/Source;

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_21

    .line 14
    iput-wide p1, p0, Ldc/squareup/okio/Pipe;->maxBufferSize:J

    return-void

    .line 15
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxBufferSize < 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Ldc/squareup/okio/Pipe;)Ldc/squareup/okio/Sink;
    .registers 1

    .line 1
    iget-object p0, p0, Ldc/squareup/okio/Pipe;->foldedSink:Ldc/squareup/okio/Sink;

    return-object p0
.end method


# virtual methods
.method public fold(Ldc/squareup/okio/Sink;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Ldc/squareup/okio/Pipe;->buffer:Ldc/squareup/okio/Buffer;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Ldc/squareup/okio/Pipe;->foldedSink:Ldc/squareup/okio/Sink;

    if-nez v1, :cond_49

    .line 4
    iget-object v1, p0, Ldc/squareup/okio/Pipe;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v1}, Ldc/squareup/okio/Buffer;->exhausted()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_16

    .line 5
    iput-boolean v2, p0, Ldc/squareup/okio/Pipe;->sourceClosed:Z

    .line 6
    iput-object p1, p0, Ldc/squareup/okio/Pipe;->foldedSink:Ldc/squareup/okio/Sink;

    .line 7
    monitor-exit v0

    return-void

    .line 10
    :cond_16
    iget-boolean v1, p0, Ldc/squareup/okio/Pipe;->sinkClosed:Z

    .line 11
    new-instance v3, Ldc/squareup/okio/Buffer;

    invoke-direct {v3}, Ldc/squareup/okio/Buffer;-><init>()V

    .line 12
    iget-object v4, p0, Ldc/squareup/okio/Pipe;->buffer:Ldc/squareup/okio/Buffer;

    iget-wide v5, v4, Ldc/squareup/okio/Buffer;->size:J

    invoke-virtual {v3, v4, v5, v6}, Ldc/squareup/okio/Buffer;->write(Ldc/squareup/okio/Buffer;J)V

    .line 13
    iget-object v4, p0, Ldc/squareup/okio/Pipe;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 14
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_51

    .line 18
    :try_start_2a
    iget-wide v4, v3, Ldc/squareup/okio/Buffer;->size:J

    invoke-interface {p1, v3, v4, v5}, Ldc/squareup/okio/Sink;->write(Ldc/squareup/okio/Buffer;J)V

    if-eqz v1, :cond_35

    .line 20
    invoke-interface {p1}, Ldc/squareup/okio/Sink;->close()V

    goto :goto_0

    .line 22
    :cond_35
    invoke-interface {p1}, Ldc/squareup/okio/Sink;->flush()V
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_39

    goto :goto_0

    :catchall_39
    move-exception p1

    .line 27
    iget-object v1, p0, Ldc/squareup/okio/Pipe;->buffer:Ldc/squareup/okio/Buffer;

    monitor-enter v1

    .line 28
    :try_start_3d
    iput-boolean v2, p0, Ldc/squareup/okio/Pipe;->sourceClosed:Z

    .line 29
    iget-object v0, p0, Ldc/squareup/okio/Pipe;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 30
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_46

    .line 32
    throw p1

    :catchall_46
    move-exception p1

    .line 33
    :try_start_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p1

    .line 34
    :cond_49
    :try_start_49
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "sink already folded"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_51
    move-exception p1

    .line 46
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_49 .. :try_end_53} :catchall_51

    throw p1
.end method

.method public final sink()Ldc/squareup/okio/Sink;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/Pipe;->sink:Ldc/squareup/okio/Sink;

    return-object v0
.end method

.method public final source()Ldc/squareup/okio/Source;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/Pipe;->source:Ldc/squareup/okio/Source;

    return-object v0
.end method

###### Class dc.squareup.okio.Pipe.PipeSink (dc.squareup.okio.Pipe$PipeSink)
.class final Ldc/squareup/okio/Pipe$PipeSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldc/squareup/okio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okio/Pipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PipeSink"
.end annotation


# instance fields
.field final synthetic this$0:Ldc/squareup/okio/Pipe;

.field final timeout:Ldc/squareup/okio/PushableTimeout;


# direct methods
.method constructor <init>(Ldc/squareup/okio/Pipe;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ldc/squareup/okio/Pipe$PipeSink;->this$0:Ldc/squareup/okio/Pipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ldc/squareup/okio/PushableTimeout;

    invoke-direct {p1}, Ldc/squareup/okio/PushableTimeout;-><init>()V

    iput-object p1, p0, Ldc/squareup/okio/Pipe$PipeSink;->timeout:Ldc/squareup/okio/PushableTimeout;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/Pipe$PipeSink;->this$0:Ldc/squareup/okio/Pipe;

    iget-object v0, v0, Ldc/squareup/okio/Pipe;->buffer:Ldc/squareup/okio/Buffer;

    monitor-enter v0

    .line 2
    :try_start_5
    iget-object v1, p0, Ldc/squareup/okio/Pipe$PipeSink;->this$0:Ldc/squareup/okio/Pipe;

    iget-boolean v2, v1, Ldc/squareup/okio/Pipe;->sinkClosed:Z

    if-eqz v2, :cond_d

    monitor-exit v0

    return-void

    .line 4
    :cond_d
    invoke-static {v1}, Ldc/squareup/okio/Pipe;->access$000(Ldc/squareup/okio/Pipe;)Ldc/squareup/okio/Sink;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 5
    iget-object v1, p0, Ldc/squareup/okio/Pipe$PipeSink;->this$0:Ldc/squareup/okio/Pipe;

    invoke-static {v1}, Ldc/squareup/okio/Pipe;->access$000(Ldc/squareup/okio/Pipe;)Ldc/squareup/okio/Sink;

    move-result-object v1

    goto :goto_40

    .line 7
    :cond_1a
    iget-object v1, p0, Ldc/squareup/okio/Pipe$PipeSink;->this$0:Ldc/squareup/okio/Pipe;

    iget-boolean v2, v1, Ldc/squareup/okio/Pipe;->sourceClosed:Z

    if-eqz v2, :cond_35

    iget-object v1, v1, Ldc/squareup/okio/Pipe;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v1}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2d

    goto :goto_35

    :cond_2d
    new-instance v1, Ljava/io/IOException;

    const-string v2, "source is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_35
    :goto_35
    iget-object v1, p0, Ldc/squareup/okio/Pipe$PipeSink;->this$0:Ldc/squareup/okio/Pipe;

    const/4 v2, 0x1

    iput-boolean v2, v1, Ldc/squareup/okio/Pipe;->sinkClosed:Z

    .line 9
    iget-object v1, v1, Ldc/squareup/okio/Pipe;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    const/4 v1, 0x0

    .line 11
    :goto_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_5 .. :try_end_41} :catchall_5d

    if-eqz v1, :cond_5c

    .line 14
    iget-object v0, p0, Ldc/squareup/okio/Pipe$PipeSink;->timeout:Ldc/squareup/okio/PushableTimeout;

    invoke-interface {v1}, Ldc/squareup/okio/Sink;->timeout()Ldc/squareup/okio/Timeout;

    move-result-object v2

    invoke-virtual {v0, v2}, Ldc/squareup/okio/PushableTimeout;->push(Ldc/squareup/okio/Timeout;)V

    .line 16
    :try_start_4c
    invoke-interface {v1}, Ldc/squareup/okio/Sink;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_55

    .line 18
    iget-object v0, p0, Ldc/squareup/okio/Pipe$PipeSink;->timeout:Ldc/squareup/okio/PushableTimeout;

    invoke-virtual {v0}, Ldc/squareup/okio/PushableTimeout;->pop()V

    goto :goto_5c

    :catchall_55
    move-exception v0

    iget-object v1, p0, Ldc/squareup/okio/Pipe$PipeSink;->timeout:Ldc/squareup/okio/PushableTimeout;

    invoke-virtual {v1}, Ldc/squareup/okio/PushableTimeout;->pop()V

    .line 19
    throw v0

    :cond_5c
    :goto_5c
    return-void

    :catchall_5d
    move-exception v1

    .line 20
    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v1
.end method

.method public flush()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/Pipe$PipeSink;->this$0:Ldc/squareup/okio/Pipe;

    iget-object v0, v0, Ldc/squareup/okio/Pipe;->buffer:Ldc/squareup/okio/Buffer;

    monitor-enter v0

    .line 2
    :try_start_5
    iget-object v1, p0, Ldc/squareup/okio/Pipe$PipeSink;->this$0:Ldc/squareup/okio/Pipe;

    iget-boolean v2, v1, Ldc/squareup/okio/Pipe;->sinkClosed:Z

    if-nez v2, :cond_51

    .line 4
    invoke-static {v1}, Ldc/squareup/okio/Pipe;->access$000(Ldc/squareup/okio/Pipe;)Ldc/squareup/okio/Sink;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 5
    iget-object v1, p0, Ldc/squareup/okio/Pipe$PipeSink;->this$0:Ldc/squareup/okio/Pipe;

    invoke-static {v1}, Ldc/squareup/okio/Pipe;->access$000(Ldc/squareup/okio/Pipe;)Ldc/squareup/okio/Sink;

    move-result-object v1

    goto :goto_34

    .line 6
    :cond_18
    iget-object v1, p0, Ldc/squareup/okio/Pipe$PipeSink;->this$0:Ldc/squareup/okio/Pipe;

    iget-boolean v2, v1, Ldc/squareup/okio/Pipe;->sourceClosed:Z

    if-eqz v2, :cond_33

    iget-object v1, v1, Ldc/squareup/okio/Pipe;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v1}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2b

    goto :goto_33

    .line 7
    :cond_2b
    new-instance v1, Ljava/io/IOException;

    const-string v2, "source is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_33
    :goto_33
    const/4 v1, 0x0

    .line 9
    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_59

    if-eqz v1, :cond_50

    .line 12
    iget-object v0, p0, Ldc/squareup/okio/Pipe$PipeSink;->timeout:Ldc/squareup/okio/PushableTimeout;

    invoke-interface {v1}, Ldc/squareup/okio/Sink;->timeout()Ldc/squareup/okio/Timeout;

    move-result-object v2

    invoke-virtual {v0, v2}, Ldc/squareup/okio/PushableTimeout;->push(Ldc/squareup/okio/Timeout;)V

    .line 14
    :try_start_40
    invoke-interface {v1}, Ldc/squareup/okio/Sink;->flush()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_49

    .line 16
    iget-object v0, p0, Ldc/squareup/okio/Pipe$PipeSink;->timeout:Ldc/squareup/okio/PushableTimeout;

    invoke-virtual {v0}, Ldc/squareup/okio/PushableTimeout;->pop()V

    goto :goto_50

    :catchall_49
    move-exception v0

    iget-object v1, p0, Ldc/squareup/okio/Pipe$PipeSink;->timeout:Ldc/squareup/okio/PushableTimeout;

    invoke-virtual {v1}, Ldc/squareup/okio/PushableTimeout;->pop()V

    .line 17
    throw v0

    :cond_50
    :goto_50
    return-void

    .line 18
    :cond_51
    :try_start_51
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_59
    move-exception v1

    .line 25
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_51 .. :try_end_5b} :catchall_59

    throw v1
.end method

.method public timeout()Ldc/squareup/okio/Timeout;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/Pipe$PipeSink;->timeout:Ldc/squareup/okio/PushableTimeout;

    return-object v0
.end method

.method public write(Ldc/squareup/okio/Buffer;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/Pipe$PipeSink;->this$0:Ldc/squareup/okio/Pipe;

    iget-object v0, v0, Ldc/squareup/okio/Pipe;->buffer:Ldc/squareup/okio/Buffer;

    monitor-enter v0

    .line 2
    :try_start_5
    iget-object v1, p0, Ldc/squareup/okio/Pipe$PipeSink;->this$0:Ldc/squareup/okio/Pipe;

    iget-boolean v1, v1, Ldc/squareup/okio/Pipe;->sinkClosed:Z

    if-nez v1, :cond_77

    :goto_b
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_59

    .line 5
    iget-object v3, p0, Ldc/squareup/okio/Pipe$PipeSink;->this$0:Ldc/squareup/okio/Pipe;

    invoke-static {v3}, Ldc/squareup/okio/Pipe;->access$000(Ldc/squareup/okio/Pipe;)Ldc/squareup/okio/Sink;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 6
    iget-object v1, p0, Ldc/squareup/okio/Pipe$PipeSink;->this$0:Ldc/squareup/okio/Pipe;

    invoke-static {v1}, Ldc/squareup/okio/Pipe;->access$000(Ldc/squareup/okio/Pipe;)Ldc/squareup/okio/Sink;

    move-result-object v1

    goto :goto_5a

    .line 10
    :cond_20
    iget-object v3, p0, Ldc/squareup/okio/Pipe$PipeSink;->this$0:Ldc/squareup/okio/Pipe;

    iget-boolean v4, v3, Ldc/squareup/okio/Pipe;->sourceClosed:Z

    if-nez v4, :cond_51

    .line 12
    iget-wide v4, v3, Ldc/squareup/okio/Pipe;->maxBufferSize:J

    iget-object v3, v3, Ldc/squareup/okio/Pipe;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v3}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v3, v4, v1

    if-nez v3, :cond_3d

    .line 14
    iget-object v1, p0, Ldc/squareup/okio/Pipe$PipeSink;->timeout:Ldc/squareup/okio/PushableTimeout;

    iget-object v2, p0, Ldc/squareup/okio/Pipe$PipeSink;->this$0:Ldc/squareup/okio/Pipe;

    iget-object v2, v2, Ldc/squareup/okio/Pipe;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v1, v2}, Ldc/squareup/okio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    goto :goto_b

    .line 18
    :cond_3d
    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 19
    iget-object v3, p0, Ldc/squareup/okio/Pipe$PipeSink;->this$0:Ldc/squareup/okio/Pipe;

    iget-object v3, v3, Ldc/squareup/okio/Pipe;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v3, p1, v1, v2}, Ldc/squareup/okio/Buffer;->write(Ldc/squareup/okio/Buffer;J)V

    sub-long/2addr p2, v1

    .line 21
    iget-object v1, p0, Ldc/squareup/okio/Pipe$PipeSink;->this$0:Ldc/squareup/okio/Pipe;

    iget-object v1, v1, Ldc/squareup/okio/Pipe;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_b

    .line 22
    :cond_51
    new-instance p1, Ljava/io/IOException;

    const-string p2, "source is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_59
    const/4 v1, 0x0

    .line 35
    :goto_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5 .. :try_end_5b} :catchall_7f

    if-eqz v1, :cond_76

    .line 38
    iget-object v0, p0, Ldc/squareup/okio/Pipe$PipeSink;->timeout:Ldc/squareup/okio/PushableTimeout;

    invoke-interface {v1}, Ldc/squareup/okio/Sink;->timeout()Ldc/squareup/okio/Timeout;

    move-result-object v2

    invoke-virtual {v0, v2}, Ldc/squareup/okio/PushableTimeout;->push(Ldc/squareup/okio/Timeout;)V

    .line 40
    :try_start_66
    invoke-interface {v1, p1, p2, p3}, Ldc/squareup/okio/Sink;->write(Ldc/squareup/okio/Buffer;J)V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6f

    .line 42
    iget-object p1, p0, Ldc/squareup/okio/Pipe$PipeSink;->timeout:Ldc/squareup/okio/PushableTimeout;

    invoke-virtual {p1}, Ldc/squareup/okio/PushableTimeout;->pop()V

    goto :goto_76

    :catchall_6f
    move-exception p1

    iget-object p2, p0, Ldc/squareup/okio/Pipe$PipeSink;->timeout:Ldc/squareup/okio/PushableTimeout;

    invoke-virtual {p2}, Ldc/squareup/okio/PushableTimeout;->pop()V

    .line 43
    throw p1

    :cond_76
    :goto_76
    return-void

    .line 44
    :cond_77
    :try_start_77
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_7f
    move-exception p1

    .line 65
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_77 .. :try_end_81} :catchall_7f

    throw p1
.end method

###### Class dc.squareup.okio.Pipe.PipeSource (dc.squareup.okio.Pipe$PipeSource)
.class final Ldc/squareup/okio/Pipe$PipeSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldc/squareup/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okio/Pipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PipeSource"
.end annotation


# instance fields
.field final synthetic this$0:Ldc/squareup/okio/Pipe;

.field final timeout:Ldc/squareup/okio/Timeout;


# direct methods
.method constructor <init>(Ldc/squareup/okio/Pipe;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ldc/squareup/okio/Pipe$PipeSource;->this$0:Ldc/squareup/okio/Pipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ldc/squareup/okio/Timeout;

    invoke-direct {p1}, Ldc/squareup/okio/Timeout;-><init>()V

    iput-object p1, p0, Ldc/squareup/okio/Pipe$PipeSource;->timeout:Ldc/squareup/okio/Timeout;

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
    iget-object v0, p0, Ldc/squareup/okio/Pipe$PipeSource;->this$0:Ldc/squareup/okio/Pipe;

    iget-object v0, v0, Ldc/squareup/okio/Pipe;->buffer:Ldc/squareup/okio/Buffer;

    monitor-enter v0

    .line 2
    :try_start_5
    iget-object v1, p0, Ldc/squareup/okio/Pipe$PipeSource;->this$0:Ldc/squareup/okio/Pipe;

    const/4 v2, 0x1

    iput-boolean v2, v1, Ldc/squareup/okio/Pipe;->sourceClosed:Z

    .line 3
    iget-object v1, v1, Ldc/squareup/okio/Pipe;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public read(Ldc/squareup/okio/Buffer;J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/Pipe$PipeSource;->this$0:Ldc/squareup/okio/Pipe;

    iget-object v0, v0, Ldc/squareup/okio/Pipe;->buffer:Ldc/squareup/okio/Buffer;

    monitor-enter v0

    .line 2
    :try_start_5
    iget-object v1, p0, Ldc/squareup/okio/Pipe$PipeSource;->this$0:Ldc/squareup/okio/Pipe;

    iget-boolean v1, v1, Ldc/squareup/okio/Pipe;->sourceClosed:Z

    if-nez v1, :cond_3c

    .line 4
    :goto_b
    iget-object v1, p0, Ldc/squareup/okio/Pipe$PipeSource;->this$0:Ldc/squareup/okio/Pipe;

    iget-object v1, v1, Ldc/squareup/okio/Pipe;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v1}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_2b

    .line 5
    iget-object v1, p0, Ldc/squareup/okio/Pipe$PipeSource;->this$0:Ldc/squareup/okio/Pipe;

    iget-boolean v2, v1, Ldc/squareup/okio/Pipe;->sinkClosed:Z

    if-eqz v2, :cond_23

    const-wide/16 p1, -0x1

    monitor-exit v0

    return-wide p1

    .line 6
    :cond_23
    iget-object v2, p0, Ldc/squareup/okio/Pipe$PipeSource;->timeout:Ldc/squareup/okio/Timeout;

    iget-object v1, v1, Ldc/squareup/okio/Pipe;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v2, v1}, Ldc/squareup/okio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    goto :goto_b

    .line 9
    :cond_2b
    iget-object v1, p0, Ldc/squareup/okio/Pipe$PipeSource;->this$0:Ldc/squareup/okio/Pipe;

    iget-object v1, v1, Ldc/squareup/okio/Pipe;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {v1, p1, p2, p3}, Ldc/squareup/okio/Buffer;->read(Ldc/squareup/okio/Buffer;J)J

    move-result-wide p1

    .line 10
    iget-object p3, p0, Ldc/squareup/okio/Pipe$PipeSource;->this$0:Ldc/squareup/okio/Pipe;

    iget-object p3, p3, Ldc/squareup/okio/Pipe;->buffer:Ldc/squareup/okio/Buffer;

    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    .line 11
    monitor-exit v0

    return-wide p1

    .line 12
    :cond_3c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_44
    move-exception p1

    .line 22
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_44

    throw p1
.end method

.method public timeout()Ldc/squareup/okio/Timeout;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okio/Pipe$PipeSource;->timeout:Ldc/squareup/okio/Timeout;

    return-object v0
.end method
