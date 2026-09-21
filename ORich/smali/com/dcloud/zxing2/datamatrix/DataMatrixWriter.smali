###### Class com.dcloud.zxing2.datamatrix.DataMatrixWriter (com.dcloud.zxing2.datamatrix.DataMatrixWriter)
.class public final Lcom/dcloud/zxing2/datamatrix/DataMatrixWriter;
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

.method private static convertByteMatrixToBitMatrix(Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)Lcom/dcloud/zxing2/common/BitMatrix;
    .registers 9

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v1

    .line 4
    new-instance v2, Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-direct {v2, v0, v1}, Lcom/dcloud/zxing2/common/BitMatrix;-><init>(II)V

    .line 5
    invoke-virtual {v2}, Lcom/dcloud/zxing2/common/BitMatrix;->clear()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v0, :cond_27

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v1, :cond_24

    .line 9
    invoke-virtual {p0, v4, v5}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_21

    .line 10
    invoke-virtual {v2, v4, v5}, Lcom/dcloud/zxing2/common/BitMatrix;->set(II)V

    :cond_21
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_27
    return-object v2
.end method

.method private static encodeLowLevel(Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;)Lcom/dcloud/zxing2/common/BitMatrix;
    .registers 13

    .line 1
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->getSymbolDataWidth()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->getSymbolDataHeight()I

    move-result v1

    .line 4
    new-instance v2, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;

    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->getSymbolHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;-><init>(II)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_18
    if-ge v4, v1, :cond_83

    .line 11
    iget v6, p1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    rem-int v6, v4, v6

    const/4 v7, 0x1

    if-nez v6, :cond_39

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 13
    :goto_23
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v9

    if-ge v6, v9, :cond_37

    .line 14
    rem-int/lit8 v9, v6, 0x2

    if-nez v9, :cond_2f

    const/4 v9, 0x1

    goto :goto_30

    :cond_2f
    const/4 v9, 0x0

    :goto_30
    invoke-virtual {v2, v8, v5, v9}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->set(IIZ)V

    add-int/2addr v8, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :cond_37
    add-int/lit8 v5, v5, 0x1

    :cond_39
    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_3b
    if-ge v6, v0, :cond_66

    .line 22
    iget v9, p1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    rem-int v9, v6, v9

    if-nez v9, :cond_48

    .line 23
    invoke-virtual {v2, v8, v5, v7}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->set(IIZ)V

    add-int/lit8 v8, v8, 0x1

    .line 26
    :cond_48
    invoke-virtual {p0, v6, v4}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->getBit(II)Z

    move-result v9

    invoke-virtual {v2, v8, v5, v9}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->set(IIZ)V

    add-int/2addr v8, v7

    .line 29
    iget v9, p1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    rem-int v10, v6, v9

    sub-int/2addr v9, v7

    if-ne v10, v9, :cond_63

    .line 30
    rem-int/lit8 v9, v4, 0x2

    if-nez v9, :cond_5d

    const/4 v9, 0x1

    goto :goto_5e

    :cond_5d
    const/4 v9, 0x0

    :goto_5e
    invoke-virtual {v2, v8, v5, v9}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->set(IIZ)V

    add-int/lit8 v8, v8, 0x1

    :cond_63
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    :cond_66
    add-int/lit8 v5, v5, 0x1

    .line 36
    iget v6, p1, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    rem-int v8, v4, v6

    sub-int/2addr v6, v7

    if-ne v8, v6, :cond_80

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 38
    :goto_71
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v9

    if-ge v6, v9, :cond_7e

    .line 39
    invoke-virtual {v2, v8, v5, v7}, Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;->set(IIZ)V

    add-int/2addr v8, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_71

    :cond_7e
    add-int/lit8 v5, v5, 0x1

    :cond_80
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 46
    :cond_83
    invoke-static {v2}, Lcom/dcloud/zxing2/datamatrix/DataMatrixWriter;->convertByteMatrixToBitMatrix(Lcom/dcloud/zxing2/qrcode/encoder/ByteMatrix;)Lcom/dcloud/zxing2/common/BitMatrix;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/dcloud/zxing2/BarcodeFormat;II)Lcom/dcloud/zxing2/common/BitMatrix;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/dcloud/zxing2/datamatrix/DataMatrixWriter;->encode(Ljava/lang/String;Lcom/dcloud/zxing2/BarcodeFormat;IILjava/util/Map;)Lcom/dcloud/zxing2/common/BitMatrix;

    move-result-object p1

    return-object p1
