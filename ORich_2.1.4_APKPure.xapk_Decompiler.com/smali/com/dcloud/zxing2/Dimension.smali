###### Class com.dcloud.zxing2.Dimension (com.dcloud.zxing2.Dimension)
.class public final Lcom/dcloud/zxing2/Dimension;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_c

    if-ltz p2, :cond_c

    .line 5
    iput p1, p0, Lcom/dcloud/zxing2/Dimension;->width:I

    .line 6
    iput p2, p0, Lcom/dcloud/zxing2/Dimension;->height:I

    return-void

    .line 7
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lcom/dcloud/zxing2/Dimension;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 2
    check-cast p1, Lcom/dcloud/zxing2/Dimension;

    .line 3
    iget v0, p0, Lcom/dcloud/zxing2/Dimension;->width:I

    iget v2, p1, Lcom/dcloud/zxing2/Dimension;->width:I

    if-ne v0, v2, :cond_14

    iget v0, p0, Lcom/dcloud/zxing2/Dimension;->height:I

    iget p1, p1, Lcom/dcloud/zxing2/Dimension;->height:I

    if-ne v0, p1, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method public getHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/Dimension;->height:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/Dimension;->width:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/Dimension;->width:I

    mul-int/lit16 v0, v0, 0x7fc9

    iget v1, p0, Lcom/dcloud/zxing2/Dimension;->height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/dcloud/zxing2/Dimension;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dcloud/zxing2/Dimension;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
