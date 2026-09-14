###### Class io.dcloud.feature.gallery.imageedit.c.g.a (io.dcloud.feature.gallery.imageedit.c.g.a)
.class public interface abstract Lio/dcloud/feature/gallery/imageedit/c/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/gallery/imageedit/c/g/a$a;
    }
.end annotation


# static fields
.field public static final a:[F

.field public static final b:[F

.field public static final c:[F

.field public static final d:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_22

    sput-object v0, Lio/dcloud/feature/gallery/imageedit/c/g/a;->a:[F

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 7
    fill-array-data v1, :array_2e

    sput-object v1, Lio/dcloud/feature/gallery/imageedit/c/g/a;->b:[F

    new-array v0, v0, [F

    .line 9
    fill-array-data v0, :array_38

    sput-object v0, Lio/dcloud/feature/gallery/imageedit/c/g/a;->c:[F

    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 11
    fill-array-data v0, :array_42

    sput-object v0, Lio/dcloud/feature/gallery/imageedit/c/g/a;->d:[B

    return-void

    nop

    :array_22
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3ea8f5c3    # 0.33f
        0x3f28f5c3    # 0.66f
    .end array-data

    :array_2e
    .array-data 4
        0x0
        0x40400000    # 3.0f
        -0x3fc00000    # -3.0f
    .end array-data

    :array_38
    .array-data 4
        0x0
        0x42400000    # 48.0f
        -0x3dc00000    # -48.0f
    .end array-data

    :array_42
    .array-data 1
        0x8t
        0x8t
        0x9t
        0x8t
        0x6t
        0x8t
        0x4t
        0x8t
        0x4t
        0x8t
        0x4t
        0x1t
        0x4t
        0xat
        0x4t
        0x8t
        0x4t
        0x4t
        0x6t
        0x4t
        0x9t
        0x4t
        0x8t
        0x4t
        0x8t
        0x4t
        0x8t
        0x6t
        0x8t
        0x9t
        0x8t
        0x8t
    .end array-data
.end method

###### Class io.dcloud.feature.gallery.imageedit.c.g.a.EnumC0046a (io.dcloud.feature.gallery.imageedit.c.g.a$a)
.class public final enum Lio/dcloud/feature/gallery/imageedit/c/g/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/gallery/imageedit/c/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/dcloud/feature/gallery/imageedit/c/g/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

.field public static final enum c:Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

.field public static final enum d:Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

.field public static final enum e:Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

.field public static final enum f:Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

.field public static final enum g:Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

.field public static final enum h:Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

.field public static final enum i:Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

.field static final j:[I

.field private static final synthetic k:[Lio/dcloud/feature/gallery/imageedit/c/g/a$a;


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 1
    new-instance v0, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;->b:Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

    .line 2
    new-instance v1, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

    const-string v4, "RIGHT"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;->c:Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

    .line 3
    new-instance v4, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

    const-string v6, "TOP"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;->d:Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

    .line 4
    new-instance v6, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

    const-string v8, "BOTTOM"

    const/4 v9, 0x3

    const/16 v10, 0x8

    invoke-direct {v6, v8, v9, v10}, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;->e:Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

    .line 5
    new-instance v8, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

    const-string v11, "LEFT_TOP"

    const/4 v12, 0x5

    invoke-direct {v8, v11, v7, v12}, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;->f:Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

    .line 6
    new-instance v11, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

    const-string v13, "RIGHT_TOP"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v12, v14}, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;->g:Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

    .line 7
    new-instance v13, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

    const-string v15, "LEFT_BOTTOM"

    const/16 v12, 0x9

    invoke-direct {v13, v15, v14, v12}, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;->h:Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

    .line 8
    new-instance v12, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

    const-string v15, "RIGHT_BOTTOM"

    const/4 v14, 0x7

    const/16 v7, 0xa

    invoke-direct {v12, v15, v14, v7}, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;->i:Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

    new-array v7, v10, [Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v3

    aput-object v4, v7, v5

    aput-object v6, v7, v9

    const/4 v0, 0x4

    aput-object v8, v7, v0

    const/4 v0, 0x5

    aput-object v11, v7, v0

    const/4 v0, 0x6

    aput-object v13, v7, v0

    aput-object v12, v7, v14

    .line 9
    sput-object v7, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;->k:[Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

    new-array v0, v5, [I

    .line 32
    fill-array-data v0, :array_76

    sput-object v0, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;->j:[I

    return-void

    nop

    :array_76
    .array-data 4
        0x1
        -0x1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;->a:I

    return-void
.end method

.method public static a(FFF)F
    .registers 3

    .line 58
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static a(I)Lio/dcloud/feature/gallery/imageedit/c/g/a$a;
    .registers 6

    .line 61
    invoke-static {}, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;->values()[Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

    move-result-object v0

    .line 62
    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 63
    iget v4, v3, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;->a:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/graphics/RectF;FFF)Z
    .registers 5

    .line 60
    iget v0, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p1

    cmpg-float v0, v0, p2

    if-gez v0, :cond_1e

    iget v0, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p1

    cmpl-float p2, v0, p2

    if-lez p2, :cond_1e

    iget p2, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr p2, p1

    cmpg-float p2, p2, p3

    if-gez p2, :cond_1e

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p0, p1

    cmpl-float p0, p0, p3

    if-lez p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method public static a(Landroid/graphics/RectF;FF)[F
    .registers 6

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 59
    iget v1, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, p1

    const/4 p1, 0x1

    aput v1, v0, p1

    iget p1, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, p2

    const/4 v1, 0x2

    aput p1, v0, v1

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p0, p2

    const/4 p1, 0x3

    aput p0, v0, p1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/dcloud/feature/gallery/imageedit/c/g/a$a;
    .registers 2

    .line 1
    const-class v0, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

    return-object p0
.end method

.method public static values()[Lio/dcloud/feature/gallery/imageedit/c/g/a$a;
    .registers 1

    .line 1
    sget-object v0, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;->k:[Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

    invoke-virtual {v0}, [Lio/dcloud/feature/gallery/imageedit/c/g/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/dcloud/feature/gallery/imageedit/c/g/a$a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[FZ)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    move-object/from16 v3, p1

    .line 1
    invoke-static {v3, v2, v2}, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;->a(Landroid/graphics/RectF;FF)[F

    move-result-object v3

    const v4, 0x4316b852    # 150.72f

    .line 2
    invoke-static {v1, v4, v4}, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;->a(Landroid/graphics/RectF;FF)[F

    move-result-object v5

    .line 3
    invoke-static {v1, v2, v2}, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;->a(Landroid/graphics/RectF;FF)[F

    move-result-object v6

    .line 9
    iget v7, v0, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;->a:I

    const/4 v8, 0x4

    const/16 v9, 0xa

    const/4 v10, 0x5

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz p6, :cond_df

    .line 11
    aget v5, p5, v12

    div-float v5, v4, v5

    aget v14, p5, v13

    mul-float v5, v5, v14

    invoke-static {v1, v4, v5}, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;->a(Landroid/graphics/RectF;FF)[F

    move-result-object v5

    new-array v4, v11, [I

    .line 12
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v14

    div-float v14, v14, p3

    float-to-int v14, v14

    aput v14, v4, v12

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v14

    div-float v14, v14, p4

    float-to-int v14, v14

    aput v14, v4, v13

    .line 13
    iget v14, v0, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;->a:I

    if-ne v14, v8, :cond_69

    .line 16
    iget v7, v1, Landroid/graphics/RectF;->top:F

    add-float v7, v7, p4

    iput v7, v1, Landroid/graphics/RectF;->top:F

    .line 17
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v9

    aget v14, p5, v13

    div-float/2addr v9, v14

    aget v14, p5, v12

    mul-float v9, v9, v14

    sub-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    aget v4, v4, v13

    int-to-float v4, v4

    mul-float v4, v4, v7

    move/from16 v14, p4

    const/4 v7, 0x5

    goto/16 :goto_e3

    :cond_69
    const/16 v15, 0x8

    if-ne v14, v15, :cond_91

    .line 21
    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    add-float v7, v7, p4

    iput v7, v1, Landroid/graphics/RectF;->bottom:F

    .line 22
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v10

    aget v14, p5, v13

    div-float/2addr v10, v14

    aget v14, p5, v12

    mul-float v10, v10, v14

    sub-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    aget v4, v4, v13

    int-to-float v4, v4

    mul-float v4, v4, v7

    move/from16 v14, p4

    const/16 v7, 0xa

    goto :goto_e3

    :cond_91
    if-ne v14, v13, :cond_94

    const/4 v7, 0x5

    :cond_94
    if-ne v14, v11, :cond_98

    const/16 v7, 0xa

    :cond_98
    and-int/lit8 v14, v7, 0x2

    if-eqz v14, :cond_a3

    .line 29
    iget v14, v1, Landroid/graphics/RectF;->right:F

    add-float v14, v14, p3

    iput v14, v1, Landroid/graphics/RectF;->right:F

    goto :goto_ad

    :cond_a3
    and-int/lit8 v14, v7, 0x1

    if-eqz v14, :cond_ad

    .line 31
    iget v14, v1, Landroid/graphics/RectF;->left:F

    add-float v14, v14, p3

    iput v14, v1, Landroid/graphics/RectF;->left:F

    .line 33
    :cond_ad
    :goto_ad
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v15

    aget v16, p5, v12

    div-float v15, v15, v16

    aget v16, p5, v13

    mul-float v15, v15, v16

    sub-float/2addr v14, v15

    if-eq v7, v10, :cond_d2

    if-ne v7, v9, :cond_c3

    goto :goto_d2

    :cond_c3
    const/4 v9, 0x6

    if-eq v7, v9, :cond_ca

    const/16 v9, 0x9

    if-ne v7, v9, :cond_dc

    .line 37
    :cond_ca
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v9

    aget v4, v4, v12

    neg-int v4, v4

    goto :goto_d8

    .line 38
    :cond_d2
    :goto_d2
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v9

    aget v4, v4, v12

    :goto_d8
    int-to-float v4, v4

    mul-float v4, v4, v9

    move v14, v4

    :cond_dc
    move/from16 v4, p3

    goto :goto_e3

    :cond_df
    move/from16 v4, p3

    move/from16 v14, p4

    :goto_e3
    const/4 v9, 0x3

    new-array v10, v9, [F

    aput v4, v10, v12

    aput v2, v10, v13

    aput v14, v10, v11

    const/4 v2, 0x0

    :goto_ed
    if-ge v2, v8, :cond_11d

    shl-int v4, v13, v2

    and-int/2addr v4, v7

    if-eqz v4, :cond_118

    .line 49
    sget-object v4, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;->j:[I

    and-int/lit8 v14, v2, 0x1

    aget v15, v4, v14

    int-to-float v15, v15

    .line 53
    aget v16, v6, v2

    and-int/lit8 v17, v2, 0x2

    aget v17, v10, v17

    add-float v16, v16, v17

    mul-float v8, v15, v16

    aget v16, v3, v2

    mul-float v9, v15, v16

    aget v4, v4, v14

    add-int/2addr v4, v2

    aget v4, v5, v4

    mul-float v4, v4, v15

    invoke-static {v8, v9, v4}, Lio/dcloud/feature/gallery/imageedit/c/g/a$a;->a(FFF)F

    move-result v4

    mul-float v15, v15, v4

    aput v15, v6, v2

    :cond_118
    add-int/lit8 v2, v2, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x3

    goto :goto_ed

    .line 57
    :cond_11d
    aget v2, v6, v12

    aget v3, v6, v11

    aget v4, v6, v13

    const/4 v5, 0x3

    aget v5, v6, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method