.end method

.method public encode(Ljava/lang/String;Lcom/dcloud/zxing2/BarcodeFormat;IILjava/util/Map;)Lcom/dcloud/zxing2/common/BitMatrix;
    .registers 7
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

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_95

    .line 6
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->DATA_MATRIX:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p2, v0, :cond_7e

    if-ltz p3, :cond_5f

    if-ltz p4, :cond_5f

    .line 15
    sget-object p2, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;

    const/4 p3, 0x0

    if-eqz p5, :cond_38

    .line 19
    sget-object p4, Lcom/dcloud/zxing2/EncodeHintType;->DATA_MATRIX_SHAPE:Lcom/dcloud/zxing2/EncodeHintType;

    invoke-interface {p5, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;

    if-eqz p4, :cond_1e

    move-object p2, p4

    .line 24
    :cond_1e
    sget-object p4, Lcom/dcloud/zxing2/EncodeHintType;->MIN_SIZE:Lcom/dcloud/zxing2/EncodeHintType;

    invoke-interface {p5, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/dcloud/zxing2/Dimension;

    if-eqz p4, :cond_29

    goto :goto_2a

    :cond_29
    move-object p4, p3

    .line 29
    :goto_2a
    sget-object v0, Lcom/dcloud/zxing2/EncodeHintType;->MAX_SIZE:Lcom/dcloud/zxing2/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/dcloud/zxing2/Dimension;

    if-eqz p5, :cond_35

    goto :goto_36

    :cond_35
    move-object p5, p3

    :goto_36
    move-object p3, p4

    goto :goto_39

    :cond_38
    move-object p5, p3

    .line 37
    :goto_39
    invoke-static {p1, p2, p3, p5}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->encodeHighLevel(Ljava/lang/String;Lcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;Lcom/dcloud/zxing2/Dimension;Lcom/dcloud/zxing2/Dimension;)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    const/4 v0, 0x1

    invoke-static {p4, p2, p3, p5, v0}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->lookup(ILcom/dcloud/zxing2/datamatrix/encoder/SymbolShapeHint;Lcom/dcloud/zxing2/Dimension;Lcom/dcloud/zxing2/Dimension;Z)Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    move-result-object p2

    .line 42
    invoke-static {p1, p2}, Lcom/dcloud/zxing2/datamatrix/encoder/ErrorCorrection;->encodeECC200(Ljava/lang/String;Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;)Ljava/lang/String;

    move-result-object p1

    .line 45
    new-instance p3, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;

    .line 46
    invoke-virtual {p2}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->getSymbolDataWidth()I

    move-result p4

    invoke-virtual {p2}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->getSymbolDataHeight()I

    move-result p5

    invoke-direct {p3, p1, p4, p5}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;-><init>(Ljava/lang/CharSequence;II)V

    .line 47
    invoke-virtual {p3}, Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;->place()V

    .line 50
    invoke-static {p3, p2}, Lcom/dcloud/zxing2/datamatrix/DataMatrixWriter;->encodeLowLevel(Lcom/dcloud/zxing2/datamatrix/encoder/DefaultPlacement;Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;)Lcom/dcloud/zxing2/common/BitMatrix;

    move-result-object p1

    return-object p1

    .line 51
    :cond_5f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Requested dimensions are too small: "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x78

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_7e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Can only encode DATA_MATRIX, but got "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_95
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Found empty contents"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
