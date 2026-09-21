###### Class dc.squareup.okhttp3.ResponseBody (dc.squareup.okhttp3.ResponseBody)
.class public abstract Ldc/squareup/okhttp3/ResponseBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/squareup/okhttp3/ResponseBody$BomAwareReader;
    }
.end annotation


# instance fields
.field private reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private charset()Ljava/nio/charset/Charset;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ldc/squareup/okhttp3/ResponseBody;->contentType()Ldc/squareup/okhttp3/MediaType;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2
    sget-object v1, Ldc/squareup/okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ldc/squareup/okhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_f

    :cond_d
    sget-object v0, Ldc/squareup/okhttp3/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    :goto_f
    return-object v0
.end method

.method public static create(Ldc/squareup/okhttp3/MediaType;JLdc/squareup/okio/BufferedSource;)Ldc/squareup/okhttp3/ResponseBody;
    .registers 5

    const-string v0, "source == null"

    .line 16
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    new-instance v0, Ldc/squareup/okhttp3/ResponseBody$1;

    invoke-direct {v0, p0, p1, p2, p3}, Ldc/squareup/okhttp3/ResponseBody$1;-><init>(Ldc/squareup/okhttp3/MediaType;JLdc/squareup/okio/BufferedSource;)V

    return-object v0
.end method

