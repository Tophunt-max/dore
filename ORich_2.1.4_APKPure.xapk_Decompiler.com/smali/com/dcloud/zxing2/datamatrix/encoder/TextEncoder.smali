###### Class com.dcloud.zxing2.datamatrix.encoder.TextEncoder (com.dcloud.zxing2.datamatrix.encoder.TextEncoder)
.class final Lcom/dcloud/zxing2/datamatrix/encoder/TextEncoder;
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

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_1a
    const/16 v1, 0x61

    if-lt p1, v1, :cond_2a

    const/16 v2, 0x7a

    if-gt p1, v2, :cond_2a

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0xe

    int-to-char p1, p1

    .line 9
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_2a
    const/4 v1, 0x2

    if-ltz p1, :cond_39

    const/16 v2, 0x1f

    if-gt p1, v2, :cond_39

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1

    :cond_39
    const/16 v2, 0x21

    if-lt p1, v2, :cond_4a

    const/16 v3, 0x2f

    if-gt p1, v3, :cond_4a

    .line 18
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v2

    int-to-char p1, p1

    .line 19
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1

    :cond_4a
    const/16 v2, 0x3a

    if-lt p1, v2, :cond_5d

    const/16 v3, 0x40

    if-gt p1, v3, :cond_5d

    .line 23
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, 0xf

    int-to-char p1, p1

    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1

    :cond_5d
    const/16 v2, 0x5b

    if-lt p1, v2, :cond_70

    const/16 v3, 0x5f

    if-gt p1, v3, :cond_70

    .line 28
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x16

    int-to-char p1, p1

    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1

    :cond_70
    const/16 v2, 0x60

    if-ne p1, v2, :cond_7d

    .line 33
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v2

    int-to-char p1, p1

    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1

    :cond_7d
    const/16 v2, 0x41

    if-lt p1, v2, :cond_8f

    const/16 v3, 0x5a

    if-gt p1, v3, :cond_8f

    .line 38
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v2

    add-int/2addr p1, v0

    int-to-char p1, p1

    .line 39
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1

    :cond_8f
    const/16 v0, 0x7b

    if-lt p1, v0, :cond_a2

    const/16 v2, 0x7f

    if-gt p1, v2, :cond_a2

    .line 43
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1b

    int-to-char p1, p1

    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1

    :cond_a2
    const/16 v0, 0x80

    if-lt p1, v0, :cond_b3

    const-string v2, "\u0001\u001e"

    .line 48
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v0

    int-to-char p1, p1

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/dcloud/zxing2/datamatrix/encoder/TextEncoder;->encodeChar(CLjava/lang/StringBuilder;)I

    move-result p1

    add-int/2addr p1, v1

    return p1

    .line 53
    :cond_b3
    invoke-static {p1}, Lcom/dcloud/zxing2/datamatrix/encoder/HighLevelEncoder;->illegalCharacter(C)V

    const/4 p1, -0x1

    return p1
.end method

.method public getEncodingMode()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
