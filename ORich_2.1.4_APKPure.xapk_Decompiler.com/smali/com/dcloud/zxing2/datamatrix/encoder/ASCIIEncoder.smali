###### Class com.dcloud.zxing2.datamatrix.encoder.ASCIIEncoder (com.dcloud.zxing2.datamatrix.encoder.ASCIIEncoder)
.class final Lcom/dcloud/zxing2/datamatrix/encoder/ASCIIEncoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dcloud/zxing2/datamatrix/encoder/Encoder;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encodeASCIIDigits(CC)C
    .registers 5

    .line 1
    invoke-static {p0}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_17

    add-int/lit8 p0, p0, -0x30

    mul-int/lit8 p0, p0, 0xa

    add-int/lit8 p1, p1, -0x30

    add-int/2addr p0, p1

    add-int/lit16 p0, p0, 0x82

    int-to-char p0, p0

    return p0

    .line 5
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not digits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public encode(Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;)V
    .registers 8

    .line 1
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    invoke-static {v0, v1}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-lt v0, v1, :cond_31

    .line 3
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget v3, p1, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 4
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 5
    invoke-static {v0, v2}, Lcom/dcloud/zxing2/datamatrix/encoder/ASCIIEncoder;->encodeASCIIDigits(CC)C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 7
    iget v0, p1, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    goto/16 :goto_bc

    .line 9
    :cond_31
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v0

    .line 10
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {p0}, Lcom/dcloud/zxing2/datamatrix/encoder/ASCIIEncoder;->getEncodingMode()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->lookAheadTest(Ljava/lang/CharSequence;II)I

    move-result v3

    .line 11
    invoke-virtual {p0}, Lcom/dcloud/zxing2/datamatrix/encoder/ASCIIEncoder;->getEncodingMode()I

    move-result v4

    if-eq v3, v4, :cond_9a

    if-eq v3, v2, :cond_91

    if-eq v3, v1, :cond_88

    const/4 v0, 0x3

    if-eq v3, v0, :cond_7f

    const/4 v0, 0x4

    if-eq v3, v0, :cond_76

    const/4 v0, 0x5

    if-ne v3, v0, :cond_5f

    const/16 v1, 0xe7

    .line 35
    invoke-virtual {p1, v1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 36
    invoke-virtual {p1, v0}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    return-void

    .line 34
    :cond_5f
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_76
    const/16 v1, 0xf0

    .line 51
    invoke-virtual {p1, v1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 52
    invoke-virtual {p1, v0}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    goto :goto_bc

    :cond_7f
    const/16 v1, 0xee

    .line 53
    invoke-virtual {p1, v1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 54
    invoke-virtual {p1, v0}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    goto :goto_bc

    :cond_88
    const/16 v0, 0xef

    .line 57
    invoke-virtual {p1, v0}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 58
    invoke-virtual {p1, v1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    goto :goto_bc

    :cond_91
    const/16 v0, 0xe6

    .line 59
    invoke-virtual {p1, v0}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 60
    invoke-virtual {p1, v2}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    return-void

    .line 77
    :cond_9a
    invoke-static {v0}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v1

    if-eqz v1, :cond_b2

    const/16 v1, 0xeb

    .line 78
    invoke-virtual {p1, v1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    add-int/lit8 v0, v0, -0x80

    add-int/2addr v0, v2

    int-to-char v0, v0

    .line 79
    invoke-virtual {p1, v0}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 80
    iget v0, p1, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    goto :goto_bc

    :cond_b2
    add-int/2addr v0, v2

    int-to-char v0, v0

    .line 82
    invoke-virtual {p1, v0}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 83
    iget v0, p1, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    :goto_bc
    return-void
.end method

.method public getEncodingMode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
