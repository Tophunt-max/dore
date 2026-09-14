###### Class com.dcloud.zxing2.oned.Code39Writer (com.dcloud.zxing2.oned.Code39Writer)
.class public final Lcom/dcloud/zxing2/oned/Code39Writer;
.super Lcom/dcloud/zxing2/oned/OneDimensionalCodeWriter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/zxing2/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method private static toIntArray(I[I)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x9

    if-ge v0, v1, :cond_14

    rsub-int/lit8 v1, v0, 0x8

    const/4 v2, 0x1

    shl-int v1, v2, v1

    and-int/2addr v1, p0

    if-nez v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x2

    .line 1
    :goto_f
    aput v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/dcloud/zxing2/BarcodeFormat;IILjava/util/Map;)Lcom/dcloud/zxing2/common/BitMatrix;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/dcloud/zxing2/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/dcloud/zxing2/EncodeHintType;",
            "*>;)",
            "Lcom/dcloud/zxing2/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dcloud/zxing2/WriterException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->CODE_39:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p2, v0, :cond_9

    .line 4
    invoke-super/range {p0 .. p5}, Lcom/dcloud/zxing2/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/dcloud/zxing2/BarcodeFormat;IILjava/util/Map;)Lcom/dcloud/zxing2/common/BitMatrix;

    move-result-object p1

    return-object p1

    .line 5
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Can only encode CODE_39, but got "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encode(Ljava/lang/String;)[Z
    .registers 13

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x50

    if-gt v0, v1, :cond_85

    const/16 v1, 0x9

    new-array v2, v1, [I

    add-int/lit8 v3, v0, 0x19

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_10
    const-string v6, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    if-ge v5, v0, :cond_48

    .line 15
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_31

    .line 19
    sget-object v7, Lcom/dcloud/zxing2/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v6, v7, v6

    invoke-static {v6, v2}, Lcom/dcloud/zxing2/oned/Code39Writer;->toIntArray(I[I)V

    const/4 v6, 0x0

    :goto_26
    if-ge v6, v1, :cond_2e

    .line 20
    aget v7, v2, v6

    add-int/2addr v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    :cond_2e
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 21
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad contents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_48
    new-array v1, v3, [Z

    .line 29
    sget v3, Lcom/dcloud/zxing2/oned/Code39Reader;->ASTERISK_ENCODING:I

    invoke-static {v3, v2}, Lcom/dcloud/zxing2/oned/Code39Writer;->toIntArray(I[I)V

    const/4 v3, 0x1

    .line 30
    invoke-static {v1, v4, v2, v3}, Lcom/dcloud/zxing2/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    move-result v5

    new-array v7, v3, [I

    aput v3, v7, v4

    .line 32
    invoke-static {v1, v5, v7, v4}, Lcom/dcloud/zxing2/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    move-result v8

    add-int/2addr v5, v8

    const/4 v8, 0x0

    :goto_5e
    if-ge v8, v0, :cond_7c

    .line 35
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 36
    sget-object v10, Lcom/dcloud/zxing2/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v9, v10, v9

    invoke-static {v9, v2}, Lcom/dcloud/zxing2/oned/Code39Writer;->toIntArray(I[I)V

    .line 37
    invoke-static {v1, v5, v2, v3}, Lcom/dcloud/zxing2/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    move-result v9

    add-int/2addr v5, v9

    .line 38
    invoke-static {v1, v5, v7, v4}, Lcom/dcloud/zxing2/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    move-result v9

    add-int/2addr v5, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_5e

    .line 40
    :cond_7c
    sget p1, Lcom/dcloud/zxing2/oned/Code39Reader;->ASTERISK_ENCODING:I

    invoke-static {p1, v2}, Lcom/dcloud/zxing2/oned/Code39Writer;->toIntArray(I[I)V

    .line 41
    invoke-static {v1, v5, v2, v3}, Lcom/dcloud/zxing2/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    return-object v1

    .line 42
    :cond_85
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested contents should be less than 80 digits long, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
