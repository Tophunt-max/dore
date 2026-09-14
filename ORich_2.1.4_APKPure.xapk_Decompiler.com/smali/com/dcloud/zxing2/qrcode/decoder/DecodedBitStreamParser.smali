###### Class com.dcloud.zxing2.qrcode.decoder.DecodedBitStreamParser (com.dcloud.zxing2.qrcode.decoder.DecodedBitStreamParser)
.class final Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALPHANUMERIC_CHARS:[C

.field private static final GB2312_SUBSET:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x2d

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_a

    sput-object v0, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x20s
        0x24s
        0x25s
        0x2as
        0x2bs
        0x2ds
        0x2es
        0x2fs
        0x3as
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decode([BLcom/dcloud/zxing2/qrcode/decoder/Version;Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/dcloud/zxing2/common/DecoderResult;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/dcloud/zxing2/qrcode/decoder/Version;",
            "Lcom/dcloud/zxing2/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/DecodeHintType;",
            "*>;)",
            "Lcom/dcloud/zxing2/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    new-instance v7, Lcom/dcloud/zxing2/common/BitSource;

    move-object/from16 v8, p0

    invoke-direct {v7, v8}, Lcom/dcloud/zxing2/common/BitSource;-><init>([B)V

    .line 2
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    new-instance v10, Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, -0x1

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 15
    :goto_1f
    :try_start_1f
    invoke-virtual {v7}, Lcom/dcloud/zxing2/common/BitSource;->available()I

    move-result v1

    const/4 v3, 0x4

    if-ge v1, v3, :cond_2a

    .line 17
    sget-object v1, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->TERMINATOR:Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    :goto_28
    move-object v6, v1

    goto :goto_33

    .line 19
    :cond_2a
    invoke-virtual {v7, v3}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v1

    invoke-static {v1}, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->forBits(I)Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    move-result-object v1

    goto :goto_28

    .line 21
    :goto_33
    sget-object v5, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->TERMINATOR:Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    if-eq v6, v5, :cond_71

    .line 22
    sget-object v1, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    if-eq v6, v1, :cond_cb

    sget-object v1, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->FNC1_SECOND_POSITION:Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    if-ne v6, v1, :cond_41

    goto/16 :goto_cb

    .line 25
    :cond_41
    sget-object v1, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->STRUCTURED_APPEND:Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    if-ne v6, v1, :cond_63

    .line 26
    invoke-virtual {v7}, Lcom/dcloud/zxing2/common/BitSource;->available()I

    move-result v1

    const/16 v3, 0x10

    if-lt v1, v3, :cond_5e

    const/16 v1, 0x8

    .line 31
    invoke-virtual {v7, v1}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v3

    .line 32
    invoke-virtual {v7, v1}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v1

    move v14, v1

    move-object v13, v2

    move-object v11, v5

    move-object v12, v6

    move v5, v3

    goto/16 :goto_d2

    .line 33
    :cond_5e
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object v0

    throw v0

    .line 39
    :cond_63
    sget-object v1, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->ECI:Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    if-ne v6, v1, :cond_7a

    .line 41
    invoke-static {v7}, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->parseECIValue(Lcom/dcloud/zxing2/common/BitSource;)I

    move-result v1

    .line 42
    invoke-static {v1}, Lcom/dcloud/zxing2/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/dcloud/zxing2/common/CharacterSetECI;

    move-result-object v16

    if-eqz v16, :cond_75

    :cond_71
    :goto_71
    move-object v11, v5

    move-object v12, v6

    goto/16 :goto_d0

    .line 44
    :cond_75
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object v0

    throw v0

    .line 48
    :cond_7a
    sget-object v1, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->HANZI:Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    if-ne v6, v1, :cond_90

    .line 50
    invoke-virtual {v7, v3}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v1

    .line 51
    invoke-virtual {v6, v0}, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/dcloud/zxing2/qrcode/decoder/Version;)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v3

    if-ne v1, v11, :cond_71

    .line 53
    invoke-static {v7, v9, v3}, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->decodeHanziSegment(Lcom/dcloud/zxing2/common/BitSource;Ljava/lang/StringBuilder;I)V

    goto :goto_71

    .line 58
    :cond_90
    invoke-virtual {v6, v0}, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/dcloud/zxing2/qrcode/decoder/Version;)I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v3

    .line 59
    sget-object v1, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->NUMERIC:Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    if-ne v6, v1, :cond_a0

    .line 60
    invoke-static {v7, v9, v3}, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->decodeNumericSegment(Lcom/dcloud/zxing2/common/BitSource;Ljava/lang/StringBuilder;I)V

    goto :goto_71

    .line 61
    :cond_a0
    sget-object v1, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    if-ne v6, v1, :cond_a8

    .line 62
    invoke-static {v7, v9, v3, v15}, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->decodeAlphanumericSegment(Lcom/dcloud/zxing2/common/BitSource;Ljava/lang/StringBuilder;IZ)V

    goto :goto_71

    .line 63
    :cond_a8
    sget-object v1, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->BYTE:Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    if-ne v6, v1, :cond_bc

    move-object v1, v7

    move-object v2, v9

    move-object/from16 v4, v16

    move-object v11, v5

    move-object v5, v10

    move-object v12, v6

    move-object/from16 v6, p3

    .line 65
    invoke-static/range {v1 .. v6}, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->decodeByteSegment(Lcom/dcloud/zxing2/common/BitSource;Ljava/lang/StringBuilder;ILcom/dcloud/zxing2/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    move v5, v13

    move-object v13, v1

    goto :goto_d2

    :cond_bc
    move-object v11, v5

    move-object v12, v6

    .line 66
    sget-object v1, Lcom/dcloud/zxing2/qrcode/decoder/Mode;->KANJI:Lcom/dcloud/zxing2/qrcode/decoder/Mode;

    if-ne v12, v1, :cond_c6

    .line 67
    invoke-static {v7, v9, v3}, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->decodeKanjiSegment(Lcom/dcloud/zxing2/common/BitSource;Ljava/lang/StringBuilder;I)V

    goto :goto_d0

    .line 69
    :cond_c6
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object v0

    throw v0
    :try_end_cb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_cb} :catch_fb

    :cond_cb
    :goto_cb
    move-object v11, v5

    move-object v12, v6

    move v5, v13

    const/4 v15, 0x1

    goto :goto_d1

    :goto_d0
    move v5, v13

    :goto_d1
    move-object v13, v2

    :goto_d2
    if-ne v12, v11, :cond_f6

    .line 80
    new-instance v7, Lcom/dcloud/zxing2/common/DecoderResult;

    .line 81
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e2

    const/4 v3, 0x0

    goto :goto_e3

    :cond_e2
    move-object v3, v10

    :goto_e3
    if-nez p2, :cond_e7

    const/4 v4, 0x0

    goto :goto_ec

    .line 83
    :cond_e7
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_ec
    move-object v0, v7

    move-object/from16 v1, p0

    move v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/dcloud/zxing2/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;II)V

    .line 87
    iput-object v13, v7, Lcom/dcloud/zxing2/common/DecoderResult;->textCharset:Ljava/lang/String;

    return-object v7

    :cond_f6
    move-object v2, v13

    const/4 v11, 0x1

    move v13, v5

    goto/16 :goto_1f

    .line 88
    :catch_fb
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object v0

    throw v0
.end method

.method private static decodeAlphanumericSegment(Lcom/dcloud/zxing2/common/BitSource;Ljava/lang/StringBuilder;IZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    :goto_4
    const/4 v1, 0x1

    if-le p2, v1, :cond_2d

    .line 3
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitSource;->available()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_28

    .line 6
    invoke-virtual {p0, v2}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v1

    .line 7
    div-int/lit8 v2, v1, 0x2d

    invoke-static {v2}, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    rem-int/lit8 v1, v1, 0x2d

    invoke-static {v1}, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x2

    goto :goto_4

    .line 9
    :cond_28
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    :cond_2d
    if-ne p2, v1, :cond_47

    .line 18
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitSource;->available()I

    move-result p2

    const/4 v2, 0x6

    if-lt p2, v2, :cond_42

    .line 21
    invoke-virtual {p0, v2}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result p0

    invoke-static {p0}, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_47

    .line 22
    :cond_42
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    :cond_47
    :goto_47
    if-eqz p3, :cond_72

    .line 29
    :goto_49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ge v0, p0, :cond_72

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    const/16 p2, 0x25

    if-ne p0, p2, :cond_6f

    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v1

    if-ge v0, p0, :cond_6a

    add-int/lit8 p0, v0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p3

    if-ne p3, p2, :cond_6a

    .line 33
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_6f

    :cond_6a
    const/16 p0, 0x1d

    .line 36
    invoke-virtual {p1, v0, p0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_6f
    :goto_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    :cond_72
    return-void
.end method

.method private static decodeByteSegment(Lcom/dcloud/zxing2/common/BitSource;Ljava/lang/StringBuilder;ILcom/dcloud/zxing2/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dcloud/zxing2/common/BitSource;",
            "Ljava/lang/StringBuilder;",
            "I",
            "Lcom/dcloud/zxing2/common/CharacterSetECI;",
            "Ljava/util/Collection<",
            "[B>;",
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/DecodeHintType;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    mul-int/lit8 v0, p2, 0x8

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitSource;->available()I

    move-result v1

    if-gt v0, v1, :cond_35

    .line 5
    new-array v0, p2, [B

    const/4 v1, 0x0

    :goto_b
    if-ge v1, p2, :cond_19

    const/16 v2, 0x8

    .line 7
    invoke-virtual {p0, v2}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_19
    if-nez p3, :cond_20

    .line 16
    invoke-static {v0, p5}, Lcom/dcloud/zxing2/common/StringUtils;->guessEncoding([BLjava/util/Map;)Ljava/lang/String;

    move-result-object p0

    goto :goto_24

    .line 18
    :cond_20
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    .line 21
    :goto_24
    :try_start_24
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0, p0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_24 .. :try_end_2c} :catch_30

    .line 25
    invoke-interface {p4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 26
    :catch_30
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    .line 27
    :cond_35
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static decodeHanziSegment(Lcom/dcloud/zxing2/common/BitSource;Ljava/lang/StringBuilder;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    mul-int/lit8 v0, p2, 0xd

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitSource;->available()I

    move-result v1

    if-gt v0, v1, :cond_4b

    mul-int/lit8 v0, p2, 0x2

    .line 7
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_d
    if-lez p2, :cond_3b

    const/16 v2, 0xd

    .line 11
    invoke-virtual {p0, v2}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v2

    .line 12
    div-int/lit8 v3, v2, 0x60

    shl-int/lit8 v3, v3, 0x8

    rem-int/lit8 v2, v2, 0x60

    or-int/2addr v2, v3

    const/16 v3, 0x3bf

    if-ge v2, v3, :cond_24

    const v3, 0xa1a1

    goto :goto_27

    :cond_24
    const v3, 0xa6a1

    :goto_27
    add-int/2addr v2, v3

    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 20
    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 21
    aput-byte v2, v0, v3

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 p2, p2, -0x1

    goto :goto_d

    .line 27
    :cond_3b
    :try_start_3b
    new-instance p0, Ljava/lang/String;

    const-string p2, "GB2312"

    invoke-direct {p0, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_45
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3b .. :try_end_45} :catch_46

    return-void

    .line 29
    :catch_46
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    .line 30
    :cond_4b
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static decodeKanjiSegment(Lcom/dcloud/zxing2/common/BitSource;Ljava/lang/StringBuilder;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    mul-int/lit8 v0, p2, 0xd

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitSource;->available()I

    move-result v1

    if-gt v0, v1, :cond_47

    mul-int/lit8 v0, p2, 0x2

    .line 7
    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_d
    if-lez p2, :cond_37

    const/16 v2, 0xd

    .line 11
    invoke-virtual {p0, v2}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v2

    .line 12
    div-int/lit16 v3, v2, 0xc0

    shl-int/lit8 v3, v3, 0x8

    rem-int/lit16 v2, v2, 0xc0

    or-int/2addr v2, v3

    const/16 v3, 0x1f00

    if-ge v2, v3, :cond_24

    const v3, 0x8140

    goto :goto_27

    :cond_24
    const v3, 0xc140

    :goto_27
    add-int/2addr v2, v3

    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    .line 20
    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    int-to-byte v2, v2

    .line 21
    aput-byte v2, v0, v3

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 p2, p2, -0x1

    goto :goto_d

    .line 27
    :cond_37
    :try_start_37
    new-instance p0, Ljava/lang/String;

    const-string p2, "UTF-8"

    invoke-direct {p0, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_41
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_37 .. :try_end_41} :catch_42

    return-void

    .line 29
    :catch_42
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    .line 30
    :cond_47
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static decodeNumericSegment(Lcom/dcloud/zxing2/common/BitSource;Ljava/lang/StringBuilder;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    :goto_0
    const/4 v0, 0x3

    const/16 v1, 0xa

    if-lt p2, v0, :cond_3c

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitSource;->available()I

    move-result v0

    if-lt v0, v1, :cond_37

    .line 4
    invoke-virtual {p0, v1}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v0

    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_32

    .line 8
    div-int/lit8 v2, v0, 0x64

    invoke-static {v2}, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    div-int/lit8 v2, v0, 0xa

    rem-int/2addr v2, v1

    invoke-static {v2}, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    rem-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x3

    goto :goto_0

    .line 11
    :cond_32
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    .line 12
    :cond_37
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    :cond_3c
    const/4 v0, 0x2

    if-ne p2, v0, :cond_6a

    .line 25
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitSource;->available()I

    move-result p2

    const/4 v0, 0x7

    if-lt p2, v0, :cond_65

    .line 28
    invoke-virtual {p0, v0}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result p0

    const/16 p2, 0x64

    if-ge p0, p2, :cond_60

    .line 32
    div-int/lit8 p2, p0, 0xa

    invoke-static {p2}, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    rem-int/2addr p0, v1

    invoke-static {p0}, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8c

    .line 34
    :cond_60
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    .line 35
    :cond_65
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    :cond_6a
    const/4 v0, 0x1

    if-ne p2, v0, :cond_8c

    .line 45
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitSource;->available()I

    move-result p2

    const/4 v0, 0x4

    if-lt p2, v0, :cond_87

    .line 48
    invoke-virtual {p0, v0}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result p0

    if-ge p0, v1, :cond_82

    .line 52
    invoke-static {p0}, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8c

    .line 53
    :cond_82
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    .line 54
    :cond_87
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    :cond_8c
    :goto_8c
    return-void
.end method

.method private static parseECIValue(Lcom/dcloud/zxing2/common/BitSource;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_d

    and-int/lit8 p0, v1, 0x7f

    return p0

    :cond_d
    and-int/lit16 v2, v1, 0xc0

    const/16 v3, 0x80

    if-ne v2, v3, :cond_1d

    .line 8
    invoke-virtual {p0, v0}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result p0

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v0, v1, 0x8

    or-int/2addr p0, v0

    return p0

    :cond_1d
    and-int/lit16 v0, v1, 0xe0

    const/16 v2, 0xc0

    if-ne v0, v2, :cond_2f

    const/16 v0, 0x10

    .line 13
    invoke-virtual {p0, v0}, Lcom/dcloud/zxing2/common/BitSource;->readBits(I)I

    move-result p0

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v0, v1, 0x10

    or-int/2addr p0, v0

    return p0

    .line 16
    :cond_2f
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static toAlphaNumericChar(I)C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    array-length v1, v0

    if-ge p0, v1, :cond_8

    .line 4
    aget-char p0, v0, p0

    return p0

    .line 5
    :cond_8
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0
.end method
