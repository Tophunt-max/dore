###### Class com.dcloud.zxing2.datamatrix.encoder.X12Encoder (com.dcloud.zxing2.datamatrix.encoder.X12Encoder)
.class final Lcom/dcloud/zxing2/datamatrix/encoder/X12Encoder;
.super Lcom/dcloud/zxing2/datamatrix/encoder/C40Encoder;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/zxing2/datamatrix/encoder/C40Encoder;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;)V
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    :cond_5
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 3
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v1

    .line 4
    iget v2, p1, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    .line 6
    invoke-virtual {p0, v1, v0}, Lcom/dcloud/zxing2/datamatrix/encoder/X12Encoder;->encodeChar(CLjava/lang/StringBuilder;)I

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 9
    rem-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_5

    .line 10
    invoke-static {p1, v0}, Lcom/dcloud/zxing2/datamatrix/encoder/C40Encoder;->writeNextTriplet(Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    .line 12
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {p0}, Lcom/dcloud/zxing2/datamatrix/encoder/X12Encoder;->getEncodingMode()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->lookAheadTest(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 13
    invoke-virtual {p0}, Lcom/dcloud/zxing2/datamatrix/encoder/X12Encoder;->getEncodingMode()I

    move-result v2

    if-eq v1, v2, :cond_5

    .line 14
    invoke-virtual {p1, v1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 19
    :cond_3a
    invoke-virtual {p0, p1, v0}, Lcom/dcloud/zxing2/datamatrix/encoder/X12Encoder;->handleEOD(Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method encodeChar(CLjava/lang/StringBuilder;)I
    .registers 6

    const/4 v0, 0x1

    const/16 v1, 0xd

    if-ne p1, v1, :cond_a

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_47

    :cond_a
    const/16 v1, 0x2a

    if-ne p1, v1, :cond_12

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_47

    :cond_12
    const/16 v1, 0x3e

    if-ne p1, v1, :cond_1b

    const/4 p1, 0x2

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_47

    :cond_1b
    const/16 v1, 0x20

    if-ne p1, v1, :cond_24

    const/4 p1, 0x3

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_47

    :cond_24
    const/16 v1, 0x30

    if-lt p1, v1, :cond_34

    const/16 v2, 0x39

    if-gt p1, v2, :cond_34

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x4

    int-to-char p1, p1

    .line 9
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_47

    :cond_34
    const/16 v1, 0x41

    if-lt p1, v1, :cond_44

    const/16 v2, 0x5a

    if-gt p1, v2, :cond_44

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0xe

    int-to-char p1, p1

    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_47

    .line 13
    :cond_44
    invoke-static {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->illegalCharacter(C)V

    :goto_47
    return v0
.end method

.method public getEncodingMode()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method handleEOD(Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->updateSymbolInfo()V

    .line 2
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v0

    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 3
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    .line 4
    iget v1, p1, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    sub-int/2addr v1, p2

    iput v1, p1, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    .line 5
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getRemainingCharacters()I

    move-result p2

    const/4 v1, 0x1

    if-gt p2, v1, :cond_28

    if-gt v0, v1, :cond_28

    .line 6
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getRemainingCharacters()I

    move-result p2

    if-eq p2, v0, :cond_2d

    :cond_28
    const/16 p2, 0xfe

    .line 7
    invoke-virtual {p1, p2}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 9
    :cond_2d
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getNewEncoding()I

    move-result p2

    if-gez p2, :cond_37

    const/4 p2, 0x0

    .line 10
    invoke-virtual {p1, p2}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    :cond_37
    return-void
.end method
