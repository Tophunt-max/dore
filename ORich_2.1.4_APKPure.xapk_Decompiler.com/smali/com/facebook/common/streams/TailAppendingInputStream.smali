###### Class com.facebook.common.streams.TailAppendingInputStream (com.facebook.common.streams.TailAppendingInputStream)
.class public Lcom/facebook/common/streams/TailAppendingInputStream;
.super Ljava/io/FilterInputStream;
.source "TailAppendingInputStream.java"


# instance fields
.field private mMarkedTailOffset:I

.field private final mTail:[B

.field private mTailOffset:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[B)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputStream",
            "tail"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 27
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iput-object p2, p0, Lcom/facebook/common/streams/TailAppendingInputStream;->mTail:[B

    return-void
.end method

.method private readNextTailByte()I
    .registers 4

    .line 91
    iget v0, p0, Lcom/facebook/common/streams/TailAppendingInputStream;->mTailOffset:I

    iget-object v1, p0, Lcom/facebook/common/streams/TailAppendingInputStream;->mTail:[B

    array-length v2, v1

    if-lt v0, v2, :cond_9

    const/4 v0, -0x1

    return v0

    :cond_9
    add-int/lit8 v2, v0, 0x1

    .line 94
    iput v2, p0, Lcom/facebook/common/streams/TailAppendingInputStream;->mTailOffset:I

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method public mark(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "readLimit"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/facebook/common/streams/TailAppendingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 85
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    .line 86
    iget p1, p0, Lcom/facebook/common/streams/TailAppendingInputStream;->mTailOffset:I

    iput p1, p0, Lcom/facebook/common/streams/TailAppendingInputStream;->mMarkedTailOffset:I

    :cond_f
    return-void
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/facebook/common/streams/TailAppendingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    return v0

    .line 41
    :cond_a
    invoke-direct {p0}, Lcom/facebook/common/streams/TailAppendingInputStream;->readNextTailByte()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/facebook/common/streams/TailAppendingInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "offset",
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/facebook/common/streams/TailAppendingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    return v0

    :cond_a
    const/4 v0, 0x0

    if-nez p3, :cond_e

    return v0

    :cond_e
    :goto_e
    if-ge v0, p3, :cond_1f

    .line 62
    invoke-direct {p0}, Lcom/facebook/common/streams/TailAppendingInputStream;->readNextTailByte()I

    move-result v2

    if-ne v2, v1, :cond_17

    goto :goto_1f

    :cond_17
    add-int v3, p2, v0

    int-to-byte v2, v2

    .line 66
    aput-byte v2, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1f
    :goto_1f
    if-lez v0, :cond_22

    move v1, v0

    :cond_22
    return v1
.end method

.method public reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/facebook/common/streams/TailAppendingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 75
    iget-object v0, p0, Lcom/facebook/common/streams/TailAppendingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 76
    iget v0, p0, Lcom/facebook/common/streams/TailAppendingInputStream;->mMarkedTailOffset:I

    iput v0, p0, Lcom/facebook/common/streams/TailAppendingInputStream;->mTailOffset:I

    return-void

    .line 78
    :cond_12
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark is not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
