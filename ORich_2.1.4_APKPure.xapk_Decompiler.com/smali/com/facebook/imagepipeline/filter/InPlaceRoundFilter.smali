###### Class com.facebook.imagepipeline.filter.InPlaceRoundFilter (com.facebook.imagepipeline.filter.InPlaceRoundFilter)
.class public final Lcom/facebook/imagepipeline/filter/InPlaceRoundFilter;
.super Ljava/lang/Object;
.source "InPlaceRoundFilter.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static roundBitmapInPlace(Landroid/graphics/Bitmap;)V
    .registers 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 32
    invoke-static/range {p0 .. p0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 34
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 35
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v10, v0, 0x2

    .line 36
    div-int/lit8 v11, v8, 0x2

    .line 37
    div-int/lit8 v12, v9, 0x2

    if-nez v10, :cond_18

    return-void

    :cond_18
    const/4 v13, 0x1

    if-lt v10, v13, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 42
    :goto_1e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    const/high16 v0, 0x45000000    # 2048.0f

    if-lez v8, :cond_30

    int-to-float v1, v8

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_30

    const/4 v1, 0x1

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    .line 43
    :goto_31
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    if-lez v9, :cond_41

    int-to-float v1, v9

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_41

    const/4 v0, 0x1

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    .line 44
    :goto_42
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    if-lez v11, :cond_4f

    if-ge v11, v8, :cond_4f

    const/4 v0, 0x1

    goto :goto_50

    :cond_4f
    const/4 v0, 0x0

    .line 45
    :goto_50
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    if-lez v12, :cond_5d

    if-ge v12, v9, :cond_5d

    const/4 v0, 0x1

    goto :goto_5e

    :cond_5d
    const/4 v0, 0x0

    .line 46
    :goto_5e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    mul-int v0, v8, v9

    .line 48
    new-array v15, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move v3, v8

    move v6, v8

    move v7, v9

    .line 49
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v0, v10, -0x1

    add-int v1, v11, v0

    add-int v2, v12, v0

    sub-int v3, v11, v0

    sub-int v4, v12, v0

    if-ltz v3, :cond_89

    if-ltz v4, :cond_89

    if-ge v1, v8, :cond_89

    if-ge v2, v9, :cond_89

    const/4 v1, 0x1

    goto :goto_8a

    :cond_89
    const/4 v1, 0x0

    .line 58
    :goto_8a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    neg-int v1, v10

    mul-int/lit8 v1, v1, 0x2

    .line 63
    new-array v2, v8, [I

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    :goto_9b
    if-lt v0, v4, :cond_11b

    add-int v7, v11, v0

    sub-int v13, v11, v0

    add-int v14, v11, v4

    move/from16 v16, v10

    sub-int v10, v11, v4

    add-int v17, v12, v0

    sub-int v18, v12, v0

    move/from16 v19, v11

    add-int v11, v12, v4

    sub-int v20, v12, v4

    if-ltz v0, :cond_be

    if-ge v14, v8, :cond_be

    if-ltz v10, :cond_be

    if-ge v11, v9, :cond_be

    if-ltz v20, :cond_be

    const/16 v21, 0x1

    goto :goto_c0

    :cond_be
    const/16 v21, 0x0

    .line 92
    :goto_c0
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    mul-int v11, v11, v8

    move/from16 v21, v9

    mul-int v9, v8, v20

    move/from16 v20, v12

    mul-int v12, v8, v17

    move/from16 v17, v1

    mul-int v1, v8, v18

    move/from16 v18, v5

    const/4 v5, 0x0

    .line 100
    invoke-static {v2, v5, v15, v11, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    invoke-static {v2, v5, v15, v9, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    invoke-static {v2, v5, v15, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    invoke-static {v2, v5, v15, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v11, v7

    sub-int v10, v8, v7

    .line 106
    invoke-static {v2, v5, v15, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v7

    .line 107
    invoke-static {v2, v5, v15, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v12, v14

    sub-int v7, v8, v14

    .line 108
    invoke-static {v2, v5, v15, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v14

    .line 109
    invoke-static {v2, v5, v15, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-gtz v3, :cond_ff

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x2

    add-int/2addr v3, v6

    :cond_ff
    if-lez v3, :cond_10d

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v5, v18, 0x2

    add-int v1, v5, v17

    add-int/2addr v3, v1

    move/from16 v10, v16

    move/from16 v1, v17

    goto :goto_113

    :cond_10d
    move/from16 v10, v16

    move/from16 v1, v17

    move/from16 v5, v18

    :goto_113
    move/from16 v11, v19

    move/from16 v12, v20

    move/from16 v9, v21

    const/4 v13, 0x1

    goto :goto_9b

    :cond_11b
    move/from16 v21, v9

    move/from16 v16, v10

    move/from16 v20, v12

    sub-int v12, v20, v16

    :goto_123
    if-ltz v12, :cond_12e

    mul-int v0, v12, v8

    const/4 v1, 0x0

    .line 127
    invoke-static {v2, v1, v15, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v12, v12, -0x1

    goto :goto_123

    :cond_12e
    const/4 v1, 0x0

    add-int v12, v20, v16

    move/from16 v7, v21

    :goto_133
    if-ge v12, v7, :cond_13d

    mul-int v0, v12, v8

    .line 131
    invoke-static {v2, v1, v15, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_133

    :cond_13d
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move v3, v8

    move v6, v8

    .line 134
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-void
.end method
