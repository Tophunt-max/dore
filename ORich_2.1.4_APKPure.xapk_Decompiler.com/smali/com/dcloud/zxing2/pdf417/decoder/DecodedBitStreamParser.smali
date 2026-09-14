###### Class com.dcloud.zxing2.pdf417.decoder.DecodedBitStreamParser (com.dcloud.zxing2.pdf417.decoder.DecodedBitStreamParser)
.class final Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final AL:I = 0x1c

.field private static final AS:I = 0x1b

.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0

.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b

.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385

.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c

.field private static final DEFAULT_ENCODING:Ljava/nio/charset/Charset;

.field private static final ECI_CHARSET:I = 0x39f

.field private static final ECI_GENERAL_PURPOSE:I = 0x39e

.field private static final ECI_USER_DEFINED:I = 0x39d

.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final LL:I = 0x1b

.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a

.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf

.field private static final MIXED_CHARS:[C

.field private static final ML:I = 0x1c

.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391

.field private static final NUMBER_OF_SEQUENCE_CODEWORDS:I = 0x2

.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386

.field private static final PAL:I = 0x1d

.field private static final PL:I = 0x19

.field private static final PS:I = 0x1d

.field private static final PUNCT_CHARS:[C

.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x1d

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_42

    sput-object v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    const/16 v0, 0x19

    new-array v0, v0, [C

    .line 6
    fill-array-data v0, :array_64

    sput-object v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    const-string v0, "ISO-8859-1"

    .line 11
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/math/BigInteger;

    .line 19
    sput-object v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    .line 20
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide/16 v1, 0x384

    .line 21
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v0, 0x2

    .line 23
    :goto_2f
    sget-object v2, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    array-length v3, v2

    if-ge v0, v3, :cond_41

    add-int/lit8 v3, v0, -0x1

    .line 24
    aget-object v3, v2, v3

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_41
    return-void

    :array_42
    .array-data 2
        0x3bs
        0x3cs
        0x3es
        0x40s
        0x5bs
        0x5cs
        0x5ds
        0x5fs
        0x60s
        0x7es
        0x21s
        0xds
        0x9s
        0x2cs
        0x3as
        0xas
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x22s
        0x7cs
        0x2as
        0x28s
        0x29s
        0x3fs
        0x7bs
        0x7ds
        0x27s
    .end array-data

    nop

    :array_64
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
        0x26s
        0xds
        0x9s
        0x2cs
        0x3as
        0x23s
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x2bs
        0x25s
        0x2as
        0x3ds
        0x5es
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I
    .registers 25

    move/from16 v0, p0

    .line 1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x39a

    const/16 v3, 0x39b

    const/16 v4, 0x3a0

    const/16 v5, 0x386

    const-wide/16 v6, 0x384

    const/4 v8, 0x6

    const/16 v9, 0x39c

    const/16 v10, 0x385

    const/16 v11, 0x384

    const/4 v15, 0x0

    if-ne v0, v10, :cond_9b

    new-array v0, v8, [I

    add-int/lit8 v16, p3, 0x1

    .line 9
    aget v17, p1, p3

    move/from16 v12, v16

    move/from16 v13, v17

    const/16 v16, 0x0

    :goto_27
    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    .line 10
    :goto_2b
    aget v14, p1, v15

    if-ge v12, v14, :cond_83

    if-nez v16, :cond_83

    add-int/lit8 v14, v17, 0x1

    .line 11
    aput v13, v0, v17

    mul-long v18, v18, v6

    int-to-long v6, v13

    add-long v18, v18, v6

    add-int/lit8 v6, v12, 0x1

    .line 14
    aget v13, p1, v12

    if-eq v13, v11, :cond_76

    if-eq v13, v10, :cond_76

    if-eq v13, v5, :cond_76

    if-eq v13, v9, :cond_76

    if-eq v13, v4, :cond_76

    if-eq v13, v3, :cond_76

    if-ne v13, v2, :cond_4d

    goto :goto_76

    .line 26
    :cond_4d
    rem-int/lit8 v7, v14, 0x5

    if-nez v7, :cond_6c

    if-lez v14, :cond_6c

    const/4 v7, 0x0

    :goto_54
    if-ge v7, v8, :cond_68

    rsub-int/lit8 v12, v7, 0x5

    mul-int/lit8 v12, v12, 0x8

    shr-long v2, v18, v12

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 30
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v7, v7, 0x1

    const/16 v2, 0x39a

    const/16 v3, 0x39b

    goto :goto_54

    :cond_68
    move v12, v6

    const-wide/16 v6, 0x384

    goto :goto_27

    :cond_6c
    move v12, v6

    move/from16 v17, v14

    const/16 v2, 0x39a

    const/16 v3, 0x39b

    const-wide/16 v6, 0x384

    goto :goto_2b

    :cond_76
    :goto_76
    add-int/lit8 v12, v6, -0x1

    move/from16 v17, v14

    const/16 v2, 0x39a

    const/16 v3, 0x39b

    const-wide/16 v6, 0x384

    const/16 v16, 0x1

    goto :goto_2b

    .line 39
    :cond_83
    aget v2, p1, v15

    if-ne v12, v2, :cond_8e

    if-ge v13, v11, :cond_8e

    add-int/lit8 v2, v17, 0x1

    .line 40
    aput v13, v0, v17

    goto :goto_90

    :cond_8e
    move/from16 v2, v17

    :goto_90
    if-ge v15, v2, :cond_101

    .line 47
    aget v3, v0, v15

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_90

    :cond_9b
    if-ne v0, v9, :cond_ff

    move/from16 v0, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    .line 56
    :goto_a3
    aget v12, p1, v15

    if-ge v0, v12, :cond_fd

    if-nez v2, :cond_fd

    add-int/lit8 v12, v0, 0x1

    .line 57
    aget v0, p1, v0

    if-ge v0, v11, :cond_bd

    add-int/lit8 v3, v3, 0x1

    const-wide/16 v13, 0x384

    mul-long v6, v6, v13

    int-to-long v13, v0

    add-long/2addr v6, v13

    move v0, v12

    const/16 v13, 0x39b

    const/16 v14, 0x39a

    goto :goto_da

    :cond_bd
    if-eq v0, v11, :cond_d2

    if-eq v0, v10, :cond_d2

    if-eq v0, v5, :cond_d2

    if-eq v0, v9, :cond_d2

    if-eq v0, v4, :cond_d2

    const/16 v13, 0x39b

    const/16 v14, 0x39a

    if-eq v0, v13, :cond_d6

    if-ne v0, v14, :cond_d0

    goto :goto_d6

    :cond_d0
    move v0, v12

    goto :goto_da

    :cond_d2
    const/16 v13, 0x39b

    const/16 v14, 0x39a

    :cond_d6
    :goto_d6
    add-int/lit8 v12, v12, -0x1

    move v0, v12

    const/4 v2, 0x1

    .line 74
    :goto_da
    rem-int/lit8 v12, v3, 0x5

    if-nez v12, :cond_f8

    if-lez v3, :cond_f8

    const/4 v3, 0x0

    :goto_e1
    if-ge v3, v8, :cond_f5

    rsub-int/lit8 v12, v3, 0x5

    mul-int/lit8 v12, v12, 0x8

    shr-long v4, v6, v12

    long-to-int v5, v4

    int-to-byte v4, v5

    .line 78
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x3a0

    const/16 v5, 0x386

    goto :goto_e1

    :cond_f5
    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    :cond_f8
    const/16 v4, 0x3a0

    const/16 v5, 0x386

    goto :goto_a3

    :cond_fd
    move v12, v0

    goto :goto_101

    :cond_ff
    move/from16 v12, p3

    .line 85
    :cond_101
    :goto_101
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v1, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v12
.end method

.method static decode([ILjava/lang/String;)Lcom/dcloud/zxing2/common/DecoderResult;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->DEFAULT_ENCODING:Ljava/nio/charset/Charset;

    const/4 v3, 0x1

    .line 5
    aget v3, p0, v3

    .line 6
    new-instance v4, Lcom/dcloud/zxing2/pdf417/PDF417ResultMetadata;

    invoke-direct {v4}, Lcom/dcloud/zxing2/pdf417/PDF417ResultMetadata;-><init>()V

    :goto_13
    const/4 v5, 0x0

    .line 7
    aget v5, p0, v5

    if-ge v2, v5, :cond_75

    const/16 v5, 0x391

    if-eq v3, v5, :cond_5c

    packed-switch v3, :pswitch_data_8e

    packed-switch v3, :pswitch_data_98

    add-int/lit8 v2, v2, -0x1

    .line 47
    invoke-static {p0, v2, v0}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_65

    .line 68
    :pswitch_29
    invoke-static {p0, v2, v0}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_65

    .line 70
    :pswitch_2e
    invoke-static {p0, v2, v0}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_65

    .line 48
    :pswitch_33
    invoke-static {p0, v2, v4}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->decodeMacroBlock([IILcom/dcloud/zxing2/pdf417/PDF417ResultMetadata;)I

    move-result v2

    goto :goto_65

    :pswitch_38
    add-int/lit8 v1, v2, 0x1

    .line 49
    aget v2, p0, v2

    .line 50
    invoke-static {v2}, Lcom/dcloud/zxing2/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/dcloud/zxing2/common/CharacterSetECI;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    move-object v6, v2

    move v2, v1

    move-object v1, v6

    goto :goto_65

    :pswitch_4c
    add-int/lit8 v2, v2, 0x2

    goto :goto_65

    :pswitch_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    .line 69
    :pswitch_52
    invoke-static {v3, p0, v1, v2, v0}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_65

    .line 67
    :pswitch_57
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    :cond_5c
    add-int/lit8 v3, v2, 0x1

    .line 77
    aget v2, p0, v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    .line 110
    :goto_65
    array-length v3, p0

    if-ge v2, v3, :cond_70

    add-int/lit8 v3, v2, 0x1

    .line 111
    aget v2, p0, v2

    move v6, v3

    move v3, v2

    move v2, v6

    goto :goto_13

    .line 113
    :cond_70
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    .line 116
    :cond_75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eqz p0, :cond_89

    .line 119
    new-instance p0, Lcom/dcloud/zxing2/common/DecoderResult;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1, p1}, Lcom/dcloud/zxing2/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, v4}, Lcom/dcloud/zxing2/common/DecoderResult;->setOther(Ljava/lang/Object;)V

    return-object p0

    .line 121
    :cond_89
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    :pswitch_data_8e
    .packed-switch 0x384
        :pswitch_2e
        :pswitch_52
        :pswitch_29
    .end packed-switch

    :pswitch_data_98
    .packed-switch 0x39a
        :pswitch_57
        :pswitch_57
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_38
        :pswitch_33
    .end packed-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    const/4 v3, 0x1

    if-ge v2, p1, :cond_20

    .line 3
    sget-object v4, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sub-int v5, p1, v2

    sub-int/2addr v5, v3

    aget-object v3, v4, v5

    aget v4, p0, v2

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 5
    :cond_20
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x31

    if-ne p1, v0, :cond_31

    .line 9
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :cond_31
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static decodeMacroBlock([IILcom/dcloud/zxing2/pdf417/PDF417ResultMetadata;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    .line 1
    aget v2, p0, v1

    if-gt v0, v2, :cond_79

    const/4 v0, 0x2

    new-array v2, v0, [I

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v0, :cond_16

    .line 7
    aget v4, p0, p1

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 9
    :cond_16
    invoke-static {v2, v0}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/dcloud/zxing2/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    invoke-static {p0, p1, v0}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/dcloud/zxing2/pdf417/PDF417ResultMetadata;->setFileId(Ljava/lang/String;)V

    .line 16
    aget v0, p0, p1

    const/16 v2, 0x39b

    const/16 v3, 0x39a

    const/4 v4, 0x1

    if-ne v0, v2, :cond_6f

    add-int/lit8 p1, p1, 0x1

    .line 18
    aget v0, p0, v1

    sub-int/2addr v0, p1

    new-array v0, v0, [I

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 22
    :goto_43
    aget v6, p0, v1

    if-ge p1, v6, :cond_67

    if-nez v2, :cond_67

    add-int/lit8 v6, p1, 0x1

    .line 23
    aget p1, p0, p1

    const/16 v7, 0x384

    if-ge p1, v7, :cond_58

    add-int/lit8 v7, v5, 0x1

    .line 25
    aput p1, v0, v5

    move p1, v6

    move v5, v7

    goto :goto_43

    :cond_58
    if-ne p1, v3, :cond_62

    .line 29
    invoke-virtual {p2, v4}, Lcom/dcloud/zxing2/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    add-int/lit8 v6, v6, 0x1

    move p1, v6

    const/4 v2, 0x1

    goto :goto_43

    .line 34
    :cond_62
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0

    .line 39
    :cond_67
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/dcloud/zxing2/pdf417/PDF417ResultMetadata;->setOptionalData([I)V

    goto :goto_78

    .line 40
    :cond_6f
    aget p0, p0, p1

    if-ne p0, v3, :cond_78

    .line 41
    invoke-virtual {p2, v4}, Lcom/dcloud/zxing2/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    add-int/lit8 p1, p1, 0x1

    :cond_78
    :goto_78
    return p1

    .line 42
    :cond_79
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static decodeTextCompaction([I[IILjava/lang/StringBuilder;)V
    .registers 20

    move-object/from16 v0, p3

    .line 1
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    const/4 v2, 0x0

    move/from16 v4, p2

    move-object v3, v1

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v4, :cond_102

    .line 5
    aget v6, p0, v5

    .line 7
    sget-object v7, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$dcloud$zxing2$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/16 v8, 0x20

    const/16 v9, 0x1c

    const/16 v10, 0x1b

    const/16 v11, 0x391

    const/16 v12, 0x384

    const/16 v13, 0x1d

    const/16 v14, 0x1a

    packed-switch v7, :pswitch_data_104

    goto/16 :goto_f8

    :pswitch_28
    if-ge v6, v13, :cond_2f

    .line 116
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v1, v1, v6

    goto :goto_47

    :cond_2f
    if-ne v6, v13, :cond_34

    .line 119
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_80

    :cond_34
    if-ne v6, v11, :cond_3d

    .line 123
    aget v1, p1, v5

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_53

    :cond_3d
    if-ne v6, v12, :cond_53

    .line 125
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_80

    :pswitch_42
    if-ge v6, v14, :cond_4b

    add-int/lit8 v6, v6, 0x41

    int-to-char v1, v6

    :goto_47
    move v8, v1

    :goto_48
    move-object v1, v3

    goto/16 :goto_f4

    :cond_4b
    if-ne v6, v14, :cond_4e

    goto :goto_48

    :cond_4e
    if-ne v6, v12, :cond_53

    .line 126
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_80

    :cond_53
    :goto_53
    move-object v1, v3

    goto/16 :goto_b4

    :pswitch_56
    if-ge v6, v13, :cond_5e

    .line 127
    sget-object v7, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v8, v7, v6

    goto/16 :goto_f9

    :cond_5e
    if-ne v6, v13, :cond_63

    .line 130
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_80

    :cond_63
    if-ne v6, v11, :cond_6d

    .line 132
    aget v6, p1, v5

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_f8

    :cond_6d
    if-ne v6, v12, :cond_f8

    .line 134
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_80

    :pswitch_72
    const/16 v7, 0x19

    if-ge v6, v7, :cond_7c

    .line 135
    sget-object v7, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v8, v7, v6

    goto/16 :goto_f9

    :cond_7c
    if-ne v6, v7, :cond_86

    .line 138
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    :goto_80
    const/4 v8, 0x0

    move-object v15, v3

    move-object v3, v1

    move-object v1, v15

    goto/16 :goto_f4

    :cond_86
    if-ne v6, v14, :cond_8a

    goto/16 :goto_f9

    :cond_8a
    if-ne v6, v10, :cond_8f

    .line 142
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_80

    :cond_8f
    if-ne v6, v9, :cond_94

    .line 144
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_80

    :cond_94
    if-ne v6, v13, :cond_99

    .line 148
    sget-object v3, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_b4

    :cond_99
    if-ne v6, v11, :cond_a3

    .line 150
    aget v6, p1, v5

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_f8

    :cond_a3
    if-ne v6, v12, :cond_f8

    .line 152
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_80

    :pswitch_a8
    if-ge v6, v14, :cond_ad

    add-int/lit8 v6, v6, 0x61

    goto :goto_d2

    :cond_ad
    if-ne v6, v14, :cond_b0

    goto :goto_f9

    :cond_b0
    if-ne v6, v10, :cond_b6

    .line 153
    sget-object v3, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    :goto_b4
    const/4 v8, 0x0

    goto :goto_f4

    :cond_b6
    if-ne v6, v9, :cond_bb

    .line 155
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_80

    :cond_bb
    if-ne v6, v13, :cond_c0

    .line 159
    sget-object v3, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_b4

    :cond_c0
    if-ne v6, v11, :cond_c9

    .line 162
    aget v6, p1, v5

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f8

    :cond_c9
    if-ne v6, v12, :cond_f8

    .line 164
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_80

    :pswitch_ce
    if-ge v6, v14, :cond_d4

    add-int/lit8 v6, v6, 0x41

    :goto_d2
    int-to-char v8, v6

    goto :goto_f9

    :cond_d4
    if-ne v6, v14, :cond_d7

    goto :goto_f9

    :cond_d7
    if-ne v6, v10, :cond_dc

    .line 165
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_80

    :cond_dc
    if-ne v6, v9, :cond_e1

    .line 167
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_80

    :cond_e1
    if-ne v6, v13, :cond_e6

    .line 171
    sget-object v3, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_b4

    :cond_e6
    if-ne v6, v11, :cond_ef

    .line 173
    aget v6, p1, v5

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f8

    :cond_ef
    if-ne v6, v12, :cond_f8

    .line 175
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_80

    :goto_f4
    move-object v15, v3

    move-object v3, v1

    move-object v1, v15

    goto :goto_f9

    :cond_f8
    :goto_f8
    const/4 v8, 0x0

    :goto_f9
    if-eqz v8, :cond_fe

    .line 280
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_fe
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_9

    :cond_102
    return-void

    nop

    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_ce
        :pswitch_a8
        :pswitch_72
        :pswitch_56
        :pswitch_42
        :pswitch_28
    .end packed-switch
.end method

.method private static numericCompaction([IILjava/lang/StringBuilder;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    const/16 v0, 0xf

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_7
    aget v4, p0, v1

    if-ge p1, v4, :cond_4f

    if-nez v2, :cond_4f

    add-int/lit8 v4, p1, 0x1

    .line 4
    aget p1, p0, p1

    .line 5
    aget v5, p0, v1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_17

    const/4 v2, 0x1

    :cond_17
    const/16 v5, 0x384

    if-ge p1, v5, :cond_20

    .line 9
    aput p1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    :cond_20
    if-eq p1, v5, :cond_36

    const/16 v5, 0x385

    if-eq p1, v5, :cond_36

    const/16 v5, 0x39c

    if-eq p1, v5, :cond_36

    const/16 v5, 0x3a0

    if-eq p1, v5, :cond_36

    const/16 v5, 0x39b

    if-eq p1, v5, :cond_36

    const/16 v5, 0x39a

    if-ne p1, v5, :cond_39

    :cond_36
    add-int/lit8 v4, v4, -0x1

    const/4 v2, 0x1

    .line 22
    :cond_39
    :goto_39
    rem-int/lit8 v5, v3, 0xf

    if-eqz v5, :cond_43

    const/16 v5, 0x386

    if-eq p1, v5, :cond_43

    if-eqz v2, :cond_4d

    :cond_43
    if-lez v3, :cond_4d

    .line 30
    invoke-static {v0, v3}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :cond_4d
    move p1, v4

    goto :goto_7

    :cond_4f
    return p1
.end method

.method private static textCompaction([IILjava/lang/StringBuilder;)I
    .registers 11

    const/4 v0, 0x0

    .line 1
    aget v1, p0, v0

    sub-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 3
    aget v2, p0, v0

    sub-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 7
    :goto_11
    aget v5, p0, v0

    if-ge p1, v5, :cond_51

    if-nez v3, :cond_51

    add-int/lit8 v5, p1, 0x1

    .line 8
    aget p1, p0, p1

    const/16 v6, 0x384

    if-ge p1, v6, :cond_2d

    .line 10
    div-int/lit8 v6, p1, 0x1e

    aput v6, v1, v4

    add-int/lit8 v6, v4, 0x1

    .line 11
    rem-int/lit8 p1, p1, 0x1e

    aput p1, v1, v6

    add-int/lit8 v4, v4, 0x2

    :goto_2b
    move p1, v5

    goto :goto_11

    :cond_2d
    const/16 v7, 0x391

    if-eq p1, v7, :cond_46

    const/16 v7, 0x3a0

    if-eq p1, v7, :cond_42

    packed-switch p1, :pswitch_data_56

    packed-switch p1, :pswitch_data_60

    goto :goto_2b

    :pswitch_3c
    add-int/lit8 p1, v4, 0x1

    .line 38
    aput v6, v1, v4

    move v4, p1

    goto :goto_2b

    :cond_42
    :pswitch_42
    add-int/lit8 p1, v5, -0x1

    const/4 v3, 0x1

    goto :goto_11

    .line 35
    :cond_46
    aput v7, v1, v4

    add-int/lit8 p1, v5, 0x1

    .line 36
    aget v5, p0, v5

    .line 37
    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 64
    :cond_51
    invoke-static {v1, v2, v4, p2}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuilder;)V

    return p1

    nop

    :pswitch_data_56
    .packed-switch 0x384
        :pswitch_3c
        :pswitch_42
        :pswitch_42
    .end packed-switch

    :pswitch_data_60
    .packed-switch 0x39a
        :pswitch_42
        :pswitch_42
        :pswitch_42
    .end packed-switch
.end method

###### Class com.dcloud.zxing2.pdf417.decoder.DecodedBitStreamParser.AnonymousClass1 (com.dcloud.zxing2.pdf417.decoder.DecodedBitStreamParser$1)
.class synthetic Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$dcloud$zxing2$pdf417$decoder$DecodedBitStreamParser$Mode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->values()[Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$dcloud$zxing2$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    :try_start_9
    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$dcloud$zxing2$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$dcloud$zxing2$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$dcloud$zxing2$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$dcloud$zxing2$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$dcloud$zxing2$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    sget-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    return-void
.end method

###### Class com.dcloud.zxing2.pdf417.decoder.DecodedBitStreamParser.Mode (com.dcloud.zxing2.pdf417.decoder.DecodedBitStreamParser$Mode)
.class final enum Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

.field public static final enum ALPHA:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

.field public static final enum ALPHA_SHIFT:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

.field public static final enum LOWER:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

.field public static final enum MIXED:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

.field public static final enum PUNCT:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

.field public static final enum PUNCT_SHIFT:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 1
    new-instance v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    const-string v1, "ALPHA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 2
    new-instance v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    const-string v3, "LOWER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 3
    new-instance v3, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    const-string v5, "MIXED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 4
    new-instance v5, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    const-string v7, "PUNCT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 5
    new-instance v7, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    const-string v9, "ALPHA_SHIFT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 6
    new-instance v9, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    const-string v11, "PUNCT_SHIFT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->$VALUES:[Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;
    .registers 2

    .line 1
    const-class v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    return-object p0
.end method

.method public static values()[Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;
    .registers 1

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->$VALUES:[Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    invoke-virtual {v0}, [Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dcloud/zxing2/pdf417/decoder/DecodedBitStreamParser$Mode;

    return-object v0
.end method
