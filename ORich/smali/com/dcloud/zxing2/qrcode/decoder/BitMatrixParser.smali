###### Class com.dcloud.zxing2.qrcode.decoder.BitMatrixParser (com.dcloud.zxing2.qrcode.decoder.BitMatrixParser)
.class final Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

.field private mirror:Z

.field private parsedFormatInfo:Lcom/dcloud/zxing2/qrcode/decoder/FormatInformation;

.field private parsedVersion:Lcom/dcloud/zxing2/qrcode/decoder/Version;


# direct methods
.method constructor <init>(Lcom/dcloud/zxing2/common/BitMatrix;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_13

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 6
    iput-object p1, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    return-void

    .line 7
    :cond_13
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p1

    throw p1
.end method

.method private copyBit(III)I
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->mirror:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v0, p2, p1}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result p1

    goto :goto_11

    :cond_b
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v0, p1, p2}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result p1

    :goto_11
    if-eqz p1, :cond_18

    shl-int/lit8 p1, p3, 0x1

    or-int/lit8 p1, p1, 0x1

    goto :goto_1a

    :cond_18
    shl-int/lit8 p1, p3, 0x1

    :goto_1a
    return p1
.end method


# virtual methods
.method mirror()V
    .registers 6

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object v1, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitMatrix;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_31

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    .line 2
    :goto_c
    iget-object v3, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v3}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_2f

    .line 3
    iget-object v3, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v3, v0, v2}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v3

    iget-object v4, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v4, v2, v0}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v4

    if-eq v3, v4, :cond_2c

    .line 4
    iget-object v3, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v3, v2, v0}, Lcom/dcloud/zxing2/common/BitMatrix;->flip(II)V

    .line 5
    iget-object v3, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v3, v0, v2}, Lcom/dcloud/zxing2/common/BitMatrix;->flip(II)V

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_2f
    move v0, v1

    goto :goto_1

    :cond_31
    return-void
.end method

.method readCodewords()[B
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/dcloud/zxing2/qrcode/decoder/FormatInformation;

    move-result-object v1

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/dcloud/zxing2/qrcode/decoder/Version;

    move-result-object v2

    .line 6
    invoke-virtual {v1}, Lcom/dcloud/zxing2/qrcode/decoder/FormatInformation;->getDataMask()B

    move-result v1

    invoke-static {v1}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask;->forReference(I)Lcom/dcloud/zxing2/qrcode/decoder/DataMask;

    move-result-object v1

    .line 7
    iget-object v3, v0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v3}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result v3

    .line 8
    iget-object v4, v0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v1, v4, v3}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask;->unmaskBitMatrix(Lcom/dcloud/zxing2/common/BitMatrix;I)V

    .line 10
    invoke-virtual {v2}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->buildFunctionPattern()Lcom/dcloud/zxing2/common/BitMatrix;

    move-result-object v1

    .line 13
    invoke-virtual {v2}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v4

    new-array v4, v4, [B

    add-int/lit8 v5, v3, -0x1

    const/4 v7, 0x1

    move v8, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2e
    if-lez v8, :cond_70

    const/4 v12, 0x6

    if-ne v8, v12, :cond_35

    add-int/lit8 v8, v8, -0x1

    :cond_35
    const/4 v12, 0x0

    :goto_36
    if-ge v12, v3, :cond_6b

    if-eqz v7, :cond_3d

    sub-int v13, v5, v12

    goto :goto_3e

    :cond_3d
    move v13, v12

    :goto_3e
    const/4 v14, 0x0

    :goto_3f
    const/4 v15, 0x2

    if-ge v14, v15, :cond_68

    sub-int v15, v8, v14

    .line 29
    invoke-virtual {v1, v15, v13}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v16

    if-nez v16, :cond_65

    add-int/lit8 v11, v11, 0x1

    shl-int/lit8 v10, v10, 0x1

    .line 33
    iget-object v6, v0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v6, v15, v13}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_59

    or-int/lit8 v6, v10, 0x1

    move v10, v6

    :cond_59
    const/16 v6, 0x8

    if-ne v11, v6, :cond_65

    add-int/lit8 v6, v9, 0x1

    int-to-byte v10, v10

    .line 38
    aput-byte v10, v4, v9

    move v9, v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    :cond_65
    add-int/lit8 v14, v14, 0x1

    goto :goto_3f

    :cond_68
    add-int/lit8 v12, v12, 0x1

    goto :goto_36

    :cond_6b
    xor-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, -0x2

    goto :goto_2e

    .line 47
    :cond_70
    invoke-virtual {v2}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v1

    if-ne v9, v1, :cond_77

    return-object v4

    .line 48
    :cond_77
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object v1

    throw v1
.end method

