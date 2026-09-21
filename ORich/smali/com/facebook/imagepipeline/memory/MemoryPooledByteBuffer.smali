###### Class com.facebook.imagepipeline.memory.MemoryPooledByteBuffer (com.facebook.imagepipeline.memory.MemoryPooledByteBuffer)
.class public Lcom/facebook/imagepipeline/memory/MemoryPooledByteBuffer;
.super Ljava/lang/Object;
.source "MemoryPooledByteBuffer.java"

# interfaces
.implements Lcom/facebook/common/memory/PooledByteBuffer;


# instance fields
.field mBufRef:Lcom/facebook/common/references/CloseableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/memory/MemoryChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final mSize:I


# direct methods
.method public constructor <init>(Lcom/facebook/common/references/CloseableReference;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bufRef",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/memory/MemoryChunk;",
            ">;I)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz p2, :cond_16

    .line 31
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/MemoryChunk;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/memory/MemoryChunk;->getSize()I

    move-result v0

    if-gt p2, v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 32
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->clone()Lcom/facebook/common/references/CloseableReference;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBuffer;->mBufRef:Lcom/facebook/common/references/CloseableReference;

    .line 33
    iput p2, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBuffer;->mSize:I

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2

    monitor-enter p0

    .line 89
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBuffer;->mBufRef:Lcom/facebook/common/references/CloseableReference;

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBuffer;->mBufRef:Lcom/facebook/common/references/CloseableReference;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 91
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized ensureValid()V
    .registers 2

    monitor-enter p0

    .line 101
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBuffer;->isClosed()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_f

    if-nez v0, :cond_9

    .line 104
    monitor-exit p0

    return-void

    .line 102
    :cond_9
    :try_start_9
    new-instance v0, Lcom/facebook/common/memory/PooledByteBuffer$ClosedException;

    invoke-direct {v0}, Lcom/facebook/common/memory/PooledByteBuffer$ClosedException;-><init>()V

    throw v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getByteBuffer()Ljava/nio/ByteBuffer;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 74
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBuffer;->mBufRef:Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/MemoryChunk;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/memory/MemoryChunk;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getCloseableReference()Lcom/facebook/common/references/CloseableReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/memory/MemoryChunk;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBuffer;->mBufRef:Lcom/facebook/common/references/CloseableReference;

    return-object v0
.end method

.method public declared-synchronized getNativePtr()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    monitor-enter p0

    .line 67
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBuffer;->ensureValid()V

    .line 68
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBuffer;->mBufRef:Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/MemoryChunk;

    invoke-interface {v0}, Lcom/facebook/imagepipeline/memory/MemoryChunk;->getNativePtr()J

    move-result-wide v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-wide v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .registers 2

    monitor-enter p0

    .line 79
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBuffer;->mBufRef:Lcom/facebook/common/references/CloseableReference;

    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->isValid(Lcom/facebook/common/references/CloseableReference;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read(I)B
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    monitor-enter p0

    .line 50
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBuffer;->ensureValid()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    .line 51
    :goto_b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 52
    iget v2, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBuffer;->mSize:I

    if-ge p1, v2, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 53
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBuffer;->mBufRef:Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/MemoryChunk;

    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/memory/MemoryChunk;->read(I)B

    move-result p1
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    monitor-exit p0

    return p1

    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized read(I[BII)I
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "offset",
            "buffer",
            "bufferOffset",
            "length"
        }
    .end annotation

    monitor-enter p0

    .line 58
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBuffer;->ensureValid()V

    add-int v0, p1, p4

    .line 61
    iget v1, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBuffer;->mSize:I

    if-gt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 62
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBuffer;->mBufRef:Lcom/facebook/common/references/CloseableReference;

    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/imagepipeline/memory/MemoryChunk;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/imagepipeline/memory/MemoryChunk;->read(I[BII)I

    move-result p1
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    monitor-exit p0

    return p1

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()I
    .registers 2

    monitor-enter p0

    .line 44
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBuffer;->ensureValid()V

    .line 45
    iget v0, p0, Lcom/facebook/imagepipeline/memory/MemoryPooledByteBuffer;->mSize:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
