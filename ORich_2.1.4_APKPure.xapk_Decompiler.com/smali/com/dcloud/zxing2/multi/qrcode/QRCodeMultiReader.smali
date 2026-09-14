###### Class com.dcloud.zxing2.multi.qrcode.QRCodeMultiReader (com.dcloud.zxing2.multi.qrcode.QRCodeMultiReader)
.class public final Lcom/dcloud/zxing2/multi/qrcode/QRCodeMultiReader;
.super Lcom/dcloud/zxing2/qrcode/QRCodeReader;
.source "SourceFile"

# interfaces
.implements Lcom/dcloud/zxing2/multi/MultipleBarcodeReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dcloud/zxing2/multi/qrcode/QRCodeMultiReader$SAComparator;
    }
.end annotation


# static fields
.field private static final EMPTY_RESULT_ARRAY:[Lcom/dcloud/zxing2/Result;

.field private static final NO_POINTS:[Lcom/dcloud/zxing2/ResultPoint;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/dcloud/zxing2/Result;

    .line 1
    sput-object v1, Lcom/dcloud/zxing2/multi/qrcode/QRCodeMultiReader;->EMPTY_RESULT_ARRAY:[Lcom/dcloud/zxing2/Result;

    new-array v0, v0, [Lcom/dcloud/zxing2/ResultPoint;

    .line 2
    sput-object v0, Lcom/dcloud/zxing2/multi/qrcode/QRCodeMultiReader;->NO_POINTS:[Lcom/dcloud/zxing2/ResultPoint;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/zxing2/qrcode/QRCodeReader;-><init>()V

    return-void
.end method

.method private static processStructuredAppend(Ljava/util/List;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/Result;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/dcloud/zxing2/Result;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dcloud/zxing2/Result;

    .line 2
    invoke-virtual {v1}, Lcom/dcloud/zxing2/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v1

    sget-object v3, Lcom/dcloud/zxing2/ResultMetadataType;->STRUCTURED_APPEND_SEQUENCE:Lcom/dcloud/zxing2/ResultMetadataType;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    if-nez v0, :cond_23

    return-object p0

    .line 12
    :cond_23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_31
    :goto_31
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dcloud/zxing2/Result;

    .line 15
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v3}, Lcom/dcloud/zxing2/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v4

    sget-object v5, Lcom/dcloud/zxing2/ResultMetadataType;->STRUCTURED_APPEND_SEQUENCE:Lcom/dcloud/zxing2/ResultMetadataType;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 17
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 21
    :cond_50
    new-instance p0, Lcom/dcloud/zxing2/multi/qrcode/QRCodeMultiReader$SAComparator;

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/dcloud/zxing2/multi/qrcode/QRCodeMultiReader$SAComparator;-><init>(Lcom/dcloud/zxing2/multi/qrcode/QRCodeMultiReader$1;)V

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 22
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_64
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dcloud/zxing2/Result;

    .line 26
    invoke-virtual {v6}, Lcom/dcloud/zxing2/Result;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v6}, Lcom/dcloud/zxing2/Result;->getRawBytes()[B

    move-result-object v7

    array-length v7, v7

    add-int/2addr v5, v7

    .line 28
    invoke-virtual {v6}, Lcom/dcloud/zxing2/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v7

    sget-object v8, Lcom/dcloud/zxing2/ResultMetadataType;->BYTE_SEGMENTS:Lcom/dcloud/zxing2/ResultMetadataType;

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_64

    .line 31
    invoke-virtual {v6}, Lcom/dcloud/zxing2/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .line 32
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_97
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_64

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 33
    array-length v7, v7

    add-int/2addr v4, v7

    goto :goto_97

    .line 37
    :cond_a6
    new-array v3, v5, [B

    .line 38
    new-array v5, v4, [B

    .line 41
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_b0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_fb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dcloud/zxing2/Result;

    .line 42
    invoke-virtual {v8}, Lcom/dcloud/zxing2/Result;->getRawBytes()[B

    move-result-object v9

    invoke-virtual {v8}, Lcom/dcloud/zxing2/Result;->getRawBytes()[B

    move-result-object v10

    array-length v10, v10

    invoke-static {v9, v2, v3, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    invoke-virtual {v8}, Lcom/dcloud/zxing2/Result;->getRawBytes()[B

    move-result-object v9

    array-length v9, v9

    add-int/2addr v6, v9

    .line 44
    invoke-virtual {v8}, Lcom/dcloud/zxing2/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v9

    sget-object v10, Lcom/dcloud/zxing2/ResultMetadataType;->BYTE_SEGMENTS:Lcom/dcloud/zxing2/ResultMetadataType;

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b0

    .line 47
    invoke-virtual {v8}, Lcom/dcloud/zxing2/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .line 48
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_e8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 49
    array-length v10, v9

    invoke-static {v9, v2, v5, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    array-length v9, v9

    add-int/2addr v7, v9

    goto :goto_e8

    .line 54
    :cond_fb
    new-instance v1, Lcom/dcloud/zxing2/Result;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/dcloud/zxing2/multi/qrcode/QRCodeMultiReader;->NO_POINTS:[Lcom/dcloud/zxing2/ResultPoint;

    sget-object v6, Lcom/dcloud/zxing2/BarcodeFormat;->QR_CODE:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-direct {v1, p0, v3, v2, v6}, Lcom/dcloud/zxing2/Result;-><init>(Ljava/lang/String;[B[Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/BarcodeFormat;)V

    if-lez v4, :cond_117

    .line 56
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    invoke-interface {p0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v2, Lcom/dcloud/zxing2/ResultMetadataType;->BYTE_SEGMENTS:Lcom/dcloud/zxing2/ResultMetadataType;

    invoke-virtual {v1, v2, p0}, Lcom/dcloud/zxing2/Result;->putMetadata(Lcom/dcloud/zxing2/ResultMetadataType;Ljava/lang/Object;)V

    .line 60
    :cond_117
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
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
    invoke-virtual {p0, p1, v0}, Lcom/dcloud/zxing2/multi/qrcode/QRCodeMultiReader;->decodeMultiple(Lcom/dcloud/zxing2/BinaryBitmap;Ljava/util/Map;)[Lcom/dcloud/zxing2/Result;

    move-result-object p1

    return-object p1
.end method

.method public decodeMultiple(Lcom/dcloud/zxing2/BinaryBitmap;Ljava/util/Map;)[Lcom/dcloud/zxing2/Result;
    .registers 12
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Lcom/dcloud/zxing2/multi/qrcode/detector/MultiDetector;

    invoke-virtual {p1}, Lcom/dcloud/zxing2/BinaryBitmap;->getBlackMatrix()Lcom/dcloud/zxing2/common/BitMatrix;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/dcloud/zxing2/multi/qrcode/detector/MultiDetector;-><init>(Lcom/dcloud/zxing2/common/BitMatrix;)V

    invoke-virtual {v1, p2}, Lcom/dcloud/zxing2/multi/qrcode/detector/MultiDetector;->detectMulti(Ljava/util/Map;)[Lcom/dcloud/zxing2/common/DetectorResult;

    move-result-object p1

    .line 4
    array-length v1, p1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_84

    aget-object v3, p1, v2

    .line 6
    :try_start_18
    invoke-virtual {p0}, Lcom/dcloud/zxing2/qrcode/QRCodeReader;->getDecoder()Lcom/dcloud/zxing2/qrcode/decoder/Decoder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/dcloud/zxing2/common/DetectorResult;->getBits()Lcom/dcloud/zxing2/common/BitMatrix;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lcom/dcloud/zxing2/qrcode/decoder/Decoder;->decode(Lcom/dcloud/zxing2/common/BitMatrix;Ljava/util/Map;)Lcom/dcloud/zxing2/common/DecoderResult;

    move-result-object v4

    .line 7
    invoke-virtual {v3}, Lcom/dcloud/zxing2/common/DetectorResult;->getPoints()[Lcom/dcloud/zxing2/ResultPoint;

    move-result-object v3

    .line 9
    invoke-virtual {v4}, Lcom/dcloud/zxing2/common/DecoderResult;->getOther()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/dcloud/zxing2/qrcode/decoder/QRCodeDecoderMetaData;

    if-eqz v5, :cond_39

    .line 10
    invoke-virtual {v4}, Lcom/dcloud/zxing2/common/DecoderResult;->getOther()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dcloud/zxing2/qrcode/decoder/QRCodeDecoderMetaData;

    invoke-virtual {v5, v3}, Lcom/dcloud/zxing2/qrcode/decoder/QRCodeDecoderMetaData;->applyMirroredCorrection([Lcom/dcloud/zxing2/ResultPoint;)V

    .line 12
    :cond_39
    new-instance v5, Lcom/dcloud/zxing2/Result;

    invoke-virtual {v4}, Lcom/dcloud/zxing2/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/dcloud/zxing2/common/DecoderResult;->getRawBytes()[B

    move-result-object v7

    sget-object v8, Lcom/dcloud/zxing2/BarcodeFormat;->QR_CODE:Lcom/dcloud/zxing2/BarcodeFormat;

    invoke-direct {v5, v6, v7, v3, v8}, Lcom/dcloud/zxing2/Result;-><init>(Ljava/lang/String;[B[Lcom/dcloud/zxing2/ResultPoint;Lcom/dcloud/zxing2/BarcodeFormat;)V

    .line 14
    invoke-virtual {v4}, Lcom/dcloud/zxing2/common/DecoderResult;->getByteSegments()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_53

    .line 16
    sget-object v6, Lcom/dcloud/zxing2/ResultMetadataType;->BYTE_SEGMENTS:Lcom/dcloud/zxing2/ResultMetadataType;

    invoke-virtual {v5, v6, v3}, Lcom/dcloud/zxing2/Result;->putMetadata(Lcom/dcloud/zxing2/ResultMetadataType;Ljava/lang/Object;)V

    .line 18
    :cond_53
    invoke-virtual {v4}, Lcom/dcloud/zxing2/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5e

    .line 20
    sget-object v6, Lcom/dcloud/zxing2/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/dcloud/zxing2/ResultMetadataType;

    invoke-virtual {v5, v6, v3}, Lcom/dcloud/zxing2/Result;->putMetadata(Lcom/dcloud/zxing2/ResultMetadataType;Ljava/lang/Object;)V

    .line 22
    :cond_5e
    invoke-virtual {v4}, Lcom/dcloud/zxing2/common/DecoderResult;->hasStructuredAppend()Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 23
    sget-object v3, Lcom/dcloud/zxing2/ResultMetadataType;->STRUCTURED_APPEND_SEQUENCE:Lcom/dcloud/zxing2/ResultMetadataType;

    .line 24
    invoke-virtual {v4}, Lcom/dcloud/zxing2/common/DecoderResult;->getStructuredAppendSequenceNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 25
    invoke-virtual {v5, v3, v6}, Lcom/dcloud/zxing2/Result;->putMetadata(Lcom/dcloud/zxing2/ResultMetadataType;Ljava/lang/Object;)V

    .line 27
    sget-object v3, Lcom/dcloud/zxing2/ResultMetadataType;->STRUCTURED_APPEND_PARITY:Lcom/dcloud/zxing2/ResultMetadataType;

    .line 28
    invoke-virtual {v4}, Lcom/dcloud/zxing2/common/DecoderResult;->getStructuredAppendParity()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 29
    invoke-virtual {v5, v3, v4}, Lcom/dcloud/zxing2/Result;->putMetadata(Lcom/dcloud/zxing2/ResultMetadataType;Ljava/lang/Object;)V

    .line 32
    :cond_7e
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_81
    .catch Lcom/dcloud/zxing2/ReaderException; {:try_start_18 .. :try_end_81} :catch_81

    :catch_81
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 37
    :cond_84
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8d

    .line 38
    sget-object p1, Lcom/dcloud/zxing2/multi/qrcode/QRCodeMultiReader;->EMPTY_RESULT_ARRAY:[Lcom/dcloud/zxing2/Result;

    return-object p1

    .line 40
    :cond_8d
    invoke-static {v0}, Lcom/dcloud/zxing2/multi/qrcode/QRCodeMultiReader;->processStructuredAppend(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 41
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Lcom/dcloud/zxing2/Result;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/dcloud/zxing2/Result;

    return-object p1
.end method

###### Class com.dcloud.zxing2.multi.qrcode.QRCodeMultiReader.AnonymousClass1 (com.dcloud.zxing2.multi.qrcode.QRCodeMultiReader$1)
.class synthetic Lcom/dcloud/zxing2/multi/qrcode/QRCodeMultiReader$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/zxing2/multi/qrcode/QRCodeMultiReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.dcloud.zxing2.multi.qrcode.QRCodeMultiReader.SAComparator (com.dcloud.zxing2.multi.qrcode.QRCodeMultiReader$SAComparator)
.class final Lcom/dcloud/zxing2/multi/qrcode/QRCodeMultiReader$SAComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/zxing2/multi/qrcode/QRCodeMultiReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SAComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/dcloud/zxing2/Result;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dcloud/zxing2/multi/qrcode/QRCodeMultiReader$1;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lcom/dcloud/zxing2/multi/qrcode/QRCodeMultiReader$SAComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/dcloud/zxing2/Result;Lcom/dcloud/zxing2/Result;)I
    .registers 4

    .line 2
    invoke-virtual {p1}, Lcom/dcloud/zxing2/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object p1

    sget-object v0, Lcom/dcloud/zxing2/ResultMetadataType;->STRUCTURED_APPEND_SEQUENCE:Lcom/dcloud/zxing2/ResultMetadataType;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    invoke-virtual {p2}, Lcom/dcloud/zxing2/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ge p1, p2, :cond_22

    const/4 p1, -0x1

    return p1

    :cond_22
    if-le p1, p2, :cond_26

    const/4 p1, 0x1

    return p1

    :cond_26
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lcom/dcloud/zxing2/Result;

    check-cast p2, Lcom/dcloud/zxing2/Result;

    invoke-virtual {p0, p1, p2}, Lcom/dcloud/zxing2/multi/qrcode/QRCodeMultiReader$SAComparator;->compare(Lcom/dcloud/zxing2/Result;Lcom/dcloud/zxing2/Result;)I

    move-result p1

    return p1
.end method
