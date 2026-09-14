###### Class com.dcloud.zxing2.datamatrix.encoder.C40Encoder (com.dcloud.zxing2.datamatrix.encoder.C40Encoder)
.class Lcom/dcloud/zxing2/datamatrix/encoder/C40Encoder;
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

.method private backtrackOneCharacter(Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I
    .registers 6

    .line 1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int p4, v0, p4

    .line 2
    invoke-virtual {p2, p4, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3
    iget p2, p1, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    .line 4
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result p2

    .line 5
    invoke-virtual {p0, p2, p3}, Lcom/dcloud/zxing2/datamatrix/encoder/C40Encoder;->encodeChar(CLjava/lang/StringBuilder;)I

    move-result p2

    .line 6
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->resetSymbolInfo()V

    return p2
.end method

.method private static encodeToCodewords(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    add-int/lit8 v1, p1, 0x1

    .line 2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/4 v2, 0x2

    add-int/2addr p1, v2

    .line 3
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    mul-int/lit16 v0, v0, 0x640

    mul-int/lit8 v1, v1, 0x28

    add-int/2addr v0, v1

    add-int/2addr v0, p0

    const/4 p0, 0x1

    add-int/2addr v0, p0

    .line 5
    div-int/lit16 p1, v0, 0x100

    int-to-char p1, p1

    .line 6
    rem-int/lit16 v0, v0, 0x100

    int-to-char v0, v0

    .line 7
    new-instance v1, Ljava/lang/String;

    new-array v2, v2, [C

    const/4 v3, 0x0

    aput-char p1, v2, v3

    aput-char v0, v2, p0

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method static writeNextTriplet(Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/dcloud/zxing2/datamatrix/encoder/C40Encoder;->encodeToCodewords(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->writeCodewords(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 2
    invoke-virtual {p1, v0, p0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public encode(Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;)V
    .registers 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    :cond_5
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 3
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v1

    .line 4
    iget v2, p1, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p1, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    .line 6
    invoke-virtual {p0, v1, v0}, Lcom/dcloud/zxing2/datamatrix/encoder/C40Encoder;->encodeChar(CLjava/lang/StringBuilder;)I

    move-result v1

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v4, 0x3

    div-int/2addr v2, v4

    const/4 v5, 0x2

    mul-int/lit8 v2, v2, 0x2

    .line 10
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v6

    add-int/2addr v6, v2

    .line 11
    invoke-virtual {p1, v6}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 12
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v2

    sub-int/2addr v2, v6

    .line 14
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v6

    if-nez v6, :cond_5f

    .line 16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    rem-int/2addr v7, v4

    if-ne v7, v5, :cond_4d

    if-lt v2, v5, :cond_49

    if-le v2, v5, :cond_4d

    .line 19
    :cond_49
    invoke-direct {p0, p1, v0, v6, v1}, Lcom/dcloud/zxing2/datamatrix/encoder/C40Encoder;->backtrackOneCharacter(Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I

    move-result v1

    .line 23
    :cond_4d
    :goto_4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    rem-int/2addr v5, v4

    if-ne v5, v3, :cond_7d

    if-gt v1, v4, :cond_58

    if-ne v2, v3, :cond_5a

    :cond_58
    if-le v1, v4, :cond_7d

    .line 25
    :cond_5a
    invoke-direct {p0, p1, v0, v6, v1}, Lcom/dcloud/zxing2/datamatrix/encoder/C40Encoder;->backtrackOneCharacter(Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I

    move-result v1

    goto :goto_4d

    .line 30
    :cond_5f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 31
    rem-int/2addr v1, v4

    if-nez v1, :cond_5

    .line 32
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {p0}, Lcom/dcloud/zxing2/datamatrix/encoder/C40Encoder;->getEncodingMode()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->lookAheadTest(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 33
    invoke-virtual {p0}, Lcom/dcloud/zxing2/datamatrix/encoder/C40Encoder;->getEncodingMode()I

    move-result v2

    if-eq v1, v2, :cond_5

    .line 34
    invoke-virtual {p1, v1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 39
    :cond_7d
    invoke-virtual {p0, p1, v0}, Lcom/dcloud/zxing2/datamatrix/encoder/C40Encoder;->handleEOD(Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method encodeChar(CLjava/lang/StringBuilder;)I
    .registers 7

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-ne p1, v1, :cond_a

    const/4 p1, 0x3

    .line 1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_a
    const/16 v1, 0x30

    if-lt p1, v1, :cond_1a

    const/16 v2, 0x39

    if-gt p1, v2, :cond_1a

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x4

    int-to-char p1, p1

    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_1a
    const/16 v1, 0x41

    if-lt p1, v1, :cond_2a

    const/16 v2, 0x5a

    if-gt p1, v2, :cond_2a

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0xe

    int-to-char p1, p1

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_2a
    const/4 v1, 0x2

    if-ltz p1, :cond_39

    const/16 v2, 0x1f

    if-gt p1, v2, :cond_39

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1

    :cond_39
    const/16 v2, 0x21

    if-lt p1, v2, :cond_4a

    const/16 v3, 0x2f

    if-gt p1, v3, :cond_4a

    .line 14
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v2

    int-to-char p1, p1

    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1

    :cond_4a
    const/16 v2, 0x3a

    if-lt p1, v2, :cond_5d

    const/16 v3, 0x40

    if-gt p1, v3, :cond_5d

    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, 0xf

    int-to-char p1, p1

    .line 19
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1

    :cond_5d
    const/16 v2, 0x5b

    if-lt p1, v2, :cond_70

    const/16 v3, 0x5f

    if-gt p1, v3, :cond_70

    .line 22
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x16

    int-to-char p1, p1

    .line 23
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1

    :cond_70
    const/16 v0, 0x60

    if-lt p1, v0, :cond_81

    const/16 v2, 0x7f

    if-gt p1, v2, :cond_81

    .line 26
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v0

    int-to-char p1, p1

    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1

    :cond_81
    const/16 v0, 0x80

    if-lt p1, v0, :cond_92

    const-string v2, "\u0001\u001e"

    .line 30
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v0

    int-to-char p1, p1

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/dcloud/zxing2/datamatrix/encoder/C40Encoder;->encodeChar(CLjava/lang/StringBuilder;)I

    move-result p1

    add-int/2addr p1, v1

    return p1

    .line 35
    :cond_92
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal character: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getEncodingMode()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method handleEOD(Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V
    .registers 9

    .line 1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x3

    div-int/2addr v0, v1

    const/4 v2, 0x2

    mul-int/lit8 v0, v0, 0x2

    .line 2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    rem-int/2addr v3, v1

    .line 4
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v4

    add-int/2addr v4, v0

    .line 5
    invoke-virtual {p1, v4}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 6
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dcloud/zxing2/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v0

    sub-int/2addr v0, v4

    const/4 v4, 0x0

    const/16 v5, 0xfe

    if-ne v3, v2, :cond_3b

    .line 9
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    :goto_27
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lt v0, v1, :cond_31

    .line 11
    invoke-static {p1, p2}, Lcom/dcloud/zxing2/datamatrix/encoder/C40Encoder;->writeNextTriplet(Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    goto :goto_27

    .line 13
    :cond_31
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result p2

    if-eqz p2, :cond_70

    .line 14
    invoke-virtual {p1, v5}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    goto :goto_70

    :cond_3b
    const/4 v2, 0x1

    if-ne v0, v2, :cond_59

    if-ne v3, v2, :cond_59

    .line 17
    :goto_40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lt v0, v1, :cond_4a

    .line 18
    invoke-static {p1, p2}, Lcom/dcloud/zxing2/datamatrix/encoder/C40Encoder;->writeNextTriplet(Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    goto :goto_40

    .line 20
    :cond_4a
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result p2

    if-eqz p2, :cond_53

    .line 21
    invoke-virtual {p1, v5}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 24
    :cond_53
    iget p2, p1, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    sub-int/2addr p2, v2

    iput p2, p1, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->pos:I

    goto :goto_70

    :cond_59
    if-nez v3, :cond_74

    .line 26
    :goto_5b
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lt v2, v1, :cond_65

    .line 27
    invoke-static {p1, p2}, Lcom/dcloud/zxing2/datamatrix/encoder/C40Encoder;->writeNextTriplet(Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    goto :goto_5b

    :cond_65
    if-gtz v0, :cond_6d

    .line 29
    invoke-virtual {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result p2

    if-eqz p2, :cond_70

    .line 30
    :cond_6d
    invoke-virtual {p1, v5}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 35
    :cond_70
    :goto_70
    invoke-virtual {p1, v4}, Lcom/dcloud/zxing2/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    return-void

    .line 36
    :cond_74
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected case. Please report!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
