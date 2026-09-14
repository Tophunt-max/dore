###### Class com.dcloud.zxing2.Result (com.dcloud.zxing2.Result)
.class public final Lcom/dcloud/zxing2/Result;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final format:Lcom/dcloud/zxing2/BarcodeFormat;

.field private final rawBytes:[B

.field private resultMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private resultPoints:[Lcom/dcloud/zxing2/ResultPoint;

.field private final text:Ljava/lang/String;

.field public textCharset:Ljava/lang/String;

.field private final timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/BarcodeFormat;)V
    .registers 12

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/dcloud/zxing2/Result;-><init>(Ljava/lang/String;[B[Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/BarcodeFormat;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/BarcodeFormat;J)V
    .registers 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/dcloud/zxing2/Result;->text:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/dcloud/zxing2/Result;->rawBytes:[B

    .line 5
    iput-object p3, p0, Lcom/dcloud/zxing2/Result;->resultPoints:[Lcom/dcloud/zxing2/ResultPoint;

    .line 6
    iput-object p4, p0, Lcom/dcloud/zxing2/Result;->format:Lcom/dcloud/zxing2/BarcodeFormat;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/dcloud/zxing2/Result;->resultMetadata:Ljava/util/Map;

    .line 8
    iput-wide p5, p0, Lcom/dcloud/zxing2/Result;->timestamp:J

    return-void
.end method


# virtual methods
.method public addResultPoints([Lcom/dcloud/zxing2/ResultPoint;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/Result;->resultPoints:[Lcom/dcloud/zxing2/ResultPoint;

    if-nez v0, :cond_7

    .line 3
    iput-object p1, p0, Lcom/dcloud/zxing2/Result;->resultPoints:[Lcom/dcloud/zxing2/ResultPoint;

    goto :goto_1d

    :cond_7
    if-eqz p1, :cond_1d

    .line 4
    array-length v1, p1

    if-lez v1, :cond_1d

    .line 5
    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [Lcom/dcloud/zxing2/ResultPoint;

    .line 6
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    array-length v0, v0

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iput-object v1, p0, Lcom/dcloud/zxing2/Result;->resultPoints:[Lcom/dcloud/zxing2/ResultPoint;

    :cond_1d
    :goto_1d
    return-void
.end method

.method public getBarcodeFormat()Lcom/dcloud/zxing2/BarcodeFormat;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/Result;->format:Lcom/dcloud/zxing2/BarcodeFormat;

    return-object v0
.end method

.method public getRawBytes()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/Result;->rawBytes:[B

    return-object v0
.end method

.method public getResultMetadata()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/Result;->resultMetadata:Ljava/util/Map;

    return-object v0
.end method

.method public getResultPoints()[Lcom/dcloud/zxing2/ResultPoint;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/Result;->resultPoints:[Lcom/dcloud/zxing2/ResultPoint;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/Result;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/dcloud/zxing2/Result;->timestamp:J

    return-wide v0
.end method

.method public putAllMetadata(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_c

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/Result;->resultMetadata:Ljava/util/Map;

    if-nez v0, :cond_9

    .line 2
    iput-object p1, p0, Lcom/dcloud/zxing2/Result;->resultMetadata:Ljava/util/Map;

    goto :goto_c

    .line 4
    :cond_9
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_c
    :goto_c
    return-void
.end method

.method public putMetadata(Lcom/dcloud/zxing2/ResultMetadataType;Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/Result;->resultMetadata:Ljava/util/Map;

    if-nez v0, :cond_d

    .line 2
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/dcloud/zxing2/ResultMetadataType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/dcloud/zxing2/Result;->resultMetadata:Ljava/util/Map;

    .line 4
    :cond_d
    iget-object v0, p0, Lcom/dcloud/zxing2/Result;->resultMetadata:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/Result;->text:Ljava/lang/String;

    return-object v0
.end method
