###### Class com.dcloud.zxing2.common.BitMatrix (com.dcloud.zxing2.common.BitMatrix)
.class public final Lcom/dcloud/zxing2/common/BitMatrix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final bits:[I

.field private final height:I

.field private final rowSize:I

.field private final width:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1, p1}, Lcom/dcloud/zxing2/common/BitMatrix;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_19

    if-lt p2, v0, :cond_19

    .line 6
    iput p1, p0, Lcom/dcloud/zxing2/common/BitMatrix;->width:I

    .line 7
    iput p2, p0, Lcom/dcloud/zxing2/common/BitMatrix;->height:I

    add-int/lit8 p1, p1, 0x1f

    .line 8
    div-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/dcloud/zxing2/common/BitMatrix;->rowSize:I

    mul-int p1, p1, p2

    .line 9
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/dcloud/zxing2/common/BitMatrix;->bits:[I

    return-void

    .line 10
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Both dimensions must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(III[I)V
    .registers 5

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/dcloud/zxing2/common/BitMatrix;->width:I

    .line 13
    iput p2, p0, Lcom/dcloud/zxing2/common/BitMatrix;->height:I

    .line 14
    iput p3, p0, Lcom/dcloud/zxing2/common/BitMatrix;->rowSize:I

    .line 15
    iput-object p4, p0, Lcom/dcloud/zxing2/common/BitMatrix;->bits:[I

    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dcloud/zxing2/common/BitMatrix;
    .registers 14

    if-eqz p0, :cond_b5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 7
    :goto_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, "row lengths do not match"

    if-ge v3, v8, :cond_8c

    .line 8
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v10, 0xa

    if-eq v8, v10, :cond_74

    .line 9
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v10, 0xd

    if-ne v8, v10, :cond_28

    goto :goto_74

    .line 20
    :cond_28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {p0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_42

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v3, v8

    const/4 v8, 0x1

    .line 22
    aput-boolean v8, v0, v4

    :goto_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 24
    :cond_42
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {p0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_59

    .line 25
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v3, v8

    .line 26
    aput-boolean v2, v0, v4

    goto :goto_3f

    .line 29
    :cond_59
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "illegal character encountered: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_74
    :goto_74
    if-le v4, v5, :cond_89

    if-ne v6, v1, :cond_7b

    sub-int v6, v4, v5

    goto :goto_7f

    :cond_7b
    sub-int v5, v4, v5

    if-ne v5, v6, :cond_83

    :goto_7f
    add-int/lit8 v7, v7, 0x1

    move v5, v4

    goto :goto_89

    .line 31
    :cond_83
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_89
    :goto_89
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_8c
    if-le v4, v5, :cond_9f

    sub-int p0, v4, v5

    if-ne v6, v1, :cond_94

    move v6, p0

    goto :goto_96

    :cond_94
    if-ne p0, v6, :cond_99

    :goto_96
    add-int/lit8 v7, v7, 0x1

    goto :goto_9f

    .line 56
    :cond_99
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 61
    :cond_9f
    :goto_9f
    new-instance p0, Lcom/dcloud/zxing2/common/BitMatrix;

    invoke-direct {p0, v6, v7}, Lcom/dcloud/zxing2/common/BitMatrix;-><init>(II)V

    :goto_a4
    if-ge v2, v4, :cond_b4

    .line 63
    aget-boolean p1, v0, v2

    if-eqz p1, :cond_b1

    .line 64
    rem-int p1, v2, v6

    div-int p2, v2, v6

    invoke-virtual {p0, p1, p2}, Lcom/dcloud/zxing2/common/BitMatrix;->set(II)V

    :cond_b1
    add-int/lit8 v2, v2, 0x1

    goto :goto_a4

    :cond_b4
    return-object p0

    .line 65
    :cond_b5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public clear()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/common/BitMatrix;->bits:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_e

    .line 3
    iget-object v3, p0, Lcom/dcloud/zxing2/common/BitMatrix;->bits:[I

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_e
    return-void
.end method

.method public clone()Lcom/dcloud/zxing2/common/BitMatrix;
    .registers 6

    .line 2
    new-instance v0, Lcom/dcloud/zxing2/common/BitMatrix;

    iget v1, p0, Lcom/dcloud/zxing2/common/BitMatrix;->width:I

    iget v2, p0, Lcom/dcloud/zxing2/common/BitMatrix;->height:I

    iget v3, p0, Lcom/dcloud/zxing2/common/BitMatrix;->rowSize:I

    iget-object v4, p0, Lcom/dcloud/zxing2/common/BitMatrix;->bits:[I

    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dcloud/zxing2/common/BitMatrix;-><init>(III[I)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitMatrix;->clone()Lcom/dcloud/zxing2/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lcom/dcloud/zxing2/common/BitMatrix;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 4
    :cond_6
    check-cast p1, Lcom/dcloud/zxing2/common/BitMatrix;

    .line 5
    iget v0, p0, Lcom/dcloud/zxing2/common/BitMatrix;->width:I

    iget v2, p1, Lcom/dcloud/zxing2/common/BitMatrix;->width:I

    if-ne v0, v2, :cond_25

    iget v0, p0, Lcom/dcloud/zxing2/common/BitMatrix;->height:I

    iget v2, p1, Lcom/dcloud/zxing2/common/BitMatrix;->height:I

    if-ne v0, v2, :cond_25

    iget v0, p0, Lcom/dcloud/zxing2/common/BitMatrix;->rowSize:I

    iget v2, p1, Lcom/dcloud/zxing2/common/BitMatrix;->rowSize:I

    if-ne v0, v2, :cond_25

    iget-object v0, p0, Lcom/dcloud/zxing2/common/BitMatrix;->bits:[I

    iget-object p1, p1, Lcom/dcloud/zxing2/common/BitMatrix;->bits:[I

    .line 6
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_25

    const/4 v1, 0x1

    :cond_25
    return v1
.end method

.method public flip(II)V
    .registers 6

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/common/BitMatrix;->rowSize:I

    mul-int p2, p2, v0

    div-int/lit8 v0, p1, 0x20

    add-int/2addr p2, v0

    .line 2
    iget-object v0, p0, Lcom/dcloud/zxing2/common/BitMatrix;->bits:[I

    aget v1, v0, p2

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    shl-int p1, v2, p1

    xor-int/2addr p1, v1

    aput p1, v0, p2

    return-void
.end method

.method public get(II)Z
    .registers 4

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/common/BitMatrix;->rowSize:I

    mul-int p2, p2, v0

    div-int/lit8 v0, p1, 0x20

    add-int/2addr p2, v0

    .line 2
    iget-object v0, p0, Lcom/dcloud/zxing2/common/BitMatrix;->bits:[I

    aget p2, v0, p2

    and-int/lit8 p1, p1, 0x1f

    ushr-int p1, p2, p1

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_14

    goto :goto_15

    :cond_14
    const/4 p2, 0x0

    :goto_15
    return p2
.end method

.method public getBottomRightOnBit()[I
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/dcloud/zxing2/common/BitMatrix;->bits:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_5
    if-ltz v0, :cond_10

    .line 2
    iget-object v2, p0, Lcom/dcloud/zxing2/common/BitMatrix;->bits:[I

    aget v2, v2, v0

    if-nez v2, :cond_10

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_10
    if-gez v0, :cond_14

    const/4 v0, 0x0

    return-object v0

    .line 9
    :cond_14
    iget v2, p0, Lcom/dcloud/zxing2/common/BitMatrix;->rowSize:I

    div-int v3, v0, v2

    .line 10
    rem-int v2, v0, v2

    mul-int/lit8 v2, v2, 0x20

    .line 12
    iget-object v4, p0, Lcom/dcloud/zxing2/common/BitMatrix;->bits:[I

    aget v0, v4, v0

    const/16 v4, 0x1f

    :goto_22
    ushr-int v5, v0, v4

    if-nez v5, :cond_29

    add-int/lit8 v4, v4, -0x1

    goto :goto_22

    :cond_29
    add-int/2addr v2, v4

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v4, 0x0

    aput v2, v0, v4

    aput v3, v0, v1

    return-object v0
.end method

.method public getEnclosingRectangle()[I
    .registers 12

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/common/BitMatrix;->width:I

    .line 2
    iget v1, p0, Lcom/dcloud/zxing2/common/BitMatrix;->height:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 6
    :goto_8
    iget v6, p0, Lcom/dcloud/zxing2/common/BitMatrix;->height:I

    if-ge v5, v6, :cond_49

    const/4 v6, 0x0

    .line 7
    :goto_d
    iget v7, p0, Lcom/dcloud/zxing2/common/BitMatrix;->rowSize:I

    if-ge v6, v7, :cond_46

    .line 8
    iget-object v8, p0, Lcom/dcloud/zxing2/common/BitMatrix;->bits:[I

    mul-int v7, v7, v5

    add-int/2addr v7, v6

    aget v7, v8, v7

    if-eqz v7, :cond_43

    if-ge v5, v1, :cond_1d

    move v1, v5

    :cond_1d
    if-le v5, v4, :cond_20

    move v4, v5

    :cond_20
    mul-int/lit8 v8, v6, 0x20

    if-ge v8, v0, :cond_32

    const/4 v9, 0x0

    :goto_25
    rsub-int/lit8 v10, v9, 0x1f

    shl-int v10, v7, v10

    if-nez v10, :cond_2e

    add-int/lit8 v9, v9, 0x1

    goto :goto_25

    :cond_2e
    add-int/2addr v9, v8

    if-ge v9, v0, :cond_32

    move v0, v9

    :cond_32
    add-int/lit8 v9, v8, 0x1f

    if-le v9, v2, :cond_43

    const/16 v9, 0x1f

    :goto_38
    ushr-int v10, v7, v9

    if-nez v10, :cond_3f

    add-int/lit8 v9, v9, -0x1

    goto :goto_38

    :cond_3f
    add-int/2addr v8, v9

    if-le v8, v2, :cond_43

    move v2, v8

    :cond_43
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_46
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_49
    sub-int/2addr v2, v0

    sub-int/2addr v4, v1

    if-ltz v2, :cond_5f

    if-gez v4, :cond_50

    goto :goto_5f

    :cond_50
    const/4 v5, 0x4

    new-array v5, v5, [I

    aput v0, v5, v3

    const/4 v0, 0x1

    aput v1, v5, v0

    const/4 v0, 0x2

    aput v2, v5, v0

    const/4 v0, 0x3

    aput v4, v5, v0

    return-object v5

    :cond_5f
    :goto_5f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/common/BitMatrix;->height:I

    return v0
.end method

.method public getRow(ILcom/dcloud/zxing2/common/BitArray;)Lcom/dcloud/zxing2/common/BitArray;
    .registers 7

    if-eqz p2, :cond_f

    .line 1
    invoke-virtual {p2}, Lcom/dcloud/zxing2/common/BitArray;->getSize()I

    move-result v0

    iget v1, p0, Lcom/dcloud/zxing2/common/BitMatrix;->width:I

    if-ge v0, v1, :cond_b

    goto :goto_f

    .line 4
    :cond_b
    invoke-virtual {p2}, Lcom/dcloud/zxing2/common/BitArray;->clear()V

    goto :goto_16

    .line 5
    :cond_f
    :goto_f
    new-instance p2, Lcom/dcloud/zxing2/common/BitArray;

    iget v0, p0, Lcom/dcloud/zxing2/common/BitMatrix;->width:I

    invoke-direct {p2, v0}, Lcom/dcloud/zxing2/common/BitArray;-><init>(I)V

    .line 9
    :goto_16
    iget v0, p0, Lcom/dcloud/zxing2/common/BitMatrix;->rowSize:I

    mul-int p1, p1, v0

    const/4 v0, 0x0

    .line 10
    :goto_1b
    iget v1, p0, Lcom/dcloud/zxing2/common/BitMatrix;->rowSize:I

    if-ge v0, v1, :cond_2d

    mul-int/lit8 v1, v0, 0x20

    .line 11
    iget-object v2, p0, Lcom/dcloud/zxing2/common/BitMatrix;->bits:[I

    add-int v3, p1, v0

    aget v2, v2, v3

    invoke-virtual {p2, v1, v2}, Lcom/dcloud/zxing2/common/BitArray;->setBulk(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2d
    return-object p2
.end method

.method public getRowSize()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/common/BitMatrix;->rowSize:I

    return v0
.end method

.method public getTopLeftOnBit()[I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    iget-object v2, p0, Lcom/dcloud/zxing2/common/BitMatrix;->bits:[I

    array-length v3, v2

    if-ge v1, v3, :cond_e

    aget v3, v2, v1

    if-nez v3, :cond_e

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4
    :cond_e
    array-length v3, v2

    if-ne v1, v3, :cond_13

    const/4 v0, 0x0

    return-object v0

    .line 7
    :cond_13
    iget v3, p0, Lcom/dcloud/zxing2/common/BitMatrix;->rowSize:I

    div-int v4, v1, v3

    .line 8
    rem-int v3, v1, v3

    mul-int/lit8 v3, v3, 0x20

    .line 10
    aget v1, v2, v1

    const/4 v2, 0x0

    :goto_1e
    rsub-int/lit8 v5, v2, 0x1f

    shl-int v5, v1, v5

    if-nez v5, :cond_27

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_27
    add-int/2addr v3, v2

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v3, v1, v0

    const/4 v0, 0x1

    aput v4, v1, v0

    return-object v1
.end method

.method public getWidth()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/common/BitMatrix;->width:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/common/BitMatrix;->width:I

    mul-int/lit8 v1, v0, 0x1f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget v0, p0, Lcom/dcloud/zxing2/common/BitMatrix;->height:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget v0, p0, Lcom/dcloud/zxing2/common/BitMatrix;->rowSize:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 5
    iget-object v0, p0, Lcom/dcloud/zxing2/common/BitMatrix;->bits:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public rotate180()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitMatrix;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result v1

    .line 3
    new-instance v2, Lcom/dcloud/zxing2/common/BitArray;

    invoke-direct {v2, v0}, Lcom/dcloud/zxing2/common/BitArray;-><init>(I)V

    .line 4
    new-instance v3, Lcom/dcloud/zxing2/common/BitArray;

    invoke-direct {v3, v0}, Lcom/dcloud/zxing2/common/BitArray;-><init>(I)V

    const/4 v0, 0x0

    :goto_13
    add-int/lit8 v4, v1, 0x1

    .line 5
    div-int/lit8 v4, v4, 0x2

    if-ge v0, v4, :cond_33

    .line 6
    invoke-virtual {p0, v0, v2}, Lcom/dcloud/zxing2/common/BitMatrix;->getRow(ILcom/dcloud/zxing2/common/BitArray;)Lcom/dcloud/zxing2/common/BitArray;

    move-result-object v2

    add-int/lit8 v4, v1, -0x1

    sub-int/2addr v4, v0

    .line 7
    invoke-virtual {p0, v4, v3}, Lcom/dcloud/zxing2/common/BitMatrix;->getRow(ILcom/dcloud/zxing2/common/BitArray;)Lcom/dcloud/zxing2/common/BitArray;

    move-result-object v3

    .line 8
    invoke-virtual {v2}, Lcom/dcloud/zxing2/common/BitArray;->reverse()V

    .line 9
    invoke-virtual {v3}, Lcom/dcloud/zxing2/common/BitArray;->reverse()V

    .line 10
    invoke-virtual {p0, v0, v3}, Lcom/dcloud/zxing2/common/BitMatrix;->setRow(ILcom/dcloud/zxing2/common/BitArray;)V

    .line 11
    invoke-virtual {p0, v4, v2}, Lcom/dcloud/zxing2/common/BitMatrix;->setRow(ILcom/dcloud/zxing2/common/BitArray;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_33
    return-void
.end method

.method public set(II)V
    .registers 6

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/common/BitMatrix;->rowSize:I

    mul-int p2, p2, v0

    div-int/lit8 v0, p1, 0x20

    add-int/2addr p2, v0

    .line 2
    iget-object v0, p0, Lcom/dcloud/zxing2/common/BitMatrix;->bits:[I

    aget v1, v0, p2

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    shl-int p1, v2, p1

    or-int/2addr p1, v1

    aput p1, v0, p2

    return-void
.end method

.method public setRegion(IIII)V
    .registers 12

    if-ltz p2, :cond_41

    if-ltz p1, :cond_41

    const/4 v0, 0x1

    if-lt p4, v0, :cond_39

    if-lt p3, v0, :cond_39

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    .line 1
    iget v1, p0, Lcom/dcloud/zxing2/common/BitMatrix;->height:I

    if-gt p4, v1, :cond_31

    iget v1, p0, Lcom/dcloud/zxing2/common/BitMatrix;->width:I

    if-gt p3, v1, :cond_31

    :goto_13
    if-ge p2, p4, :cond_30

    .line 5
    iget v1, p0, Lcom/dcloud/zxing2/common/BitMatrix;->rowSize:I

    mul-int v1, v1, p2

    move v2, p1

    :goto_1a
    if-ge v2, p3, :cond_2d

    .line 7
    iget-object v3, p0, Lcom/dcloud/zxing2/common/BitMatrix;->bits:[I

    div-int/lit8 v4, v2, 0x20

    add-int/2addr v4, v1

    aget v5, v3, v4

    and-int/lit8 v6, v2, 0x1f

    shl-int v6, v0, v6

    or-int/2addr v5, v6

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_2d
    add-int/lit8 p2, p2, 0x1

    goto :goto_13

    :cond_30
    return-void

    .line 8
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The region must fit inside the matrix"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Height and width must be at least 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Left and top must be nonnegative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRow(ILcom/dcloud/zxing2/common/BitArray;)V
    .registers 6

    .line 1
    invoke-virtual {p2}, Lcom/dcloud/zxing2/common/BitArray;->getBitArray()[I

    move-result-object p2

    iget-object v0, p0, Lcom/dcloud/zxing2/common/BitMatrix;->bits:[I

    iget v1, p0, Lcom/dcloud/zxing2/common/BitMatrix;->rowSize:I

    mul-int p1, p1, v1

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "X "

    const-string v1, "  "

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/dcloud/zxing2/common/BitMatrix;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "\n"

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/dcloud/zxing2/common/BitMatrix;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dcloud/zxing2/common/BitMatrix;->height:I

    iget v2, p0, Lcom/dcloud/zxing2/common/BitMatrix;->width:I

    add-int/lit8 v2, v2, 0x1

    mul-int v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_f
    iget v3, p0, Lcom/dcloud/zxing2/common/BitMatrix;->height:I

    if-ge v2, v3, :cond_2d

    const/4 v3, 0x0

    .line 5
    :goto_14
    iget v4, p0, Lcom/dcloud/zxing2/common/BitMatrix;->width:I

    if-ge v3, v4, :cond_27

    .line 6
    invoke-virtual {p0, v3, v2}, Lcom/dcloud/zxing2/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_20

    move-object v4, p1

    goto :goto_21

    :cond_20
    move-object v4, p2

    :goto_21
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 8
    :cond_27
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 10
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public unset(II)V
    .registers 6

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/common/BitMatrix;->rowSize:I

    mul-int p2, p2, v0

    div-int/lit8 v0, p1, 0x20

    add-int/2addr p2, v0

    .line 2
    iget-object v0, p0, Lcom/dcloud/zxing2/common/BitMatrix;->bits:[I

    aget v1, v0, p2

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    shl-int p1, v2, p1

    not-int p1, p1

    and-int/2addr p1, v1

    aput p1, v0, p2

    return-void
.end method

.method public xor(Lcom/dcloud/zxing2/common/BitMatrix;)V
    .registers 12

    .line 1
    iget v0, p0, Lcom/dcloud/zxing2/common/BitMatrix;->width:I

    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitMatrix;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_4c

    iget v0, p0, Lcom/dcloud/zxing2/common/BitMatrix;->height:I

    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitMatrix;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_4c

    iget v0, p0, Lcom/dcloud/zxing2/common/BitMatrix;->rowSize:I

    .line 2
    invoke-virtual {p1}, Lcom/dcloud/zxing2/common/BitMatrix;->getRowSize()I

    move-result v1

    if-ne v0, v1, :cond_4c

    .line 5
    new-instance v0, Lcom/dcloud/zxing2/common/BitArray;

    iget v1, p0, Lcom/dcloud/zxing2/common/BitMatrix;->width:I

    div-int/lit8 v1, v1, 0x20

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lcom/dcloud/zxing2/common/BitArray;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6
    :goto_25
    iget v3, p0, Lcom/dcloud/zxing2/common/BitMatrix;->height:I

    if-ge v2, v3, :cond_4b

    .line 7
    iget v3, p0, Lcom/dcloud/zxing2/common/BitMatrix;->rowSize:I

    mul-int v3, v3, v2

    .line 8
    invoke-virtual {p1, v2, v0}, Lcom/dcloud/zxing2/common/BitMatrix;->getRow(ILcom/dcloud/zxing2/common/BitArray;)Lcom/dcloud/zxing2/common/BitArray;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dcloud/zxing2/common/BitArray;->getBitArray()[I

    move-result-object v4

    const/4 v5, 0x0

    .line 9
    :goto_36
    iget v6, p0, Lcom/dcloud/zxing2/common/BitMatrix;->rowSize:I

    if-ge v5, v6, :cond_48

    .line 10
    iget-object v6, p0, Lcom/dcloud/zxing2/common/BitMatrix;->bits:[I

    add-int v7, v3, v5

    aget v8, v6, v7

    aget v9, v4, v5

    xor-int/2addr v8, v9

    aput v8, v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_4b
    return-void

    .line 11
    :cond_4c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "input matrix dimensions do not match"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
