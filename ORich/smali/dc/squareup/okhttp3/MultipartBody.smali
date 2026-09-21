###### Class dc.squareup.okhttp3.MultipartBody (dc.squareup.okhttp3.MultipartBody)
.class public final Ldc/squareup/okhttp3/MultipartBody;
.super Ldc/squareup/okhttp3/RequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/squareup/okhttp3/MultipartBody$Builder;,
        Ldc/squareup/okhttp3/MultipartBody$Part;
    }
.end annotation


# static fields
.field public static final ALTERNATIVE:Ldc/squareup/okhttp3/MediaType;

.field private static final COLONSPACE:[B

.field private static final CRLF:[B

.field private static final DASHDASH:[B

.field public static final DIGEST:Ldc/squareup/okhttp3/MediaType;

.field public static final FORM:Ldc/squareup/okhttp3/MediaType;

.field public static final MIXED:Ldc/squareup/okhttp3/MediaType;

.field public static final PARALLEL:Ldc/squareup/okhttp3/MediaType;


# instance fields
.field private final boundary:Ldc/squareup/okio/ByteString;

.field private contentLength:J

.field private final contentType:Ldc/squareup/okhttp3/MediaType;

.field private final originalType:Ldc/squareup/okhttp3/MediaType;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "multipart/mixed"

    .line 1
    invoke-static {v0}, Ldc/squareup/okhttp3/MediaType;->get(Ljava/lang/String;)Ldc/squareup/okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/MultipartBody;->MIXED:Ldc/squareup/okhttp3/MediaType;

    const-string v0, "multipart/alternative"

    .line 8
    invoke-static {v0}, Ldc/squareup/okhttp3/MediaType;->get(Ljava/lang/String;)Ldc/squareup/okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/MultipartBody;->ALTERNATIVE:Ldc/squareup/okhttp3/MediaType;

    const-string v0, "multipart/digest"

    .line 15
    invoke-static {v0}, Ldc/squareup/okhttp3/MediaType;->get(Ljava/lang/String;)Ldc/squareup/okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/MultipartBody;->DIGEST:Ldc/squareup/okhttp3/MediaType;

    const-string v0, "multipart/parallel"

    .line 21
    invoke-static {v0}, Ldc/squareup/okhttp3/MediaType;->get(Ljava/lang/String;)Ldc/squareup/okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/MultipartBody;->PARALLEL:Ldc/squareup/okhttp3/MediaType;

    const-string v0, "multipart/form-data"

    .line 28
    invoke-static {v0}, Ldc/squareup/okhttp3/MediaType;->get(Ljava/lang/String;)Ldc/squareup/okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/MultipartBody;->FORM:Ldc/squareup/okhttp3/MediaType;

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 30
    fill-array-data v1, :array_40

    sput-object v1, Ldc/squareup/okhttp3/MultipartBody;->COLONSPACE:[B

    new-array v1, v0, [B

    .line 31
    fill-array-data v1, :array_46

    sput-object v1, Ldc/squareup/okhttp3/MultipartBody;->CRLF:[B

    new-array v0, v0, [B

    .line 32
    fill-array-data v0, :array_4c

    sput-object v0, Ldc/squareup/okhttp3/MultipartBody;->DASHDASH:[B

    return-void

    nop

    :array_40
    .array-data 1
        0x3at
        0x20t
    .end array-data

    nop

    :array_46
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_4c
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method constructor <init>(Ldc/squareup/okio/ByteString;Ldc/squareup/okhttp3/MediaType;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldc/squareup/okio/ByteString;",
            "Ldc/squareup/okhttp3/MediaType;",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/MultipartBody$Part;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ldc/squareup/okhttp3/RequestBody;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Ldc/squareup/okhttp3/MultipartBody;->contentLength:J

    .line 5
    iput-object p1, p0, Ldc/squareup/okhttp3/MultipartBody;->boundary:Ldc/squareup/okio/ByteString;

    .line 6
    iput-object p2, p0, Ldc/squareup/okhttp3/MultipartBody;->originalType:Ldc/squareup/okhttp3/MediaType;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; boundary="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ldc/squareup/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ldc/squareup/okhttp3/MediaType;->get(Ljava/lang/String;)Ldc/squareup/okhttp3/MediaType;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okhttp3/MultipartBody;->contentType:Ldc/squareup/okhttp3/MediaType;

    .line 8
    invoke-static {p3}, Ldc/squareup/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okhttp3/MultipartBody;->parts:Ljava/util/List;

    return-void
.end method

.method static appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 7

    const/16 v0, 0x22

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_32

    .line 3
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2a

    const/16 v4, 0xd

    if-eq v3, v4, :cond_24

    if-eq v3, v0, :cond_1e

    .line 15
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2f

    :cond_1e
    const-string v3, "%22"

    .line 16
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f

    :cond_24
    const-string v3, "%0D"

    .line 17
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f

    :cond_2a
    const-string v3, "%0A"

    .line 18
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 31
    :cond_32
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method private writeOrCountBytes(Ldc/squareup/okio/BufferedSink;Z)J
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_9

    .line 1
    new-instance p1, Ldc/squareup/okio/Buffer;

    invoke-direct {p1}, Ldc/squareup/okio/Buffer;-><init>()V

    move-object v0, p1

    goto :goto_d

    :cond_9
    const/4 v0, 0x0

    move-object v12, v0

    move-object v0, p1

    move-object p1, v12

    .line 4
    :goto_d
    iget-object v1, p0, Ldc/squareup/okhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_17
    if-ge v5, v1, :cond_a7

    .line 5
    iget-object v6, p0, Ldc/squareup/okhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldc/squareup/okhttp3/MultipartBody$Part;

    .line 6
    iget-object v7, v6, Ldc/squareup/okhttp3/MultipartBody$Part;->headers:Ldc/squareup/okhttp3/Headers;

    .line 7
    iget-object v6, v6, Ldc/squareup/okhttp3/MultipartBody$Part;->body:Ldc/squareup/okhttp3/RequestBody;

    .line 9
    sget-object v8, Ldc/squareup/okhttp3/MultipartBody;->DASHDASH:[B

    invoke-interface {v0, v8}, Ldc/squareup/okio/BufferedSink;->write([B)Ldc/squareup/okio/BufferedSink;

    .line 10
    iget-object v8, p0, Ldc/squareup/okhttp3/MultipartBody;->boundary:Ldc/squareup/okio/ByteString;

    invoke-interface {v0, v8}, Ldc/squareup/okio/BufferedSink;->write(Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/BufferedSink;

    .line 11
    sget-object v8, Ldc/squareup/okhttp3/MultipartBody;->CRLF:[B

    invoke-interface {v0, v8}, Ldc/squareup/okio/BufferedSink;->write([B)Ldc/squareup/okio/BufferedSink;

    if-eqz v7, :cond_5b

    .line 14
    invoke-virtual {v7}, Ldc/squareup/okhttp3/Headers;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_3b
    if-ge v9, v8, :cond_5b

    .line 15
    invoke-virtual {v7, v9}, Ldc/squareup/okhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v10

    sget-object v11, Ldc/squareup/okhttp3/MultipartBody;->COLONSPACE:[B

    .line 16
    invoke-interface {v10, v11}, Ldc/squareup/okio/BufferedSink;->write([B)Ldc/squareup/okio/BufferedSink;

    move-result-object v10

    .line 17
    invoke-virtual {v7, v9}, Ldc/squareup/okhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v10

    sget-object v11, Ldc/squareup/okhttp3/MultipartBody;->CRLF:[B

    .line 18
    invoke-interface {v10, v11}, Ldc/squareup/okio/BufferedSink;->write([B)Ldc/squareup/okio/BufferedSink;

    add-int/lit8 v9, v9, 0x1

    goto :goto_3b

    .line 22
    :cond_5b
    invoke-virtual {v6}, Ldc/squareup/okhttp3/RequestBody;->contentType()Ldc/squareup/okhttp3/MediaType;

    move-result-object v7

    if-eqz v7, :cond_74

    const-string v8, "Content-Type: "

    .line 24
    invoke-interface {v0, v8}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v8

    .line 25
    invoke-virtual {v7}, Ldc/squareup/okhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v7

    sget-object v8, Ldc/squareup/okhttp3/MultipartBody;->CRLF:[B

    .line 26
    invoke-interface {v7, v8}, Ldc/squareup/okio/BufferedSink;->write([B)Ldc/squareup/okio/BufferedSink;

    .line 29
    :cond_74
    invoke-virtual {v6}, Ldc/squareup/okhttp3/RequestBody;->contentLength()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_8e

    const-string v9, "Content-Length: "

    .line 31
    invoke-interface {v0, v9}, Ldc/squareup/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/BufferedSink;

    move-result-object v9

    .line 32
    invoke-interface {v9, v7, v8}, Ldc/squareup/okio/BufferedSink;->writeDecimalLong(J)Ldc/squareup/okio/BufferedSink;

    move-result-object v9

    sget-object v10, Ldc/squareup/okhttp3/MultipartBody;->CRLF:[B

    .line 33
    invoke-interface {v9, v10}, Ldc/squareup/okio/BufferedSink;->write([B)Ldc/squareup/okio/BufferedSink;

    goto :goto_94

    :cond_8e
    if-eqz p2, :cond_94

    .line 36
    invoke-virtual {p1}, Ldc/squareup/okio/Buffer;->clear()V

    return-wide v9

    .line 40
    :cond_94
    :goto_94
    sget-object v9, Ldc/squareup/okhttp3/MultipartBody;->CRLF:[B

    invoke-interface {v0, v9}, Ldc/squareup/okio/BufferedSink;->write([B)Ldc/squareup/okio/BufferedSink;

    if-eqz p2, :cond_9d

    add-long/2addr v3, v7

    goto :goto_a0

    .line 45
    :cond_9d
    invoke-virtual {v6, v0}, Ldc/squareup/okhttp3/RequestBody;->writeTo(Ldc/squareup/okio/BufferedSink;)V

    .line 48
    :goto_a0
    invoke-interface {v0, v9}, Ldc/squareup/okio/BufferedSink;->write([B)Ldc/squareup/okio/BufferedSink;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_17

    .line 51
    :cond_a7
    sget-object v1, Ldc/squareup/okhttp3/MultipartBody;->DASHDASH:[B

    invoke-interface {v0, v1}, Ldc/squareup/okio/BufferedSink;->write([B)Ldc/squareup/okio/BufferedSink;

    .line 52
    iget-object v2, p0, Ldc/squareup/okhttp3/MultipartBody;->boundary:Ldc/squareup/okio/ByteString;

    invoke-interface {v0, v2}, Ldc/squareup/okio/BufferedSink;->write(Ldc/squareup/okio/ByteString;)Ldc/squareup/okio/BufferedSink;

    .line 53
    invoke-interface {v0, v1}, Ldc/squareup/okio/BufferedSink;->write([B)Ldc/squareup/okio/BufferedSink;

    .line 54
    sget-object v1, Ldc/squareup/okhttp3/MultipartBody;->CRLF:[B

    invoke-interface {v0, v1}, Ldc/squareup/okio/BufferedSink;->write([B)Ldc/squareup/okio/BufferedSink;

    if-eqz p2, :cond_c3

    .line 57
    invoke-virtual {p1}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v0

    add-long/2addr v3, v0

    .line 58
    invoke-virtual {p1}, Ldc/squareup/okio/Buffer;->clear()V

    :cond_c3
    return-wide v3
.end method


# virtual methods
.method public boundary()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/MultipartBody;->boundary:Ldc/squareup/okio/ByteString;

    invoke-virtual {v0}, Ldc/squareup/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public contentLength()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Ldc/squareup/okhttp3/MultipartBody;->contentLength:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    return-wide v0

    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, v1}, Ldc/squareup/okhttp3/MultipartBody;->writeOrCountBytes(Ldc/squareup/okio/BufferedSink;Z)J

    move-result-wide v0

    iput-wide v0, p0, Ldc/squareup/okhttp3/MultipartBody;->contentLength:J

    return-wide v0
.end method

.method public contentType()Ldc/squareup/okhttp3/MediaType;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/MultipartBody;->contentType:Ldc/squareup/okhttp3/MediaType;

    return-object v0
.end method

.method public part(I)Ldc/squareup/okhttp3/MultipartBody$Part;
    .registers 3

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldc/squareup/okhttp3/MultipartBody$Part;

    return-object p1
.end method

.method public parts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/MultipartBody;->parts:Ljava/util/List;

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public type()Ldc/squareup/okhttp3/MediaType;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/MultipartBody;->originalType:Ldc/squareup/okhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Ldc/squareup/okio/BufferedSink;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Ldc/squareup/okhttp3/MultipartBody;->writeOrCountBytes(Ldc/squareup/okio/BufferedSink;Z)J

    return-void
.end method

###### Class dc.squareup.okhttp3.MultipartBody.Builder (dc.squareup.okhttp3.MultipartBody$Builder)
.class public final Ldc/squareup/okhttp3/MultipartBody$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/MultipartBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final boundary:Ldc/squareup/okio/ByteString;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldc/squareup/okhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ldc/squareup/okhttp3/MediaType;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ldc/squareup/okhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Ldc/squareup/okhttp3/MultipartBody;->MIXED:Ldc/squareup/okhttp3/MediaType;

    iput-object v0, p0, Ldc/squareup/okhttp3/MultipartBody$Builder;->type:Ldc/squareup/okhttp3/MediaType;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldc/squareup/okhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    .line 11
    invoke-static {p1}, Ldc/squareup/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Ldc/squareup/okio/ByteString;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okhttp3/MultipartBody$Builder;->boundary:Ldc/squareup/okio/ByteString;

    return-void
.end method


# virtual methods
.method public addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/MultipartBody$Builder;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Ldc/squareup/okhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/MultipartBody$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldc/squareup/okhttp3/MultipartBody$Builder;->addPart(Ldc/squareup/okhttp3/MultipartBody$Part;)Ldc/squareup/okhttp3/MultipartBody$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addFormDataPart(Ljava/lang/String;Ljava/lang/String;Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/MultipartBody$Builder;
    .registers 4

    .line 2
    invoke-static {p1, p2, p3}, Ldc/squareup/okhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/MultipartBody$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldc/squareup/okhttp3/MultipartBody$Builder;->addPart(Ldc/squareup/okhttp3/MultipartBody$Part;)Ldc/squareup/okhttp3/MultipartBody$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addPart(Ldc/squareup/okhttp3/Headers;Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/MultipartBody$Builder;
    .registers 3

    .line 2
    invoke-static {p1, p2}, Ldc/squareup/okhttp3/MultipartBody$Part;->create(Ldc/squareup/okhttp3/Headers;Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/MultipartBody$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldc/squareup/okhttp3/MultipartBody$Builder;->addPart(Ldc/squareup/okhttp3/MultipartBody$Part;)Ldc/squareup/okhttp3/MultipartBody$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addPart(Ldc/squareup/okhttp3/MultipartBody$Part;)Ldc/squareup/okhttp3/MultipartBody$Builder;
    .registers 3

    const-string v0, "part == null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Ldc/squareup/okhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPart(Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/MultipartBody$Builder;
    .registers 2

    .line 1
    invoke-static {p1}, Ldc/squareup/okhttp3/MultipartBody$Part;->create(Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/MultipartBody$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldc/squareup/okhttp3/MultipartBody$Builder;->addPart(Ldc/squareup/okhttp3/MultipartBody$Part;)Ldc/squareup/okhttp3/MultipartBody$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Ldc/squareup/okhttp3/MultipartBody;
    .registers 5

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 4
    new-instance v0, Ldc/squareup/okhttp3/MultipartBody;

    iget-object v1, p0, Ldc/squareup/okhttp3/MultipartBody$Builder;->boundary:Ldc/squareup/okio/ByteString;

    iget-object v2, p0, Ldc/squareup/okhttp3/MultipartBody$Builder;->type:Ldc/squareup/okhttp3/MediaType;

    iget-object v3, p0, Ldc/squareup/okhttp3/MultipartBody$Builder;->parts:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Ldc/squareup/okhttp3/MultipartBody;-><init>(Ldc/squareup/okio/ByteString;Ldc/squareup/okhttp3/MediaType;Ljava/util/List;)V

    return-object v0

    .line 5
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multipart body must have at least one part."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setType(Ldc/squareup/okhttp3/MediaType;)Ldc/squareup/okhttp3/MultipartBody$Builder;
    .registers 5

    const-string v0, "type == null"

    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Ldc/squareup/okhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4
    iput-object p1, p0, Ldc/squareup/okhttp3/MultipartBody$Builder;->type:Ldc/squareup/okhttp3/MediaType;

    return-object p0

    .line 5
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class dc.squareup.okhttp3.MultipartBody.Part (dc.squareup.okhttp3.MultipartBody$Part)
.class public final Ldc/squareup/okhttp3/MultipartBody$Part;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/MultipartBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Part"
.end annotation


# instance fields
.field final body:Ldc/squareup/okhttp3/RequestBody;

.field final headers:Ldc/squareup/okhttp3/Headers;


# direct methods
.method private constructor <init>(Ldc/squareup/okhttp3/Headers;Ldc/squareup/okhttp3/RequestBody;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldc/squareup/okhttp3/MultipartBody$Part;->headers:Ldc/squareup/okhttp3/Headers;

    .line 3
    iput-object p2, p0, Ldc/squareup/okhttp3/MultipartBody$Part;->body:Ldc/squareup/okhttp3/RequestBody;

    return-void
.end method

.method public static create(Ldc/squareup/okhttp3/Headers;Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/MultipartBody$Part;
    .registers 3

    const-string v0, "body == null"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p0, :cond_18

    const-string v0, "Content-Type"

    .line 2
    invoke-virtual {p0, v0}, Ldc/squareup/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_18

    .line 3
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    :goto_18
    if-eqz p0, :cond_2b

    const-string v0, "Content-Length"

    .line 5
    invoke-virtual {p0, v0}, Ldc/squareup/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_23

    goto :goto_2b

    .line 6
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_2b
    :goto_2b
    new-instance v0, Ldc/squareup/okhttp3/MultipartBody$Part;

    invoke-direct {v0, p0, p1}, Ldc/squareup/okhttp3/MultipartBody$Part;-><init>(Ldc/squareup/okhttp3/Headers;Ldc/squareup/okhttp3/RequestBody;)V

    return-object v0
.end method

.method public static create(Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/MultipartBody$Part;
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0}, Ldc/squareup/okhttp3/MultipartBody$Part;->create(Ldc/squareup/okhttp3/Headers;Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/MultipartBody$Part;

    move-result-object p0

    return-object p0
.end method

.method public static createFormData(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/MultipartBody$Part;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p1}, Ldc/squareup/okhttp3/RequestBody;->create(Ldc/squareup/okhttp3/MediaType;Ljava/lang/String;)Ldc/squareup/okhttp3/RequestBody;

    move-result-object p1

    invoke-static {p0, v0, p1}, Ldc/squareup/okhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/MultipartBody$Part;

    move-result-object p0

    return-object p0
.end method

.method public static createFormData(Ljava/lang/String;Ljava/lang/String;Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/MultipartBody$Part;
    .registers 5

    const-string v0, "name == null"

    .line 15
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "form-data; name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v0, p0}, Ldc/squareup/okhttp3/MultipartBody;->appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_19

    const-string p0, "; filename="

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {v0, p1}, Ldc/squareup/okhttp3/MultipartBody;->appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_19
    new-instance p0, Ldc/squareup/okhttp3/Headers$Builder;

    invoke-direct {p0}, Ldc/squareup/okhttp3/Headers$Builder;-><init>()V

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Content-Disposition"

    invoke-virtual {p0, v0, p1}, Ldc/squareup/okhttp3/Headers$Builder;->addUnsafeNonAscii(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/Headers$Builder;

    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ldc/squareup/okhttp3/Headers$Builder;->build()Ldc/squareup/okhttp3/Headers;

    move-result-object p0

    .line 14
    invoke-static {p0, p2}, Ldc/squareup/okhttp3/MultipartBody$Part;->create(Ldc/squareup/okhttp3/Headers;Ldc/squareup/okhttp3/RequestBody;)Ldc/squareup/okhttp3/MultipartBody$Part;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public body()Ldc/squareup/okhttp3/RequestBody;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/MultipartBody$Part;->body:Ldc/squareup/okhttp3/RequestBody;

    return-object v0
.end method

.method public headers()Ldc/squareup/okhttp3/Headers;
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/MultipartBody$Part;->headers:Ldc/squareup/okhttp3/Headers;

    return-object v0
.end method
