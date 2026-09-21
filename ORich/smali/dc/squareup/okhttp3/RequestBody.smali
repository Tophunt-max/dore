###### Class dc.squareup.okhttp3.RequestBody (dc.squareup.okhttp3.RequestBody)
.class public abstract Ldc/squareup/okhttp3/RequestBody;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ldc/squareup/okhttp3/MediaType;Ldc/squareup/okio/ByteString;)Ldc/squareup/okhttp3/RequestBody;
    .registers 3

    .line 11
    new-instance v0, Ldc/squareup/okhttp3/RequestBody$1;

    invoke-direct {v0, p0, p1}, Ldc/squareup/okhttp3/RequestBody$1;-><init>(Ldc/squareup/okhttp3/MediaType;Ldc/squareup/okio/ByteString;)V

    return-object v0
.end method

.method public static create(Ldc/squareup/okhttp3/MediaType;Ljava/io/File;)Ldc/squareup/okhttp3/RequestBody;
    .registers 3

    const-string v0, "file == null"

    .line 17
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    new-instance v0, Ldc/squareup/okhttp3/RequestBody$3;

    invoke-direct {v0, p0, p1}, Ldc/squareup/okhttp3/RequestBody$3;-><init>(Ldc/squareup/okhttp3/MediaType;Ljava/io/File;)V

    return-object v0
.end method

