###### Class com.dcloud.zxing2.pdf417.decoder.DetectionResultColumn (com.dcloud.zxing2.pdf417.decoder.DetectionResultColumn)
.class Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_NEARBY_DISTANCE:I = 0x5


# instance fields
.field private final boundingBox:Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;

.field private final codewords:[Lcom/dcloud/zxing2/pdf417/decoder/Codeword;


# direct methods
.method constructor <init>(Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;

    invoke-direct {v0, p1}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;-><init>(Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;)V

    iput-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->boundingBox:Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;

    .line 3
    invoke-virtual {p1}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v0

    invoke-virtual {p1}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->getMinY()I

    move-result p1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array p1, v0, [Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    iput-object p1, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    return-void
.end method


# virtual methods
.method final getBoundingBox()Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->boundingBox:Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;

    return-object v0
.end method

.method final getCodeword(I)Lcom/dcloud/zxing2/pdf417/decoder/Codeword;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->imageRowToCodewordIndex(I)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method final getCodewordNearby(I)Lcom/dcloud/zxing2/pdf417/decoder/Codeword;
    .registers 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->getCodeword(I)Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    const/4 v0, 0x1

    :goto_8
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2b

    .line 6
    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->imageRowToCodewordIndex(I)I

    move-result v1

    sub-int/2addr v1, v0

    if-ltz v1, :cond_19

    .line 8
    iget-object v2, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    aget-object v1, v2, v1

    if-eqz v1, :cond_19

    return-object v1

    .line 13
    :cond_19
    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->imageRowToCodewordIndex(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 14
    iget-object v2, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    array-length v3, v2

    if-ge v1, v3, :cond_28

    .line 15
    aget-object v1, v2, v1

    if-eqz v1, :cond_28

    return-object v1

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_2b
    const/4 p1, 0x0

    return-object p1
.end method

.method final getCodewords()[Lcom/dcloud/zxing2/pdf417/decoder/Codeword;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    return-object v0
.end method

.method final imageRowToCodewordIndex(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->boundingBox:Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;

    invoke-virtual {v0}, Lcom/dcloud/zxing2/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method final setCodeword(ILcom/dcloud/zxing2/pdf417/decoder/Codeword;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    invoke-virtual {p0, p1}, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->imageRowToCodewordIndex(I)I

    move-result p1

    aput-object p2, v0, p1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    .line 1
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/dcloud/zxing2/pdf417/decoder/DetectionResultColumn;->codewords:[Lcom/dcloud/zxing2/pdf417/decoder/Codeword;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_b
    if-ge v4, v2, :cond_4c

    aget-object v6, v1, v4

    const/4 v7, 0x1

    if-nez v6, :cond_23

    new-array v6, v7, [Ljava/lang/Object;

    add-int/lit8 v7, v5, 0x1

    .line 5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v3

    const-string v5, "%3d:    |   %n"

    invoke-virtual {v0, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move v5, v7

    goto :goto_49

    :cond_23
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    add-int/lit8 v9, v5, 0x1

    .line 8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v3

    invoke-virtual {v6}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v7

    invoke-virtual {v6}, Lcom/dcloud/zxing2/pdf417/decoder/Codeword;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v8, v6

    const-string v5, "%3d: %3d|%3d%n"

    invoke-virtual {v0, v5, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move v5, v9

    :goto_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 10
    :cond_4c
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    return-object v1
.end method
