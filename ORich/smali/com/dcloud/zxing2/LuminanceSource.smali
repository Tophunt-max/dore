###### Class com.dcloud.zxing2.LuminanceSource (com.dcloud.zxing2.LuminanceSource)
.class public abstract Lcom/dcloud/zxing2/LuminanceSource;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method protected constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/dcloud/zxing2/LuminanceSource;->width:I

    .line 3
    iput p2, p0, Lcom/dcloud/zxing2/LuminanceSource;->height:I

    return-void
.end method


# virtual methods
.method public crop(IIII)Lcom/dcloud/zxing2/LuminanceSource;
    .registers 5

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This luminance source does not support cropping."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/LuminanceSource;->height:I

    return v0
.end method

.method public abstract getMatrix()[B
.end method

.method public abstract getRow(I[B)[B
.end method

.method public final getWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/LuminanceSource;->width:I

    return v0
.end method

.method public invert()Lcom/dcloud/zxing2/LuminanceSource;
    .registers 2

    .line 1
    new-instance v0, Lcom/dcloud/zxing2/InvertedLuminanceSource;

    invoke-direct {v0, p0}, Lcom/dcloud/zxing2/InvertedLuminanceSource;-><init>(Lcom/dcloud/zxing2/LuminanceSource;)V

    return-object v0
.end method

.method public isCropSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isRotateSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public rotateCounterClockwise()Lcom/dcloud/zxing2/LuminanceSource;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This luminance source does not support rotation by 90 degrees."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rotateCounterClockwise45()Lcom/dcloud/zxing2/LuminanceSource;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This luminance source does not support rotation by 45 degrees."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 8

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/LuminanceSource;->width:I

    new-array v1, v0, [B

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/dcloud/zxing2/LuminanceSource;->height:I

    add-int/lit8 v0, v0, 0x1

    mul-int v3, v3, v0

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_11
    iget v4, p0, Lcom/dcloud/zxing2/LuminanceSource;->height:I

    if-ge v3, v4, :cond_47

    .line 4
    invoke-virtual {p0, v3, v1}, Lcom/dcloud/zxing2/LuminanceSource;->getRow(I[B)[B

    move-result-object v1

    const/4 v4, 0x0

    .line 5
    :goto_1a
    iget v5, p0, Lcom/dcloud/zxing2/LuminanceSource;->width:I

    if-ge v4, v5, :cond_3f

    .line 6
    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x40

    if-ge v5, v6, :cond_29

    const/16 v5, 0x23

    goto :goto_39

    :cond_29
    const/16 v6, 0x80

    if-ge v5, v6, :cond_30

    const/16 v5, 0x2b

    goto :goto_39

    :cond_30
    const/16 v6, 0xc0

    if-ge v5, v6, :cond_37

    const/16 v5, 0x2e

    goto :goto_39

    :cond_37
    const/16 v5, 0x20

    .line 17
    :goto_39
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_3f
    const/16 v4, 0xa

    .line 19
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 21
    :cond_47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