.method public static create(Ldc/squareup/okhttp3/MediaType;Ldc/squareup/okio/ByteString;)Ldc/squareup/okhttp3/ResponseBody;
    .registers 5

    .line 13
    new-instance v0, Ldc/squareup/okio/Buffer;

    invoke-direct {v0}, Ldc/squareup/okio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Ldc/squareup/okio/Buffer;->write(Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/Buffer;

    move-result-object v0

    .line 14
    invoke-virtual {p1}, Ldc/squareup/okio/ByteString;->size()I

    move-result p1

    int-to-long v1, p1

    invoke-static {p0, v1, v2, v0}, Ldc/squareup/okhttp3/ResponseBody;->create(Ldc/squareup/okhttp3/MediaType;JLdc/squareup/okio/BufferedSource;)Ldc/squareup/okhttp3/ResponseBody;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ldc/squareup/okhttp3/MediaType;Ljava/lang/String;)Ldc/squareup/okhttp3/ResponseBody;
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
    new-instance v1, Ldc/squareup/okio/Buffer;

    invoke-direct {v1}, Ldc/squareup/okio/Buffer;-><init>()V

    invoke-virtual {v1, p1, v0}, Ldc/squareup/okio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Ldc/squareup/okio/Buffer;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v0

    invoke-static {p0, v0, v1, p1}, Ldc/squareup/okhttp3/ResponseBody;->create(Ldc/squareup/okhttp3/MediaType;JLdc/squareup/okio/BufferedSource;)Ldc/squareup/okhttp3/ResponseBody;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ldc/squareup/okhttp3/MediaType;[B)Ldc/squareup/okhttp3/ResponseBody;
    .registers 5

    .line 11
    new-instance v0, Ldc/squareup/okio/Buffer;

    invoke-direct {v0}, Ldc/squareup/okio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Ldc/squareup/okio/Buffer;->write([B)Ldc/squareup/okio/Buffer;

    move-result-object v0

    .line 12
    array-length p1, p1

    int-to-long v1, p1

    invoke-static {p0, v1, v2, v0}, Ldc/squareup/okhttp3/ResponseBody;->create(Ldc/squareup/okhttp3/MediaType;JLdc/squareup/okio/BufferedSource;)Ldc/squareup/okhttp3/ResponseBody;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final byteStream()Ljava/io/InputStream;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ldc/squareup/okhttp3/ResponseBody;->source()Ldc/squareup/okio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Ldc/squareup/okio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final bytes()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ldc/squareup/okhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_4e

    .line 6
    invoke-virtual {p0}, Ldc/squareup/okhttp3/ResponseBody;->source()Ldc/squareup/okio/BufferedSource;

    move-result-object v2

    .line 9
    :try_start_f
    invoke-interface {v2}, Ldc/squareup/okio/BufferedSource;->readByteArray()[B

    move-result-object v3
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_49

    .line 11
    invoke-static {v2}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_48

    .line 13
    array-length v2, v3

    int-to-long v4, v2

    cmp-long v2, v0, v4

    if-nez v2, :cond_23

    goto :goto_48

    .line 14
    :cond_23
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content-Length ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") and stream length ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") disagree"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_48
    :goto_48
    return-object v3

    :catchall_49
    move-exception v0

    .line 15
    invoke-static {v2}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 16
    throw v0

    .line 17
    :cond_4e
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot buffer entire body for content length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final charStream()Ljava/io/Reader;
    .registers 4

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/ResponseBody;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_5

    goto :goto_14

    .line 2
    :cond_5
    new-instance v0, Ldc/squareup/okhttp3/ResponseBody$BomAwareReader;

    invoke-virtual {p0}, Ldc/squareup/okhttp3/ResponseBody;->source()Ldc/squareup/okio/BufferedSource;

    move-result-object v1

    invoke-direct {p0}, Ldc/squareup/okhttp3/ResponseBody;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ldc/squareup/okhttp3/ResponseBody$BomAwareReader;-><init>(Ldc/squareup/okio/BufferedSource;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Ldc/squareup/okhttp3/ResponseBody;->reader:Ljava/io/Reader;

    :goto_14
    return-object v0
.end method

.method public close()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Ldc/squareup/okhttp3/ResponseBody;->source()Ldc/squareup/okio/BufferedSource;

    move-result-object v0

    invoke-static {v0}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method public abstract contentLength()J
.end method

.method public abstract contentType()Ldc/squareup/okhttp3/MediaType;
.end method

.method public abstract source()Ldc/squareup/okio/BufferedSource;
.end method

.method public final string()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ldc/squareup/okhttp3/ResponseBody;->source()Ldc/squareup/okio/BufferedSource;

    move-result-object v0

    .line 3
    :try_start_4
    invoke-direct {p0}, Ldc/squareup/okhttp3/ResponseBody;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v0, v1}, Ldc/squareup/okhttp3/internal/Util;->bomAwareCharset(Ldc/squareup/okio/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 4
    invoke-interface {v0, v1}, Ldc/squareup/okio/BufferedSource;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 6
    invoke-static {v0}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catchall_14
    move-exception v1

    invoke-static {v0}, Ldc/squareup/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 7
    throw v1
.end method

###### Class dc.squareup.okhttp3.ResponseBody.AnonymousClass1 (dc.squareup.okhttp3.ResponseBody$1)
.class final Ldc/squareup/okhttp3/ResponseBody$1;
.super Ldc/squareup/okhttp3/ResponseBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldc/squareup/okhttp3/ResponseBody;->create(Ldc/squareup/okhttp3/MediaType;JLdc/squareup/okio/BufferedSource;)Ldc/squareup/okhttp3/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Ldc/squareup/okio/BufferedSource;

.field final synthetic val$contentLength:J

.field final synthetic val$contentType:Ldc/squareup/okhttp3/MediaType;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/MediaType;JLdc/squareup/okio/BufferedSource;)V
    .registers 5

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/ResponseBody$1;->val$contentType:Ldc/squareup/okhttp3/MediaType;

    iput-wide p2, p0, Ldc/squareup/okhttp3/ResponseBody$1;->val$contentLength:J

    iput-object p4, p0, Ldc/squareup/okhttp3/ResponseBody$1;->val$content:Ldc/squareup/okio/BufferedSource;

    invoke-direct {p0}, Ldc/squareup/okhttp3/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    .line 1
    iget-wide v0, p0, Ldc/squareup/okhttp3/ResponseBody$1;->val$contentLength:J

    return-wide v0
.end method

.method public contentType()Ldc/squareup/okhttp3/MediaType;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/ResponseBody$1;->val$contentType:Ldc/squareup/okhttp3/MediaType;

    return-object v0
.end method

.method public source()Ldc/squareup/okio/BufferedSource;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/ResponseBody$1;->val$content:Ldc/squareup/okio/BufferedSource;

    return-object v0
.end method

###### Class dc.squareup.okhttp3.ResponseBody.BomAwareReader (dc.squareup.okhttp3.ResponseBody$BomAwareReader)
.class final Ldc/squareup/okhttp3/ResponseBody$BomAwareReader;
.super Ljava/io/Reader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BomAwareReader"
.end annotation


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private closed:Z

.field private delegate:Ljava/io/Reader;

.field private final source:Ldc/squareup/okio/BufferedSource;


# direct methods
.method constructor <init>(Ldc/squareup/okio/BufferedSource;Ljava/nio/charset/Charset;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 2
    iput-object p1, p0, Ldc/squareup/okhttp3/ResponseBody$BomAwareReader;->source:Ldc/squareup/okio/BufferedSource;

    .line 3
    iput-object p2, p0, Ldc/squareup/okhttp3/ResponseBody$BomAwareReader;->charset:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ldc/squareup/okhttp3/ResponseBody$BomAwareReader;->closed:Z

    .line 2
    iget-object v0, p0, Ldc/squareup/okhttp3/ResponseBody$BomAwareReader;->delegate:Ljava/io/Reader;

    if-eqz v0, :cond_b

    .line 3
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    goto :goto_10

    .line 5
    :cond_b
    iget-object v0, p0, Ldc/squareup/okhttp3/ResponseBody$BomAwareReader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v0}, Ldc/squareup/okio/Source;->close()V

    :goto_10
    return-void
.end method

.method public read([CII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ldc/squareup/okhttp3/ResponseBody$BomAwareReader;->closed:Z

    if-nez v0, :cond_23

    .line 3
    iget-object v0, p0, Ldc/squareup/okhttp3/ResponseBody$BomAwareReader;->delegate:Ljava/io/Reader;

    if-nez v0, :cond_1e

    .line 5
    iget-object v0, p0, Ldc/squareup/okhttp3/ResponseBody$BomAwareReader;->source:Ldc/squareup/okio/BufferedSource;

    iget-object v1, p0, Ldc/squareup/okhttp3/ResponseBody$BomAwareReader;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Ldc/squareup/okhttp3/internal/Util;->bomAwareCharset(Ldc/squareup/okio/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Ldc/squareup/okhttp3/ResponseBody$BomAwareReader;->source:Ldc/squareup/okio/BufferedSource;

    invoke-interface {v2}, Ldc/squareup/okio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iput-object v1, p0, Ldc/squareup/okhttp3/ResponseBody$BomAwareReader;->delegate:Ljava/io/Reader;

    move-object v0, v1

    .line 8
    :cond_1e
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result p1

    return p1

    .line 9
    :cond_23
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