.method readFormatInformation()Lcom/dcloud/zxing2/qrcode/decoder/FormatInformation;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/dcloud/zxing2/qrcode/decoder/FormatInformation;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    const/4 v3, 0x6

    const/16 v4, 0x8

    if-ge v1, v3, :cond_14

    .line 8
    invoke-direct {p0, v1, v4, v2}, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    const/4 v1, 0x7

    .line 11
    invoke-direct {p0, v1, v4, v2}, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v2

    .line 12
    invoke-direct {p0, v4, v4, v2}, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v2

    .line 13
    invoke-direct {p0, v4, v1, v2}, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v1

    const/4 v2, 0x5

    :goto_22
    if-ltz v2, :cond_2b

    .line 16
    invoke-direct {p0, v4, v2, v1}, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_22

    .line 20
    :cond_2b
    iget-object v2, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v2}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result v2

    add-int/lit8 v3, v2, -0x7

    add-int/lit8 v5, v2, -0x1

    :goto_35
    if-lt v5, v3, :cond_3e

    .line 24
    invoke-direct {p0, v4, v5, v0}, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v0

    add-int/lit8 v5, v5, -0x1

    goto :goto_35

    :cond_3e
    add-int/lit8 v3, v2, -0x8

    :goto_40
    if-ge v3, v2, :cond_49

    .line 27
    invoke-direct {p0, v3, v4, v0}, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 30
    :cond_49
    invoke-static {v1, v0}, Lcom/dcloud/zxing2/qrcode/decoder/FormatInformation;->decodeFormatInformation(II)Lcom/dcloud/zxing2/qrcode/decoder/FormatInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/dcloud/zxing2/qrcode/decoder/FormatInformation;

    if-eqz v0, :cond_52

    return-object v0

    .line 34
    :cond_52
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object v0

    throw v0
.end method

.method readVersion()Lcom/dcloud/zxing2/qrcode/decoder/Version;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/dcloud/zxing2/qrcode/decoder/Version;

    if-eqz v0, :cond_5

    return-object v0

    .line 5
    :cond_5
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result v0

    add-int/lit8 v1, v0, -0x11

    .line 7
    div-int/lit8 v1, v1, 0x4

    const/4 v2, 0x6

    if-gt v1, v2, :cond_17

    .line 9
    invoke-static {v1}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/dcloud/zxing2/qrcode/decoder/Version;

    move-result-object v0

    return-object v0

    :cond_17
    add-int/lit8 v1, v0, -0xb

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    :goto_1d
    if-ltz v4, :cond_2d

    add-int/lit8 v6, v0, -0x9

    :goto_21
    if-lt v6, v1, :cond_2a

    .line 17
    invoke-direct {p0, v6, v4, v5}, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v5

    add-int/lit8 v6, v6, -0x1

    goto :goto_21

    :cond_2a
    add-int/lit8 v4, v4, -0x1

    goto :goto_1d

    .line 21
    :cond_2d
    invoke-static {v5}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->decodeVersionInformation(I)Lcom/dcloud/zxing2/qrcode/decoder/Version;

    move-result-object v4

    if-eqz v4, :cond_3c

    .line 22
    invoke-virtual {v4}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v5

    if-ne v5, v0, :cond_3c

    .line 23
    iput-object v4, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/dcloud/zxing2/qrcode/decoder/Version;

    return-object v4

    :cond_3c
    :goto_3c
    if-ltz v2, :cond_4c

    add-int/lit8 v4, v0, -0x9

    :goto_40
    if-lt v4, v1, :cond_49

    .line 31
    invoke-direct {p0, v2, v4, v3}, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v3

    add-int/lit8 v4, v4, -0x1

    goto :goto_40

    :cond_49
    add-int/lit8 v2, v2, -0x1

    goto :goto_3c

    .line 35
    :cond_4c
    invoke-static {v3}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->decodeVersionInformation(I)Lcom/dcloud/zxing2/qrcode/decoder/Version;

    move-result-object v1

    if-eqz v1, :cond_5b

    .line 36
    invoke-virtual {v1}, Lcom/dcloud/zxing2/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v2

    if-ne v2, v0, :cond_5b

    .line 37
    iput-object v1, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/dcloud/zxing2/qrcode/decoder/Version;

    return-object v1

    .line 40
    :cond_5b
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object v0

    throw v0
.end method

.method remask()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/dcloud/zxing2/qrcode/decoder/FormatInformation;

    if-nez v0, :cond_5

    return-void

    .line 4
    :cond_5
    invoke-virtual {v0}, Lcom/dcloud/zxing2/qrcode/decoder/FormatInformation;->getDataMask()B

    move-result v0

    invoke-static {v0}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask;->forReference(I)Lcom/dcloud/zxing2/qrcode/decoder/DataMask;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result v1

    .line 6
    iget-object v2, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-virtual {v0, v2, v1}, Lcom/dcloud/zxing2/qrcode/decoder/DataMask;->unmaskBitMatrix(Lcom/dcloud/zxing2/common/BitMatrix;I)V

    return-void
.end method

.method setMirror(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/dcloud/zxing2/qrcode/decoder/Version;

    .line 2
    iput-object v0, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/dcloud/zxing2/qrcode/decoder/FormatInformation;

    .line 3
    iput-boolean p1, p0, Lcom/dcloud/zxing2/qrcode/decoder/BitMatrixParser;->mirror:Z

    return-void
.end method
