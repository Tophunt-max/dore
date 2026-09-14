###### Class com.facebook.common.util.StreamUtil (com.facebook.common.util.StreamUtil)
.class public Lcom/facebook/common/util/StreamUtil;
.super Ljava/lang/Object;
.source "StreamUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBytesFromStream(Ljava/io/InputStream;)[B
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "is"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/common/util/StreamUtil;->getBytesFromStream(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static getBytesFromStream(Ljava/io/InputStream;I)[B
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputStream",
            "hint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/facebook/common/util/StreamUtil$1;

    invoke-direct {v0, p1}, Lcom/facebook/common/util/StreamUtil$1;-><init>(I)V

    .line 51
    invoke-static {p0, v0}, Lcom/facebook/common/internal/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 52
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static skip(Ljava/io/InputStream;J)J
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "inputStream",
            "bytesCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-static {p0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_b

    const/4 v2, 0x1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    .line 65
    :goto_c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    move-wide v2, p1

    :goto_14
    cmp-long v4, v2, v0

    if-lez v4, :cond_2d

    .line 69
    invoke-virtual {p0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_22

    :goto_20
    sub-long/2addr v2, v4

    goto :goto_14

    .line 75
    :cond_22
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2c

    const-wide/16 v4, 0x1

    goto :goto_20

    :cond_2c
    sub-long/2addr p1, v2

    :cond_2d
    return-wide p1
.end method

###### Class com.facebook.common.util.StreamUtil.AnonymousClass1 (com.facebook.common.util.StreamUtil$1)
.class final Lcom/facebook/common/util/StreamUtil$1;
.super Ljava/io/ByteArrayOutputStream;
.source "StreamUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/common/util/StreamUtil;->getBytesFromStream(Ljava/io/InputStream;I)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x0"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public toByteArray()[B
    .registers 3

    .line 44
    iget v0, p0, Lcom/facebook/common/util/StreamUtil$1;->count:I

    iget-object v1, p0, Lcom/facebook/common/util/StreamUtil$1;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_a

    .line 45
    iget-object v0, p0, Lcom/facebook/common/util/StreamUtil$1;->buf:[B

    return-object v0

    .line 47
    :cond_a
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
