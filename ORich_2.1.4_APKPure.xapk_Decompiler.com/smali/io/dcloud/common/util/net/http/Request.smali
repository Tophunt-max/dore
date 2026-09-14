###### Class io.dcloud.common.util.net.http.Request (io.dcloud.common.util.net.http.Request)
.class public Lio/dcloud/common/util/net/http/Request;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private input:Ljava/io/InputStream;

.field private mData:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/dcloud/common/util/net/http/Request;->input:Ljava/io/InputStream;

    return-void
.end method

.method private parseUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/16 v0, 0x20

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_16

    add-int/lit8 v2, v1, 0x1

    .line 3
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-le v0, v1, :cond_16

    .line 5
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/net/http/Request;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/net/http/Request;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public parse()V
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    new-array v1, v1, [B

    .line 5
    :try_start_9
    iget-object v2, p0, Lio/dcloud/common/util/net/http/Request;->input:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_f} :catch_10

    goto :goto_15

    :catch_10
    move-exception v2

    .line 7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const/4 v2, -0x1

    :goto_15
    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_21

    .line 11
    aget-byte v4, v1, v3

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 13
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/common/util/net/http/Request;->mData:Ljava/lang/String;

    .line 14
    invoke-direct {p0, v0}, Lio/dcloud/common/util/net/http/Request;->parseUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/common/util/net/http/Request;->uri:Ljava/lang/String;

    if-eqz v0, :cond_3f

    const-string v1, "/"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lio/dcloud/common/util/net/http/Request;->uri:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_41

    :cond_3f
    iget-object v0, p0, Lio/dcloud/common/util/net/http/Request;->uri:Ljava/lang/String;

    :goto_41
    iput-object v0, p0, Lio/dcloud/common/util/net/http/Request;->uri:Ljava/lang/String;

    return-void
.end method
