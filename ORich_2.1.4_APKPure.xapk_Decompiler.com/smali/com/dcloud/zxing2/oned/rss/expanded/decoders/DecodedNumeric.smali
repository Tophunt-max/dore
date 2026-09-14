###### Class com.dcloud.zxing2.oned.rss.expanded.decoders.DecodedNumeric (com.dcloud.zxing2.oned.rss.expanded.decoders.DecodedNumeric)
.class final Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;
.super Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedObject;
.source "SourceFile"


# static fields
.field static final FNC1:I = 0xa


# instance fields
.field private final firstDigit:I

.field private final secondDigit:I


# direct methods
.method constructor <init>(III)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/FormatException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedObject;-><init>(I)V

    if-ltz p2, :cond_12

    const/16 p1, 0xa

    if-gt p2, p1, :cond_12

    if-ltz p3, :cond_12

    if-gt p3, p1, :cond_12

    .line 7
    iput p2, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;->firstDigit:I

    .line 8
    iput p3, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;->secondDigit:I

    return-void

    .line 9
    :cond_12
    invoke-static {}, Lcom/dcloud/zxing2/FormatException;->getFormatInstance()Lcom/dcloud/zxing2/FormatException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method getFirstDigit()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;->firstDigit:I

    return v0
.end method

.method getSecondDigit()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;->secondDigit:I

    return v0
.end method

.method getValue()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;->firstDigit:I

    mul-int/lit8 v0, v0, 0xa

    iget v1, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;->secondDigit:I

    add-int/2addr v0, v1

    return v0
.end method

.method isAnyFNC1()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;->firstDigit:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_d

    iget v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;->secondDigit:I

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method isFirstDigitFNC1()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;->firstDigit:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isSecondDigitFNC1()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/oned/rss/expanded/decoders/DecodedNumeric;->secondDigit:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
