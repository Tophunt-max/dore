###### Class com.facebook.common.memory.PooledByteBuffer (com.facebook.common.memory.PooledByteBuffer)
.class public interface abstract Lcom/facebook/common/memory/PooledByteBuffer;
.super Ljava/lang/Object;
.source "PooledByteBuffer.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/memory/PooledByteBuffer$ClosedException;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getByteBuffer()Ljava/nio/ByteBuffer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract getNativePtr()J
.end method

.method public abstract isClosed()Z
.end method

.method public abstract read(I)B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation
.end method

.method public abstract read(I[BII)I
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
.end method

.method public abstract size()I
.end method

###### Class com.facebook.common.memory.PooledByteBuffer.ClosedException (com.facebook.common.memory.PooledByteBuffer$ClosedException)
.class public Lcom/facebook/common/memory/PooledByteBuffer$ClosedException;
.super Ljava/lang/RuntimeException;
.source "PooledByteBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/memory/PooledByteBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClosedException"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "Invalid bytebuf. Already closed"

    .line 74
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
