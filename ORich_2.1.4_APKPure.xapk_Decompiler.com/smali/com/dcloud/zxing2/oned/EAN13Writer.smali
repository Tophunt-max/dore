###### Class com.dcloud.zxing2.oned.EAN13Writer (com.dcloud.zxing2.oned.EAN13Writer)
.class public final Lcom/dcloud/zxing2/oned/EAN13Writer;
.super Lcom/dcloud/zxing2/oned/UPCEANWriter;
.source "SourceFile"


# static fields
.field private static final CODE_WIDTH:I = 0x5f


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/zxing2/oned/UPCEANWriter;-><init>()V

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
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->EAN_13:Lcom/dcloud/zxing2/BarcodeFormat;

    if-ne p2, v0, :cond_9

    .line 5
    invoke-super/range {p0 .. p5}, Lcom/dcloud/zxing2/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/dcloud/zxing2/BarcodeFormat;IILjava/util/Map;)Lcom/dcloud/zxing2/common/BitMatrix;

    move-result-object p1

    return-object p1

    .line 6
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Can only encode EAN_13, but got "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encode(Ljava/lang/String;)[Z
    .registers 10

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_80

    .line 12
    :try_start_8
    invoke-static {p1}, Lcom/dcloud/zxing2/oned/UPCEANReader;->checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_c
    .catch Lcom/dcloud/zxing2/FormatException; {:try_start_8 .. :try_end_c} :catch_78

    if-eqz v0, :cond_70

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 19
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 20
    sget-object v3, Lcom/dcloud/zxing2/oned/EAN13Reader;->FIRST_DIGIT_ENCODINGS:[I

    aget v2, v3, v2

    const/16 v3, 0x5f

    new-array v3, v3, [Z

    .line 24
    sget-object v4, Lcom/dcloud/zxing2/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {v3, v0, v4, v1}, Lcom/dcloud/zxing2/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    move-result v4

    add-int/2addr v4, v0

    const/4 v5, 0x1

    :goto_28
    const/4 v6, 0x6

    if-gt v5, v6, :cond_49

    add-int/lit8 v6, v5, 0x1

    .line 28
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    rsub-int/lit8 v5, v5, 0x6

    shr-int v5, v2, v5

    and-int/2addr v5, v1

    if-ne v5, v1, :cond_3e

    add-int/lit8 v7, v7, 0xa

    .line 32
    :cond_3e
    sget-object v5, Lcom/dcloud/zxing2/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    aget-object v5, v5, v7

    invoke-static {v3, v4, v5, v0}, Lcom/dcloud/zxing2/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    move-result v5

    add-int/2addr v4, v5

    move v5, v6

    goto :goto_28

    .line 35
    :cond_49
    sget-object v2, Lcom/dcloud/zxing2/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    invoke-static {v3, v4, v2, v0}, Lcom/dcloud/zxing2/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    move-result v0

    add-int/2addr v4, v0

    const/4 v0, 0x7

    :goto_51
    const/16 v2, 0xc

    if-gt v0, v2, :cond_6a

    add-int/lit8 v2, v0, 0x1

    .line 38
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 39
    sget-object v5, Lcom/dcloud/zxing2/oned/UPCEANReader;->L_PATTERNS:[[I

    aget-object v0, v5, v0

    invoke-static {v3, v4, v0, v1}, Lcom/dcloud/zxing2/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    move-result v0

    add-int/2addr v4, v0

    move v0, v2

    goto :goto_51

    .line 41
    :cond_6a
    sget-object p1, Lcom/dcloud/zxing2/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {v3, v4, p1, v1}, Lcom/dcloud/zxing2/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    return-object v3

    .line 42
    :cond_70
    :try_start_70
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Contents do not pass checksum"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_78
    .catch Lcom/dcloud/zxing2/FormatException; {:try_start_70 .. :try_end_78} :catch_78

    .line 45
    :catch_78
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal contents"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested contents should be 13 digits long, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
