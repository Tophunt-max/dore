###### Class com.dcloud.zxing2.oned.rss.expanded.decoders.GeneralAppIdDecoder (com.dcloud.zxing2.oned.rss.expanded.decoders.GeneralAppIdDecoder)
.class final Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final buffer:Ljava/lang/StringBuilder;

.field private final current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

.field private final information:Lcom/dcloud/zxing2/common/BitArray;


# direct methods
.method constructor <init>(Lcom/dcloud/zxing2/common/BitArray;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-direct {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;-><init>()V

    iput-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    .line 6
    iput-object p1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    return-void
.end method

.method private decodeAlphanumeric(I)Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;
    .registers 5

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_12

    .line 3
    new-instance v1, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;

    add-int/2addr p1, v0

    const/16 v0, 0x24

    invoke-direct {v1, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    return-object v1

    :cond_12
    if-lt v1, v0, :cond_21

    if-ge v1, v2, :cond_21

    .line 7
    new-instance v2, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;

    add-int/2addr p1, v0

    add-int/lit8 v1, v1, 0x30

    sub-int/2addr v1, v0

    int-to-char v0, v1

    invoke-direct {v2, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    return-object v2

    :cond_21
    const/4 v0, 0x6

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v1

    const/16 v2, 0x20

    if-lt v1, v2, :cond_38

    const/16 v2, 0x3a

    if-ge v1, v2, :cond_38

    .line 13
    new-instance v2, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;

    add-int/2addr p1, v0

    add-int/lit8 v1, v1, 0x21

    int-to-char v0, v1

    invoke-direct {v2, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    return-object v2

    :cond_38
    packed-switch v1, :pswitch_data_68

    .line 34
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoding invalid alphanumeric value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_52
    const/16 v1, 0x2f

    goto :goto_60

    :pswitch_55
    const/16 v1, 0x2e

    goto :goto_60

    :pswitch_58
    const/16 v1, 0x2d

    goto :goto_60

    :pswitch_5b
    const/16 v1, 0x2c

    goto :goto_60

    :pswitch_5e
    const/16 v1, 0x2a

    .line 36
    :goto_60
    new-instance v2, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;

    add-int/2addr p1, v0

    invoke-direct {v2, p1, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    return-object v2

    nop

    :pswitch_data_68
    .packed-switch 0x3a
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_55
        :pswitch_52
    .end packed-switch
.end method

.method private decodeIsoIec646(I)Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_12

    .line 3
    new-instance v1, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;

    add-int/2addr p1, v0

    const/16 v0, 0x24

    invoke-direct {v1, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    return-object v1

    :cond_12
    if-lt v1, v0, :cond_21

    if-ge v1, v2, :cond_21

    .line 7
    new-instance v2, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;

    add-int/2addr p1, v0

    add-int/lit8 v1, v1, 0x30

    sub-int/2addr v1, v0

    int-to-char v0, v1

    invoke-direct {v2, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    return-object v2

    :cond_21
    const/4 v0, 0x7

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v1

    const/16 v2, 0x40

    const/16 v3, 0x5a

    if-lt v1, v2, :cond_38

    if-ge v1, v3, :cond_38

    .line 13
    new-instance v2, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;

    add-int/2addr p1, v0

    add-int/lit8 v1, v1, 0x1

    int-to-char v0, v1

    invoke-direct {v2, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    return-object v2

    :cond_38
    if-lt v1, v3, :cond_47

    const/16 v2, 0x74

    if-ge v1, v2, :cond_47

    .line 17
    new-instance v2, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;

    add-int/2addr p1, v0

    add-int/2addr v1, v0

    int-to-char v0, v1

    invoke-direct {v2, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    return-object v2

    :cond_47
    const/16 v0, 0x8

    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v1

    packed-switch v1, :pswitch_data_9a

    .line 87
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p1

    throw p1

    :pswitch_55
    const/16 v1, 0x20

    goto :goto_93

    :pswitch_58
    const/16 v1, 0x5f

    goto :goto_93

    :pswitch_5b
    const/16 v1, 0x3f

    goto :goto_93

    :pswitch_5e
    const/16 v1, 0x3e

    goto :goto_93

    :pswitch_61
    const/16 v1, 0x3d

    goto :goto_93

    :pswitch_64
    const/16 v1, 0x3c

    goto :goto_93

    :pswitch_67
    const/16 v1, 0x3b

    goto :goto_93

    :pswitch_6a
    const/16 v1, 0x3a

    goto :goto_93

    :pswitch_6d
    const/16 v1, 0x2f

    goto :goto_93

    :pswitch_70
    const/16 v1, 0x2e

    goto :goto_93

    :pswitch_73
    const/16 v1, 0x2d

    goto :goto_93

    :pswitch_76
    const/16 v1, 0x2c

    goto :goto_93

    :pswitch_79
    const/16 v1, 0x2b

    goto :goto_93

    :pswitch_7c
    const/16 v1, 0x2a

    goto :goto_93

    :pswitch_7f
    const/16 v1, 0x29

    goto :goto_93

    :pswitch_82
    const/16 v1, 0x28

    goto :goto_93

    :pswitch_85
    const/16 v1, 0x27

    goto :goto_93

    :pswitch_88
    const/16 v1, 0x26

    goto :goto_93

    :pswitch_8b
    const/16 v1, 0x25

    goto :goto_93

    :pswitch_8e
    const/16 v1, 0x22

    goto :goto_93

    :pswitch_91
    const/16 v1, 0x21

    .line 89
    :goto_93
    new-instance v2, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;

    add-int/2addr p1, v0

    invoke-direct {v2, p1, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;-><init>(IC)V

    return-object v2

    :pswitch_data_9a
    .packed-switch 0xe8
        :pswitch_91
        :pswitch_8e
        :pswitch_8b
        :pswitch_88
        :pswitch_85
        :pswitch_82
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_76
        :pswitch_73
        :pswitch_70
        :pswitch_6d
        :pswitch_6a
        :pswitch_67
        :pswitch_64
        :pswitch_61
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_55
    .end packed-switch
.end method

.method private decodeNumeric(I)Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x7

    .line 1
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v1

    if-le v0, v1, :cond_2d

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result p1

    const/16 v0, 0xa

    if-nez p1, :cond_1f

    .line 4
    new-instance p1, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;

    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v1

    invoke-direct {p1, v1, v0, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;-><init>(III)V

    return-object p1

    .line 6
    :cond_1f
    new-instance v1, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;

    iget-object v2, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v2}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v2

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v1, v2, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;-><init>(III)V

    return-object v1

    :cond_2d
    const/4 v1, 0x7

    .line 8
    invoke-virtual {p0, p1, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result p1

    add-int/lit8 p1, p1, -0x8

    .line 10
    div-int/lit8 v1, p1, 0xb

    .line 11
    rem-int/lit8 p1, p1, 0xb

    .line 13
    new-instance v2, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;

    invoke-direct {v2, v0, v1, p1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;-><init>(III)V

    return-object v2
.end method

.method static extractNumericValueFromBitArray(Lcom/dcloud/zxing2/common/BitArray;II)I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v0, p2, :cond_16

    add-int v2, p1, v0

    .line 2
    invoke-virtual {p0, v2}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_13

    sub-int v2, p2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_16
    return v1
.end method

.method private isAlphaOr646ToNumericLatch(I)Z
    .registers 5

    add-int/lit8 v0, p1, 0x3

    .line 1
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_c

    return v2

    :cond_c
    :goto_c
    if-ge p1, v0, :cond_1a

    .line 6
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v1, p1}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_17

    return v2

    :cond_17
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    :cond_1a
    const/4 p1, 0x1

    return p1
.end method

.method private isAlphaTo646ToAlphaLatch(I)Z
    .registers 6

    add-int/lit8 v0, p1, 0x1

    .line 1
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_c

    return v2

    :cond_c
    const/4 v0, 0x0

    :goto_d
    const/4 v1, 0x5

    if-ge v0, v1, :cond_34

    add-int v1, v0, p1

    .line 5
    iget-object v3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v3}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v3

    if-ge v1, v3, :cond_34

    const/4 v3, 0x2

    if-ne v0, v3, :cond_28

    .line 7
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {v1, v3}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_31

    return v2

    .line 10
    :cond_28
    iget-object v3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v3, v1}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_31

    return v2

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_34
    const/4 p1, 0x1

    return p1
.end method

.method private isNumericToAlphaNumericLatch(I)Z
    .registers 6

    add-int/lit8 v0, p1, 0x1

    .line 1
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_c

    return v2

    :cond_c
    const/4 v0, 0x0

    :goto_d
    const/4 v1, 0x4

    if-ge v0, v1, :cond_26

    add-int v1, v0, p1

    .line 5
    iget-object v3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v3}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v3

    if-ge v1, v3, :cond_26

    .line 6
    iget-object v3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v3, v1}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_23

    return v2

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_26
    const/4 p1, 0x1

    return p1
.end method

.method private isStillAlpha(I)Z
    .registers 7

    add-int/lit8 v0, p1, 0x5

    .line 1
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_c

    return v2

    :cond_c
    const/4 v0, 0x5

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v1

    const/4 v3, 0x1

    const/16 v4, 0x10

    if-lt v1, v0, :cond_19

    if-ge v1, v4, :cond_19

    return v3

    :cond_19
    add-int/lit8 v0, p1, 0x6

    .line 11
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v1

    if-le v0, v1, :cond_24

    return v2

    :cond_24
    const/4 v0, 0x6

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result p1

    if-lt p1, v4, :cond_30

    const/16 v0, 0x3f

    if-ge p1, v0, :cond_30

    const/4 v2, 0x1

    :cond_30
    return v2
.end method

.method private isStillIsoIec646(I)Z
    .registers 6

    add-int/lit8 v0, p1, 0x5

    .line 1
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_c

    return v2

    :cond_c
    const/4 v0, 0x5

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v1

    const/4 v3, 0x1

    if-lt v1, v0, :cond_19

    const/16 v0, 0x10

    if-ge v1, v0, :cond_19

    return v3

    :cond_19
    add-int/lit8 v0, p1, 0x7

    .line 10
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v1

    if-le v0, v1, :cond_24

    return v2

    :cond_24
    const/4 v0, 0x7

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v0

    const/16 v1, 0x40

    if-lt v0, v1, :cond_32

    const/16 v1, 0x74

    if-ge v0, v1, :cond_32

    return v3

    :cond_32
    add-int/lit8 v0, p1, 0x8

    .line 19
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v1

    if-le v0, v1, :cond_3d

    return v2

    :cond_3d
    const/16 v0, 0x8

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result p1

    const/16 v0, 0xe8

    if-lt p1, v0, :cond_4c

    const/16 v0, 0xfd

    if-ge p1, v0, :cond_4c

    const/4 v2, 0x1

    :cond_4c
    return v2
.end method

.method private isStillNumeric(I)Z
    .registers 5

    add-int/lit8 v0, p1, 0x7

    .line 1
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v1, :cond_18

    add-int/lit8 p1, p1, 0x4

    .line 2
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v0

    if-gt p1, v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    return v2

    :cond_18
    move v0, p1

    :goto_19
    add-int/lit8 v1, p1, 0x3

    if-ge v0, v1, :cond_29

    .line 6
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v1, v0}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_26

    return v2

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 11
    :cond_29
    iget-object p1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {p1, v1}, Lcom/dcloud/zxing2/common/BitArray;->get(I)Z

    move-result p1

    return p1
.end method

.method private parseAlphaBlock()Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;
    .registers 4

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isStillAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeAlphanumeric(I)Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedObject;->getNewPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V

    .line 5
    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;->isFNC1()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 6
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;

    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v1

    iget-object v2, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    .line 7
    new-instance v1, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;Z)V

    return-object v1

    .line 10
    :cond_3d
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;->getValue()C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 13
    :cond_47
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isAlphaOr646ToNumericLatch(I)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 14
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->incrementPosition(I)V

    .line 15
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->setNumeric()V

    goto :goto_91

    .line 16
    :cond_5f
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isAlphaTo646ToAlphaLatch(I)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 17
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    const/4 v1, 0x5

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v2}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_81

    .line 18
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->incrementPosition(I)V

    goto :goto_8c

    .line 20
    :cond_81
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V

    .line 23
    :goto_8c
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->setIsoIec646()V

    .line 25
    :cond_91
    :goto_91
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Z)V

    return-object v0
.end method

.method private parseBlocks()Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->isAlpha()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 4
    invoke-direct {p0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->parseAlphaBlock()Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;->isFinished()Z

    move-result v2

    goto :goto_30

    .line 6
    :cond_17
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->isIsoIec646()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 7
    invoke-direct {p0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->parseIsoIec646Block()Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;->isFinished()Z

    move-result v2

    goto :goto_30

    .line 10
    :cond_28
    invoke-direct {p0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->parseNumericBlock()Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;->isFinished()Z

    move-result v2

    .line 14
    :goto_30
    iget-object v3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v3}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v3

    if-eq v0, v3, :cond_3a

    const/4 v0, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    if-nez v0, :cond_40

    if-nez v2, :cond_40

    goto :goto_42

    :cond_40
    if-eqz v2, :cond_0

    .line 20
    :goto_42
    invoke-virtual {v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;->getDecodedInformation()Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;

    move-result-object v0

    return-object v0
.end method

.method private parseIsoIec646Block()Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isStillIsoIec646(I)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeIsoIec646(I)Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedObject;->getNewPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V

    .line 5
    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;->isFNC1()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 6
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;

    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v1

    iget-object v2, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    .line 7
    new-instance v1, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;Z)V

    return-object v1

    .line 9
    :cond_3d
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedChar;->getValue()C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 12
    :cond_47
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isAlphaOr646ToNumericLatch(I)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 13
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->incrementPosition(I)V

    .line 14
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->setNumeric()V

    goto :goto_91

    .line 15
    :cond_5f
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isAlphaTo646ToAlphaLatch(I)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 16
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    const/4 v1, 0x5

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v2}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_81

    .line 17
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->incrementPosition(I)V

    goto :goto_8c

    .line 19
    :cond_81
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V

    .line 22
    :goto_8c
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->setAlpha()V

    .line 24
    :cond_91
    :goto_91
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Z)V

    return-object v0
.end method

.method private parseNumericBlock()Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isStillNumeric(I)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 2
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeNumeric(I)Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedObject;->getNewPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V

    .line 5
    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;->isFirstDigitFNC1()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5a

    .line 7
    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;->isSecondDigitFNC1()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 8
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;

    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v1

    iget-object v3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    goto :goto_54

    .line 10
    :cond_3e
    new-instance v1, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;

    iget-object v3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v3}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v3

    iget-object v4, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;->getSecondDigit()I

    move-result v0

    invoke-direct {v1, v3, v4, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;I)V

    move-object v0, v1

    .line 12
    :goto_54
    new-instance v1, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;

    invoke-direct {v1, v0, v2}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;Z)V

    return-object v1

    .line 14
    :cond_5a
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;->getFirstDigit()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;->isSecondDigitFNC1()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 17
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;

    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v1

    iget-object v3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    .line 18
    new-instance v1, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;

    invoke-direct {v1, v0, v2}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;Z)V

    return-object v1

    .line 20
    :cond_80
    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;->getSecondDigit()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 23
    :cond_8b
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->isNumericToAlphaNumericLatch(I)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 24
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->setAlpha()V

    .line 25
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->incrementPosition(I)V

    .line 27
    :cond_a2
    new-instance v0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/BlockParsedResult;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method decodeAllCodes(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/NotFoundException;,
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    .line 1
    :goto_2
    invoke-virtual {p0, p2, v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeGeneralPurposeField(ILjava/lang/String;)Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;->getNewString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_13
    invoke-virtual {v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;->isRemaining()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 7
    invoke-virtual {v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;->getRemainingValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_23

    :cond_22
    move-object v2, v0

    .line 12
    :goto_23
    invoke-virtual {v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedObject;->getNewPosition()I

    move-result v3

    if-ne p2, v3, :cond_2e

    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 19
    :cond_2e
    invoke-virtual {v1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedObject;->getNewPosition()I

    move-result p2

    move-object v1, v2

    goto :goto_2
.end method

.method decodeGeneralPurposeField(ILjava/lang/String;)Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eqz p2, :cond_d

    .line 4
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_d
    iget-object p2, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {p2, p1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->setPosition(I)V

    .line 9
    invoke-direct {p0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->parseBlocks()Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 10
    invoke-virtual {p1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;->isRemaining()Z

    move-result p2

    if-eqz p2, :cond_34

    .line 11
    new-instance p2, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;

    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result v0

    iget-object v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;->getRemainingValue()I

    move-result p1

    invoke-direct {p2, v0, v1, p1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;I)V

    return-object p2

    .line 13
    :cond_34
    new-instance p1, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;

    iget-object p2, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->current:Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;

    invoke-virtual {p2}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/CurrentParsingState;->getPosition()I

    move-result p2

    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedInformation;-><init>(ILjava/lang/String;)V

    return-object p1
.end method

.method extractNumericValueFromBitArray(II)I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->information:Lcom/dcloud/zxing2/common/BitArray;

    invoke-static {v0, p1, p2}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(Lcom/dcloud/zxing2/common/BitArray;II)I

    move-result p1

    return p1
.end method
