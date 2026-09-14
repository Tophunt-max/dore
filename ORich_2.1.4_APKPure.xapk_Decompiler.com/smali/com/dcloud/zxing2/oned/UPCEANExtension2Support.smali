###### Class com.dcloud.zxing2.oned.UPCEANExtension2Support (com.dcloud.zxing2.oned.UPCEANExtension2Support)
.class final Lcom/dcloud/zxing2/oned/UPCEANExtension2Support;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final decodeMiddleCounters:[I

.field private final decodeRowStringBuffer:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 3
    iput-object v0, p0, Lcom/dcloud/zxing2/oned/UPCEANExtension2Support;->decodeMiddleCounters:[I

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/dcloud/zxing2/oned/UPCEANExtension2Support;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    return-void
.end method

.method private static parseExtensionString(Ljava/lang/String;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_9
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/dcloud/zxing2/ResultMetadataType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 5
    sget-object v1, Lcom/dcloud/zxing2/ResultMetadataType;->ISSUE_NUMBER:Lcom/dcloud/zxing2/ResultMetadataType;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method decodeMiddle(Lcom/dcloud/zxing2/common/BitArray;[ILjava/lang/StringBuilder;)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/UPCEANExtension2Support;->decodeMiddleCounters:[I

    const/4 v1, 0x0

    .line 2
    aput v1, v0, v1

    const/4 v2, 0x1

    .line 3
    aput v1, v0, v2

    const/4 v3, 0x2

    .line 4
    aput v1, v0, v3

    const/4 v4, 0x3

    .line 5
    aput v1, v0, v4

    .line 6
    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v4

    .line 7
    aget p2, p2, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_16
    if-ge v5, v3, :cond_48

    if-ge p2, v4, :cond_48

    .line 12
    sget-object v7, Lcom/dcloud/zxing2/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    invoke-static {p1, v0, p2, v7}, Lcom/dcloud/zxing2/oned/UPCEANReader;->decodeDigit(Lcom/dcloud/zxing2/common/BitArray;[II[[I)I

    move-result v7

    .line 13
    rem-int/lit8 v8, v7, 0xa

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    array-length v8, v0

    const/4 v9, 0x0

    :goto_2a
    if-ge v9, v8, :cond_32

    aget v10, v0, v9

    add-int/2addr p2, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_2a

    :cond_32
    const/16 v8, 0xa

    if-lt v7, v8, :cond_3b

    rsub-int/lit8 v7, v5, 0x1

    shl-int v7, v2, v7

    or-int/2addr v6, v7

    :cond_3b
    if-eq v5, v2, :cond_45

    .line 22
    invoke-virtual {p1, p2}, Lcom/dcloud/zxing2/common/BitArray;->getNextSet(I)I

    move-result p2

    .line 23
    invoke-virtual {p1, p2}, Lcom/dcloud/zxing2/common/BitArray;->getNextUnset(I)I

    move-result p2

    :cond_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 27
    :cond_48
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-ne p1, v3, :cond_60

    .line 31
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    rem-int/lit8 p1, p1, 0x4

    if-ne p1, v6, :cond_5b

    return p2

    .line 32
    :cond_5b
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1

    .line 33
    :cond_60
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method decodeRow(ILcom/dcloud/zxing2/common/BitArray;[I)Lcom/dcloud/zxing2/Result;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/UPCEANExtension2Support;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3
    invoke-virtual {p0, p2, p3, v0}, Lcom/dcloud/zxing2/oned/UPCEANExtension2Support;->decodeMiddle(Lcom/dcloud/zxing2/common/BitArray;[ILjava/lang/StringBuilder;)I

    move-result p2

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/dcloud/zxing2/oned/UPCEANExtension2Support;->parseExtensionString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 8
    new-instance v3, Lcom/dcloud/zxing2/Result;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/dcloud/zxing2/ResultPoint;

    new-instance v5, Lcom/dcloud/zxing2/ResultPoint;

    aget v6, p3, v1

    const/4 v7, 0x1

    aget p3, p3, v7

    add-int/2addr v6, p3

    int-to-float p3, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr p3, v6

    int-to-float p1, p1

    invoke-direct {v5, p3, p1}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    aput-object v5, v4, v1

    new-instance p3, Lcom/dcloud/zxing2/ResultPoint;

    int-to-float p2, p2

    invoke-direct {p3, p2, p1}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    aput-object p3, v4, v7

    sget-object p1, Lcom/dcloud/zxing2/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/dcloud/zxing2/BarcodeFormat;

    const/4 p2, 0x0

    invoke-direct {v3, v0, p2, v4, p1}, Lcom/dcloud/zxing2/Result;-><init>(Ljava/lang/String;[B[Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/BarcodeFormat;)V

    if-eqz v2, :cond_3c

    .line 17
    invoke-virtual {v3, v2}, Lcom/dcloud/zxing2/Result;->putAllMetadata(Ljava/util/Map;)V

    :cond_3c
    return-object v3
.end method
