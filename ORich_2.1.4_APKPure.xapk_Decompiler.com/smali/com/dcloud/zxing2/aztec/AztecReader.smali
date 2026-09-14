###### Class com.dcloud.zxing2.aztec.AztecReader (com.dcloud.zxing2.aztec.AztecReader)
.class public final Lcom/dcloud/zxing2/aztec/AztecReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dcloud/zxing2/Reader;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lcom/dcloud/zxing2/BinaryBitmap;)Lcom/dcloud/zxing2/Result;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;,
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/dcloud/zxing2/aztec/AztecReader;->decode(Lcom/dcloud/zxing2/BinaryBitmap;Ljava/util/Map;)Lcom/dcloud/zxing2/Result;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lcom/dcloud/zxing2/BinaryBitmap;Ljava/util/Map;)Lcom/dcloud/zxing2/Result;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dcloud/zxing2/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/DecodeHintType;",
            "*>;)",
            "Lcom/dcloud/zxing2/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;,
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/dcloud/zxing2/aztec/detector/Detector;

    invoke-virtual {p1}, Lcom/dcloud/zxing2/BinaryBitmap;->getBlackMatrix()Lcom/dcloud/zxing2/common/BitMatrix;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/dcloud/zxing2/aztec/detector/Detector;-><init>(Lcom/dcloud/zxing2/common/BitMatrix;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 6
    :try_start_b
    invoke-virtual {v0, p1}, Lcom/dcloud/zxing2/aztec/detector/Detector;->detect(Z)Lcom/dcloud/zxing2/aztec/AztecDetectorResult;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lcom/dcloud/zxing2/common/DetectorResult;->getPoints()[Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v3
    :try_end_13
    .catch Lcom/dcloud/zxing2/NotFoundException; {:try_start_b .. :try_end_13} :catch_2b
    .catch Lcom/dcloud/zxing2/FormatException; {:try_start_b .. :try_end_13} :catch_25

    .line 8
    :try_start_13
    new-instance v4, Lcom/dcloud/zxing2/aztec/decoder/Decoder;

    invoke-direct {v4}, Lcom/dcloud/zxing2/aztec/decoder/Decoder;-><init>()V

    invoke-virtual {v4, v2}, Lcom/dcloud/zxing2/aztec/decoder/Decoder;->decode(Lcom/dcloud/zxing2/aztec/AztecDetectorResult;)Lcom/dcloud/zxing2/common/DecoderResult;

    move-result-object v2
    :try_end_1c
    .catch Lcom/dcloud/zxing2/NotFoundException; {:try_start_13 .. :try_end_1c} :catch_23
    .catch Lcom/dcloud/zxing2/FormatException; {:try_start_13 .. :try_end_1c} :catch_21

    move-object v4, v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2f

    :catch_21
    move-exception v2

    goto :goto_27

    :catch_23
    move-exception v2

    goto :goto_2d

    :catch_25
    move-exception v2

    move-object v3, v1

    :goto_27
    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    goto :goto_2f

    :catch_2b
    move-exception v2

    move-object v3, v1

    :goto_2d
    move-object v4, v3

    move-object v3, v1

    :goto_2f
    if-nez v1, :cond_4e

    const/4 v1, 0x1

    .line 16
    :try_start_32
    invoke-virtual {v0, v1}, Lcom/dcloud/zxing2/aztec/detector/Detector;->detect(Z)Lcom/dcloud/zxing2/aztec/AztecDetectorResult;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/dcloud/zxing2/common/DetectorResult;->getPoints()[Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v4

    .line 18
    new-instance v1, Lcom/dcloud/zxing2/aztec/decoder/Decoder;

    invoke-direct {v1}, Lcom/dcloud/zxing2/aztec/decoder/Decoder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/dcloud/zxing2/aztec/decoder/Decoder;->decode(Lcom/dcloud/zxing2/aztec/AztecDetectorResult;)Lcom/dcloud/zxing2/common/DecoderResult;

    move-result-object v1
    :try_end_43
    .catch Lcom/dcloud/zxing2/NotFoundException; {:try_start_32 .. :try_end_43} :catch_46
    .catch Lcom/dcloud/zxing2/FormatException; {:try_start_32 .. :try_end_43} :catch_44

    goto :goto_4e

    :catch_44
    move-exception p1

    goto :goto_47

    :catch_46
    move-exception p1

    :goto_47
    if-nez v2, :cond_4d

    if-eqz v3, :cond_4c

    .line 24
    throw v3

    .line 26
    :cond_4c
    throw p1

    .line 27
    :cond_4d
    throw v2

    :cond_4e
    :goto_4e
    if-eqz p2, :cond_65

    .line 37
    sget-object v0, Lcom/dcloud/zxing2/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/dcloud/zxing2/DecodeHintType;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/dcloud/zxing2/ResultPointCallback;

    if-eqz p2, :cond_65

    .line 39
    array-length v0, v4

    :goto_5b
    if-ge p1, v0, :cond_65

    aget-object v2, v4, p1

    .line 40
    invoke-interface {p2, v2}, Lcom/dcloud/zxing2/ResultPointCallback;->foundPossibleResultPoint(Lcom/dcloud/zxing2/ResultPoint;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_5b

    .line 45
    :cond_65
    new-instance p1, Lcom/dcloud/zxing2/Result;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/DecoderResult;->getRawBytes()[B

    move-result-object v0

    sget-object v2, Lcom/dcloud/zxing2/BarcodeFormat;->AZTEC:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-direct {p1, p2, v0, v4, v2}, Lcom/dcloud/zxing2/Result;-><init>(Ljava/lang/String;[B[Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/BarcodeFormat;)V

    .line 47
    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/DecoderResult;->getByteSegments()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_7f

    .line 49
    sget-object v0, Lcom/dcloud/zxing2/ResultMetadataType;->BYTE_SEGMENTS:Lcom/dcloud/zxing2/ResultMetadataType;

    invoke-virtual {p1, v0, p2}, Lcom/dcloud/zxing2/Result;->putMetadata(Lcom/dcloud/zxing2/ResultMetadataType;Ljava/lang/Object;)V

    .line 51
    :cond_7f
    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8a

    .line 53
    sget-object v0, Lcom/dcloud/zxing2/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/dcloud/zxing2/ResultMetadataType;

    invoke-virtual {p1, v0, p2}, Lcom/dcloud/zxing2/Result;->putMetadata(Lcom/dcloud/zxing2/ResultMetadataType;Ljava/lang/Object;)V

    :cond_8a
    return-object p1
.end method

.method public reset()V
    .registers 1

    return-void
.end method
