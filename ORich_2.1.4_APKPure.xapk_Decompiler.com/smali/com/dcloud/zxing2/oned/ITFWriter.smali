###### Class com.dcloud.zxing2.oned.ITFWriter (com.dcloud.zxing2.oned.ITFWriter)
.class public final Lcom/dcloud/zxing2/oned/ITFWriter;
.super Lcom/dcloud/zxing2/oned/OneDimensionalCodeWriter;
.source "SourceFile"


# static fields
.field private static final END_PATTERN:[I

.field private static final START_PATTERN:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_12

    sput-object v0, Lcom/dcloud/zxing2/oned/ITFWriter;->START_PATTERN:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1e

    sput-object v0, Lcom/dcloud/zxing2/oned/ITFWriter;->END_PATTERN:[I

    return-void

    nop

    :array_12
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1e
    .array-data 4
        0x3
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/zxing2/oned/OneDimensionalCodeWriter;-><init>()V

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
    sget-object v0, Lcom/dcloud/zxing2/BarcodeFormat;->ITF:Lcom/dcloud/zxing2/BarcodeFormat;

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

    const-string p4, "Can only encode ITF, but got "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encode(Ljava/lang/String;)[Z
    .registers 15

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 8
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_72

    const/16 v1, 0x50

    if-gt v0, v1, :cond_5b

    mul-int/lit8 v1, v0, 0x9

    add-int/lit8 v1, v1, 0x9

    .line 15
    new-array v1, v1, [Z

    .line 16
    sget-object v2, Lcom/dcloud/zxing2/oned/ITFWriter;->START_PATTERN:[I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v2, v4}, Lcom/dcloud/zxing2/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    move-result v2

    const/4 v5, 0x0

    :goto_1b
    if-ge v5, v0, :cond_55

    .line 18
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    add-int/lit8 v8, v5, 0x1

    .line 19
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    const/16 v8, 0x12

    new-array v8, v8, [I

    const/4 v9, 0x0

    :goto_36
    const/4 v10, 0x5

    if-ge v9, v10, :cond_4d

    mul-int/lit8 v10, v9, 0x2

    .line 22
    sget-object v11, Lcom/dcloud/zxing2/oned/ITFReader;->PATTERNS:[[I

    aget-object v12, v11, v6

    aget v12, v12, v9

    aput v12, v8, v10

    add-int/2addr v10, v4

    .line 23
    aget-object v11, v11, v7

    aget v11, v11, v9

    aput v11, v8, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_36

    .line 25
    :cond_4d
    invoke-static {v1, v2, v8, v4}, Lcom/dcloud/zxing2/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    move-result v6

    add-int/2addr v2, v6

    add-int/lit8 v5, v5, 0x2

    goto :goto_1b

    .line 27
    :cond_55
    sget-object p1, Lcom/dcloud/zxing2/oned/ITFWriter;->END_PATTERN:[I

    invoke-static {v1, v2, p1, v4}, Lcom/dcloud/zxing2/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    return-object v1

    .line 28
    :cond_5b
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

    .line 29
    :cond_72
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The length of the input should be even"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