.method public static create(Ldc/squareup/okhttp3/MediaType;Ljava/lang/String;)Ldc/squareup/okhttp3/RequestBody;
    .registers 4

    .line 1
    sget-object v0, Ldc/squareup/okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz p0, :cond_c

    .line 3
    invoke-virtual {p0}, Ldc/squareup/okhttp3/MediaType;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_c

    :cond_b
    move-object v0, v1

    .line 9
    :cond_c
    :goto_c
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 10
    invoke-static {p0, p1}, Ldc/squareup/okhttp3/RequestBody;->create(Ldc/squareup/okhttp3/MediaType;[B)Ldc/squareup/okhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ldc/squareup/okhttp3/MediaType;[B)Ldc/squareup/okhttp3/RequestBody;
    .registers 4

    .line 12
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Ldc/squareup/okhttp3/RequestBody;->create(Ldc/squareup/okhttp3/MediaType;[BII)Ldc/squareup/okhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ldc/squareup/okhttp3/MediaType;[BII)Ldc/squareup/okhttp3/RequestBody;
    .registers 11

    const-string v0, "content == null"

    .line 15
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Ldc/squareup/okhttp3/internal/Util;->checkOffsetAndCount(JJJ)V

    .line 14
    new-instance v0, Ldc/squareup/okhttp3/RequestBody$2;

    invoke-direct {v0, p0, p3, p1, p2}, Ldc/squareup/okhttp3/RequestBody$2;-><init>(Ldc/squareup/okhttp3/MediaType;I[BI)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract contentType()Ldc/squareup/okhttp3/MediaType;
.end method

.method public abstract writeTo(Ldc/squareup/okio/BufferedSink;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class dc.squareup.okhttp3.RequestBody.AnonymousClass1 (dc.squareup.okhttp3.RequestBody$1)
.class final Ldc/squareup/okhttp3/RequestBody$1;
.super Ldc/squareup/okhttp3/RequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc/squareup/okhttp3/RequestBody;->create(Ldc/squareup/okhttp3/MediaType;Ldc/squareup/okio/ByteString;)Ldc/squareup/okhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Ldc/squareup/okio/ByteString;

.field final synthetic val$contentType:Ldc/squareup/okhttp3/MediaType;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/MediaType;Ldc/squareup/okio/ByteString;)V
    .registers 3

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/RequestBody$1;->val$contentType:Ldc/squareup/okhttp3/MediaType;

    iput-object p2, p0, Ldc/squareup/okhttp3/RequestBody$1;->val$content:Ldc/squareup/okio/ByteString;

    invoke-direct {p0}, Ldc/squareup/okhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/RequestBody$1;->val$content:Ldc/squareup/okio/ByteString;

    invoke-virtual {v0}, Ldc/squareup/okio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Ldc/squareup/okhttp3/MediaType;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/RequestBody$1;->val$contentType:Ldc/squareup/okhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Ldc/squareup/okio/BufferedSink;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/RequestBody$1;->val$content:Ldc/squareup/okio/ByteString;

    invoke-interface {p1, v0}, Ldc/squareup/okio/BufferedSink;->write(Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/BufferedSink;

    return-void
.end method

###### Class dc.squareup.okhttp3.RequestBody.AnonymousClass2 (dc.squareup.okhttp3.RequestBody$2)
.class final Ldc/squareup/okhttp3/RequestBody$2;
.super Ldc/squareup/okhttp3/RequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc/squareup/okhttp3/RequestBody;->create(Ldc/squareup/okhttp3/MediaType;[BII)Ldc/squareup/okhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$byteCount:I

.field final synthetic val$content:[B

.field final synthetic val$contentType:Ldc/squareup/okhttp3/MediaType;

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/MediaType;I[BI)V
    .registers 5

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/RequestBody$2;->val$contentType:Ldc/squareup/okhttp3/MediaType;

    iput p2, p0, Ldc/squareup/okhttp3/RequestBody$2;->val$byteCount:I

    iput-object p3, p0, Ldc/squareup/okhttp3/RequestBody$2;->val$content:[B

    iput p4, p0, Ldc/squareup/okhttp3/RequestBody$2;->val$offset:I

    invoke-direct {p0}, Ldc/squareup/okhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    .line 1
    iget v0, p0, Ldc/squareup/okhttp3/RequestBody$2;->val$byteCount:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Ldc/squareup/okhttp3/MediaType;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/RequestBody$2;->val$contentType:Ldc/squareup/okhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Ldc/squareup/okio/BufferedSink;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/RequestBody$2;->val$content:[B

    iget v1, p0, Ldc/squareup/okhttp3/RequestBody$2;->val$offset:I

    iget v2, p0, Ldc/squareup/okhttp3/RequestBody$2;->val$byteCount:I

    invoke-interface {p1, v0, v1, v2}, Ldc/squareup/okio/BufferedSink;->write([BII)Ldc/squareup/okio/BufferedSink;

    return-void
.end method

###### Class dc.squareup.okhttp3.RequestBody.AnonymousClass3 (dc.squareup.okhttp3.RequestBody$3)
.class final Ldc/squareup/okhttp3/RequestBody$3;
.super Ldc/squareup/okhttp3/RequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc/squareup/okhttp3/RequestBody;->create(Ldc/squareup/okhttp3/MediaType;Ljava/io/File;)Ldc/squareup/okhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$contentType:Ldc/squareup/okhttp3/MediaType;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/MediaType;Ljava/io/File;)V
    .registers 3

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/RequestBody$3;->val$contentType:Ldc/squareup/okhttp3/MediaType;

    iput-object p2, p0, Ldc/squareup/okhttp3/RequestBody$3;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ldc/squareup/okhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/RequestBody$3;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Ldc/squareup/okhttp3/MediaType;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/RequestBody$3;->val$contentType:Ldc/squareup/okhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Ldc/squareup/okio/BufferedSink;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_1
    iget-object v1, p0, Ldc/squareup/okhttp3/RequestBody$3;->val$file:Ljava/io/File;

    invoke-static {v1}, Ldc/squareup/okio/Okio;->source(Ljava/io/File;)Ldc/squareup/okio/Source;

    move-result-object v0

    .line 2
    invoke-interface {p1, v0}, Ldc/squareup/okio/BufferedSink;->writeAll(Ldc/squareup/okio/Source;)J
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    .line 4
    invoke-static {v0}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_e
    move-exception p1

    invoke-static {v0}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 5
    throw p1
.end method
