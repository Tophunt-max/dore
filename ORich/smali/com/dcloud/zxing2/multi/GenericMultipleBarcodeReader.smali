###### Class com.dcloud.zxing2.multi.GenericMultipleBarcodeReader (com.dcloud.zxing2.multi.GenericMultipleBarcodeReader)
.class public final Lcom/dcloud/zxing2/multi/GenericMultipleBarcodeReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dcloud/zxing2/multi/MultipleBarcodeReader;


# static fields
.field private static final MAX_DEPTH:I = 0x4

.field private static final MIN_DIMENSION_TO_RECUR:I = 0x64


# instance fields
.field private final delegate:Lcom/dcloud/zxing2/Reader;


# direct methods
.method public constructor <init>(Lcom/dcloud/zxing2/Reader;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dcloud/zxing2/multi/GenericMultipleBarcodeReader;->delegate:Lcom/dcloud/zxing2/Reader;

    return-void
.end method

.method private doDecodeMultiple(Lcom/dcloud/zxing2/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dcloud/zxing2/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/DecodeHintType;",
            "*>;",
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/Result;",
            ">;III)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    const/4 v1, 0x4

    if-le v10, v1, :cond_c

    return-void

    :cond_c
    move-object/from16 v11, p0

    .line 1
    :try_start_e
    iget-object v1, v11, Lcom/dcloud/zxing2/multi/GenericMultipleBarcodeReader;->delegate:Lcom/dcloud/zxing2/Reader;

    move-object/from16 v12, p2

    invoke-interface {v1, v0, v12}, Lcom/dcloud/zxing2/Reader;->decode(Lcom/dcloud/zxing2/BinaryBitmap;Ljava/util/Map;)Lcom/dcloud/zxing2/Result;

    move-result-object v1
    :try_end_16
    .catch Lcom/dcloud/zxing2/ReaderException; {:try_start_e .. :try_end_16} :catch_111

    .line 6
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dcloud/zxing2/Result;

    .line 7
    invoke-virtual {v3}, Lcom/dcloud/zxing2/Result;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/dcloud/zxing2/Result;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v2, 0x1

    goto :goto_37

    :cond_36
    const/4 v2, 0x0

    :goto_37
    if-nez v2, :cond_43

    .line 13
    invoke-static {v1, v8, v9}, Lcom/dcloud/zxing2/multi/GenericMultipleBarcodeReader;->translateResultPoints(Lcom/dcloud/zxing2/Result;II)Lcom/dcloud/zxing2/Result;

    move-result-object v2

    move-object/from16 v15, p3

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_45

    :cond_43
    move-object/from16 v15, p3

    .line 15
    :goto_45
    invoke-virtual {v1}, Lcom/dcloud/zxing2/Result;->getResultPoints()[Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v1

    if-eqz v1, :cond_111

    .line 16
    array-length v2, v1

    if-nez v2, :cond_50

    goto/16 :goto_111

    .line 19
    :cond_50
    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/zxing2/BinaryBitmap;->getWidth()I

    move-result v7

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/dcloud/zxing2/BinaryBitmap;->getHeight()I

    move-result v6

    int-to-float v2, v7

    int-to-float v3, v6

    .line 25
    array-length v4, v1

    const/4 v5, 0x0

    move v5, v3

    const/4 v3, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_60
    if-ge v14, v4, :cond_8a

    aget-object v16, v1, v14

    if-nez v16, :cond_67

    goto :goto_87

    .line 29
    :cond_67
    invoke-virtual/range {v16 .. v16}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v17

    .line 30
    invoke-virtual/range {v16 .. v16}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v16

    cmpg-float v18, v17, v2

    if-gez v18, :cond_75

    move/from16 v2, v17

    :cond_75
    cmpg-float v18, v16, v5

    if-gez v18, :cond_7b

    move/from16 v5, v16

    :cond_7b
    cmpl-float v18, v17, v3

    if-lez v18, :cond_81

    move/from16 v3, v17

    :cond_81
    cmpl-float v17, v16, v13

    if-lez v17, :cond_87

    move/from16 v13, v16

    :cond_87
    :goto_87
    add-int/lit8 v14, v14, 0x1

    goto :goto_60

    :cond_8a
    const/high16 v14, 0x42c80000    # 100.0f

    cmpl-float v1, v2, v14

    if-lez v1, :cond_af

    float-to-int v1, v2

    const/4 v2, 0x0

    .line 47
    invoke-virtual {v0, v2, v2, v1, v6}, Lcom/dcloud/zxing2/BinaryBitmap;->crop(IIII)Lcom/dcloud/zxing2/BinaryBitmap;

    move-result-object v4

    add-int/lit8 v16, v10, 0x1

    move-object/from16 v1, p0

    move-object v2, v4

    move v4, v3

    move-object/from16 v3, p2

    move/from16 v19, v4

    move-object/from16 v4, p3

    move v14, v5

    move/from16 v5, p4

    move v11, v6

    move/from16 v6, p5

    move v12, v7

    move/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lcom/dcloud/zxing2/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/dcloud/zxing2/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    goto :goto_b4

    :cond_af
    move/from16 v19, v3

    move v14, v5

    move v11, v6

    move v12, v7

    :goto_b4
    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v1, v14, v1

    if-lez v1, :cond_d0

    float-to-int v1, v14

    const/4 v2, 0x0

    .line 54
    invoke-virtual {v0, v2, v2, v12, v1}, Lcom/dcloud/zxing2/BinaryBitmap;->crop(IIII)Lcom/dcloud/zxing2/BinaryBitmap;

    move-result-object v3

    add-int/lit8 v7, v10, 0x1

    move-object/from16 v1, p0

    move-object v2, v3

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/dcloud/zxing2/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/dcloud/zxing2/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    :cond_d0
    add-int/lit8 v7, v12, -0x64

    int-to-float v1, v7

    move/from16 v3, v19

    cmpg-float v1, v3, v1

    if-gez v1, :cond_f1

    float-to-int v1, v3

    sub-int v7, v12, v1

    const/4 v2, 0x0

    .line 61
    invoke-virtual {v0, v1, v2, v7, v11}, Lcom/dcloud/zxing2/BinaryBitmap;->crop(IIII)Lcom/dcloud/zxing2/BinaryBitmap;

    move-result-object v3

    add-int v5, v8, v1

    add-int/lit8 v7, v10, 0x1

    move-object/from16 v1, p0

    move-object v2, v3

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/dcloud/zxing2/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/dcloud/zxing2/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    :cond_f1
    add-int/lit8 v6, v11, -0x64

    int-to-float v1, v6

    cmpg-float v1, v13, v1

    if-gez v1, :cond_111

    float-to-int v1, v13

    sub-int v6, v11, v1

    const/4 v2, 0x0

    .line 68
    invoke-virtual {v0, v2, v1, v12, v6}, Lcom/dcloud/zxing2/BinaryBitmap;->crop(IIII)Lcom/dcloud/zxing2/BinaryBitmap;

    move-result-object v2

    add-int v5, v9, v1

    const/4 v0, 0x1

    add-int/lit8 v6, v10, 0x1

    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/dcloud/zxing2/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/dcloud/zxing2/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    :catch_111
    :cond_111
    :goto_111
    return-void
.end method

.method private static translateResultPoints(Lcom/dcloud/zxing2/Result;II)Lcom/dcloud/zxing2/Result;
    .registers 10

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/Result;->getResultPoints()[Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v0

    if-nez v0, :cond_7

    return-object p0

    .line 5
    :cond_7
    array-length v1, v0

    new-array v1, v1, [Lcom/dcloud/zxing2/ResultPoint;

    const/4 v2, 0x0

    .line 6
    :goto_b
    array-length v3, v0

    if-ge v2, v3, :cond_28

    .line 7
    aget-object v3, v0, v2

    if-eqz v3, :cond_25

    .line 9
    new-instance v4, Lcom/dcloud/zxing2/ResultPoint;

    invoke-virtual {v3}, Lcom/dcloud/zxing2/ResultPoint;->getX()F

    move-result v5

    int-to-float v6, p1

    add-float/2addr v5, v6

    invoke-virtual {v3}, Lcom/dcloud/zxing2/ResultPoint;->getY()F

    move-result v3

    int-to-float v6, p2

    add-float/2addr v3, v6

    invoke-direct {v4, v5, v3}, Lcom/dcloud/zxing2/ResultPoint;-><init>(FF)V

    aput-object v4, v1, v2

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 12
    :cond_28
    new-instance p1, Lcom/dcloud/zxing2/Result;

    invoke-virtual {p0}, Lcom/dcloud/zxing2/Result;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/dcloud/zxing2/Result;->getRawBytes()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/dcloud/zxing2/Result;->getBarcodeFormat()Lcom/dcloud/zxing2/BarcodeFormat;

    move-result-object v2

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/dcloud/zxing2/Result;-><init>(Ljava/lang/String;[B[Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/BarcodeFormat;)V

    .line 13
    invoke-virtual {p0}, Lcom/dcloud/zxing2/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/dcloud/zxing2/Result;->putAllMetadata(Ljava/util/Map;)V

    return-object p1
.end method


# virtual methods
.method public decodeMultiple(Lcom/dcloud/zxing2/BinaryBitmap;)[Lcom/dcloud/zxing2/Result;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/dcloud/zxing2/multi/GenericMultipleBarcodeReader;->decodeMultiple(Lcom/dcloud/zxing2/BinaryBitmap;Ljava/util/Map;)[Lcom/dcloud/zxing2/Result;

    move-result-object p1

    return-object p1
.end method

.method public decodeMultiple(Lcom/dcloud/zxing2/BinaryBitmap;Ljava/util/Map;)[Lcom/dcloud/zxing2/Result;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dcloud/zxing2/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/DecodeHintType;",
            "*>;)[",
            "Lcom/dcloud/zxing2/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;
        }
    .end annotation

    .line 2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v7

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/dcloud/zxing2/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/dcloud/zxing2/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    .line 4
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_22

    .line 7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/dcloud/zxing2/Result;

    invoke-interface {v7, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/dcloud/zxing2/Result;

    return-object p1

    .line 8
    :cond_22
    invoke-static {}, Lcom/dcloud/zxing2/NotFoundException;->getNotFoundInstance()Lcom/dcloud/zxing2/NotFoundException;

    move-result-object p1

    throw p1
.end method
