###### Class dc.squareup.okhttp3.internal.http2.Http2Reader (dc.squareup.okhttp3.internal.http2.Http2Reader)
.class final Ldc/squareup/okhttp3/internal/http2/Http2Reader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;,
        Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;
    }
.end annotation


# static fields
.field static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final client:Z

.field private final continuation:Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;

.field final hpackReader:Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;

.field private final source:Ldc/squareup/okio/BufferedSource;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Ldc/squareup/okhttp3/internal/http2/Http2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ldc/squareup/okio/BufferedSource;Z)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->source:Ldc/squareup/okio/BufferedSource;

    .line 3
    iput-boolean p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->client:Z

    .line 4
    new-instance p2, Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;

    invoke-direct {p2, p1}, Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;-><init>(Ldc/squareup/okio/BufferedSource;)V

    iput-object p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->continuation:Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;

    .line 5
    new-instance p1, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;

    const/16 v0, 0x1000

    invoke-direct {p1, v0, p2}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;-><init>(ILdc/squareup/okio/Source;)V

    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->hpackReader:Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;

    return-void
.end method

.method static lengthWithoutPadding(IBS)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_6

    add-int/lit8 p0, p0, -0x1

    :cond_6
    if-gt p2, p0, :cond_b

    sub-int/2addr p0, p2

    int-to-short p0, p0

    return p0

    :cond_b
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 1
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p2, 0x1

    aput-object p0, p1, p2

    const-string p0, "PROTOCOL_ERROR padding %s > remaining length %s"

    invoke-static {p0, p1}, Ldc/squareup/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method private readData(Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_39

    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    if-nez v2, :cond_30

    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_20

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v0}, Ldc/squareup/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 2
    :cond_20
    invoke-static {p2, p3, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->lengthWithoutPadding(IBS)I

    move-result p2

    .line 4
    iget-object p3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {p1, v1, p4, p3, p2}, Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;->data(ZILdc/squareup/okio/BufferedSource;I)V

    .line 5
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->source:Ldc/squareup/okio/BufferedSource;

    int-to-long p2, v0

    invoke-interface {p1, p2, p3}, Ldc/squareup/okio/BufferedSource;->skip(J)V

    return-void

    :cond_30
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    .line 6
    invoke-static {p2, p1}, Ldc/squareup/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_39
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    .line 7
    invoke-static {p2, p1}, Ldc/squareup/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readGoAway(Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-lt p2, v0, :cond_42

    if-nez p4, :cond_39

    .line 1
    iget-object p4, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {p4}, Ldc/squareup/okio/BufferedSource;->readInt()I

    move-result p4

    .line 2
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v2}, Ldc/squareup/okio/BufferedSource;->readInt()I

    move-result v2

    sub-int/2addr p2, v0

    .line 4
    invoke-static {v2}, Ldc/squareup/okhttp3/internal/http2/ErrorCode;->fromHttp2(I)Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 8
    sget-object p3, Ldc/squareup/okio/ByteString;->EMPTY:Ldc/squareup/okio/ByteString;

    if-lez p2, :cond_26

    .line 10
    iget-object p3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->source:Ldc/squareup/okio/BufferedSource;

    int-to-long v1, p2

    invoke-interface {p3, v1, v2}, Ldc/squareup/okio/BufferedSource;->readByteString(J)Ldc/squareup/okio/ByteString;

    move-result-object p3

    .line 12
    :cond_26
    invoke-interface {p1, p4, v0, p3}, Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;->goAway(ILdc/squareup/okhttp3/internal/http2/ErrorCode;Ldc/squareup/okio/ByteString;)V

    return-void

    :cond_2a
    new-array p1, p3, [Ljava/lang/Object;

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "TYPE_GOAWAY unexpected error code: %d"

    invoke-static {p2, p1}, Ldc/squareup/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_39
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "TYPE_GOAWAY streamId != 0"

    .line 14
    invoke-static {p2, p1}, Ldc/squareup/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_42
    new-array p1, p3, [Ljava/lang/Object;

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "TYPE_GOAWAY length < 8: %s"

    invoke-static {p2, p1}, Ldc/squareup/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readHeaderBlock(ISBI)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->continuation:Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;

    iput p1, v0, Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;->left:I

    iput p1, v0, Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;->length:I

    .line 2
    iput-short p2, v0, Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;->padding:S

    .line 3
    iput-byte p3, v0, Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;->flags:B

    .line 4
    iput p4, v0, Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;->streamId:I

    .line 8
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->hpackReader:Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;

    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->readHeaders()V

    .line 9
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->hpackReader:Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;

    invoke-virtual {p1}, Ldc/squareup/okhttp3/internal/http2/Hpack$Reader;->getAndResetHeaderList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private readHeaders(Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_2d

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_17

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v0}, Ldc/squareup/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_17
    and-int/lit8 v2, p3, 0x20

    if-eqz v2, :cond_20

    .line 4
    invoke-direct {p0, p1, p4}, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->readPriority(Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;I)V

    add-int/lit8 p2, p2, -0x5

    .line 8
    :cond_20
    invoke-static {p2, p3, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->lengthWithoutPadding(IBS)I

    move-result p2

    .line 10
    invoke-direct {p0, p2, v0, p3, p4}, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object p2

    const/4 p3, -0x1

    .line 12
    invoke-interface {p1, v1, p4, p3, p2}, Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;->headers(ZIILjava/util/List;)V

    return-void

    :cond_2d
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    .line 13
    invoke-static {p2, p1}, Ldc/squareup/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method static readMedium(Ldc/squareup/okio/BufferedSource;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ldc/squareup/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 2
    invoke-interface {p0}, Ldc/squareup/okio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 3
    invoke-interface {p0}, Ldc/squareup/okio/BufferedSource;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private readPing(Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne p2, v2, :cond_25

    if-nez p4, :cond_1c

    .line 1
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {p2}, Ldc/squareup/okio/BufferedSource;->readInt()I

    move-result p2

    .line 2
    iget-object p4, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {p4}, Ldc/squareup/okio/BufferedSource;->readInt()I

    move-result p4

    and-int/2addr p3, v1

    if-eqz p3, :cond_18

    const/4 v0, 0x1

    .line 4
    :cond_18
    invoke-interface {p1, v0, p2, p4}, Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;->ping(ZII)V

    return-void

    :cond_1c
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_PING streamId != 0"

    .line 5
    invoke-static {p2, p1}, Ldc/squareup/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_25
    new-array p1, v1, [Ljava/lang/Object;

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_PING length != 8: %s"

    invoke-static {p2, p1}, Ldc/squareup/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readPriority(Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v0}, Ldc/squareup/okio/BufferedSource;->readInt()I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    const v3, 0x7fffffff

    and-int/2addr v0, v3

    .line 7
    iget-object v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v3}, Ldc/squareup/okio/BufferedSource;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, v2

    .line 8
    invoke-interface {p1, p2, v0, v3, v1}, Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;->priority(IIIZ)V

    return-void
.end method

.method private readPriority(Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_13

    if-eqz p4, :cond_a

    .line 1
    invoke-direct {p0, p1, p4}, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->readPriority(Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;I)V

    return-void

    :cond_a
    new-array p1, p3, [Ljava/lang/Object;

    const-string p2, "TYPE_PRIORITY streamId == 0"

    .line 2
    invoke-static {p2, p1}, Ldc/squareup/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_13
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, p3

    const-string p2, "TYPE_PRIORITY length: %d != 5"

    invoke-static {p2, p1}, Ldc/squareup/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readPushPromise(Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_28

    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_10

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v0}, Ldc/squareup/okio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    .line 2
    :cond_10
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v1}, Ldc/squareup/okio/BufferedSource;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    add-int/lit8 p2, p2, -0x4

    .line 4
    invoke-static {p2, p3, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->lengthWithoutPadding(IBS)I

    move-result p2

    .line 5
    invoke-direct {p0, p2, v0, p3, p4}, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->readHeaderBlock(ISBI)Ljava/util/List;

    move-result-object p2

    .line 6
    invoke-interface {p1, p4, v1, p2}, Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;->pushPromise(IILjava/util/List;)V

    return-void

    :cond_28
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    .line 7
    invoke-static {p2, p1}, Ldc/squareup/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readRstStream(Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2f

    if-eqz p4, :cond_26

    .line 1
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {p2}, Ldc/squareup/okio/BufferedSource;->readInt()I

    move-result p2

    .line 2
    invoke-static {p2}, Ldc/squareup/okhttp3/internal/http2/ErrorCode;->fromHttp2(I)Ldc/squareup/okhttp3/internal/http2/ErrorCode;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 6
    invoke-interface {p1, p4, v1}, Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;->rstStream(ILdc/squareup/okhttp3/internal/http2/ErrorCode;)V

    return-void

    :cond_17
    new-array p1, p3, [Ljava/lang/Object;

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_RST_STREAM unexpected error code: %d"

    invoke-static {p2, p1}, Ldc/squareup/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_26
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_RST_STREAM streamId == 0"

    .line 8
    invoke-static {p2, p1}, Ldc/squareup/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2f
    new-array p1, p3, [Ljava/lang/Object;

    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_RST_STREAM length: %d != 4"

    invoke-static {p2, p1}, Ldc/squareup/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readSettings(Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_8e

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_16

    if-nez p2, :cond_d

    .line 1
    invoke-interface {p1}, Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;->ackSettings()V

    return-void

    :cond_d
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "FRAME_SIZE_ERROR ack frame should be empty!"

    .line 2
    invoke-static {p2, p1}, Ldc/squareup/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 7
    :cond_16
    rem-int/lit8 p3, p2, 0x6

    if-nez p3, :cond_7f

    .line 8
    new-instance p3, Ldc/squareup/okhttp3/internal/http2/Settings;

    invoke-direct {p3}, Ldc/squareup/okhttp3/internal/http2/Settings;-><init>()V

    const/4 v1, 0x0

    :goto_20
    if-ge v1, p2, :cond_7b

    .line 10
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v2}, Ldc/squareup/okio/BufferedSource;->readShort()S

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    .line 11
    iget-object v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v3}, Ldc/squareup/okio/BufferedSource;->readInt()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eq v2, v4, :cond_67

    const/4 v4, 0x3

    if-eq v2, v4, :cond_65

    if-eq v2, v5, :cond_58

    const/4 v4, 0x5

    if-eq v2, v4, :cond_3f

    goto :goto_75

    :cond_3f
    const/16 v4, 0x4000

    if-lt v3, v4, :cond_49

    const v4, 0xffffff

    if-gt v3, v4, :cond_49

    goto :goto_75

    :cond_49
    new-array p1, p4, [Ljava/lang/Object;

    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    invoke-static {p2, p1}, Ldc/squareup/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_58
    const/4 v2, 0x7

    if-ltz v3, :cond_5c

    goto :goto_75

    :cond_5c
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    .line 33
    invoke-static {p2, p1}, Ldc/squareup/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_65
    const/4 v2, 0x4

    goto :goto_75

    :cond_67
    if-eqz v3, :cond_75

    if-ne v3, p4, :cond_6c

    goto :goto_75

    :cond_6c
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    .line 34
    invoke-static {p2, p1}, Ldc/squareup/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 56
    :cond_75
    :goto_75
    invoke-virtual {p3, v2, v3}, Ldc/squareup/okhttp3/internal/http2/Settings;->set(II)Ldc/squareup/okhttp3/internal/http2/Settings;

    add-int/lit8 v1, v1, 0x6

    goto :goto_20

    .line 58
    :cond_7b
    invoke-interface {p1, v0, p3}, Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;->settings(ZLdc/squareup/okhttp3/internal/http2/Settings;)V

    return-void

    :cond_7f
    new-array p1, p4, [Ljava/lang/Object;

    .line 59
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "TYPE_SETTINGS length %% 6 != 0: %s"

    invoke-static {p2, p1}, Ldc/squareup/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_8e
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "TYPE_SETTINGS streamId != 0"

    .line 60
    invoke-static {p2, p1}, Ldc/squareup/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private readWindowUpdate(Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;IBI)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_29

    .line 1
    iget-object p2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {p2}, Ldc/squareup/okio/BufferedSource;->readInt()I

    move-result p2

    int-to-long v1, p2

    const-wide/32 v3, 0x7fffffff

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-eqz p2, :cond_1a

    .line 3
    invoke-interface {p1, p4, v1, v2}, Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;->windowUpdate(IJ)V

    return-void

    :cond_1a
    new-array p1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, p3

    const-string p2, "windowSizeIncrement was 0"

    invoke-static {p2, p1}, Ldc/squareup/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_29
    new-array p1, v0, [Ljava/lang/Object;

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, p3

    const-string p2, "TYPE_WINDOW_UPDATE length !=4: %s"

    invoke-static {p2, p1}, Ldc/squareup/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v0}, Ldc/squareup/okio/Source;->close()V

    return-void
.end method

.method public nextFrame(ZLdc/squareup/okhttp3/internal/http2/Http2Reader$Handler;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->source:Ldc/squareup/okio/BufferedSource;

    const-wide/16 v2, 0x9

    invoke-interface {v1, v2, v3}, Ldc/squareup/okio/BufferedSource;->require(J)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_94

    .line 17
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-static {v1}, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->readMedium(Ldc/squareup/okio/BufferedSource;)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_85

    const/16 v3, 0x4000

    if-gt v1, v3, :cond_85

    .line 21
    iget-object v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v3}, Ldc/squareup/okio/BufferedSource;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    if-eqz p1, :cond_33

    const/4 p1, 0x4

    if-ne v3, p1, :cond_24

    goto :goto_33

    :cond_24
    new-array p1, v2, [Ljava/lang/Object;

    .line 23
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "Expected a SETTINGS frame but was %s"

    invoke-static {p2, p1}, Ldc/squareup/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 25
    :cond_33
    :goto_33
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {p1}, Ldc/squareup/okio/BufferedSource;->readByte()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 26
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v0}, Ldc/squareup/okio/BufferedSource;->readInt()I

    move-result v0

    const v4, 0x7fffffff

    and-int/2addr v0, v4

    .line 27
    sget-object v4, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-static {v2, v0, v1, v3, p1}, Ldc/squareup/okhttp3/internal/http2/Http2;->frameLog(ZIIBB)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_57
    packed-switch v3, :pswitch_data_96

    .line 68
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->source:Ldc/squareup/okio/BufferedSource;

    int-to-long v0, v1

    invoke-interface {p1, v0, v1}, Ldc/squareup/okio/BufferedSource;->skip(J)V

    goto :goto_84

    .line 69
    :pswitch_61
    invoke-direct {p0, p2, v1, p1, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->readWindowUpdate(Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_84

    .line 70
    :pswitch_65
    invoke-direct {p0, p2, v1, p1, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->readGoAway(Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_84

    .line 71
    :pswitch_69
    invoke-direct {p0, p2, v1, p1, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->readPing(Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_84

    .line 72
    :pswitch_6d
    invoke-direct {p0, p2, v1, p1, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->readPushPromise(Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_84

    .line 73
    :pswitch_71
    invoke-direct {p0, p2, v1, p1, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->readSettings(Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_84

    .line 74
    :pswitch_75
    invoke-direct {p0, p2, v1, p1, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->readRstStream(Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_84

    .line 75
    :pswitch_79
    invoke-direct {p0, p2, v1, p1, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->readPriority(Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_84

    .line 76
    :pswitch_7d
    invoke-direct {p0, p2, v1, p1, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->readHeaders(Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    goto :goto_84

    .line 77
    :pswitch_81
    invoke-direct {p0, p2, v1, p1, v0}, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->readData(Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;IBI)V

    :goto_84
    return v2

    :cond_85
    new-array p1, v2, [Ljava/lang/Object;

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "FRAME_SIZE_ERROR: %s"

    invoke-static {p2, p1}, Ldc/squareup/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catch_94
    return v0

    nop

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_81
        :pswitch_7d
        :pswitch_79
        :pswitch_75
        :pswitch_71
        :pswitch_6d
        :pswitch_69
        :pswitch_65
        :pswitch_61
    .end packed-switch
.end method

.method public readConnectionPreface(Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->client:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    .line 3
    invoke-virtual {p0, v2, p1}, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->nextFrame(ZLdc/squareup/okhttp3/internal/http2/Http2Reader$Handler;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_44

    :cond_d
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Required SETTINGS preface not received"

    .line 4
    invoke-static {v0, p1}, Ldc/squareup/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 8
    :cond_16
    iget-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->source:Ldc/squareup/okio/BufferedSource;

    sget-object v0, Ldc/squareup/okhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Ldc/squareup/okio/ByteString;

    invoke-virtual {v0}, Ldc/squareup/okio/ByteString;->size()I

    move-result v3

    int-to-long v3, v3

    invoke-interface {p1, v3, v4}, Ldc/squareup/okio/BufferedSource;->readByteString(J)Ldc/squareup/okio/ByteString;

    move-result-object p1

    .line 9
    sget-object v3, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3e

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ldc/squareup/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "<< CONNECTION %s"

    invoke-static {v5, v4}, Ldc/squareup/okhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 10
    :cond_3e
    invoke-virtual {v0, p1}, Ldc/squareup/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    :goto_44
    return-void

    :cond_45
    new-array v0, v2, [Ljava/lang/Object;

    .line 11
    invoke-virtual {p1}, Ldc/squareup/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Expected a connection header but was %s"

    invoke-static {p1, v0}, Ldc/squareup/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

###### Class dc.squareup.okhttp3.internal.http2.Http2Reader.ContinuationSource (dc.squareup.okhttp3.internal.http2.Http2Reader$ContinuationSource)
.class final Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldc/squareup/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/http2/Http2Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContinuationSource"
.end annotation


# instance fields
.field flags:B

.field left:I

.field length:I

.field padding:S

.field private final source:Ldc/squareup/okio/BufferedSource;

.field streamId:I


# direct methods
.method constructor <init>(Ldc/squareup/okio/BufferedSource;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;->source:Ldc/squareup/okio/BufferedSource;

    return-void
.end method

.method private readContinuationHeader()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;->streamId:I

    .line 3
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;->source:Ldc/squareup/okio/BufferedSource;

    invoke-static {v1}, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->readMedium(Ldc/squareup/okio/BufferedSource;)I

    move-result v1

    iput v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;->left:I

    iput v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;->length:I

    .line 4
    iget-object v1, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v1}, Ldc/squareup/okio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 5
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v2}, Ldc/squareup/okio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;->flags:B

    .line 6
    sget-object v2, Ldc/squareup/okhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_38

    iget v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;->streamId:I

    iget v5, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;->length:I

    iget-byte v6, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;->flags:B

    invoke-static {v4, v3, v5, v1, v6}, Ldc/squareup/okhttp3/internal/http2/Http2;->frameLog(ZIIBB)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 7
    :cond_38
    iget-object v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v2}, Ldc/squareup/okio/BufferedSource;->readInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;->streamId:I

    const/16 v3, 0x9

    const/4 v5, 0x0

    if-ne v1, v3, :cond_55

    if-ne v2, v0, :cond_4c

    return-void

    :cond_4c
    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "TYPE_CONTINUATION streamId changed"

    .line 9
    invoke-static {v1, v0}, Ldc/squareup/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_55
    new-array v0, v4, [Ljava/lang/Object;

    .line 10
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "%s != TYPE_CONTINUATION"

    invoke-static {v1, v0}, Ldc/squareup/okhttp3/internal/http2/Http2;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public read(Ldc/squareup/okio/Buffer;J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;->left:I

    const-wide/16 v1, -0x1

    if-nez v0, :cond_1c

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;->source:Ldc/squareup/okio/BufferedSource;

    iget-short v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;->padding:S

    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, Ldc/squareup/okio/BufferedSource;->skip(J)V

    const/4 v0, 0x0

    .line 3
    iput-short v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;->padding:S

    .line 4
    iget-byte v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;->flags:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_18

    return-wide v1

    .line 5
    :cond_18
    invoke-direct {p0}, Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;->readContinuationHeader()V

    goto :goto_0

    .line 9
    :cond_1c
    iget-object v3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;->source:Ldc/squareup/okio/BufferedSource;

    int-to-long v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v3, p1, p2, p3}, Ldc/squareup/okio/Source;->read(Ldc/squareup/okio/Buffer;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_2c

    return-wide v1

    .line 11
    :cond_2c
    iget p3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;->left:I

    int-to-long v0, p3

    sub-long/2addr v0, p1

    long-to-int p3, v0

    iput p3, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;->left:I

    return-wide p1
.end method

.method public timeout()Ldc/squareup/okio/Timeout;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/http2/Http2Reader$ContinuationSource;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v0}, Ldc/squareup/okio/Source;->timeout()Ldc/squareup/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

###### Class dc.squareup.okhttp3.internal.http2.Http2Reader.Handler (dc.squareup.okhttp3.internal.http2.Http2Reader$Handler)
.class interface abstract Ldc/squareup/okhttp3/internal/http2/Http2Reader$Handler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/http2/Http2Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Handler"
.end annotation


# virtual methods
.method public abstract ackSettings()V
.end method

.method public abstract alternateService(ILjava/lang/String;Ldc/squareup/okio/ByteString;Ljava/lang/String;IJ)V
.end method

.method public abstract data(ZILdc/squareup/okio/BufferedSource;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract goAway(ILdc/squareup/okhttp3/internal/http2/ErrorCode;Ldc/squareup/okio/ByteString;)V
.end method

.method public abstract headers(ZIILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract ping(ZII)V
.end method

.method public abstract priority(IIIZ)V
.end method

.method public abstract pushPromise(IILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract rstStream(ILdc/squareup/okhttp3/internal/http2/ErrorCode;)V
.end method

.method public abstract settings(ZLdc/squareup/okhttp3/internal/http2/Settings;)V
.end method

.method public abstract windowUpdate(IJ)V
.end method
