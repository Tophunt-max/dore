###### Class io.dcloud.common.core.ui.j (io.dcloud.common.core.ui.j)
.class public Lio/dcloud/common/core/ui/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/core/ui/j$c;
    }
.end annotation


# static fields
.field private static final A:Landroid/view/animation/Interpolator;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:[F

.field private e:[F

.field private f:[F

.field private g:[F

.field private h:[I

.field private i:[I

.field private j:[I

.field private k:I

.field private l:Landroid/view/VelocityTracker;

.field private m:F

.field private n:F

.field private o:I

.field private p:I

.field private q:Lcom/dcloud/android/v4/widget/ScrollerCompat;

.field private final r:Lio/dcloud/common/core/ui/j$c;

.field private s:Landroid/view/View;

.field private t:Z

.field private final u:Landroid/view/ViewGroup;

.field private v:I

.field private w:Lio/dcloud/common/core/ui/b;

.field private x:Lio/dcloud/common/core/ui/a;

.field private final y:Ljava/lang/Runnable;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/dcloud/common/core/ui/j$a;

    invoke-direct {v0}, Lio/dcloud/common/core/ui/j$a;-><init>()V

    sput-object v0, Lio/dcloud/common/core/ui/j;->A:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lio/dcloud/common/core/ui/j$c;Lio/dcloud/common/core/ui/a;)V
    .registers 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lio/dcloud/common/core/ui/j;->c:I

    const/16 v0, 0xaa

    .line 41
    iput v0, p0, Lio/dcloud/common/core/ui/j;->v:I

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lio/dcloud/common/core/ui/j;->x:Lio/dcloud/common/core/ui/a;

    .line 266
    new-instance v0, Lio/dcloud/common/core/ui/j$b;

    invoke-direct {v0, p0}, Lio/dcloud/common/core/ui/j$b;-><init>(Lio/dcloud/common/core/ui/j;)V

    iput-object v0, p0, Lio/dcloud/common/core/ui/j;->y:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 886
    iput v0, p0, Lio/dcloud/common/core/ui/j;->z:I

    if-eqz p2, :cond_5e

    if-eqz p3, :cond_56

    .line 887
    iput-object p4, p0, Lio/dcloud/common/core/ui/j;->x:Lio/dcloud/common/core/ui/a;

    .line 888
    iput-object p2, p0, Lio/dcloud/common/core/ui/j;->u:Landroid/view/ViewGroup;

    .line 889
    iput-object p3, p0, Lio/dcloud/common/core/ui/j;->r:Lio/dcloud/common/core/ui/j$c;

    .line 890
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 891
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 p4, 0x41a00000    # 20.0f

    mul-float p3, p3, p4

    const/high16 p4, 0x3f000000    # 0.5f

    add-float/2addr p3, p4

    float-to-int p3, p3

    .line 892
    iput p3, p0, Lio/dcloud/common/core/ui/j;->o:I

    .line 894
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Lio/dcloud/common/core/ui/j;->b:I

    .line 895
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lio/dcloud/common/core/ui/j;->m:F

    .line 896
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lio/dcloud/common/core/ui/j;->n:F

    .line 897
    sget-object p2, Lio/dcloud/common/core/ui/j;->A:Landroid/view/animation/Interpolator;

    invoke-static {p1, p2}, Lcom/dcloud/android/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Lcom/dcloud/android/v4/widget/ScrollerCompat;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/core/ui/j;->q:Lcom/dcloud/android/v4/widget/ScrollerCompat;

    return-void

    .line 898
    :cond_56
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Callback may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 899
    :cond_5e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parent view may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lio/dcloud/common/core/ui/j$c;Lio/dcloud/common/core/ui/a;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lio/dcloud/common/core/ui/j;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lio/dcloud/common/core/ui/j$c;Lio/dcloud/common/core/ui/a;)V

    return-void
.end method

.method private a(F)F
    .registers 6

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double v0, v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    .line 35
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private a(FFF)F
    .registers 6

    .line 34
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float p2, v0, p2

    if-gez p2, :cond_a

    return v1

    :cond_a
    cmpl-float p2, v0, p3

    if-lez p2, :cond_15

    cmpl-float p1, p1, v1

    if-lez p1, :cond_13

    goto :goto_14

    :cond_13
    neg-float p3, p3

    :goto_14
    return p3

    :cond_15
    return p1
.end method

.method private a(III)I
    .registers 5

    .line 33
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p2, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    if-le v0, p3, :cond_f

    if-lez p1, :cond_d

    goto :goto_e

    :cond_d
    neg-int p3, p3

    :goto_e
    return p3

    :cond_f
    return p1
.end method

.method private a(Landroid/view/View;IIII)I
    .registers 12

    .line 17
    iget v0, p0, Lio/dcloud/common/core/ui/j;->n:F

    float-to-int v0, v0

    iget v1, p0, Lio/dcloud/common/core/ui/j;->m:F

    float-to-int v1, v1

    invoke-direct {p0, p4, v0, v1}, Lio/dcloud/common/core/ui/j;->a(III)I

    move-result p4

    .line 18
    iget v0, p0, Lio/dcloud/common/core/ui/j;->n:F

    float-to-int v0, v0

    iget v1, p0, Lio/dcloud/common/core/ui/j;->m:F

    float-to-int v1, v1

    invoke-direct {p0, p5, v0, v1}, Lio/dcloud/common/core/ui/j;->a(III)I

    move-result p5

    .line 19
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 20
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 21
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 22
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v4, v2, v3

    add-int v5, v0, v1

    if-eqz p4, :cond_2d

    int-to-float v0, v2

    int-to-float v2, v4

    goto :goto_2f

    :cond_2d
    int-to-float v0, v0

    int-to-float v2, v5

    :goto_2f
    div-float/2addr v0, v2

    if-eqz p5, :cond_35

    int-to-float v1, v3

    int-to-float v2, v4

    goto :goto_37

    :cond_35
    int-to-float v1, v1

    int-to-float v2, v5

    :goto_37
    div-float/2addr v1, v2

    .line 31
    iget-object v2, p0, Lio/dcloud/common/core/ui/j;->r:Lio/dcloud/common/core/ui/j$c;

    invoke-virtual {v2, p1}, Lio/dcloud/common/core/ui/j$c;->a(Landroid/view/View;)I

    move-result v2

    invoke-direct {p0, p2, p4, v2}, Lio/dcloud/common/core/ui/j;->b(III)I

    move-result p2

    .line 32
    iget-object p4, p0, Lio/dcloud/common/core/ui/j;->r:Lio/dcloud/common/core/ui/j$c;

    invoke-virtual {p4, p1}, Lio/dcloud/common/core/ui/j$c;->b(Landroid/view/View;)I

    move-result p1

    invoke-direct {p0, p3, p5, p1}, Lio/dcloud/common/core/ui/j;->b(III)I

    move-result p1

    int-to-float p2, p2

    mul-float p2, p2, v0

    int-to-float p1, p1

    mul-float p1, p1, v1

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method private a(FF)V
    .registers 6

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/j;->t:Z

    .line 70
    iget-object v1, p0, Lio/dcloud/common/core/ui/j;->r:Lio/dcloud/common/core/ui/j$c;

    iget-object v2, p0, Lio/dcloud/common/core/ui/j;->s:Landroid/view/View;

    invoke-virtual {v1, v2, p1, p2}, Lio/dcloud/common/core/ui/j$c;->a(Landroid/view/View;FF)V

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lio/dcloud/common/core/ui/j;->t:Z

    .line 73
    iget p2, p0, Lio/dcloud/common/core/ui/j;->a:I

    if-ne p2, v0, :cond_14

    .line 76
    invoke-virtual {p0, p1}, Lio/dcloud/common/core/ui/j;->d(I)V

    :cond_14
    return-void
.end method

.method private a(FFI)V
    .registers 6

    const/4 v0, 0x1

    .line 439
    invoke-direct {p0, p1, p2, p3, v0}, Lio/dcloud/common/core/ui/j;->a(FFII)Z

    move-result v0

    const/4 v1, 0x4

    .line 442
    invoke-direct {p0, p2, p1, p3, v1}, Lio/dcloud/common/core/ui/j;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_e

    or-int/lit8 v0, v0, 0x4

    :cond_e
    const/4 v1, 0x2

    .line 445
    invoke-direct {p0, p1, p2, p3, v1}, Lio/dcloud/common/core/ui/j;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_17

    or-int/lit8 v0, v0, 0x2

    :cond_17
    const/16 v1, 0x8

    .line 448
    invoke-direct {p0, p2, p1, p3, v1}, Lio/dcloud/common/core/ui/j;->a(FFII)Z

    move-result p1

    if-eqz p1, :cond_21

    or-int/lit8 v0, v0, 0x8

    :cond_21
    if-eqz v0, :cond_2f

    .line 453
    iget-object p1, p0, Lio/dcloud/common/core/ui/j;->i:[I

    aget p2, p1, p3

    or-int/2addr p2, v0

    aput p2, p1, p3

    .line 454
    iget-object p1, p0, Lio/dcloud/common/core/ui/j;->r:Lio/dcloud/common/core/ui/j$c;

    invoke-virtual {p1, v0, p3}, Lio/dcloud/common/core/ui/j$c;->a(II)V

    :cond_2f
    return-void
.end method

.method private a(I)V
    .registers 4

    .line 77
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->d:[F

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 80
    aput v1, v0, p1

    .line 81
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->e:[F

    aput v1, v0, p1

    .line 82
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->f:[F

    aput v1, v0, p1

    .line 83
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->g:[F

    aput v1, v0, p1

    .line 84
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->h:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 85
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->i:[I

    aput v1, v0, p1

    .line 86
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->j:[I

    aput v1, v0, p1

    .line 87
    iget v0, p0, Lio/dcloud/common/core/ui/j;->k:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lio/dcloud/common/core/ui/j;->k:I

    return-void
.end method

.method private a(IIII)V
    .registers 15

    .line 478
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 479
    iget-object v1, p0, Lio/dcloud/common/core/ui/j;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-eqz p3, :cond_1d

    .line 481
    iget-object v2, p0, Lio/dcloud/common/core/ui/j;->r:Lio/dcloud/common/core/ui/j$c;

    iget-object v3, p0, Lio/dcloud/common/core/ui/j;->s:Landroid/view/View;

    invoke-virtual {v2, v3, p1, p3}, Lio/dcloud/common/core/ui/j$c;->a(Landroid/view/View;II)I

    move-result p1

    .line 482
    iget-object v2, p0, Lio/dcloud/common/core/ui/j;->s:Landroid/view/View;

    sub-int v3, p1, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_1d
    move v6, p1

    if-nez p3, :cond_22

    if-eqz p4, :cond_2e

    :cond_22
    sub-int v8, v6, v0

    sub-int v9, p2, v1

    .line 488
    iget-object v4, p0, Lio/dcloud/common/core/ui/j;->r:Lio/dcloud/common/core/ui/j$c;

    iget-object v5, p0, Lio/dcloud/common/core/ui/j;->s:Landroid/view/View;

    move v7, p2

    invoke-virtual/range {v4 .. v9}, Lio/dcloud/common/core/ui/j$c;->a(Landroid/view/View;IIII)V

    :cond_2e
    return-void
.end method

.method private a(FFII)Z
    .registers 8

    .line 455
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 456
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 458
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->h:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    const/4 v1, 0x0

    if-ne v0, p4, :cond_56

    iget v0, p0, Lio/dcloud/common/core/ui/j;->p:I

    and-int/2addr v0, p4

    if-eqz v0, :cond_56

    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->j:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_56

    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->i:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_56

    iget v0, p0, Lio/dcloud/common/core/ui/j;->b:I

    int-to-float v0, v0

    cmpg-float v2, p1, v0

    if-gtz v2, :cond_2f

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_2f

    goto :goto_56

    :cond_2f
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p2, p2, v0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_47

    .line 464
    iget-object p2, p0, Lio/dcloud/common/core/ui/j;->r:Lio/dcloud/common/core/ui/j$c;

    invoke-virtual {p2, p4}, Lio/dcloud/common/core/ui/j$c;->b(I)Z

    move-result p2

    if-eqz p2, :cond_47

    .line 465
    iget-object p1, p0, Lio/dcloud/common/core/ui/j;->j:[I

    aget p2, p1, p3

    or-int/2addr p2, p4

    aput p2, p1, p3

    return v1

    .line 468
    :cond_47
    iget-object p2, p0, Lio/dcloud/common/core/ui/j;->i:[I

    aget p2, p2, p3

    and-int/2addr p2, p4

    if-nez p2, :cond_56

    iget p2, p0, Lio/dcloud/common/core/ui/j;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_56

    const/4 v1, 0x1

    :cond_56
    :goto_56
    return v1
.end method

.method private a(Landroid/view/View;FF)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 469
    :cond_4
    iget-object v1, p0, Lio/dcloud/common/core/ui/j;->r:Lio/dcloud/common/core/ui/j$c;

    invoke-virtual {v1, p1}, Lio/dcloud/common/core/ui/j$c;->a(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 470
    :goto_10
    iget-object v3, p0, Lio/dcloud/common/core/ui/j;->r:Lio/dcloud/common/core/ui/j$c;

    invoke-virtual {v3, p1}, Lio/dcloud/common/core/ui/j$c;->b(Landroid/view/View;)I

    move-result p1

    if-lez p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    if-eqz v1, :cond_2f

    if-eqz p1, :cond_2f

    mul-float p2, p2, p2

    mul-float p3, p3, p3

    add-float/2addr p2, p3

    .line 473
    iget p1, p0, Lio/dcloud/common/core/ui/j;->b:I

    mul-int p1, p1, p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_2e

    const/4 v0, 0x1

    :cond_2e
    return v0

    :cond_2f
    if-eqz v1, :cond_3e

    .line 475
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lio/dcloud/common/core/ui/j;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3d

    const/4 v0, 0x1

    :cond_3d
    return v0

    :cond_3e
    if-eqz p1, :cond_4c

    .line 477
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lio/dcloud/common/core/ui/j;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_4c

    const/4 v0, 0x1

    :cond_4c
    return v0
.end method

.method private b(II)I
    .registers 6

    .line 91
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    iget v1, p0, Lio/dcloud/common/core/ui/j;->o:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 93
    :goto_e
    iget-object v1, p0, Lio/dcloud/common/core/ui/j;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Lio/dcloud/common/core/ui/j;->o:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1b

    or-int/lit8 v0, v0, 0x4

    .line 95
    :cond_1b
    iget-object v1, p0, Lio/dcloud/common/core/ui/j;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Lio/dcloud/common/core/ui/j;->o:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_28

    or-int/lit8 v0, v0, 0x2

    .line 97
    :cond_28
    iget-object p1, p0, Lio/dcloud/common/core/ui/j;->u:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result p1

    iget v1, p0, Lio/dcloud/common/core/ui/j;->o:I

    sub-int/2addr p1, v1

    if-le p2, p1, :cond_35

    or-int/lit8 v0, v0, 0x8

    :cond_35
    return v0
.end method

.method private b(III)I
    .registers 7

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 19
    :cond_4
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 20
    div-int/lit8 v1, v0, 0x2

    .line 21
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v1, v1

    .line 23
    invoke-direct {p0, v2}, Lio/dcloud/common/core/ui/j;->a(F)F

    move-result v2

    mul-float v2, v2, v1

    add-float/2addr v1, v2

    .line 26
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_38

    int-to-float p1, p2

    div-float/2addr v1, p1

    .line 28
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_45

    .line 30
    :cond_38
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    add-float/2addr p1, v0

    const/high16 p2, 0x43800000    # 256.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    :goto_45
    const/16 p2, 0x258

    .line 33
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private b()V
    .registers 3

    .line 34
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->d:[F

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 37
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 38
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->e:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 39
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->f:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 40
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->g:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 41
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->h:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 42
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->i:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 43
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->j:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 44
    iput v1, p0, Lio/dcloud/common/core/ui/j;->k:I

    return-void
.end method

.method private b(FFI)V
    .registers 6

    .line 71
    invoke-direct {p0, p3}, Lio/dcloud/common/core/ui/j;->b(I)V

    .line 72
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->d:[F

    iget-object v1, p0, Lio/dcloud/common/core/ui/j;->f:[F

    aput p1, v1, p3

    aput p1, v0, p3

    .line 73
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->e:[F

    iget-object v1, p0, Lio/dcloud/common/core/ui/j;->g:[F

    aput p2, v1, p3

    aput p2, v0, p3

    .line 74
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->h:[I

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-direct {p0, p1, p2}, Lio/dcloud/common/core/ui/j;->b(II)I

    move-result p1

    aput p1, v0, p3

    .line 75
    iget p1, p0, Lio/dcloud/common/core/ui/j;->k:I

    const/4 p2, 0x1

    shl-int/2addr p2, p3

    or-int/2addr p1, p2

    iput p1, p0, Lio/dcloud/common/core/ui/j;->k:I

    .line 76
    iget-object p1, p0, Lio/dcloud/common/core/ui/j;->x:Lio/dcloud/common/core/ui/a;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/a;->i()Lio/dcloud/common/core/ui/b;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/core/ui/j;->w:Lio/dcloud/common/core/ui/b;

    return-void
.end method

.method private b(I)V
    .registers 11

    .line 45
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->d:[F

    if-eqz v0, :cond_7

    array-length v1, v0

    if-gt v1, p1, :cond_50

    :cond_7
    add-int/lit8 p1, p1, 0x1

    .line 46
    new-array v1, p1, [F

    .line 47
    new-array v2, p1, [F

    .line 48
    new-array v3, p1, [F

    .line 49
    new-array v4, p1, [F

    .line 50
    new-array v5, p1, [I

    .line 51
    new-array v6, p1, [I

    .line 52
    new-array p1, p1, [I

    if-eqz v0, :cond_42

    .line 55
    array-length v7, v0

    const/4 v8, 0x0

    invoke-static {v0, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->e:[F

    array-length v7, v0

    invoke-static {v0, v8, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->f:[F

    array-length v7, v0

    invoke-static {v0, v8, v3, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->g:[F

    array-length v7, v0

    invoke-static {v0, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->h:[I

    array-length v7, v0

    invoke-static {v0, v8, v5, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->i:[I

    array-length v7, v0

    invoke-static {v0, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->j:[I

    array-length v7, v0

    invoke-static {v0, v8, p1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    :cond_42
    iput-object v1, p0, Lio/dcloud/common/core/ui/j;->d:[F

    .line 65
    iput-object v2, p0, Lio/dcloud/common/core/ui/j;->e:[F

    .line 66
    iput-object v3, p0, Lio/dcloud/common/core/ui/j;->f:[F

    .line 67
    iput-object v4, p0, Lio/dcloud/common/core/ui/j;->g:[F

    .line 68
    iput-object v5, p0, Lio/dcloud/common/core/ui/j;->h:[I

    .line 69
    iput-object v6, p0, Lio/dcloud/common/core/ui/j;->i:[I

    .line 70
    iput-object p1, p0, Lio/dcloud/common/core/ui/j;->j:[I

    :cond_50
    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .registers 8

    .line 77
    invoke-static {p1}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1e

    .line 79
    invoke-static {p1, v1}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 80
    invoke-static {p1, v1}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 81
    invoke-static {p1, v1}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 82
    iget-object v5, p0, Lio/dcloud/common/core/ui/j;->f:[F

    aput v3, v5, v2

    .line 83
    iget-object v3, p0, Lio/dcloud/common/core/ui/j;->g:[F

    aput v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1e
    return-void
.end method

.method private b(IIII)Z
    .registers 15

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 4
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr p1, v2

    sub-int/2addr p2, v3

    if-nez p1, :cond_1c

    if-nez p2, :cond_1c

    .line 10
    iget-object p1, p0, Lio/dcloud/common/core/ui/j;->q:Lcom/dcloud/android/v4/widget/ScrollerCompat;

    invoke-virtual {p1}, Lcom/dcloud/android/v4/widget/ScrollerCompat;->abortAnimation()V

    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Lio/dcloud/common/core/ui/j;->d(I)V

    return p1

    .line 15
    :cond_1c
    iget-object v5, p0, Lio/dcloud/common/core/ui/j;->s:Landroid/view/View;

    move-object v4, p0

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v4 .. v9}, Lio/dcloud/common/core/ui/j;->a(Landroid/view/View;IIII)I

    move-result v6

    .line 16
    iget-object v1, p0, Lio/dcloud/common/core/ui/j;->q:Lcom/dcloud/android/v4/widget/ScrollerCompat;

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/dcloud/android/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    const/4 p1, 0x2

    .line 18
    invoke-virtual {p0, p1}, Lio/dcloud/common/core/ui/j;->d(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private d()V
    .registers 5

    .line 7
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->l:Landroid/view/VelocityTracker;

    iget v1, p0, Lio/dcloud/common/core/ui/j;->m:F

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 8
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->l:Landroid/view/VelocityTracker;

    iget v1, p0, Lio/dcloud/common/core/ui/j;->c:I

    .line 9
    invoke-static {v0, v1}, Landroidx/core/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    iget v1, p0, Lio/dcloud/common/core/ui/j;->n:F

    iget v2, p0, Lio/dcloud/common/core/ui/j;->m:F

    .line 10
    invoke-direct {p0, v0, v1, v2}, Lio/dcloud/common/core/ui/j;->a(FFF)F

    move-result v0

    .line 13
    iget-object v1, p0, Lio/dcloud/common/core/ui/j;->l:Landroid/view/VelocityTracker;

    iget v2, p0, Lio/dcloud/common/core/ui/j;->c:I

    .line 14
    invoke-static {v1, v2}, Landroidx/core/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v1

    iget v2, p0, Lio/dcloud/common/core/ui/j;->n:F

    iget v3, p0, Lio/dcloud/common/core/ui/j;->m:F

    .line 15
    invoke-direct {p0, v1, v2, v3}, Lio/dcloud/common/core/ui/j;->a(FFF)F

    move-result v1

    .line 18
    invoke-direct {p0, v0, v1}, Lio/dcloud/common/core/ui/j;->a(FF)V

    return-void
.end method


# virtual methods
.method public a(II)Landroid/view/View;
    .registers 6

    .line 491
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->w:Lio/dcloud/common/core/ui/b;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 492
    iget-object p1, p0, Lio/dcloud/common/core/ui/j;->w:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 494
    :cond_11
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_19
    if-ltz v0, :cond_47

    .line 496
    iget-object v1, p0, Lio/dcloud/common/core/ui/j;->u:Landroid/view/ViewGroup;

    iget-object v2, p0, Lio/dcloud/common/core/ui/j;->r:Lio/dcloud/common/core/ui/j$c;

    invoke-virtual {v2, v0}, Lio/dcloud/common/core/ui/j$c;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 497
    instance-of v2, v1, Lcom/dcloud/android/widget/AbsoluteLayout;

    if-eqz v2, :cond_44

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_44

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_44

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_44

    .line 498
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_44

    return-object v1

    :cond_44
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    :cond_47
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .registers 2

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lio/dcloud/common/core/ui/j;->c:I

    .line 12
    invoke-direct {p0}, Lio/dcloud/common/core/ui/j;->b()V

    .line 14
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->l:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_10

    .line 15
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lio/dcloud/common/core/ui/j;->l:Landroid/view/VelocityTracker;

    :cond_10
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .registers 11

    .line 88
    invoke-static {p1}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 89
    invoke-static {p1}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    if-nez v0, :cond_d

    .line 94
    invoke-virtual {p0}, Lio/dcloud/common/core/ui/j;->a()V

    .line 97
    :cond_d
    iget-object v2, p0, Lio/dcloud/common/core/ui/j;->l:Landroid/view/VelocityTracker;

    if-nez v2, :cond_17

    .line 98
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lio/dcloud/common/core/ui/j;->l:Landroid/view/VelocityTracker;

    .line 100
    :cond_17
    iget-object v2, p0, Lio/dcloud/common/core/ui/j;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_14b

    const/4 v3, 0x1

    if-eq v0, v3, :cond_140

    const/4 v4, 0x2

    if-eq v0, v4, :cond_bd

    const/4 v4, 0x3

    if-eq v0, v4, :cond_b0

    const/4 v4, 0x5

    if-eq v0, v4, :cond_75

    const/4 v4, 0x6

    if-eq v0, v4, :cond_30

    goto/16 :goto_171

    .line 198
    :cond_30
    invoke-static {p1, v1}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 199
    iget v1, p0, Lio/dcloud/common/core/ui/j;->a:I

    if-ne v1, v3, :cond_70

    iget v1, p0, Lio/dcloud/common/core/ui/j;->c:I

    if-ne v0, v1, :cond_70

    .line 203
    invoke-static {p1}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v1

    :goto_40
    const/4 v3, -0x1

    if-ge v2, v1, :cond_6a

    .line 205
    invoke-static {p1, v2}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v4

    .line 206
    iget v5, p0, Lio/dcloud/common/core/ui/j;->c:I

    if-ne v4, v5, :cond_4c

    goto :goto_67

    .line 211
    :cond_4c
    invoke-static {p1, v2}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 212
    invoke-static {p1, v2}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v6

    float-to-int v5, v5

    float-to-int v6, v6

    .line 213
    invoke-virtual {p0, v5, v6}, Lio/dcloud/common/core/ui/j;->a(II)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lio/dcloud/common/core/ui/j;->s:Landroid/view/View;

    if-ne v5, v6, :cond_67

    .line 214
    invoke-virtual {p0, v6, v4}, Lio/dcloud/common/core/ui/j;->b(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 215
    iget p1, p0, Lio/dcloud/common/core/ui/j;->c:I

    goto :goto_6b

    :cond_67
    :goto_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    :cond_6a
    const/4 p1, -0x1

    :goto_6b
    if-ne p1, v3, :cond_70

    .line 223
    invoke-direct {p0}, Lio/dcloud/common/core/ui/j;->d()V

    .line 226
    :cond_70
    invoke-direct {p0, v0}, Lio/dcloud/common/core/ui/j;->a(I)V

    goto/16 :goto_171

    .line 227
    :cond_75
    invoke-static {p1, v1}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 228
    invoke-static {p1, v1}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 229
    invoke-static {p1, v1}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 231
    invoke-direct {p0, v2, p1, v0}, Lio/dcloud/common/core/ui/j;->b(FFI)V

    .line 234
    iget v1, p0, Lio/dcloud/common/core/ui/j;->a:I

    if-nez v1, :cond_a1

    float-to-int v1, v2

    float-to-int p1, p1

    .line 238
    invoke-virtual {p0, v1, p1}, Lio/dcloud/common/core/ui/j;->a(II)Landroid/view/View;

    move-result-object p1

    .line 239
    invoke-virtual {p0, p1, v0}, Lio/dcloud/common/core/ui/j;->b(Landroid/view/View;I)Z

    .line 241
    iget-object p1, p0, Lio/dcloud/common/core/ui/j;->h:[I

    aget p1, p1, v0

    .line 242
    iget v1, p0, Lio/dcloud/common/core/ui/j;->p:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_171

    .line 243
    iget-object v1, p0, Lio/dcloud/common/core/ui/j;->r:Lio/dcloud/common/core/ui/j$c;

    invoke-virtual {v1, p1, v0}, Lio/dcloud/common/core/ui/j$c;->b(II)V

    goto/16 :goto_171

    :cond_a1
    float-to-int v1, v2

    float-to-int p1, p1

    .line 245
    invoke-virtual {p0, v1, p1}, Lio/dcloud/common/core/ui/j;->c(II)Z

    move-result p1

    if-eqz p1, :cond_171

    .line 253
    iget-object p1, p0, Lio/dcloud/common/core/ui/j;->s:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lio/dcloud/common/core/ui/j;->b(Landroid/view/View;I)Z

    goto/16 :goto_171

    .line 341
    :cond_b0
    iget p1, p0, Lio/dcloud/common/core/ui/j;->a:I

    if-ne p1, v3, :cond_b8

    const/4 p1, 0x0

    .line 342
    invoke-direct {p0, p1, p1}, Lio/dcloud/common/core/ui/j;->a(FF)V

    .line 344
    :cond_b8
    invoke-virtual {p0}, Lio/dcloud/common/core/ui/j;->a()V

    goto/16 :goto_171

    .line 345
    :cond_bd
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->w:Lio/dcloud/common/core/ui/b;

    if-eqz v0, :cond_13f

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_c9

    goto/16 :goto_13f

    .line 348
    :cond_c9
    iget v0, p0, Lio/dcloud/common/core/ui/j;->a:I

    if-ne v0, v3, :cond_ff

    .line 349
    iget v0, p0, Lio/dcloud/common/core/ui/j;->c:I

    invoke-static {p1, v0}, Lcom/dcloud/android/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 350
    invoke-static {p1, v0}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 351
    invoke-static {p1, v0}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 352
    iget-object v2, p0, Lio/dcloud/common/core/ui/j;->f:[F

    iget v3, p0, Lio/dcloud/common/core/ui/j;->c:I

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 353
    iget-object v2, p0, Lio/dcloud/common/core/ui/j;->g:[F

    aget v2, v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 355
    iget-object v2, p0, Lio/dcloud/common/core/ui/j;->s:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Lio/dcloud/common/core/ui/j;->s:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v2, v3, v1, v0}, Lio/dcloud/common/core/ui/j;->a(IIII)V

    .line 357
    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/j;->b(Landroid/view/MotionEvent;)V

    goto/16 :goto_171

    .line 360
    :cond_ff
    invoke-static {p1}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    :goto_103
    if-ge v2, v0, :cond_13b

    .line 362
    invoke-static {p1, v2}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 363
    invoke-static {p1, v2}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 364
    invoke-static {p1, v2}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 365
    iget-object v6, p0, Lio/dcloud/common/core/ui/j;->d:[F

    aget v6, v6, v1

    sub-float v6, v4, v6

    .line 366
    iget-object v7, p0, Lio/dcloud/common/core/ui/j;->e:[F

    aget v7, v7, v1

    sub-float v7, v5, v7

    .line 368
    invoke-direct {p0, v6, v7, v1}, Lio/dcloud/common/core/ui/j;->a(FFI)V

    .line 369
    iget v8, p0, Lio/dcloud/common/core/ui/j;->a:I

    if-ne v8, v3, :cond_125

    goto :goto_13b

    :cond_125
    float-to-int v4, v4

    float-to-int v5, v5

    .line 374
    invoke-virtual {p0, v4, v5}, Lio/dcloud/common/core/ui/j;->a(II)Landroid/view/View;

    move-result-object v4

    .line 375
    invoke-direct {p0, v4, v6, v7}, Lio/dcloud/common/core/ui/j;->a(Landroid/view/View;FF)Z

    move-result v5

    if-eqz v5, :cond_138

    .line 376
    invoke-virtual {p0, v4, v1}, Lio/dcloud/common/core/ui/j;->b(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_138

    goto :goto_13b

    :cond_138
    add-int/lit8 v2, v2, 0x1

    goto :goto_103

    .line 380
    :cond_13b
    :goto_13b
    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/j;->b(Landroid/view/MotionEvent;)V

    goto :goto_171

    :cond_13f
    :goto_13f
    return-void

    .line 419
    :cond_140
    iget p1, p0, Lio/dcloud/common/core/ui/j;->a:I

    if-ne p1, v3, :cond_147

    .line 420
    invoke-direct {p0}, Lio/dcloud/common/core/ui/j;->d()V

    .line 422
    :cond_147
    invoke-virtual {p0}, Lio/dcloud/common/core/ui/j;->a()V

    goto :goto_171

    .line 423
    :cond_14b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 424
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 425
    invoke-static {p1, v2}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    float-to-int v2, v0

    float-to-int v3, v1

    .line 426
    invoke-virtual {p0, v2, v3}, Lio/dcloud/common/core/ui/j;->a(II)Landroid/view/View;

    move-result-object v2

    .line 428
    invoke-direct {p0, v0, v1, p1}, Lio/dcloud/common/core/ui/j;->b(FFI)V

    .line 434
    invoke-virtual {p0, v2, p1}, Lio/dcloud/common/core/ui/j;->b(Landroid/view/View;I)Z

    .line 436
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->h:[I

    aget v0, v0, p1

    .line 437
    iget v1, p0, Lio/dcloud/common/core/ui/j;->p:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_171

    .line 438
    iget-object v1, p0, Lio/dcloud/common/core/ui/j;->r:Lio/dcloud/common/core/ui/j$c;

    invoke-virtual {v1, v0, p1}, Lio/dcloud/common/core/ui/j$c;->b(II)V

    :cond_171
    :goto_171
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/core/ui/j;->u:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_16

    .line 6
    iput-object p1, p0, Lio/dcloud/common/core/ui/j;->s:Landroid/view/View;

    .line 7
    iput p2, p0, Lio/dcloud/common/core/ui/j;->c:I

    .line 8
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->r:Lio/dcloud/common/core/ui/j$c;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/common/core/ui/j$c;->a(Landroid/view/View;I)V

    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Lio/dcloud/common/core/ui/j;->d(I)V

    return-void

    .line 10
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "captureChildView: parameter must be a descendant of the SwipeBackHelper\'s tracked parent view ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->u:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/view/View;II)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 489
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_1d

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_1d

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    if-lt p3, p2, :cond_1d

    .line 490
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-ge p3, p1, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    return v0
.end method

.method public a(Z)Z
    .registers 13

    .line 36
    iget v0, p0, Lio/dcloud/common/core/ui/j;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_68

    .line 37
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->q:Lcom/dcloud/android/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Lcom/dcloud/android/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    .line 38
    iget-object v3, p0, Lio/dcloud/common/core/ui/j;->q:Lcom/dcloud/android/v4/widget/ScrollerCompat;

    invoke-virtual {v3}, Lcom/dcloud/android/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v3

    .line 39
    iget-object v4, p0, Lio/dcloud/common/core/ui/j;->q:Lcom/dcloud/android/v4/widget/ScrollerCompat;

    invoke-virtual {v4}, Lcom/dcloud/android/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v10

    .line 40
    iget-object v4, p0, Lio/dcloud/common/core/ui/j;->s:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v8, v3, v4

    .line 41
    iget-object v4, p0, Lio/dcloud/common/core/ui/j;->s:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v9, v10, v4

    if-eqz v8, :cond_2f

    .line 44
    iget-object v4, p0, Lio/dcloud/common/core/ui/j;->s:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_2f
    if-nez v8, :cond_33

    if-eqz v9, :cond_3c

    .line 48
    :cond_33
    iget-object v4, p0, Lio/dcloud/common/core/ui/j;->r:Lio/dcloud/common/core/ui/j$c;

    iget-object v5, p0, Lio/dcloud/common/core/ui/j;->s:Landroid/view/View;

    move v6, v3

    move v7, v10

    invoke-virtual/range {v4 .. v9}, Lio/dcloud/common/core/ui/j$c;->a(Landroid/view/View;IIII)V

    :cond_3c
    if-eqz v0, :cond_59

    .line 51
    iget-object v4, p0, Lio/dcloud/common/core/ui/j;->q:Lcom/dcloud/android/v4/widget/ScrollerCompat;

    invoke-virtual {v4}, Lcom/dcloud/android/v4/widget/ScrollerCompat;->getFinalX()I

    move-result v4

    if-ne v3, v4, :cond_59

    iget-object v3, p0, Lio/dcloud/common/core/ui/j;->q:Lcom/dcloud/android/v4/widget/ScrollerCompat;

    invoke-virtual {v3}, Lcom/dcloud/android/v4/widget/ScrollerCompat;->getFinalY()I

    move-result v3

    if-ne v10, v3, :cond_59

    .line 55
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->q:Lcom/dcloud/android/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Lcom/dcloud/android/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 56
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->q:Lcom/dcloud/android/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Lcom/dcloud/android/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v0

    :cond_59
    if-nez v0, :cond_68

    if-eqz p1, :cond_65

    .line 61
    iget-object p1, p0, Lio/dcloud/common/core/ui/j;->u:Landroid/view/ViewGroup;

    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->y:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_68

    .line 63
    :cond_65
    invoke-virtual {p0, v1}, Lio/dcloud/common/core/ui/j;->d(I)V

    .line 68
    :cond_68
    :goto_68
    iget p1, p0, Lio/dcloud/common/core/ui/j;->a:I

    if-ne p1, v2, :cond_6d

    const/4 v1, 0x1

    :cond_6d
    return v1
.end method

.method public b(F)V
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/common/core/ui/j;->n:F

    return-void
.end method

.method b(Landroid/view/View;I)Z
    .registers 5

    .line 84
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->s:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_a

    iget v0, p0, Lio/dcloud/common/core/ui/j;->c:I

    if-ne v0, p2, :cond_a

    return v1

    :cond_a
    if-eqz p1, :cond_1a

    .line 88
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->r:Lio/dcloud/common/core/ui/j$c;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/common/core/ui/j$c;->b(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 89
    iput p2, p0, Lio/dcloud/common/core/ui/j;->c:I

    .line 90
    invoke-virtual {p0, p1, p2}, Lio/dcloud/common/core/ui/j;->a(Landroid/view/View;I)V

    return v1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public c()I
    .registers 2

    .line 1
    iget v0, p0, Lio/dcloud/common/core/ui/j;->a:I

    return v0
.end method

.method public c(I)Z
    .registers 4

    .line 2
    iget v0, p0, Lio/dcloud/common/core/ui/j;->k:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public c(II)Z
    .registers 4

    .line 284
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->s:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lio/dcloud/common/core/ui/j;->a(Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .registers 13

    .line 3
    invoke-static {p1}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 4
    invoke-static {p1}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    if-nez v0, :cond_d

    .line 9
    invoke-virtual {p0}, Lio/dcloud/common/core/ui/j;->a()V

    .line 12
    :cond_d
    iget-object v2, p0, Lio/dcloud/common/core/ui/j;->l:Landroid/view/VelocityTracker;

    if-nez v2, :cond_17

    .line 13
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lio/dcloud/common/core/ui/j;->l:Landroid/view/VelocityTracker;

    .line 15
    :cond_17
    iget-object v2, p0, Lio/dcloud/common/core/ui/j;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_f7

    if-eq v0, v3, :cond_f1

    const/4 v5, 0x6

    if-eq v0, v2, :cond_71

    const/4 v6, 0x3

    if-eq v0, v6, :cond_f1

    const/4 v6, 0x5

    if-eq v0, v6, :cond_3b

    if-eq v0, v5, :cond_30

    goto/16 :goto_127

    .line 105
    :cond_30
    iput v5, p0, Lio/dcloud/common/core/ui/j;->z:I

    .line 106
    invoke-static {p1, v1}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    .line 107
    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/j;->a(I)V

    goto/16 :goto_127

    .line 108
    :cond_3b
    iput v4, p0, Lio/dcloud/common/core/ui/j;->z:I

    .line 109
    invoke-static {p1, v1}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 110
    invoke-static {p1, v1}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 111
    invoke-static {p1, v1}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    .line 112
    invoke-direct {p0, v5, p1, v0}, Lio/dcloud/common/core/ui/j;->b(FFI)V

    .line 115
    iget v1, p0, Lio/dcloud/common/core/ui/j;->a:I

    if-nez v1, :cond_60

    .line 116
    iget-object p1, p0, Lio/dcloud/common/core/ui/j;->h:[I

    aget p1, p1, v0

    .line 117
    iget v1, p0, Lio/dcloud/common/core/ui/j;->p:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_127

    .line 118
    iget-object v1, p0, Lio/dcloud/common/core/ui/j;->r:Lio/dcloud/common/core/ui/j$c;

    invoke-virtual {v1, p1, v0}, Lio/dcloud/common/core/ui/j$c;->b(II)V

    goto/16 :goto_127

    :cond_60
    if-ne v1, v2, :cond_127

    float-to-int v1, v5

    float-to-int p1, p1

    .line 122
    invoke-virtual {p0, v1, p1}, Lio/dcloud/common/core/ui/j;->a(II)Landroid/view/View;

    move-result-object p1

    .line 123
    iget-object v1, p0, Lio/dcloud/common/core/ui/j;->s:Landroid/view/View;

    if-ne p1, v1, :cond_127

    .line 124
    invoke-virtual {p0, p1, v0}, Lio/dcloud/common/core/ui/j;->b(Landroid/view/View;I)Z

    goto/16 :goto_127

    .line 131
    :cond_71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lio/dcloud/common/core/ui/j;->v:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_f0

    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->w:Lio/dcloud/common/core/ui/b;

    if-eqz v0, :cond_f0

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_87

    goto :goto_f0

    .line 135
    :cond_87
    iget v0, p0, Lio/dcloud/common/core/ui/j;->z:I

    if-eqz v0, :cond_8d

    if-ne v0, v5, :cond_98

    :cond_8d
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->r:Lio/dcloud/common/core/ui/j$c;

    iget-object v1, p0, Lio/dcloud/common/core/ui/j;->w:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v0, v1}, Lio/dcloud/common/core/ui/j$c;->a(Lio/dcloud/common/core/ui/b;)Z

    move-result v0

    if-nez v0, :cond_98

    return v4

    .line 139
    :cond_98
    iput v2, p0, Lio/dcloud/common/core/ui/j;->z:I

    .line 142
    invoke-static {p1}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x0

    :goto_9f
    if-ge v1, v0, :cond_ec

    .line 144
    invoke-static {p1, v1}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 145
    invoke-static {p1, v1}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 146
    invoke-static {p1, v1}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 147
    iget-object v7, p0, Lio/dcloud/common/core/ui/j;->d:[F

    aget v7, v7, v2

    sub-float v7, v5, v7

    .line 148
    iget-object v8, p0, Lio/dcloud/common/core/ui/j;->e:[F

    aget v8, v8, v2

    sub-float v8, v6, v8

    .line 149
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_c6

    return v4

    :cond_c6
    const/4 v9, 0x0

    cmpg-float v9, v7, v9

    if-gez v9, :cond_cc

    return v4

    .line 157
    :cond_cc
    invoke-direct {p0, v7, v8, v2}, Lio/dcloud/common/core/ui/j;->a(FFI)V

    .line 158
    iget v9, p0, Lio/dcloud/common/core/ui/j;->a:I

    if-ne v9, v3, :cond_d4

    goto :goto_ec

    :cond_d4
    float-to-int v5, v5

    float-to-int v6, v6

    .line 162
    invoke-virtual {p0, v5, v6}, Lio/dcloud/common/core/ui/j;->a(II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_e9

    .line 163
    invoke-direct {p0, v5, v7, v8}, Lio/dcloud/common/core/ui/j;->a(Landroid/view/View;FF)Z

    move-result v6

    if-eqz v6, :cond_e9

    .line 164
    invoke-virtual {p0, v5, v2}, Lio/dcloud/common/core/ui/j;->b(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_e9

    goto :goto_ec

    :cond_e9
    add-int/lit8 v1, v1, 0x1

    goto :goto_9f

    .line 168
    :cond_ec
    :goto_ec
    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/j;->b(Landroid/view/MotionEvent;)V

    goto :goto_127

    :cond_f0
    :goto_f0
    return v4

    .line 181
    :cond_f1
    iput v3, p0, Lio/dcloud/common/core/ui/j;->z:I

    .line 182
    invoke-virtual {p0}, Lio/dcloud/common/core/ui/j;->a()V

    goto :goto_127

    .line 183
    :cond_f7
    iput v4, p0, Lio/dcloud/common/core/ui/j;->z:I

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 186
    invoke-static {p1, v4}, Lcom/dcloud/android/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    .line 187
    invoke-direct {p0, v0, v1, p1}, Lio/dcloud/common/core/ui/j;->b(FFI)V

    float-to-int v0, v0

    float-to-int v1, v1

    .line 189
    invoke-virtual {p0, v0, v1}, Lio/dcloud/common/core/ui/j;->a(II)Landroid/view/View;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lio/dcloud/common/core/ui/j;->s:Landroid/view/View;

    if-ne v0, v1, :cond_119

    iget v1, p0, Lio/dcloud/common/core/ui/j;->a:I

    if-ne v1, v2, :cond_119

    .line 193
    invoke-virtual {p0, v0, p1}, Lio/dcloud/common/core/ui/j;->b(Landroid/view/View;I)Z

    .line 196
    :cond_119
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->h:[I

    aget v0, v0, p1

    .line 197
    iget v1, p0, Lio/dcloud/common/core/ui/j;->p:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_127

    .line 198
    iget-object v1, p0, Lio/dcloud/common/core/ui/j;->r:Lio/dcloud/common/core/ui/j$c;

    invoke-virtual {v1, v0, p1}, Lio/dcloud/common/core/ui/j$c;->b(II)V

    .line 283
    :cond_127
    :goto_127
    iget p1, p0, Lio/dcloud/common/core/ui/j;->a:I

    if-ne p1, v3, :cond_12c

    goto :goto_12d

    :cond_12c
    const/4 v3, 0x0

    :goto_12d
    return v3
.end method

.method d(I)V
    .registers 3

    .line 1
    iget v0, p0, Lio/dcloud/common/core/ui/j;->a:I

    if-eq v0, p1, :cond_10

    .line 2
    iput p1, p0, Lio/dcloud/common/core/ui/j;->a:I

    .line 3
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->r:Lio/dcloud/common/core/ui/j$c;

    invoke-virtual {v0, p1}, Lio/dcloud/common/core/ui/j$c;->c(I)V

    if-nez p1, :cond_10

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lio/dcloud/common/core/ui/j;->s:Landroid/view/View;

    :cond_10
    return-void
.end method

.method public d(II)Z
    .registers 4

    .line 6
    invoke-virtual {p0, p2}, Lio/dcloud/common/core/ui/j;->c(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->h:[I

    aget p2, v0, p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method

.method public e(I)V
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/common/core/ui/j;->o:I

    return-void
.end method

.method public e(II)Z
    .registers 6

    .line 2
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/j;->t:Z

    if-eqz v0, :cond_1b

    .line 7
    iget-object v0, p0, Lio/dcloud/common/core/ui/j;->l:Landroid/view/VelocityTracker;

    iget v1, p0, Lio/dcloud/common/core/ui/j;->c:I

    .line 8
    invoke-static {v0, v1}, Landroidx/core/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lio/dcloud/common/core/ui/j;->l:Landroid/view/VelocityTracker;

    iget v2, p0, Lio/dcloud/common/core/ui/j;->c:I

    .line 9
    invoke-static {v1, v2}, Landroidx/core/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v1

    float-to-int v1, v1

    .line 10
    invoke-direct {p0, p1, p2, v0, v1}, Lio/dcloud/common/core/ui/j;->b(IIII)Z

    move-result p1

    return p1

    .line 11
    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(I)V
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/common/core/ui/j;->p:I

    return-void
.end method

###### Class io.dcloud.common.core.ui.j.a (io.dcloud.common.core.ui.j$a)
.class final Lio/dcloud/common/core/ui/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/core/ui/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    mul-float v1, p1, p1

    mul-float v1, v1, p1

    mul-float v1, v1, p1

    mul-float v1, v1, p1

    add-float/2addr v1, v0

    return v1
.end method

###### Class io.dcloud.common.core.ui.j.b (io.dcloud.common.core.ui.j$b)
.class Lio/dcloud/common/core/ui/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/core/ui/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/j;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/j;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/j$b;->a:Lio/dcloud/common/core/ui/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/j$b;->a:Lio/dcloud/common/core/ui/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/dcloud/common/core/ui/j;->d(I)V

    return-void
.end method

###### Class io.dcloud.common.core.ui.j.c (io.dcloud.common.core.ui.j$c)
.class public abstract Lio/dcloud/common/core/ui/j$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/core/ui/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 2

    return p1
.end method

.method public abstract a(Landroid/view/View;)I
.end method

.method public abstract a(Landroid/view/View;II)I
.end method

.method public a(II)V
    .registers 3

    return-void
.end method

.method public abstract a(Landroid/view/View;FF)V
.end method

.method public a(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .registers 6

    return-void
.end method

.method public abstract a(Lio/dcloud/common/core/ui/b;)Z
.end method

.method public abstract b(Landroid/view/View;)I
.end method

.method public b(II)V
    .registers 3

    return-void
.end method

.method public b(I)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public abstract b(Landroid/view/View;I)Z
.end method

.method public c(I)V
    .registers 2

    return-void
.end method
