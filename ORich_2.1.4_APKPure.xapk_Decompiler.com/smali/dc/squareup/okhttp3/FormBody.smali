###### Class dc.squareup.okhttp3.FormBody (dc.squareup.okhttp3.FormBody)
.class public final Ldc/squareup/okhttp3/FormBody;
.super Ldc/squareup/okhttp3/RequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/squareup/okhttp3/FormBody$Builder;
    }
.end annotation


# static fields
.field private static final CONTENT_TYPE:Ldc/squareup/okhttp3/MediaType;


# instance fields
.field private final encodedNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final encodedValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "application/x-www-form-urlencoded"

    .line 1
    invoke-static {v0}, Ldc/squareup/okhttp3/MediaType;->get(Ljava/lang/String;)Ldc/squareup/okhttp3/MediaType;

    move-result-object v0

    sput-object v0, Ldc/squareup/okhttp3/FormBody;->CONTENT_TYPE:Ldc/squareup/okhttp3/MediaType;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ldc/squareup/okhttp3/RequestBody;-><init>()V

    .line 2
    invoke-static {p1}, Ldc/squareup/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okhttp3/FormBody;->encodedNames:Ljava/util/List;

    .line 3
    invoke-static {p2}, Ldc/squareup/okhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ldc/squareup/okhttp3/FormBody;->encodedValues:Ljava/util/List;

    return-void
.end method

.method private writeOrCountBytes(Ldc/squareup/okio/BufferedSink;Z)J
    .registers 6

    if-eqz p2, :cond_8

    .line 1
    new-instance p1, Ldc/squareup/okio/Buffer;

    invoke-direct {p1}, Ldc/squareup/okio/Buffer;-><init>()V

    goto :goto_c

    .line 3
    :cond_8
    invoke-interface {p1}, Ldc/squareup/okio/BufferedSink;->buffer()Ldc/squareup/okio/Buffer;

    move-result-object p1

    :goto_c
    const/4 v0, 0x0

    .line 6
    iget-object v1, p0, Ldc/squareup/okhttp3/FormBody;->encodedNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_13
    if-ge v0, v1, :cond_3a

    if-lez v0, :cond_1c

    const/16 v2, 0x26

    .line 7
    invoke-virtual {p1, v2}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    .line 8
    :cond_1c
    iget-object v2, p0, Ldc/squareup/okhttp3/FormBody;->encodedNames:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ldc/squareup/okio/Buffer;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/Buffer;

    const/16 v2, 0x3d

    .line 9
    invoke-virtual {p1, v2}, Ldc/squareup/okio/Buffer;->writeByte(I)Ldc/squareup/okio/Buffer;

    .line 10
    iget-object v2, p0, Ldc/squareup/okhttp3/FormBody;->encodedValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ldc/squareup/okio/Buffer;->writeUtf8(Ljava/lang/String;)Ldc/squareup/okio/Buffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_3a
    if-eqz p2, :cond_44

    .line 14
    invoke-virtual {p1}, Ldc/squareup/okio/Buffer;->size()J

    move-result-wide v0

    .line 15
    invoke-virtual {p1}, Ldc/squareup/okio/Buffer;->clear()V

    goto :goto_46

    :cond_44
    const-wide/16 v0, 0x0

    :goto_46
    return-wide v0
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Ldc/squareup/okhttp3/FormBody;->writeOrCountBytes(Ldc/squareup/okio/BufferedSink;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Ldc/squareup/okhttp3/MediaType;
    .registers 2

    .line 1
    sget-object v0, Ldc/squareup/okhttp3/FormBody;->CONTENT_TYPE:Ldc/squareup/okhttp3/MediaType;

    return-object v0
.end method

.method public encodedName(I)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/FormBody;->encodedNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public encodedValue(I)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/FormBody;->encodedValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public name(I)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Ldc/squareup/okhttp3/FormBody;->encodedName(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ldc/squareup/okhttp3/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 2

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/FormBody;->encodedNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public value(I)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Ldc/squareup/okhttp3/FormBody;->encodedValue(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ldc/squareup/okhttp3/HttpUrl;->percentDecode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
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
    invoke-direct {p0, p1, v0}, Ldc/squareup/okhttp3/FormBody;->writeOrCountBytes(Ldc/squareup/okio/BufferedSink;Z)J

    return-void
.end method

###### Class dc.squareup.okhttp3.FormBody.Builder (dc.squareup.okhttp3.FormBody$Builder)
.class public final Ldc/squareup/okhttp3/FormBody$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/FormBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ldc/squareup/okhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldc/squareup/okhttp3/FormBody$Builder;->names:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldc/squareup/okhttp3/FormBody$Builder;->values:Ljava/util/List;

    .line 12
    iput-object p1, p0, Ldc/squareup/okhttp3/FormBody$Builder;->charset:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/FormBody$Builder;
    .registers 11

    const-string v0, "name == null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "value == null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/FormBody$Builder;->names:Ljava/util/List;

    iget-object v7, p0, Ldc/squareup/okhttp3/FormBody$Builder;->charset:Ljava/nio/charset/Charset;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v2, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Ldc/squareup/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Ldc/squareup/okhttp3/FormBody$Builder;->values:Ljava/util/List;

    iget-object v6, p0, Ldc/squareup/okhttp3/FormBody$Builder;->charset:Ljava/nio/charset/Charset;

    const/4 v2, 0x0

    const/4 v4, 0x1

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Ldc/squareup/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addEncoded(Ljava/lang/String;Ljava/lang/String;)Ldc/squareup/okhttp3/FormBody$Builder;
    .registers 11

    const-string v0, "name == null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "value == null"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/FormBody$Builder;->names:Ljava/util/List;

    iget-object v7, p0, Ldc/squareup/okhttp3/FormBody$Builder;->charset:Ljava/nio/charset/Charset;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v2, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Ldc/squareup/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Ldc/squareup/okhttp3/FormBody$Builder;->values:Ljava/util/List;

    iget-object v6, p0, Ldc/squareup/okhttp3/FormBody$Builder;->charset:Ljava/nio/charset/Charset;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Ldc/squareup/okhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Ldc/squareup/okhttp3/FormBody;
    .registers 4

    .line 1
    new-instance v0, Ldc/squareup/okhttp3/FormBody;

    iget-object v1, p0, Ldc/squareup/okhttp3/FormBody$Builder;->names:Ljava/util/List;

    iget-object v2, p0, Ldc/squareup/okhttp3/FormBody$Builder;->values:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Ldc/squareup/okhttp3/FormBody;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
