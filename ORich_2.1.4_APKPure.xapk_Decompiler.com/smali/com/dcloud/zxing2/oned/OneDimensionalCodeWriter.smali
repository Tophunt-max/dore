###### Class com.dcloud.zxing2.oned.OneDimensionalCodeWriter (com.dcloud.zxing2.oned.OneDimensionalCodeWriter)
.class public abstract Lcom/dcloud/zxing2/oned/OneDimensionalCodeWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dcloud/zxing2/Writer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static appendPattern([ZI[IZ)I
    .registers 11

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    if-ge v2, v0, :cond_19

    aget v4, p2, v2

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v4, :cond_13

    add-int/lit8 v6, p1, 0x1

    .line 3
    aput-boolean p3, p0, p1

    add-int/lit8 v5, v5, 0x1

    move p1, v6

    goto :goto_9

    :cond_13
    add-int/2addr v3, v4

    xor-int/lit8 p3, p3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_19
    return v3
.end method

.method private static renderResult([ZIII)Lcom/dcloud/zxing2/common/BitMatrix;
    .registers 9

    .line 1
    array-length v0, p0

    add-int/2addr p3, v0

    .line 4
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v1, 0x1

    .line 5
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 7
    div-int p3, p1, p3

    mul-int v1, v0, p3

    sub-int v1, p1, v1

    .line 8
    div-int/lit8 v1, v1, 0x2

    .line 10
    new-instance v2, Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-direct {v2, p1, p2}, Lcom/dcloud/zxing2/common/BitMatrix;-><init>(II)V

    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v0, :cond_27

    .line 12
    aget-boolean v4, p0, v3

    if-eqz v4, :cond_23

    .line 13
    invoke-virtual {v2, v1, p1, p3, p2}, Lcom/dcloud/zxing2/common/BitMatrix;->setRegion(IIII)V

    :cond_23
    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, p3

    goto :goto_1a

    :cond_27
    return-object v2
.end method


# virtual methods
.method public final encode(Ljava/lang/String;Lcom/dcloud/zxing2/BarcodeFormat;II)Lcom/dcloud/zxing2/common/BitMatrix;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/WriterException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/dcloud/zxing2/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/dcloud/zxing2/BarcodeFormat;IILjava/util/Map;)Lcom/dcloud/zxing2/common/BitMatrix;

    move-result-object p1

    return-object p1
.end method

.method public encode(Ljava/lang/String;Lcom/dcloud/zxing2/BarcodeFormat;IILjava/util/Map;)Lcom/dcloud/zxing2/common/BitMatrix;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dcloud/zxing2/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/EncodeHintType;",
            "*>;)",
            "Lcom/dcloud/zxing2/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/WriterException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4c

    if-ltz p3, :cond_2d

    if-ltz p4, :cond_2d

    .line 11
    invoke-virtual {p0}, Lcom/dcloud/zxing2/oned/OneDimensionalCodeWriter;->getDefaultMargin()I

    move-result p2

    if-eqz p5, :cond_24

    .line 12
    sget-object v0, Lcom/dcloud/zxing2/EncodeHintType;->MARGIN:Lcom/dcloud/zxing2/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 13
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 16
    :cond_24
    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;)[Z

    move-result-object p1

    .line 17
    invoke-static {p1, p3, p4, p2}, Lcom/dcloud/zxing2/oned/OneDimensionalCodeWriter;->renderResult([ZIII)Lcom/dcloud/zxing2/common/BitMatrix;

    move-result-object p1

    return-object p1

    .line 18
    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Negative size is not allowed. Input: "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x78

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_4c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Found empty contents"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract encode(Ljava/lang/String;)[Z
.end method

.method public getDefaultMargin()I
    .registers 2

    const/16 v0, 0xa

    return v0
.end method
