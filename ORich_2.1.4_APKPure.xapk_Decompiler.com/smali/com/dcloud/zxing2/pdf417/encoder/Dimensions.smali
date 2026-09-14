###### Class com.dcloud.zxing2.pdf417.encoder.Dimensions (com.dcloud.zxing2.pdf417.encoder.Dimensions)
.class public final Lcom/dcloud/zxing2/pdf417/encoder/Dimensions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final maxCols:I

.field private final maxRows:I

.field private final minCols:I

.field private final minRows:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/dcloud/zxing2/pdf417/encoder/Dimensions;->minCols:I

    .line 3
    iput p2, p0, Lcom/dcloud/zxing2/pdf417/encoder/Dimensions;->maxCols:I

    .line 4
    iput p3, p0, Lcom/dcloud/zxing2/pdf417/encoder/Dimensions;->minRows:I

    .line 5
    iput p4, p0, Lcom/dcloud/zxing2/pdf417/encoder/Dimensions;->maxRows:I

    return-void
.end method


# virtual methods
.method public getMaxCols()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/pdf417/encoder/Dimensions;->maxCols:I

    return v0
.end method

.method public getMaxRows()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/pdf417/encoder/Dimensions;->maxRows:I

    return v0
.end method

.method public getMinCols()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/pdf417/encoder/Dimensions;->minCols:I

    return v0
.end method

.method public getMinRows()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/pdf417/encoder/Dimensions;->minRows:I

    return v0
.end method
