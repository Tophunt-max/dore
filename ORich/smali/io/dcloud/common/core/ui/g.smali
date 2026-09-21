###### Class io.dcloud.common.core.ui.g (io.dcloud.common.core.ui.g)
.class public Lio/dcloud/common/core/ui/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e0:Z = false


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:I

.field private G:Lio/dcloud/common/DHInterface/IFrameView;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:I

.field private K:Z

.field private L:F

.field private M:I

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:I

.field private R:I

.field private S:Landroid/util/DisplayMetrics;

.field private T:F

.field private U:F

.field private V:F

.field private W:F

.field private X:F

.field private Y:F

.field private Z:F

.field private a:Z

.field a0:Z

.field private b:Z

.field b0:Z

.field private c:Z

.field private c0:Ljava/lang/String;

.field private d:Z

.field private d0:Ljava/util/regex/Pattern;

.field private e:Z

.field private f:Landroid/view/VelocityTracker;

.field private g:Z

.field private h:I

.field private i:F

.field private j:F

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Lio/dcloud/common/core/ui/b;

.field private q:Lio/dcloud/common/core/ui/b;

.field private r:Landroid/view/View;

.field private s:Landroid/view/View;

.field private t:Z

.field private u:I

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:I

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lio/dcloud/common/DHInterface/IFrameView;Landroid/content/Context;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/g;->a:Z

    .line 3
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/g;->b:Z

    .line 4
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/g;->c:Z

    .line 5
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/g;->d:Z

    .line 6
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/g;->e:Z

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lio/dcloud/common/core/ui/g;->g:Z

    .line 17
    iput v0, p0, Lio/dcloud/common/core/ui/g;->l:I

    .line 18
    iput v0, p0, Lio/dcloud/common/core/ui/g;->m:I

    .line 20
    iput v0, p0, Lio/dcloud/common/core/ui/g;->n:I

    .line 21
    iput v0, p0, Lio/dcloud/common/core/ui/g;->o:I

    const/4 v2, 0x0

    .line 26
    iput-object v2, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    .line 30
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/g;->t:Z

    const v2, 0x7fffffff

    .line 32
    iput v2, p0, Lio/dcloud/common/core/ui/g;->u:I

    .line 40
    iput v2, p0, Lio/dcloud/common/core/ui/g;->x:I

    .line 51
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/g;->B:Z

    .line 53
    iput-boolean v1, p0, Lio/dcloud/common/core/ui/g;->C:Z

    .line 55
    iput-boolean v1, p0, Lio/dcloud/common/core/ui/g;->D:Z

    .line 58
    iput-boolean v1, p0, Lio/dcloud/common/core/ui/g;->E:Z

    const/4 v3, -0x1

    .line 60
    iput v3, p0, Lio/dcloud/common/core/ui/g;->F:I

    .line 86
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/g;->N:Z

    .line 87
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/g;->O:Z

    .line 88
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/g;->P:Z

    .line 89
    iput v2, p0, Lio/dcloud/common/core/ui/g;->Q:I

    .line 93
    iput v0, p0, Lio/dcloud/common/core/ui/g;->R:I

    const/high16 v2, 0x41a00000    # 20.0f

    .line 1068
    iput v2, p0, Lio/dcloud/common/core/ui/g;->T:F

    .line 1070
    iput-boolean v1, p0, Lio/dcloud/common/core/ui/g;->a0:Z

    const-string v1, "^([1-9]|[1-9]\\d|100)$"

    .line 1072
    iput-object v1, p0, Lio/dcloud/common/core/ui/g;->c0:Ljava/lang/String;

    .line 1073
    sput-boolean v0, Lio/dcloud/common/core/ui/g;->e0:Z

    .line 1074
    iput v0, p0, Lio/dcloud/common/core/ui/g;->R:I

    .line 1075
    instance-of v0, p1, Lio/dcloud/common/core/ui/b;

    if-eqz v0, :cond_62

    .line 1076
    check-cast p1, Lio/dcloud/common/core/ui/b;

    iput-object p1, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    .line 1077
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->S:Landroid/util/DisplayMetrics;

    if-nez p1, :cond_62

    .line 1078
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/core/ui/g;->S:Landroid/util/DisplayMetrics;

    .line 1079
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lio/dcloud/common/core/ui/g;->M:I

    .line 1083
    :cond_62
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lio/dcloud/common/core/ui/g;->h:I

    .line 1084
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->c0:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/core/ui/g;->d0:Ljava/util/regex/Pattern;

    return-void
.end method

.method private a(F)F
    .registers 7

    .line 496
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->A:Ljava/lang/String;

    const-string v1, "bounce"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    const/4 v0, 0x0

    cmpl-float v1, v0, p1

    if-eqz v1, :cond_57

    cmpg-float v0, p1, v0

    if-gez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 501
    :goto_16
    new-instance v1, Ljava/math/BigDecimal;

    float-to-double v2, p1

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance p1, Ljava/math/BigDecimal;

    iget v2, p0, Lio/dcloud/common/core/ui/g;->m:I

    iget-object v3, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    .line 502
    invoke-direct {p0, v3}, Lio/dcloud/common/core/ui/g;->a(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-direct {p1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    new-instance v2, Ljava/math/BigDecimal;

    iget v3, p0, Lio/dcloud/common/core/ui/g;->m:I

    iget v4, p0, Lio/dcloud/common/core/ui/g;->l:I

    sub-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(I)V

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object p1

    .line 503
    invoke-virtual {v1, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 505
    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    if-eqz v0, :cond_48

    neg-float p1, p1

    :cond_48
    if-eqz v0, :cond_51

    const/high16 v0, -0x40000000    # -2.0f

    .line 509
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_57

    :cond_51
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    :cond_57
    :goto_57
    return p1
.end method

.method private a(Landroid/view/View;)I
    .registers 3

    if-eqz p1, :cond_29

    .line 510
    instance-of v0, p1, Lio/dcloud/common/DHInterface/INativeView;

    if-eqz v0, :cond_d

    .line 511
    check-cast p1, Lio/dcloud/common/DHInterface/INativeView;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/INativeView;->getStyleLeft()I

    move-result p1

    return p1

    .line 513
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    if-eqz v0, :cond_1b

    .line 514
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/ViewHelper;->getX(Landroid/view/View;)F

    move-result p1

    float-to-int p1, p1

    return p1

    .line 515
    :cond_1b
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_29

    .line 516
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/ViewHelper;->getX(Landroid/view/View;)F

    move-result p1

    float-to-int p1, p1

    return p1

    :cond_29
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lio/dcloud/common/core/ui/g;I)I
    .registers 2

    .line 9
    iput p1, p0, Lio/dcloud/common/core/ui/g;->Q:I

    return p1
.end method

.method static synthetic a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    return-object p0
.end method

.method static synthetic a(Lio/dcloud/common/core/ui/g;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 2
    iput-object p1, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    return-object p1
.end method

.method private a(Landroid/view/View;IIZ)Lio/dcloud/nineoldandroids/animation/ValueAnimator;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 300
    invoke-direct/range {v0 .. v5}, Lio/dcloud/common/core/ui/g;->a(Landroid/view/View;IIZZ)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/view/View;IIZZ)Lio/dcloud/nineoldandroids/animation/ValueAnimator;
    .registers 15

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 301
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 302
    instance-of v2, p1, Lio/dcloud/common/DHInterface/INativeView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_1a

    new-array v0, v5, [I

    aput p2, v0, v4

    aput p3, v0, v3

    .line 303
    invoke-static {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->ofInt([I)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    goto :goto_39

    .line 304
    :cond_1a
    instance-of v2, v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    if-eqz v2, :cond_29

    new-array v0, v5, [I

    aput p2, v0, v4

    aput p3, v0, v3

    .line 305
    invoke-static {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->ofInt([I)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    goto :goto_39

    .line 306
    :cond_29
    instance-of v1, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_39

    new-array v0, v5, [F

    int-to-float v1, p2

    aput v1, v0, v4

    int-to-float v1, p3

    aput v1, v0, v3

    .line 307
    invoke-static {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    .line 311
    :cond_39
    :goto_39
    new-instance v1, Ljava/math/BigDecimal;

    const/16 v2, 0x1c2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(I)V

    new-instance v2, Ljava/math/BigDecimal;

    sub-int p2, p3, p2

    .line 312
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-direct {v2, p2}, Ljava/math/BigDecimal;-><init>(I)V

    new-instance p2, Ljava/math/BigDecimal;

    iget v3, p0, Lio/dcloud/common/core/ui/g;->M:I

    invoke-direct {p2, v3}, Ljava/math/BigDecimal;-><init>(I)V

    const/4 v3, 0x4

    invoke-virtual {v2, p2, v3, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object p2

    .line 313
    invoke-virtual {v1, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 314
    invoke-virtual {p2}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0xc8

    .line 315
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const-wide/16 v3, 0xfa

    .line 316
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 317
    invoke-virtual {v0, v1, v2}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    .line 318
    new-instance p2, Lio/dcloud/common/core/ui/g$d;

    move-object v3, p2

    move-object v4, p0

    move v5, p4

    move v6, p5

    move-object v7, p1

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lio/dcloud/common/core/ui/g$d;-><init>(Lio/dcloud/common/core/ui/g;ZZLandroid/view/View;I)V

    invoke-virtual {v0, p2}, Lio/dcloud/nineoldandroids/animation/Animator;->addListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 410
    new-instance p2, Lio/dcloud/common/core/ui/g$e;

    invoke-direct {p2, p0, p1}, Lio/dcloud/common/core/ui/g$e;-><init>(Lio/dcloud/common/core/ui/g;Landroid/view/View;)V

    invoke-virtual {v0, p2}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method static synthetic a(Lio/dcloud/common/core/ui/g;Landroid/view/View;IIZ)Lio/dcloud/nineoldandroids/animation/ValueAnimator;
    .registers 5

    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lio/dcloud/common/core/ui/g;->a(Landroid/view/View;IIZ)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lio/dcloud/common/core/ui/g;Landroid/view/View;IIZZ)Lio/dcloud/nineoldandroids/animation/ValueAnimator;
    .registers 6

    .line 4
    invoke-direct/range {p0 .. p5}, Lio/dcloud/common/core/ui/g;->a(Landroid/view/View;IIZZ)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lio/dcloud/common/core/ui/g;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 3
    iput-object p1, p0, Lio/dcloud/common/core/ui/g;->A:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .registers 3

    const/4 v0, 0x1

    .line 287
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/g;->N:Z

    .line 288
    sput-boolean v0, Lio/dcloud/common/core/ui/g;->e0:Z

    .line 289
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 290
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lio/dcloud/common/core/ui/g$c;

    invoke-direct {v1, p0}, Lio/dcloud/common/core/ui/g$c;-><init>(Lio/dcloud/common/core/ui/g;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private a(Landroid/view/View;I)V
    .registers 9

    if-eqz p1, :cond_3f

    .line 294
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    if-ne p1, v0, :cond_21

    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    if-eqz v0, :cond_21

    .line 295
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p1

    iput p2, p1, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    .line 296
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget v3, p0, Lio/dcloud/common/core/ui/g;->M:I

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v1, "left"

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lio/dcloud/common/adapter/util/ViewRect;->checkValueIsPercentage(Ljava/lang/String;IIZZ)V

    goto :goto_3f

    .line 297
    :cond_21
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    if-ne p1, v0, :cond_3f

    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->q:Lio/dcloud/common/core/ui/b;

    if-eqz p1, :cond_3f

    .line 298
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p1

    iput p2, p1, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    .line 299
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->q:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget v3, p0, Lio/dcloud/common/core/ui/g;->M:I

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v1, "left"

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lio/dcloud/common/adapter/util/ViewRect;->checkValueIsPercentage(Ljava/lang/String;IIZZ)V

    :cond_3f
    :goto_3f
    return-void
.end method

.method static synthetic a(Lio/dcloud/common/core/ui/g;Landroid/view/View;I)V
    .registers 3

    .line 6
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/core/ui/g;->a(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/common/core/ui/g;Ljava/lang/String;ZZLjava/lang/String;)V
    .registers 5

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lio/dcloud/common/core/ui/g;->a(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/common/core/ui/g;Z)V
    .registers 2

    .line 5
    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/g;->b(Z)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/common/core/ui/g;ZZ)V
    .registers 3

    .line 10
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/core/ui/g;->a(ZZ)V

    return-void
.end method

.method private a(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 411
    invoke-direct {p0, p1, p2, v0, p3}, Lio/dcloud/common/core/ui/g;->a(Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;ZZLjava/lang/String;)V
    .registers 16

    const-string v0, "end"

    .line 412
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_68

    .line 413
    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0, v1}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/b;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 414
    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v1

    iget-boolean v3, p0, Lio/dcloud/common/core/ui/g;->b:Z

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    .line 415
    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v1

    iget-boolean v3, p0, Lio/dcloud/common/core/ui/g;->c:Z

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    .line 417
    :cond_2f
    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    if-eqz v1, :cond_68

    instance-of v3, v1, Lcom/dcloud/android/widget/AbsoluteLayout;

    if-eqz v3, :cond_68

    .line 418
    check-cast v1, Lcom/dcloud/android/widget/AbsoluteLayout;

    invoke-virtual {v1}, Lcom/dcloud/android/widget/AbsoluteLayout;->getDrag()Lio/dcloud/common/core/ui/g;

    move-result-object v1

    invoke-virtual {v1, v2}, Lio/dcloud/common/core/ui/g;->c(Z)V

    .line 419
    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->q:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0, v1}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/b;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 420
    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->q:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v1

    iget-boolean v3, p0, Lio/dcloud/common/core/ui/g;->d:Z

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    .line 421
    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->q:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainWebview()Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_68

    .line 423
    iget-boolean v3, p0, Lio/dcloud/common/core/ui/g;->e:Z

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setHorizontalScrollbarOverlay(Z)V

    .line 428
    :cond_68
    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->G:Lio/dcloud/common/DHInterface/IFrameView;

    if-eqz v1, :cond_186

    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->H:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_186

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_186

    .line 430
    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v1, :cond_9f

    .line 431
    instance-of v4, v1, Lio/dcloud/common/DHInterface/INativeView;

    if-eqz v4, :cond_8a

    .line 432
    check-cast v1, Lio/dcloud/common/DHInterface/INativeView;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/INativeView;->getViewId()Ljava/lang/String;

    move-result-object v1

    goto :goto_a0

    .line 434
    :cond_8a
    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->q:Lio/dcloud/common/core/ui/b;

    if-eqz v1, :cond_9f

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    if-eqz v1, :cond_9f

    .line 435
    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->q:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameId()Ljava/lang/String;

    move-result-object v1

    goto :goto_a0

    :cond_9f
    move-object v1, v3

    .line 439
    :goto_a0
    iget-object v4, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    if-eqz v4, :cond_b4

    invoke-virtual {v4}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    if-eqz v4, :cond_b4

    .line 440
    iget-object v3, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v3}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameId()Ljava/lang/String;

    move-result-object v3

    :cond_b4
    if-eqz p2, :cond_b9

    if-eqz p3, :cond_bb

    goto :goto_bd

    :cond_b9
    if-eqz p3, :cond_bd

    :cond_bb
    move-object p3, v1

    goto :goto_be

    :cond_bd
    :goto_bd
    move-object p3, v3

    .line 449
    :goto_be
    iget-object v4, p0, Lio/dcloud/common/core/ui/g;->q:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0, v4}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/b;)Z

    move-result v4

    if-nez v4, :cond_e0

    iget-object v4, p0, Lio/dcloud/common/core/ui/g;->q:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameView;->isWebviewCovered()Z

    move-result v4

    if-eqz v4, :cond_e0

    .line 450
    iget-object v4, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0, v4}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/b;)Z

    move-result v4

    if-nez v4, :cond_101

    iget-object v4, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameView;->isWebviewCovered()Z

    move-result v4

    if-nez v4, :cond_101

    move-object p3, v3

    goto :goto_101

    .line 453
    :cond_e0
    iget-object v4, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0, v4}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/b;)Z

    move-result v4

    if-nez v4, :cond_101

    iget-object v4, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameView;->isWebviewCovered()Z

    move-result v4

    if-eqz v4, :cond_101

    .line 454
    iget-object v4, p0, Lio/dcloud/common/core/ui/g;->q:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0, v4}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/b;)Z

    move-result v4

    if-nez v4, :cond_101

    iget-object v4, p0, Lio/dcloud/common/core/ui/g;->q:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameView;->isWebviewCovered()Z

    move-result v4

    if-nez v4, :cond_101

    move-object p3, v1

    .line 458
    :cond_101
    :goto_101
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_109

    const-string p3, "undefined"

    .line 459
    :cond_109
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_112

    move-object v3, v5

    .line 460
    :cond_112
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_119

    move-object v1, v5

    .line 462
    :cond_119
    iget-object v4, p0, Lio/dcloud/common/core/ui/g;->I:Ljava/lang/String;

    const-string v6, "left"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_126

    const-string v5, "rtl"

    goto :goto_132

    .line 464
    :cond_126
    iget-object v4, p0, Lio/dcloud/common/core/ui/g;->I:Ljava/lang/String;

    const-string v6, "right"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_132

    const-string v5, "ltr"

    .line 467
    :cond_132
    :goto_132
    iget-object v4, p0, Lio/dcloud/common/core/ui/g;->G:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    if-eqz v4, :cond_186

    .line 469
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x6

    if-eqz v0, :cond_162

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 472
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v9

    aput-object p3, v0, v8

    aput-object v3, v0, v7

    aput-object v1, v0, v6

    aput-object v5, v0, v4

    aput-object p4, v0, v10

    const-string p1, "{\"type\":\"%s\",\"result\":%b,\"id\":\"%s\",\"targetId\":\"%s\",\"otherId\":\"%s\",\"direction\":\"%s\",\"progress\":\"%s\"}"

    .line 473
    invoke-static {p1, v0}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_176

    :cond_162
    new-array p2, v10, [Ljava/lang/Object;

    aput-object p1, p2, v2

    aput-object p3, p2, v9

    aput-object v3, p2, v8

    aput-object v1, p2, v7

    aput-object v5, p2, v6

    aput-object p4, p2, v4

    const-string p1, "{\"type\":\"%s\",\"id\":\"%s\",\"targetId\":\"%s\",\"otherId\":\"%s\",\"direction\":\"%s\",\"progress\":\"%s\"}"

    .line 478
    invoke-static {p1, p2}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_176
    move-object v2, p1

    .line 482
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->G:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->H:Ljava/lang/String;

    sget v3, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :cond_186
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 8

    if-eqz p1, :cond_73

    const v0, 0x7fffffff

    .line 243
    iput v0, p0, Lio/dcloud/common/core/ui/g;->x:I

    const/4 v1, 0x0

    .line 245
    iput-object v1, p0, Lio/dcloud/common/core/ui/g;->y:Ljava/lang/String;

    .line 246
    iput-object v1, p0, Lio/dcloud/common/core/ui/g;->z:Ljava/lang/String;

    const-string v1, "moveMode"

    .line 247
    invoke-static {p1, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "follow"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lio/dcloud/common/core/ui/g;->D:Z

    const-string v1, "over"

    .line 248
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "action"

    const-string v4, "left"

    if-eqz v2, :cond_4a

    .line 249
    invoke-static {p1, v1}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 251
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 252
    invoke-static {v1, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v5, p0, Lio/dcloud/common/core/ui/g;->M:I

    invoke-static {v2, v5, v0}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lio/dcloud/common/core/ui/g;->x:I

    .line 254
    :cond_3e
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 255
    invoke-static {v1, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/common/core/ui/g;->y:Ljava/lang/String;

    :cond_4a
    const-string v1, "cancel"

    .line 259
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 260
    invoke-static {p1, v1}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_73

    .line 262
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 263
    invoke-static {p1, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lio/dcloud/common/core/ui/g;->M:I

    invoke-static {v1, v2, v0}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;II)I

    .line 265
    :cond_67
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 266
    invoke-static {p1, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/core/ui/g;->z:Ljava/lang/String;

    :cond_73
    return-void
.end method

.method private a(ZZ)V
    .registers 5

    .line 291
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/g;->N:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 292
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/g;->N:Z

    if-eqz p1, :cond_c

    const-string v0, "100"

    goto :goto_e

    :cond_c
    const-string v0, "0"

    :goto_e
    const-string v1, "end"

    .line 293
    invoke-direct {p0, v1, p1, p2, v0}, Lio/dcloud/common/core/ui/g;->a(Ljava/lang/String;ZZLjava/lang/String;)V

    :cond_13
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_29

    if-eqz p2, :cond_29

    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 268
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_d
    if-eqz v1, :cond_29

    if-ne v1, p2, :cond_12

    return v0

    :cond_12
    :goto_12
    if-eqz v2, :cond_20

    if-ne v2, p1, :cond_17

    return v0

    :cond_17
    if-ne v1, v2, :cond_1b

    const/4 p1, 0x1

    return p1

    .line 274
    :cond_1b
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_12

    .line 285
    :cond_20
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 286
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_d

    :cond_29
    return v0
.end method

.method private a(Lio/dcloud/common/core/ui/b;)Z
    .registers 3

    if-eqz p1, :cond_23

    if-eqz p1, :cond_a

    .line 517
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    if-eqz v0, :cond_23

    :cond_a
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_23

    :cond_12
    if-eqz p1, :cond_21

    .line 518
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    if-nez v0, :cond_21

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_21

    goto :goto_23

    :cond_21
    const/4 p1, 0x0

    return p1

    :cond_23
    :goto_23
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic a(Z)Z
    .registers 1

    .line 7
    sput-boolean p0, Lio/dcloud/common/core/ui/g;->e0:Z

    return p0
.end method

.method private b(Landroid/view/View;)I
    .registers 3

    if-eqz p1, :cond_12

    .line 199
    instance-of v0, p1, Lio/dcloud/common/DHInterface/INativeView;

    if-eqz v0, :cond_d

    .line 200
    check-cast p1, Lio/dcloud/common/DHInterface/INativeView;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/INativeView;->getStyleWidth()I

    move-result p1

    return p1

    .line 202
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I
    .registers 2

    .line 5
    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/g;->b(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method private b(Ljava/lang/String;)I
    .registers 8

    .line 28
    iget v0, p0, Lio/dcloud/common/core/ui/g;->F:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lio/dcloud/common/core/ui/g;->q:Lio/dcloud/common/core/ui/b;

    .line 32
    iput-object v0, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    .line 35
    invoke-virtual {p0}, Lio/dcloud/common/core/ui/g;->e()Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_42

    .line 36
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 37
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/adapter/util/DragBean;

    if-eqz v1, :cond_42

    .line 39
    iget-object v3, v1, Lio/dcloud/common/adapter/util/DragBean;->dragBindViewOp:Lorg/json/JSONObject;

    .line 40
    invoke-direct {p0, v3}, Lio/dcloud/common/core/ui/g;->a(Lorg/json/JSONObject;)V

    .line 41
    iget-object v3, v1, Lio/dcloud/common/adapter/util/DragBean;->dragBindWebView:Lio/dcloud/common/DHInterface/IFrameView;

    if-eqz v3, :cond_3a

    .line 42
    instance-of v4, v3, Lio/dcloud/common/core/ui/b;

    if-eqz v4, :cond_3a

    .line 43
    iput-boolean v2, p0, Lio/dcloud/common/core/ui/g;->B:Z

    .line 44
    check-cast v3, Lio/dcloud/common/core/ui/b;

    .line 45
    iput-object v3, p0, Lio/dcloud/common/core/ui/g;->q:Lio/dcloud/common/core/ui/b;

    .line 46
    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    goto :goto_42

    .line 48
    :cond_3a
    iget-object v1, v1, Lio/dcloud/common/adapter/util/DragBean;->nativeView:Landroid/view/View;

    iput-object v1, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    if-eqz v1, :cond_42

    .line 50
    iput-boolean v2, p0, Lio/dcloud/common/core/ui/g;->B:Z

    .line 56
    :cond_42
    :goto_42
    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->q:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0, v1}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/b;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_58

    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    if-eqz v1, :cond_54

    instance-of v1, v1, Lio/dcloud/common/DHInterface/INativeView;

    if-eqz v1, :cond_54

    goto :goto_58

    .line 122
    :cond_54
    iput v3, p0, Lio/dcloud/common/core/ui/g;->F:I

    goto/16 :goto_140

    .line 123
    :cond_58
    :goto_58
    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_65

    .line 124
    iput-object v0, p0, Lio/dcloud/common/core/ui/g;->q:Lio/dcloud/common/core/ui/b;

    .line 125
    iput-object v0, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    return v3

    .line 130
    :cond_65
    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_82

    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_82

    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    instance-of v1, v1, Lio/dcloud/common/DHInterface/INativeView;

    if-nez v1, :cond_82

    .line 131
    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->q:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->pushToViewStack()V

    .line 134
    :cond_82
    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    iget-object v4, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-direct {p0, v1, v4}, Lio/dcloud/common/core/ui/g;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_97

    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    instance-of v1, v1, Lio/dcloud/common/DHInterface/INativeView;

    if-nez v1, :cond_97

    .line 135
    iput-object v0, p0, Lio/dcloud/common/core/ui/g;->q:Lio/dcloud/common/core/ui/b;

    .line 136
    iput-object v0, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    return v3

    .line 141
    :cond_97
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    instance-of v0, v0, Lio/dcloud/common/DHInterface/INativeView;

    if-nez v0, :cond_b2

    .line 142
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/g;->D:Z

    if-eqz v0, :cond_b2

    .line 143
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v0, v1, :cond_b2

    .line 144
    iput v3, p0, Lio/dcloud/common/core/ui/g;->F:I

    return v3

    .line 149
    :cond_b2
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    instance-of v1, v0, Lio/dcloud/common/DHInterface/INativeView;

    if-eqz v1, :cond_bb

    .line 150
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 152
    :cond_bb
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-direct {p0, v0}, Lio/dcloud/common/core/ui/g;->a(Landroid/view/View;)I

    move-result v0

    .line 153
    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    invoke-direct {p0, v1}, Lio/dcloud/common/core/ui/g;->a(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_13e

    .line 156
    iget-object v3, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lio/dcloud/common/core/ui/g;->M:I

    if-ne v3, v4, :cond_13e

    if-ge v0, v4, :cond_de

    iget-object v3, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-direct {p0, v3}, Lio/dcloud/common/core/ui/g;->b(Landroid/view/View;)I

    move-result v3

    neg-int v3, v3

    if-gt v0, v3, :cond_13e

    .line 157
    :cond_de
    iput v0, p0, Lio/dcloud/common/core/ui/g;->Q:I

    .line 159
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/g;->C:Z

    const-string v3, "left"

    const-string v4, "right"

    if-eqz v0, :cond_113

    iget-boolean v5, p0, Lio/dcloud/common/core/ui/g;->D:Z

    if-eqz v5, :cond_113

    .line 163
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 164
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/g;->b(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v1, p1

    iput v1, p0, Lio/dcloud/common/core/ui/g;->k:I

    goto :goto_10b

    .line 167
    :cond_fc
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10b

    .line 168
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr v1, p1

    iput v1, p0, Lio/dcloud/common/core/ui/g;->k:I

    .line 170
    :cond_10b
    :goto_10b
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    iget v0, p0, Lio/dcloud/common/core/ui/g;->k:I

    invoke-direct {p0, p1, v0}, Lio/dcloud/common/core/ui/g;->b(Landroid/view/View;I)V

    goto :goto_13e

    :cond_113
    if-nez v0, :cond_13e

    .line 173
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/g;->D:Z

    if-eqz v0, :cond_13e

    .line 176
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_129

    .line 177
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/g;->b(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iput p1, p0, Lio/dcloud/common/core/ui/g;->k:I

    goto :goto_137

    .line 180
    :cond_129
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_137

    .line 181
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lio/dcloud/common/core/ui/g;->k:I

    .line 183
    :cond_137
    :goto_137
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    iget v0, p0, Lio/dcloud/common/core/ui/g;->k:I

    invoke-direct {p0, p1, v0}, Lio/dcloud/common/core/ui/g;->b(Landroid/view/View;I)V

    .line 186
    :cond_13e
    :goto_13e
    iput v2, p0, Lio/dcloud/common/core/ui/g;->F:I

    .line 190
    :goto_140
    iget p1, p0, Lio/dcloud/common/core/ui/g;->F:I

    return p1
.end method

.method static synthetic b(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/core/ui/g;->I:Ljava/lang/String;

    return-object p0
.end method

.method private b()V
    .registers 3

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/g;->N:Z

    .line 195
    sput-boolean v0, Lio/dcloud/common/core/ui/g;->e0:Z

    .line 196
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    if-eqz v0, :cond_1c

    .line 197
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 198
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lio/dcloud/common/core/ui/g$f;

    invoke-direct {v1, p0}, Lio/dcloud/common/core/ui/g$f;-><init>(Lio/dcloud/common/core/ui/g;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1c
    return-void
.end method

.method private b(Landroid/view/View;I)V
    .registers 5

    if-eqz p1, :cond_3a

    .line 203
    instance-of v0, p1, Lio/dcloud/common/DHInterface/INativeView;

    if-eqz v0, :cond_c

    .line 204
    check-cast p1, Lio/dcloud/common/DHInterface/INativeView;

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/INativeView;->setStyleLeft(I)V

    goto :goto_3a

    .line 206
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    if-eqz v0, :cond_2e

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    int-to-float p2, p2

    .line 211
    invoke-static {p1, p2}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_3a

    .line 213
    :cond_2e
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_3a

    int-to-float p2, p2

    .line 214
    invoke-static {p1, p2}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method static synthetic b(Lio/dcloud/common/core/ui/g;Landroid/view/View;I)V
    .registers 3

    .line 4
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/core/ui/g;->b(Landroid/view/View;I)V

    return-void
.end method

.method private b(Z)V
    .registers 4

    .line 191
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/g;->N:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/g;->N:Z

    if-eqz p1, :cond_c

    const-string v0, "100"

    goto :goto_e

    :cond_c
    const-string v0, "0"

    :goto_e
    const-string v1, "end"

    .line 193
    invoke-direct {p0, v1, p1, v0}, Lio/dcloud/common/core/ui/g;->a(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_13
    return-void
.end method

.method static synthetic b(Lio/dcloud/common/core/ui/g;Ljava/lang/String;)Z
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/g;->d(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lio/dcloud/common/core/ui/g;Z)Z
    .registers 2

    .line 2
    iput-boolean p1, p0, Lio/dcloud/common/core/ui/g;->N:Z

    return p1
.end method

.method static synthetic c(Lio/dcloud/common/core/ui/g;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/common/core/ui/g;->l:I

    return p0
.end method

.method static synthetic c(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/g;->a(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "left"

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "right"

    if-eqz v1, :cond_c

    move-object v0, v2

    goto :goto_14

    .line 74
    :cond_c
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return-object v0
.end method

.method private c()V
    .registers 3

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/g;->N:Z

    .line 68
    sput-boolean v0, Lio/dcloud/common/core/ui/g;->e0:Z

    .line 69
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    if-eqz v0, :cond_1a

    .line 70
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 71
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lio/dcloud/common/core/ui/g$a;

    invoke-direct {v1, p0}, Lio/dcloud/common/core/ui/g$a;-><init>(Lio/dcloud/common/core/ui/g;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1a
    return-void
.end method

.method static synthetic d(Lio/dcloud/common/core/ui/g;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/common/core/ui/g;->M:I

    return p0
.end method

.method private d()V
    .registers 3

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/g;->N:Z

    .line 50
    sput-boolean v0, Lio/dcloud/common/core/ui/g;->e0:Z

    .line 51
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 52
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lio/dcloud/common/core/ui/g$b;

    invoke-direct {v1, p0}, Lio/dcloud/common/core/ui/g$b;-><init>(Lio/dcloud/common/core/ui/g;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private d(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_90

    const/4 v2, 0x2

    if-eq p1, v2, :cond_13

    const/4 v0, 0x3

    if-eq p1, v0, :cond_90

    goto/16 :goto_8f

    .line 5
    :cond_13
    iget p1, p0, Lio/dcloud/common/core/ui/g;->i:F

    sub-float p1, v0, p1

    float-to-int p1, p1

    int-to-float p1, p1

    .line 6
    iput v0, p0, Lio/dcloud/common/core/ui/g;->i:F

    .line 8
    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/g;->a(F)F

    move-result p1

    .line 10
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    invoke-direct {p0, v0}, Lio/dcloud/common/core/ui/g;->a(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    .line 11
    iget-object v2, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-direct {p0, v2}, Lio/dcloud/common/core/ui/g;->a(Landroid/view/View;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p1, v2

    .line 12
    iget-object v2, p0, Lio/dcloud/common/core/ui/g;->I:Ljava/lang/String;

    const-string v3, "right"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 13
    iget v2, p0, Lio/dcloud/common/core/ui/g;->m:I

    int-to-float v3, v2

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_41

    goto :goto_48

    .line 16
    :cond_41
    iget v2, p0, Lio/dcloud/common/core/ui/g;->l:I

    int-to-float v3, v2

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_49

    :goto_48
    int-to-float v0, v2

    .line 19
    :cond_49
    iget v2, p0, Lio/dcloud/common/core/ui/g;->o:I

    int-to-float v3, v2

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_51

    goto :goto_82

    .line 22
    :cond_51
    iget v2, p0, Lio/dcloud/common/core/ui/g;->n:I

    int-to-float v3, v2

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_83

    goto :goto_82

    .line 25
    :cond_59
    iget-object v2, p0, Lio/dcloud/common/core/ui/g;->I:Ljava/lang/String;

    const-string v3, "left"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 26
    iget v2, p0, Lio/dcloud/common/core/ui/g;->l:I

    int-to-float v3, v2

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_6b

    goto :goto_72

    .line 29
    :cond_6b
    iget v2, p0, Lio/dcloud/common/core/ui/g;->m:I

    int-to-float v3, v2

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_73

    :goto_72
    int-to-float v0, v2

    .line 32
    :cond_73
    iget v2, p0, Lio/dcloud/common/core/ui/g;->n:I

    int-to-float v3, v2

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_7b

    goto :goto_82

    .line 35
    :cond_7b
    iget v2, p0, Lio/dcloud/common/core/ui/g;->o:I

    int-to-float v3, v2

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_83

    :goto_82
    int-to-float p1, v2

    .line 40
    :cond_83
    iget-object v2, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    float-to-int v0, v0

    invoke-direct {p0, v2, v0}, Lio/dcloud/common/core/ui/g;->b(Landroid/view/View;I)V

    .line 41
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    float-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lio/dcloud/common/core/ui/g;->b(Landroid/view/View;I)V

    :goto_8f
    return v1

    :cond_90
    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lio/dcloud/common/core/ui/g;->g:Z

    .line 47
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/g;->E:Z

    if-eqz v0, :cond_9a

    .line 48
    invoke-direct {p0}, Lio/dcloud/common/core/ui/g;->a()V

    :cond_9a
    return p1
.end method

.method private d(Ljava/lang/String;)Z
    .registers 4

    .line 53
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->f:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_28

    const/16 v0, 0x3e8

    const/high16 v1, 0x447a0000    # 1000.0f

    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 56
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    .line 57
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 58
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lio/dcloud/common/core/ui/g;->f:Landroid/view/VelocityTracker;

    .line 60
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x43480000    # 200.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_28

    const/4 p1, 0x1

    return p1

    :cond_28
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic e(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/core/ui/g;->A:Ljava/lang/String;

    return-object p0
.end method

.method private e(Landroid/view/MotionEvent;)Z
    .registers 16

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    const/4 v2, 0x1

    if-eqz v0, :cond_15d

    if-eq v0, v2, :cond_150

    const/4 p1, 0x2

    if-eq v0, p1, :cond_19

    const/4 p1, 0x3

    if-eq v0, p1, :cond_150

    goto/16 :goto_161

    .line 73
    :cond_19
    iget p1, p0, Lio/dcloud/common/core/ui/g;->i:F

    sub-float p1, v1, p1

    .line 74
    iput v1, p0, Lio/dcloud/common/core/ui/g;->i:F

    .line 81
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 82
    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x0

    if-eqz v1, :cond_31

    .line 83
    iget-object v4, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    invoke-static {v4}, Lio/dcloud/nineoldandroids/view/ViewHelper;->getX(Landroid/view/View;)F

    move-result v4

    goto :goto_3d

    .line 84
    :cond_31
    instance-of v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    if-eqz v4, :cond_3c

    .line 85
    move-object v4, v0

    check-cast v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v4, v4, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    int-to-float v4, v4

    goto :goto_3d

    :cond_3c
    const/4 v4, 0x0

    .line 88
    :goto_3d
    iget-object v5, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    if-eqz v5, :cond_161

    .line 89
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 90
    iget-object v6, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    instance-of v7, v6, Lio/dcloud/common/DHInterface/INativeView;

    if-eqz v7, :cond_51

    .line 91
    invoke-direct {p0, v6}, Lio/dcloud/common/core/ui/g;->a(Landroid/view/View;)I

    move-result v6

    :goto_4f
    int-to-float v6, v6

    goto :goto_65

    .line 93
    :cond_51
    instance-of v7, v5, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v7, :cond_5a

    .line 94
    invoke-static {v6}, Lio/dcloud/nineoldandroids/view/ViewHelper;->getX(Landroid/view/View;)F

    move-result v6

    goto :goto_65

    .line 95
    :cond_5a
    instance-of v6, v5, Landroid/widget/AbsoluteLayout$LayoutParams;

    if-eqz v6, :cond_64

    .line 96
    move-object v6, v5

    check-cast v6, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v6, v6, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    goto :goto_4f

    :cond_64
    const/4 v6, 0x0

    :goto_65
    const-string v7, "left"

    const-string v8, "right"

    cmpl-float v9, v3, v4

    if-eqz v9, :cond_b3

    .line 100
    iget-object v10, p0, Lio/dcloud/common/core/ui/g;->I:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8f

    add-float v10, v4, p1

    cmpl-float v10, v10, v3

    if-ltz v10, :cond_7c

    goto :goto_9d

    .line 106
    :cond_7c
    iget-object v10, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v4

    float-to-int v10, v10

    int-to-float v11, v10

    add-float/2addr v11, p1

    .line 107
    iget v12, p0, Lio/dcloud/common/core/ui/g;->M:I

    int-to-float v13, v12

    cmpl-float v11, v11, v13

    if-ltz v11, :cond_b3

    goto :goto_b1

    .line 112
    :cond_8f
    iget-object v10, p0, Lio/dcloud/common/core/ui/g;->I:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b3

    add-float v10, v4, p1

    cmpg-float v10, v10, v3

    if-gtz v10, :cond_9f

    :goto_9d
    neg-float p1, v4

    goto :goto_b3

    .line 116
    :cond_9f
    iget-object v10, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v4

    float-to-int v10, v10

    int-to-float v11, v10

    add-float/2addr v11, p1

    .line 117
    iget v12, p0, Lio/dcloud/common/core/ui/g;->M:I

    int-to-float v13, v12

    cmpg-float v11, v11, v13

    if-gtz v11, :cond_b3

    :goto_b1
    sub-int/2addr v12, v10

    int-to-float p1, v12

    .line 123
    :cond_b3
    :goto_b3
    iget-object v10, p0, Lio/dcloud/common/core/ui/g;->I:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_dc

    add-float v3, v6, p1

    .line 124
    iget v7, p0, Lio/dcloud/common/core/ui/g;->M:I

    int-to-float v7, v7

    cmpl-float v3, v3, v7

    if-ltz v3, :cond_c7

    sub-float p1, v7, v6

    goto :goto_fd

    .line 127
    :cond_c7
    iget-object v3, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-direct {p0, v3}, Lio/dcloud/common/core/ui/g;->b(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v6, v3

    float-to-int v3, v6

    int-to-float v6, v3

    add-float/2addr v6, p1

    .line 128
    iget v7, p0, Lio/dcloud/common/core/ui/g;->M:I

    int-to-float v8, v7

    cmpg-float v6, v6, v8

    if-gtz v6, :cond_fd

    sub-int/2addr v7, v3

    int-to-float p1, v7

    goto :goto_fd

    .line 133
    :cond_dc
    iget-object v8, p0, Lio/dcloud/common/core/ui/g;->I:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_fd

    .line 134
    iget-object v7, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-direct {p0, v7}, Lio/dcloud/common/core/ui/g;->b(Landroid/view/View;)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v6

    float-to-int v7, v7

    int-to-float v8, v7

    add-float/2addr v8, p1

    cmpg-float v8, v8, v3

    if-gtz v8, :cond_f6

    neg-int p1, v7

    int-to-float p1, p1

    goto :goto_fd

    :cond_f6
    add-float v7, v6, p1

    cmpl-float v3, v7, v3

    if-ltz v3, :cond_fd

    neg-float p1, v6

    :cond_fd
    :goto_fd
    if-eqz v9, :cond_11d

    if-eqz v1, :cond_10c

    .line 146
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    invoke-static {v0}, Lio/dcloud/nineoldandroids/view/ViewHelper;->getX(Landroid/view/View;)F

    move-result v1

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    goto :goto_11d

    .line 147
    :cond_10c
    instance-of v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    if-eqz v1, :cond_11d

    .line 148
    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 149
    iget v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    float-to-int v3, p1

    add-int/2addr v1, v3

    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 150
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 154
    :cond_11d
    :goto_11d
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    instance-of v1, v0, Lio/dcloud/common/DHInterface/INativeView;

    if-eqz v1, :cond_133

    add-float/2addr v4, p1

    float-to-int p1, v4

    .line 155
    invoke-direct {p0, v0, p1}, Lio/dcloud/common/core/ui/g;->b(Landroid/view/View;I)V

    .line 156
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 157
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_161

    .line 159
    :cond_133
    instance-of v1, v5, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_140

    .line 160
    invoke-static {v0}, Lio/dcloud/nineoldandroids/view/ViewHelper;->getX(Landroid/view/View;)F

    move-result v1

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    goto :goto_161

    .line 161
    :cond_140
    instance-of v1, v5, Landroid/widget/AbsoluteLayout$LayoutParams;

    if-eqz v1, :cond_161

    .line 162
    check-cast v5, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 163
    iget v1, v5, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    float-to-int p1, p1

    add-int/2addr v1, p1

    iput v1, v5, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 164
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_161

    :cond_150
    const/4 p1, 0x0

    .line 171
    iput-boolean p1, p0, Lio/dcloud/common/core/ui/g;->O:Z

    .line 172
    iput-boolean p1, p0, Lio/dcloud/common/core/ui/g;->g:Z

    .line 173
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/g;->E:Z

    if-eqz v0, :cond_15c

    .line 174
    invoke-direct {p0}, Lio/dcloud/common/core/ui/g;->b()V

    :cond_15c
    return p1

    .line 175
    :cond_15d
    iput v1, p0, Lio/dcloud/common/core/ui/g;->i:F

    .line 176
    iput p1, p0, Lio/dcloud/common/core/ui/g;->j:F

    :cond_161
    :goto_161
    return v2
.end method

.method private e(Ljava/lang/String;)Z
    .registers 11

    const-string v0, "cancel"

    const-string v1, "over"

    const-string v2, "callbackStep"

    const-string v3, "moveMode"

    .line 5
    iget-object v4, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    const v4, 0x7fffffff

    .line 7
    iput v4, p0, Lio/dcloud/common/core/ui/g;->u:I

    const/4 v5, 0x0

    .line 9
    iput-object v5, p0, Lio/dcloud/common/core/ui/g;->v:Ljava/lang/String;

    .line 10
    iput-object v5, p0, Lio/dcloud/common/core/ui/g;->w:Ljava/lang/String;

    .line 12
    invoke-virtual {p0}, Lio/dcloud/common/core/ui/g;->e()Ljava/util/HashMap;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_f3

    .line 13
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f3

    .line 14
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/adapter/util/DragBean;

    const/4 v5, 0x1

    if-eqz p1, :cond_f2

    .line 16
    iget-object v7, p1, Lio/dcloud/common/adapter/util/DragBean;->dragCbId:Ljava/lang/String;

    iput-object v7, p0, Lio/dcloud/common/core/ui/g;->H:Ljava/lang/String;

    .line 17
    iget-object v7, p1, Lio/dcloud/common/adapter/util/DragBean;->dragCallBackWebView:Lio/dcloud/common/DHInterface/IFrameView;

    iput-object v7, p0, Lio/dcloud/common/core/ui/g;->G:Lio/dcloud/common/DHInterface/IFrameView;

    .line 18
    iget-object p1, p1, Lio/dcloud/common/adapter/util/DragBean;->dragCurrentViewOp:Lorg/json/JSONObject;

    :try_start_3a
    const-string v7, "direction"

    .line 20
    invoke-static {p1, v7}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 22
    invoke-static {p1, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 23
    iput-object v3, p0, Lio/dcloud/common/core/ui/g;->A:Ljava/lang/String;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4b} :catch_ed

    const-string v7, "followFinger"

    .line 24
    :try_start_4d
    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_51} :catch_ed

    if-nez v3, :cond_6a

    const-string v3, "follow"

    :try_start_55
    iget-object v7, p0, Lio/dcloud/common/core/ui/g;->A:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5b} :catch_ed

    if-nez v3, :cond_6a

    const-string v3, "bounce"

    :try_start_5f
    iget-object v7, p0, Lio/dcloud/common/core/ui/g;->A:Ljava/lang/String;

    .line 25
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_68

    goto :goto_6a

    :cond_68
    const/4 v3, 0x0

    goto :goto_6b

    :cond_6a
    :goto_6a
    const/4 v3, 0x1

    :goto_6b
    iput-boolean v3, p0, Lio/dcloud/common/core/ui/g;->C:Z

    :cond_6d
    const/high16 v3, 0x41a00000    # 20.0f

    .line 27
    iput v3, p0, Lio/dcloud/common/core/ui/g;->T:F

    .line 28
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_75} :catch_ed

    if-eqz v3, :cond_97

    .line 30
    :try_start_77
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    iget-object v3, p0, Lio/dcloud/common/core/ui/g;->d0:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_97

    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    .line 33
    iput v2, p0, Lio/dcloud/common/core/ui/g;->T:F
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_92} :catch_93

    goto :goto_97

    :catch_93
    move-exception v2

    .line 36
    :try_start_94
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    :cond_97
    :goto_97
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_9b} :catch_ed

    const-string v3, "action"

    const-string v7, "left"

    if-eqz v2, :cond_c5

    .line 40
    :try_start_a1
    invoke-static {p1, v1}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_c5

    .line 42
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 43
    invoke-static {v1, v7}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v8, p0, Lio/dcloud/common/core/ui/g;->M:I

    invoke-static {v2, v8, v4}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lio/dcloud/common/core/ui/g;->u:I

    .line 45
    :cond_b9
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 46
    invoke-static {v1, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/common/core/ui/g;->v:Ljava/lang/String;

    .line 50
    :cond_c5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f2

    .line 51
    invoke-static {p1, v0}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_f2

    .line 53
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 54
    invoke-static {p1, v7}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lio/dcloud/common/core/ui/g;->M:I

    invoke-static {v0, v1, v4}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;II)I

    .line 56
    :cond_e0
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 57
    invoke-static {p1, v3}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/core/ui/g;->w:Ljava/lang/String;
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_ec} :catch_ed

    goto :goto_f2

    :catch_ed
    move-exception p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v6

    :cond_f2
    :goto_f2
    return v5

    :cond_f3
    return v6
.end method

.method static synthetic f(Lio/dcloud/common/core/ui/g;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/common/core/ui/g;->R:I

    return p0
.end method

.method private f()Z
    .registers 6

    .line 32
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-direct {p0, v0}, Lio/dcloud/common/core/ui/g;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lio/dcloud/common/core/ui/g;->n:I

    .line 33
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->I:Ljava/lang/String;

    const-string v1, "right"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "bounce"

    const v2, 0x7fffffff

    const/4 v3, 0x0

    if-eqz v0, :cond_54

    .line 34
    iget v0, p0, Lio/dcloud/common/core/ui/g;->x:I

    if-eq v2, v0, :cond_23

    .line 35
    iput v0, p0, Lio/dcloud/common/core/ui/g;->o:I

    .line 36
    iget v1, p0, Lio/dcloud/common/core/ui/g;->n:I

    if-ne v1, v0, :cond_c4

    return v3

    .line 40
    :cond_23
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-direct {p0, v0}, Lio/dcloud/common/core/ui/g;->b(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lio/dcloud/common/core/ui/g;->o:I

    .line 41
    iget v0, p0, Lio/dcloud/common/core/ui/g;->n:I

    if-eqz v0, :cond_53

    iget v2, p0, Lio/dcloud/common/core/ui/g;->M:I

    if-ne v0, v2, :cond_34

    goto :goto_53

    .line 44
    :cond_34
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->A:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 45
    iget v0, p0, Lio/dcloud/common/core/ui/g;->n:I

    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    invoke-direct {p0, v1}, Lio/dcloud/common/core/ui/g;->b(Landroid/view/View;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lio/dcloud/common/core/ui/g;->o:I

    goto/16 :goto_c4

    .line 47
    :cond_4b
    iget v0, p0, Lio/dcloud/common/core/ui/g;->n:I

    if-gez v0, :cond_c4

    .line 48
    iput v3, p0, Lio/dcloud/common/core/ui/g;->o:I

    goto/16 :goto_c4

    :cond_53
    :goto_53
    return v3

    .line 52
    :cond_54
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->I:Ljava/lang/String;

    const-string v4, "left"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 53
    iget v0, p0, Lio/dcloud/common/core/ui/g;->x:I

    if-eq v2, v0, :cond_69

    .line 54
    iput v0, p0, Lio/dcloud/common/core/ui/g;->o:I

    .line 55
    iget v1, p0, Lio/dcloud/common/core/ui/g;->n:I

    if-ne v1, v0, :cond_c4

    return v3

    .line 59
    :cond_69
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-direct {p0, v0}, Lio/dcloud/common/core/ui/g;->b(Landroid/view/View;)I

    move-result v0

    neg-int v2, v0

    .line 60
    iput v2, p0, Lio/dcloud/common/core/ui/g;->o:I

    .line 61
    iget-object v2, p0, Lio/dcloud/common/core/ui/g;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 62
    iget v0, p0, Lio/dcloud/common/core/ui/g;->n:I

    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    invoke-direct {p0, v1}, Lio/dcloud/common/core/ui/g;->b(Landroid/view/View;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lio/dcloud/common/core/ui/g;->o:I

    goto :goto_c4

    .line 64
    :cond_88
    iget v1, p0, Lio/dcloud/common/core/ui/g;->M:I

    if-ge v0, v1, :cond_bc

    .line 65
    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-direct {p0, v1}, Lio/dcloud/common/core/ui/g;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-direct {p0, v2}, Lio/dcloud/common/core/ui/g;->b(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 66
    iget v2, p0, Lio/dcloud/common/core/ui/g;->M:I

    if-eq v1, v2, :cond_bb

    if-nez v1, :cond_a0

    goto :goto_bb

    .line 69
    :cond_a0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 70
    iget-object v2, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 71
    iget v2, p0, Lio/dcloud/common/core/ui/g;->M:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    if-ne v2, v4, :cond_b4

    sub-int/2addr v2, v0

    .line 72
    iput v2, p0, Lio/dcloud/common/core/ui/g;->o:I

    goto :goto_c4

    .line 73
    :cond_b4
    iget v0, v1, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_c4

    .line 74
    iput v3, p0, Lio/dcloud/common/core/ui/g;->o:I

    goto :goto_c4

    :cond_bb
    :goto_bb
    return v3

    :cond_bc
    if-ne v0, v1, :cond_c4

    .line 77
    iget v0, p0, Lio/dcloud/common/core/ui/g;->n:I

    if-lez v0, :cond_c4

    .line 78
    iput v3, p0, Lio/dcloud/common/core/ui/g;->o:I

    :cond_c4
    :goto_c4
    const/4 v0, 0x1

    return v0
.end method

.method private f(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_12

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5b

    goto :goto_5a

    .line 5
    :cond_12
    iget p1, p0, Lio/dcloud/common/core/ui/g;->i:F

    sub-float p1, v0, p1

    .line 6
    iput v0, p0, Lio/dcloud/common/core/ui/g;->i:F

    .line 7
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-direct {p0, v0}, Lio/dcloud/common/core/ui/g;->a(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    .line 9
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->I:Ljava/lang/String;

    const-string v2, "right"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 10
    iget p1, p0, Lio/dcloud/common/core/ui/g;->o:I

    int-to-float v2, p1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_32

    goto :goto_53

    .line 13
    :cond_32
    iget p1, p0, Lio/dcloud/common/core/ui/g;->n:I

    int-to-float v2, p1

    cmpg-float v2, v0, v2

    if-gez v2, :cond_54

    goto :goto_53

    .line 16
    :cond_3a
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->I:Ljava/lang/String;

    const-string v2, "left"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 17
    iget p1, p0, Lio/dcloud/common/core/ui/g;->n:I

    int-to-float v2, p1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_4c

    goto :goto_53

    .line 20
    :cond_4c
    iget p1, p0, Lio/dcloud/common/core/ui/g;->o:I

    int-to-float v2, p1

    cmpg-float v2, v0, v2

    if-gez v2, :cond_54

    :goto_53
    int-to-float v0, p1

    .line 24
    :cond_54
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    float-to-int v0, v0

    invoke-direct {p0, p1, v0}, Lio/dcloud/common/core/ui/g;->b(Landroid/view/View;I)V

    :goto_5a
    return v1

    :cond_5b
    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lio/dcloud/common/core/ui/g;->g:Z

    .line 30
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/g;->E:Z

    if-eqz v0, :cond_65

    .line 31
    invoke-direct {p0}, Lio/dcloud/common/core/ui/g;->c()V

    :cond_65
    return p1
.end method

.method static synthetic g(Lio/dcloud/common/core/ui/g;)I
    .registers 3

    .line 1
    iget v0, p0, Lio/dcloud/common/core/ui/g;->R:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/dcloud/common/core/ui/g;->R:I

    return v0
.end method

.method private g()Z
    .registers 3

    .line 35
    invoke-direct {p0}, Lio/dcloud/common/core/ui/g;->h()Z

    move-result v0

    .line 36
    invoke-direct {p0}, Lio/dcloud/common/core/ui/g;->f()Z

    move-result v1

    if-eqz v0, :cond_f

    if-nez v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x1

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x0

    return v0
.end method

.method private g(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5f

    const/4 v2, 0x2

    if-eq p1, v2, :cond_12

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5f

    goto :goto_5e

    .line 5
    :cond_12
    iget p1, p0, Lio/dcloud/common/core/ui/g;->i:F

    sub-float p1, v0, p1

    .line 6
    iput v0, p0, Lio/dcloud/common/core/ui/g;->i:F

    .line 8
    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/g;->a(F)F

    move-result p1

    .line 10
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    invoke-direct {p0, v0}, Lio/dcloud/common/core/ui/g;->a(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    .line 12
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->I:Ljava/lang/String;

    const-string v2, "right"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 13
    iget p1, p0, Lio/dcloud/common/core/ui/g;->m:I

    int-to-float v2, p1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_36

    goto :goto_57

    .line 16
    :cond_36
    iget p1, p0, Lio/dcloud/common/core/ui/g;->l:I

    int-to-float v2, p1

    cmpg-float v2, v0, v2

    if-gez v2, :cond_58

    goto :goto_57

    .line 19
    :cond_3e
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->I:Ljava/lang/String;

    const-string v2, "left"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    .line 20
    iget p1, p0, Lio/dcloud/common/core/ui/g;->l:I

    int-to-float v2, p1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_50

    goto :goto_57

    .line 23
    :cond_50
    iget p1, p0, Lio/dcloud/common/core/ui/g;->m:I

    int-to-float v2, p1

    cmpg-float v2, v0, v2

    if-gez v2, :cond_58

    :goto_57
    int-to-float v0, p1

    .line 27
    :cond_58
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    float-to-int v0, v0

    invoke-direct {p0, p1, v0}, Lio/dcloud/common/core/ui/g;->b(Landroid/view/View;I)V

    :goto_5e
    return v1

    :cond_5f
    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lio/dcloud/common/core/ui/g;->g:Z

    .line 33
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/g;->E:Z

    if-eqz v0, :cond_69

    .line 34
    invoke-direct {p0}, Lio/dcloud/common/core/ui/g;->d()V

    :cond_69
    return p1
.end method

.method static synthetic h(Lio/dcloud/common/core/ui/g;)I
    .registers 3

    .line 1
    iget v0, p0, Lio/dcloud/common/core/ui/g;->R:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lio/dcloud/common/core/ui/g;->R:I

    return v0
.end method

.method private h()Z
    .registers 6

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    invoke-direct {p0, v0}, Lio/dcloud/common/core/ui/g;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lio/dcloud/common/core/ui/g;->l:I

    .line 3
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->I:Ljava/lang/String;

    const-string v1, "right"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "bounce"

    const v2, 0x7fffffff

    const/4 v3, 0x0

    if-eqz v0, :cond_9a

    .line 4
    iget v0, p0, Lio/dcloud/common/core/ui/g;->u:I

    if-eq v2, v0, :cond_23

    .line 5
    iput v0, p0, Lio/dcloud/common/core/ui/g;->m:I

    .line 6
    iget v1, p0, Lio/dcloud/common/core/ui/g;->l:I

    if-ne v1, v0, :cond_12e

    return v3

    .line 10
    :cond_23
    iget v0, p0, Lio/dcloud/common/core/ui/g;->M:I

    iput v0, p0, Lio/dcloud/common/core/ui/g;->m:I

    .line 11
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    if-eqz v0, :cond_90

    .line 12
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->A:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 13
    iget v0, p0, Lio/dcloud/common/core/ui/g;->l:I

    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    invoke-direct {p0, v1}, Lio/dcloud/common/core/ui/g;->b(Landroid/view/View;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lio/dcloud/common/core/ui/g;->m:I

    goto/16 :goto_12e

    .line 15
    :cond_42
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-direct {p0, v0}, Lio/dcloud/common/core/ui/g;->b(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lio/dcloud/common/core/ui/g;->M:I

    if-ge v0, v1, :cond_12e

    .line 16
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    invoke-direct {p0, v0}, Lio/dcloud/common/core/ui/g;->a(Landroid/view/View;)I

    move-result v0

    .line 17
    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-direct {p0, v1}, Lio/dcloud/common/core/ui/g;->a(Landroid/view/View;)I

    move-result v1

    .line 18
    iget-object v2, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-direct {p0, v2}, Lio/dcloud/common/core/ui/g;->a(Landroid/view/View;)I

    move-result v2

    iget-object v4, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-direct {p0, v4}, Lio/dcloud/common/core/ui/g;->b(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    if-nez v1, :cond_6a

    if-ne v2, v0, :cond_6a

    return v3

    .line 22
    :cond_6a
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/g;->D:Z

    if-nez v0, :cond_7a

    if-nez v1, :cond_7a

    .line 23
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-direct {p0, v0}, Lio/dcloud/common/core/ui/g;->b(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lio/dcloud/common/core/ui/g;->m:I

    goto/16 :goto_12e

    :cond_7a
    if-eqz v0, :cond_88

    if-nez v2, :cond_88

    .line 26
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-direct {p0, v0}, Lio/dcloud/common/core/ui/g;->b(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lio/dcloud/common/core/ui/g;->m:I

    goto/16 :goto_12e

    .line 28
    :cond_88
    iget v0, p0, Lio/dcloud/common/core/ui/g;->M:I

    if-ne v0, v2, :cond_12e

    .line 29
    iput v3, p0, Lio/dcloud/common/core/ui/g;->m:I

    goto/16 :goto_12e

    :cond_90
    if-nez v0, :cond_12e

    .line 32
    iget v0, p0, Lio/dcloud/common/core/ui/g;->l:I

    if-gez v0, :cond_12e

    .line 33
    iput v3, p0, Lio/dcloud/common/core/ui/g;->m:I

    goto/16 :goto_12e

    .line 37
    :cond_9a
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->I:Ljava/lang/String;

    const-string v4, "left"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12e

    .line 38
    iget v0, p0, Lio/dcloud/common/core/ui/g;->u:I

    if-eq v2, v0, :cond_af

    .line 39
    iput v0, p0, Lio/dcloud/common/core/ui/g;->m:I

    .line 40
    iget v1, p0, Lio/dcloud/common/core/ui/g;->l:I

    if-ne v1, v0, :cond_12e

    return v3

    .line 44
    :cond_af
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    invoke-direct {p0, v0}, Lio/dcloud/common/core/ui/g;->b(Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lio/dcloud/common/core/ui/g;->m:I

    .line 45
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    if-eqz v0, :cond_126

    .line 46
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->A:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 47
    iget v0, p0, Lio/dcloud/common/core/ui/g;->l:I

    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    invoke-direct {p0, v1}, Lio/dcloud/common/core/ui/g;->b(Landroid/view/View;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lio/dcloud/common/core/ui/g;->m:I

    goto :goto_12e

    .line 48
    :cond_d2
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-direct {p0, v0}, Lio/dcloud/common/core/ui/g;->b(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lio/dcloud/common/core/ui/g;->M:I

    if-ge v0, v1, :cond_12e

    .line 49
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    invoke-direct {p0, v0}, Lio/dcloud/common/core/ui/g;->a(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    invoke-direct {p0, v1}, Lio/dcloud/common/core/ui/g;->b(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-direct {p0, v1}, Lio/dcloud/common/core/ui/g;->a(Landroid/view/View;)I

    move-result v1

    .line 51
    iget-object v2, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-direct {p0, v2}, Lio/dcloud/common/core/ui/g;->a(Landroid/view/View;)I

    move-result v2

    iget-object v4, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-direct {p0, v4}, Lio/dcloud/common/core/ui/g;->b(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 52
    iget v4, p0, Lio/dcloud/common/core/ui/g;->M:I

    if-ne v4, v2, :cond_103

    if-ne v1, v0, :cond_103

    return v3

    .line 55
    :cond_103
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/g;->D:Z

    if-nez v0, :cond_113

    if-ne v4, v2, :cond_113

    .line 56
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-direct {p0, v0}, Lio/dcloud/common/core/ui/g;->b(Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lio/dcloud/common/core/ui/g;->m:I

    goto :goto_12e

    :cond_113
    if-eqz v0, :cond_121

    if-ne v4, v1, :cond_121

    .line 59
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-direct {p0, v0}, Lio/dcloud/common/core/ui/g;->b(Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lio/dcloud/common/core/ui/g;->m:I

    goto :goto_12e

    :cond_121
    if-nez v1, :cond_12e

    .line 62
    iput v3, p0, Lio/dcloud/common/core/ui/g;->m:I

    goto :goto_12e

    :cond_126
    if-nez v0, :cond_12e

    .line 65
    iget v0, p0, Lio/dcloud/common/core/ui/g;->l:I

    if-lez v0, :cond_12e

    .line 66
    iput v3, p0, Lio/dcloud/common/core/ui/g;->m:I

    :cond_12e
    :goto_12e
    const/4 v0, 0x1

    return v0
.end method

.method private i()V
    .registers 3

    .line 2
    iget v0, p0, Lio/dcloud/common/core/ui/g;->l:I

    int-to-float v0, v0

    iput v0, p0, Lio/dcloud/common/core/ui/g;->U:F

    .line 3
    iget v1, p0, Lio/dcloud/common/core/ui/g;->m:I

    int-to-float v1, v1

    iput v1, p0, Lio/dcloud/common/core/ui/g;->V:F

    .line 4
    iput v0, p0, Lio/dcloud/common/core/ui/g;->X:F

    .line 5
    iput v0, p0, Lio/dcloud/common/core/ui/g;->W:F

    sub-float/2addr v1, v0

    .line 6
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lio/dcloud/common/core/ui/g;->Y:F

    .line 7
    iget v1, p0, Lio/dcloud/common/core/ui/g;->T:F

    mul-float v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lio/dcloud/common/core/ui/g;->Z:F

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/g;->a0:Z

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/g;->b0:Z

    return-void
.end method

.method static synthetic i(Lio/dcloud/common/core/ui/g;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/dcloud/common/core/ui/g;->N:Z

    return p0
.end method

.method static synthetic j(Lio/dcloud/common/core/ui/g;)Lio/dcloud/common/core/ui/b;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    return-object p0
.end method

.method private j()Z
    .registers 4

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->I:Ljava/lang/String;

    const-string v1, "right"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 3
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-direct {p0, v0}, Lio/dcloud/common/core/ui/g;->a(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_30

    return v1

    .line 7
    :cond_14
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->I:Ljava/lang/String;

    const-string v2, "left"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 8
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-direct {p0, v0}, Lio/dcloud/common/core/ui/g;->a(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    invoke-direct {p0, v2}, Lio/dcloud/common/core/ui/g;->b(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lio/dcloud/common/core/ui/g;->M:I

    if-ne v0, v2, :cond_30

    return v1

    :cond_30
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic k(Lio/dcloud/common/core/ui/g;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/common/core/ui/g;->Q:I

    return p0
.end method

.method private k()V
    .registers 7

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    invoke-direct {p0, v0}, Lio/dcloud/common/core/ui/g;->a(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lio/dcloud/common/core/ui/g;->X:F

    .line 3
    iget-boolean v1, p0, Lio/dcloud/common/core/ui/g;->a0:Z

    const-string v2, "move"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_23

    iget v1, p0, Lio/dcloud/common/core/ui/g;->U:F

    cmpl-float v5, v0, v1

    if-nez v5, :cond_23

    .line 4
    iput-boolean v3, p0, Lio/dcloud/common/core/ui/g;->b0:Z

    .line 5
    iput-boolean v4, p0, Lio/dcloud/common/core/ui/g;->a0:Z

    .line 6
    iput v1, p0, Lio/dcloud/common/core/ui/g;->W:F

    const-string v0, "0"

    .line 7
    invoke-direct {p0, v2, v4, v0}, Lio/dcloud/common/core/ui/g;->a(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_75

    .line 9
    :cond_23
    iget v1, p0, Lio/dcloud/common/core/ui/g;->W:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lio/dcloud/common/core/ui/g;->Z:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5e

    .line 10
    iput-boolean v3, p0, Lio/dcloud/common/core/ui/g;->a0:Z

    .line 11
    iput-boolean v3, p0, Lio/dcloud/common/core/ui/g;->b0:Z

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/dcloud/common/core/ui/g;->X:F

    iget v3, p0, Lio/dcloud/common/core/ui/g;->U:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lio/dcloud/common/core/ui/g;->Y:F

    div-float/2addr v1, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v4, v0}, Lio/dcloud/common/core/ui/g;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 13
    iget v0, p0, Lio/dcloud/common/core/ui/g;->X:F

    iput v0, p0, Lio/dcloud/common/core/ui/g;->W:F

    goto :goto_75

    .line 15
    :cond_5e
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/g;->b0:Z

    if-eqz v0, :cond_75

    iget v0, p0, Lio/dcloud/common/core/ui/g;->X:F

    iget v1, p0, Lio/dcloud/common/core/ui/g;->V:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_75

    .line 16
    iput-boolean v4, p0, Lio/dcloud/common/core/ui/g;->b0:Z

    .line 17
    iput-boolean v3, p0, Lio/dcloud/common/core/ui/g;->a0:Z

    .line 18
    iput v1, p0, Lio/dcloud/common/core/ui/g;->W:F

    const-string v0, "100"

    .line 19
    invoke-direct {p0, v2, v4, v0}, Lio/dcloud/common/core/ui/g;->a(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_75
    :goto_75
    return-void
.end method

.method static synthetic l(Lio/dcloud/common/core/ui/g;)Lio/dcloud/common/core/ui/b;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/core/ui/g;->q:Lio/dcloud/common/core/ui/b;

    return-object p0
.end method

.method static synthetic m(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/core/ui/g;->v:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/core/ui/g;->w:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/core/ui/g;->y:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic p(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/core/ui/g;->z:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic q(Lio/dcloud/common/core/ui/g;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/common/core/ui/g;->o:I

    return p0
.end method

.method static synthetic r(Lio/dcloud/common/core/ui/g;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/common/core/ui/g;->n:I

    return p0
.end method

.method static synthetic s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/core/ui/g;->r:Landroid/view/View;

    return-object p0
.end method

.method static synthetic t(Lio/dcloud/common/core/ui/g;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/common/core/ui/g;->m:I

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/view/View;
    .registers 5

    .line 483
    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 484
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    .line 485
    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->dragData:Ljava/util/HashMap;

    if-eqz v0, :cond_5a

    .line 486
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 487
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/adapter/util/DragBean;

    if-eqz p1, :cond_5a

    .line 489
    iget-object v0, p1, Lio/dcloud/common/adapter/util/DragBean;->dragBindWebView:Lio/dcloud/common/DHInterface/IFrameView;

    if-eqz v0, :cond_5a

    .line 490
    iget-object p1, p1, Lio/dcloud/common/adapter/util/DragBean;->dragBindViewOp:Lorg/json/JSONObject;

    const-string v1, "moveMode"

    invoke-static {p1, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "follow"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 491
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5a

    .line 492
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5a

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lio/dcloud/common/core/ui/g;->M:I

    if-ge v0, v1, :cond_5a

    .line 493
    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/g;->a(Landroid/view/View;)I

    move-result v0

    .line 494
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    if-ltz v0, :cond_53

    .line 495
    iget v2, p0, Lio/dcloud/common/core/ui/g;->M:I

    if-lt v0, v2, :cond_59

    :cond_53
    if-lez v1, :cond_5a

    iget v0, p0, Lio/dcloud/common/core/ui/g;->M:I

    if-gt v1, v0, :cond_5a

    :cond_59
    return-object p1

    :cond_5a
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .registers 10

    .line 12
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/g;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 16
    :cond_6
    invoke-virtual {p0}, Lio/dcloud/common/core/ui/g;->e()Ljava/util/HashMap;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_239

    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->sDoingAnimation:Z

    if-nez v0, :cond_239

    sget-boolean v0, Lio/dcloud/common/core/ui/g;->e0:Z

    if-eqz v0, :cond_17

    goto/16 :goto_239

    .line 20
    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    if-nez v0, :cond_2c

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v5

    if-eqz v5, :cond_2c

    return v2

    :cond_2c
    if-eqz v0, :cond_f7

    const/4 v5, -0x1

    if-eq v0, v1, :cond_f2

    const/4 v6, 0x2

    if-eq v0, v6, :cond_36

    goto/16 :goto_fa

    .line 32
    :cond_36
    iget v0, p0, Lio/dcloud/common/core/ui/g;->J:I

    iget-object v6, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v6}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v6

    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v6

    if-eq v0, v6, :cond_4a

    .line 33
    iput-boolean v1, p0, Lio/dcloud/common/core/ui/g;->K:Z

    .line 35
    :cond_4a
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/g;->K:Z

    if-eqz v0, :cond_4f

    return v2

    .line 38
    :cond_4f
    iget v0, p0, Lio/dcloud/common/core/ui/g;->i:F

    sub-float v0, v3, v0

    .line 39
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 40
    iget v7, p0, Lio/dcloud/common/core/ui/g;->j:F

    sub-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v6, v4

    if-ltz v4, :cond_fa

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v4, p0, Lio/dcloud/common/core/ui/g;->L:F

    sub-float/2addr p1, v4

    .line 51
    iget v4, p0, Lio/dcloud/common/core/ui/g;->h:I

    mul-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, v4, p1

    if-gtz p1, :cond_8c

    .line 54
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    const-string v4, "needTouchEvent"

    invoke-interface {p1, v4}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "false"

    .line 56
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8c

    const/4 p1, 0x1

    goto :goto_8d

    :cond_8c
    const/4 p1, 0x0

    :goto_8d
    if-eqz p1, :cond_fa

    const/4 p1, 0x0

    const-string v4, "right"

    const-string v6, "left"

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_a9

    .line 67
    iget-boolean p1, p0, Lio/dcloud/common/core/ui/g;->t:Z

    if-nez p1, :cond_ba

    invoke-direct {p0, v4}, Lio/dcloud/common/core/ui/g;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_ba

    .line 68
    iput-object v4, p0, Lio/dcloud/common/core/ui/g;->I:Ljava/lang/String;

    .line 69
    iput-boolean v1, p0, Lio/dcloud/common/core/ui/g;->g:Z

    .line 70
    iput-boolean v1, p0, Lio/dcloud/common/core/ui/g;->t:Z

    goto :goto_ba

    .line 77
    :cond_a9
    iget-boolean p1, p0, Lio/dcloud/common/core/ui/g;->t:Z

    if-nez p1, :cond_b9

    invoke-direct {p0, v6}, Lio/dcloud/common/core/ui/g;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b9

    .line 78
    iput-object v6, p0, Lio/dcloud/common/core/ui/g;->I:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Lio/dcloud/common/core/ui/g;->g:Z

    .line 80
    iput-boolean v1, p0, Lio/dcloud/common/core/ui/g;->t:Z

    :cond_b9
    move-object v4, v6

    .line 83
    :cond_ba
    :goto_ba
    iget p1, p0, Lio/dcloud/common/core/ui/g;->F:I

    if-ne v5, p1, :cond_fa

    .line 84
    iput v3, p0, Lio/dcloud/common/core/ui/g;->i:F

    .line 85
    invoke-virtual {p0, v4}, Lio/dcloud/common/core/ui/g;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_ec

    .line 87
    invoke-virtual {p0}, Lio/dcloud/common/core/ui/g;->e()Ljava/util/HashMap;

    move-result-object v0

    .line 88
    invoke-direct {p0, v4}, Lio/dcloud/common/core/ui/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_e1

    .line 89
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e1

    .line 90
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/util/DragBean;

    iget-object v0, v0, Lio/dcloud/common/adapter/util/DragBean;->dragBindViewOp:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lio/dcloud/common/core/ui/g;->a(Lorg/json/JSONObject;)V

    .line 92
    :cond_e1
    iput-object v4, p0, Lio/dcloud/common/core/ui/g;->I:Ljava/lang/String;

    .line 93
    iput-boolean v1, p0, Lio/dcloud/common/core/ui/g;->g:Z

    .line 94
    iput-object p1, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    .line 95
    iput-boolean v1, p0, Lio/dcloud/common/core/ui/g;->O:Z

    .line 96
    iput v1, p0, Lio/dcloud/common/core/ui/g;->F:I

    goto :goto_fa

    .line 99
    :cond_ec
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->I:Ljava/lang/String;

    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/g;->b(Ljava/lang/String;)I

    goto :goto_fa

    .line 106
    :cond_f2
    iput-boolean v2, p0, Lio/dcloud/common/core/ui/g;->t:Z

    .line 107
    iput v5, p0, Lio/dcloud/common/core/ui/g;->F:I

    goto :goto_fa

    .line 108
    :cond_f7
    invoke-virtual {p0, p1}, Lio/dcloud/common/core/ui/g;->b(Landroid/view/MotionEvent;)V

    .line 190
    :cond_fa
    :goto_fa
    iget-boolean p1, p0, Lio/dcloud/common/core/ui/g;->g:Z

    if-eqz p1, :cond_193

    .line 191
    iget-boolean p1, p0, Lio/dcloud/common/core/ui/g;->O:Z

    if-eqz p1, :cond_10a

    .line 192
    invoke-direct {p0}, Lio/dcloud/common/core/ui/g;->j()Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/common/core/ui/g;->g:Z

    goto/16 :goto_193

    .line 194
    :cond_10a
    iget-boolean p1, p0, Lio/dcloud/common/core/ui/g;->B:Z

    if-eqz p1, :cond_135

    iget-boolean v0, p0, Lio/dcloud/common/core/ui/g;->C:Z

    if-eqz v0, :cond_135

    iget-boolean v0, p0, Lio/dcloud/common/core/ui/g;->D:Z

    if-eqz v0, :cond_135

    .line 195
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/b;)Z

    move-result p1

    if-nez p1, :cond_126

    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->q:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/b;)Z

    move-result p1

    if-eqz p1, :cond_12e

    :cond_126
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    if-eqz p1, :cond_193

    instance-of p1, p1, Lio/dcloud/common/DHInterface/INativeView;

    if-eqz p1, :cond_193

    .line 197
    :cond_12e
    invoke-direct {p0}, Lio/dcloud/common/core/ui/g;->g()Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/common/core/ui/g;->g:Z

    goto :goto_193

    :cond_135
    if-eqz p1, :cond_15e

    .line 201
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/g;->C:Z

    if-nez v0, :cond_15e

    iget-boolean v0, p0, Lio/dcloud/common/core/ui/g;->D:Z

    if-eqz v0, :cond_15e

    .line 202
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/b;)Z

    move-result p1

    if-nez p1, :cond_14f

    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->q:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/b;)Z

    move-result p1

    if-eqz p1, :cond_157

    :cond_14f
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    if-eqz p1, :cond_193

    instance-of p1, p1, Lio/dcloud/common/DHInterface/INativeView;

    if-eqz p1, :cond_193

    .line 204
    :cond_157
    invoke-direct {p0}, Lio/dcloud/common/core/ui/g;->f()Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/common/core/ui/g;->g:Z

    goto :goto_193

    :cond_15e
    if-nez p1, :cond_170

    .line 208
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/g;->C:Z

    if-eqz v0, :cond_170

    .line 209
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/b;)Z

    move-result p1

    if-nez p1, :cond_193

    .line 210
    invoke-direct {p0}, Lio/dcloud/common/core/ui/g;->h()Z

    goto :goto_193

    :cond_170
    if-eqz p1, :cond_191

    .line 214
    iget-boolean p1, p0, Lio/dcloud/common/core/ui/g;->D:Z

    if-nez p1, :cond_191

    iget-boolean p1, p0, Lio/dcloud/common/core/ui/g;->C:Z

    if-eqz p1, :cond_191

    .line 215
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/b;)Z

    move-result p1

    if-nez p1, :cond_193

    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->q:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/b;)Z

    move-result p1

    if-nez p1, :cond_193

    .line 216
    invoke-direct {p0}, Lio/dcloud/common/core/ui/g;->h()Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/common/core/ui/g;->g:Z

    goto :goto_193

    .line 219
    :cond_191
    iput-boolean v2, p0, Lio/dcloud/common/core/ui/g;->g:Z

    .line 222
    :cond_193
    :goto_193
    iget-boolean p1, p0, Lio/dcloud/common/core/ui/g;->g:Z

    if-eqz p1, :cond_236

    .line 223
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/b;)Z

    move-result p1

    if-nez p1, :cond_1d9

    .line 224
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isVerticalScrollBarEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/common/core/ui/g;->b:Z

    .line 225
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isHorizontalScrollBarEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/common/core/ui/g;->c:Z

    .line 226
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    .line 227
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    .line 229
    :cond_1d9
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    if-eqz p1, :cond_22c

    instance-of v0, p1, Lcom/dcloud/android/widget/AbsoluteLayout;

    if-eqz v0, :cond_22c

    .line 230
    check-cast p1, Lcom/dcloud/android/widget/AbsoluteLayout;

    invoke-virtual {p1}, Lcom/dcloud/android/widget/AbsoluteLayout;->getDrag()Lio/dcloud/common/core/ui/g;

    move-result-object p1

    invoke-virtual {p1, v1}, Lio/dcloud/common/core/ui/g;->c(Z)V

    .line 231
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->q:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/b;)Z

    move-result p1

    if-nez p1, :cond_22c

    .line 232
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->q:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isVerticalScrollBarEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/common/core/ui/g;->d:Z

    .line 233
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->q:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isHorizontalScrollBarEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lio/dcloud/common/core/ui/g;->e:Z

    .line 234
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->q:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    .line 235
    iget-object p1, p0, Lio/dcloud/common/core/ui/g;->q:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setHorizontalScrollBarEnabled(Z)V

    :cond_22c
    const-string p1, "start"

    const-string v0, "0"

    .line 238
    invoke-direct {p0, p1, v2, v0}, Lio/dcloud/common/core/ui/g;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 239
    invoke-direct {p0}, Lio/dcloud/common/core/ui/g;->i()V

    .line 241
    :cond_236
    iget-boolean p1, p0, Lio/dcloud/common/core/ui/g;->g:Z

    return p1

    .line 242
    :cond_239
    :goto_239
    iput-boolean v2, p0, Lio/dcloud/common/core/ui/g;->g:Z

    return v2
.end method

.method public b(Landroid/view/MotionEvent;)V
    .registers 6

    .line 6
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->S:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_8

    .line 7
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lio/dcloud/common/core/ui/g;->M:I

    .line 9
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lio/dcloud/common/core/ui/g;->L:F

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lio/dcloud/common/core/ui/g;->i:F

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lio/dcloud/common/core/ui/g;->j:F

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/g;->g:Z

    .line 14
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/g;->B:Z

    .line 15
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/g;->t:Z

    .line 16
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/g;->P:Z

    const/4 v1, -0x1

    .line 17
    iput v1, p0, Lio/dcloud/common/core/ui/g;->F:I

    .line 19
    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    const-string v2, "javascript:window.__needNotifyNative__=true;"

    invoke-interface {v1, v2}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    const-string v2, "needTouchEvent"

    const-string v3, "false"

    invoke-interface {v1, v2, v3}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/g;->K:Z

    .line 23
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    iput v0, p0, Lio/dcloud/common/core/ui/g;->J:I

    .line 24
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->f:Landroid/view/VelocityTracker;

    if-nez v0, :cond_5a

    .line 25
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/common/core/ui/g;->f:Landroid/view/VelocityTracker;

    .line 27
    :cond_5a
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public c(Z)V
    .registers 2

    .line 3
    iput-boolean p1, p0, Lio/dcloud/common/core/ui/g;->a:Z

    return-void
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 4
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/g;->g:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 7
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_e

    return v2

    .line 11
    :cond_e
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->sDoingAnimation:Z

    const/4 v3, 0x3

    if-eqz v0, :cond_1d

    .line 12
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/g;->P:Z

    if-eqz v0, :cond_18

    return v1

    .line 15
    :cond_18
    iput-boolean v2, p0, Lio/dcloud/common/core/ui/g;->P:Z

    .line 16
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 18
    :cond_1d
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/g;->a:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lio/dcloud/common/core/ui/g;->g:Z

    if-nez v0, :cond_26

    return v2

    .line 21
    :cond_26
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->f:Landroid/view/VelocityTracker;

    if-nez v0, :cond_30

    .line 22
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lio/dcloud/common/core/ui/g;->f:Landroid/view/VelocityTracker;

    .line 24
    :cond_30
    iget v0, p0, Lio/dcloud/common/core/ui/g;->F:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_113

    sget-boolean v0, Lio/dcloud/common/core/ui/g;->e0:Z

    if-nez v0, :cond_113

    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_76

    .line 26
    invoke-direct {p0}, Lio/dcloud/common/core/ui/g;->k()V

    .line 27
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->I:Ljava/lang/String;

    const-string v1, "left"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lio/dcloud/common/core/ui/g;->i:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_76

    .line 29
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_76

    .line 31
    :cond_5d
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->I:Ljava/lang/String;

    const-string v1, "right"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lio/dcloud/common/core/ui/g;->i:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_76

    .line 33
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 37
    :cond_76
    :goto_76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v2, v0, :cond_82

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v3, v0, :cond_87

    .line 38
    :cond_82
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 40
    :cond_87
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/g;->O:Z

    if-eqz v0, :cond_90

    .line 41
    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/g;->e(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 44
    :cond_90
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/g;->B:Z

    if-eqz v0, :cond_b9

    iget-boolean v1, p0, Lio/dcloud/common/core/ui/g;->C:Z

    if-eqz v1, :cond_b9

    iget-boolean v1, p0, Lio/dcloud/common/core/ui/g;->D:Z

    if-eqz v1, :cond_b9

    .line 45
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0, v0}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/b;)Z

    move-result v0

    if-nez v0, :cond_ac

    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->q:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0, v0}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/b;)Z

    move-result v0

    if-eqz v0, :cond_b4

    :cond_ac
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    if-eqz v0, :cond_112

    instance-of v0, v0, Lio/dcloud/common/DHInterface/INativeView;

    if-eqz v0, :cond_112

    .line 47
    :cond_b4
    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/g;->d(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_b9
    if-eqz v0, :cond_e0

    .line 51
    iget-boolean v1, p0, Lio/dcloud/common/core/ui/g;->C:Z

    if-nez v1, :cond_e0

    iget-boolean v1, p0, Lio/dcloud/common/core/ui/g;->D:Z

    if-eqz v1, :cond_e0

    .line 52
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0, v0}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/b;)Z

    move-result v0

    if-nez v0, :cond_d3

    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->q:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0, v0}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/b;)Z

    move-result v0

    if-eqz v0, :cond_db

    :cond_d3
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->s:Landroid/view/View;

    if-eqz v0, :cond_112

    instance-of v0, v0, Lio/dcloud/common/DHInterface/INativeView;

    if-eqz v0, :cond_112

    .line 54
    :cond_db
    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/g;->f(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_e0
    if-eqz v0, :cond_ff

    .line 58
    iget-boolean v1, p0, Lio/dcloud/common/core/ui/g;->D:Z

    if-nez v1, :cond_ff

    iget-boolean v1, p0, Lio/dcloud/common/core/ui/g;->C:Z

    if-eqz v1, :cond_ff

    .line 59
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0, v0}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/b;)Z

    move-result v0

    if-nez v0, :cond_112

    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->q:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0, v0}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/b;)Z

    move-result v0

    if-nez v0, :cond_112

    .line 60
    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/g;->g(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_ff
    if-nez v0, :cond_112

    .line 64
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/g;->C:Z

    if-eqz v0, :cond_112

    .line 65
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0, v0}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/b;)Z

    move-result v0

    if-nez v0, :cond_112

    .line 66
    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/g;->g(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_112
    return v2

    :cond_113
    return v1
.end method

.method public e()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/common/adapter/util/DragBean;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    if-eqz v0, :cond_13

    .line 3
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 4
    iget-object v0, p0, Lio/dcloud/common/core/ui/g;->p:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->dragData:Ljava/util/HashMap;

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

###### Class io.dcloud.common.core.ui.g.a (io.dcloud.common.core.ui.g$a)
.class Lio/dcloud/common/core/ui/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/g;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/g;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/g$a;->a:Lio/dcloud/common/core/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_13

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$a;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_13
    const/4 v0, 0x0

    .line 6
    iget-object v1, p0, Lio/dcloud/common/core/ui/g$a;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v1}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_28

    .line 8
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$a;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->q(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto :goto_58

    .line 12
    :cond_28
    iget-object v1, p0, Lio/dcloud/common/core/ui/g$a;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v1}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v3

    invoke-static {v1, v3}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 13
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 14
    iget-object v4, p0, Lio/dcloud/common/core/ui/g$a;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v4}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 15
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    if-lt v4, v1, :cond_50

    .line 18
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$a;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->q(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto :goto_58

    .line 20
    :cond_50
    iget-object v1, p0, Lio/dcloud/common/core/ui/g$a;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v1}, Lio/dcloud/common/core/ui/g;->r(Lio/dcloud/common/core/ui/g;)I

    move-result v1

    move v0, v1

    const/4 v2, 0x0

    .line 23
    :goto_58
    iget-object v1, p0, Lio/dcloud/common/core/ui/g$a;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v1}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v3

    invoke-static {v1, v3}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v1

    .line 24
    iget-object v3, p0, Lio/dcloud/common/core/ui/g$a;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v3}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v4

    invoke-static {v3, v4, v1, v0, v2}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Landroid/view/View;IIZ)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_71

    .line 26
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->start()V

    :cond_71
    return-void
.end method

###### Class io.dcloud.common.core.ui.g.b (io.dcloud.common.core.ui.g$b)
.class Lio/dcloud/common/core/ui/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/g;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/g;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 11

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_13

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 7
    :cond_13
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "left"

    const-string v2, "right"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2e

    .line 9
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->t(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    :goto_2b
    const/4 v5, 0x1

    goto/16 :goto_164

    .line 11
    :cond_2e
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_ea

    .line 14
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v5

    invoke-static {v0, v5}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 15
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 16
    iget-object v6, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v6}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 17
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 18
    iget-object v7, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v7}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 19
    iget v7, v5, Landroid/graphics/Rect;->left:I

    if-nez v7, :cond_9d

    .line 20
    iget v5, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v7

    .line 21
    iget-object v6, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v6}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_81

    if-lt v5, v0, :cond_7a

    .line 24
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->t(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto :goto_2b

    .line 26
    :cond_7a
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto :goto_e7

    .line 28
    :cond_81
    iget-object v6, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v6}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e6

    if-gt v5, v0, :cond_96

    .line 31
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->t(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto :goto_2b

    .line 33
    :cond_96
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto :goto_e7

    .line 36
    :cond_9d
    iget v7, v5, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v8}, Lio/dcloud/common/core/ui/g;->d(Lio/dcloud/common/core/ui/g;)I

    move-result v8

    if-ne v7, v8, :cond_e6

    .line 37
    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    .line 38
    iget-object v6, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v6}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c9

    if-gt v5, v0, :cond_c2

    .line 41
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->t(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto/16 :goto_2b

    .line 43
    :cond_c2
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto :goto_e7

    .line 45
    :cond_c9
    iget-object v6, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v6}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e6

    if-lt v5, v0, :cond_df

    .line 48
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->t(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto/16 :goto_2b

    .line 50
    :cond_df
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto :goto_e7

    :cond_e6
    const/4 v0, 0x0

    :goto_e7
    const/4 v5, 0x0

    goto/16 :goto_164

    .line 55
    :cond_ea
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 56
    iget-object v5, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v5}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 58
    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v0

    .line 59
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 60
    iget-object v6, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v6}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12e

    iget-object v6, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v6}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;)I

    move-result v6

    if-gez v6, :cond_12e

    if-lt v5, v0, :cond_127

    .line 63
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->t(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto/16 :goto_2b

    .line 65
    :cond_127
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto :goto_e7

    .line 67
    :cond_12e
    iget-object v6, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v6}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_153

    iget-object v6, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v6}, Lio/dcloud/common/core/ui/g;->t(Lio/dcloud/common/core/ui/g;)I

    move-result v6

    if-ltz v6, :cond_153

    if-lt v5, v0, :cond_14c

    .line 70
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->t(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto/16 :goto_2b

    .line 72
    :cond_14c
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto :goto_e7

    :cond_153
    if-gt v5, v0, :cond_15d

    .line 77
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->t(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto/16 :goto_2b

    .line 79
    :cond_15d
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto :goto_e7

    .line 84
    :goto_164
    iget-object v6, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v6}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1a2

    .line 85
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 86
    iget-object v7, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v7}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 87
    iget v7, v6, Landroid/graphics/Rect;->left:I

    if-nez v7, :cond_18b

    .line 88
    iget-object v2, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v2}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a2

    goto :goto_1a3

    .line 91
    :cond_18b
    iget v1, v6, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v6}, Lio/dcloud/common/core/ui/g;->d(Lio/dcloud/common/core/ui/g;)I

    move-result v6

    if-ne v1, v6, :cond_1a2

    .line 92
    iget-object v1, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v1}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a2

    goto :goto_1a3

    :cond_1a2
    const/4 v4, 0x0

    .line 98
    :goto_1a3
    iget-object v1, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v1}, Lio/dcloud/common/core/ui/g;->e(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bounce"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c1

    .line 101
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    .line 102
    iget-object v1, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Ljava/lang/String;)Ljava/lang/String;

    move v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_1c4

    :cond_1c1
    move v7, v0

    move v9, v4

    move v8, v5

    .line 104
    :goto_1c4
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v6

    .line 105
    iget-object v4, p0, Lio/dcloud/common/core/ui/g$b;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v4}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v5

    invoke-static/range {v4 .. v9}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Landroid/view/View;IIZZ)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_1dd

    .line 107
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->start()V

    :cond_1dd
    return-void
.end method

###### Class io.dcloud.common.core.ui.g.c (io.dcloud.common.core.ui.g$c)
.class Lio/dcloud/common/core/ui/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/g;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/g;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_13

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 7
    :cond_13
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "bounce"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_52

    .line 9
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->t(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    .line 10
    iget-object v5, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v5}, Lio/dcloud/common/core/ui/g;->q(Lio/dcloud/common/core/ui/g;)I

    move-result v5

    .line 11
    iget-object v6, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v6}, Lio/dcloud/common/core/ui/g;->e(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 13
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    .line 14
    iget-object v2, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v2}, Lio/dcloud/common/core/ui/g;->r(Lio/dcloud/common/core/ui/g;)I

    move-result v2

    .line 15
    iget-object v3, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v3, v1}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_6f

    :cond_4e
    move v4, v0

    move v0, v5

    goto/16 :goto_1f2

    .line 18
    :cond_52
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->e(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 20
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    .line 21
    iget-object v2, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v2}, Lio/dcloud/common/core/ui/g;->r(Lio/dcloud/common/core/ui/g;)I

    move-result v2

    .line 22
    iget-object v3, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v3, v1}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Ljava/lang/String;)Ljava/lang/String;

    :goto_6f
    move v4, v0

    move v0, v2

    :goto_71
    const/4 v3, 0x0

    goto/16 :goto_1f2

    .line 25
    :cond_74
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->d(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    .line 26
    iget-object v1, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v1}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v1

    .line 27
    iget-object v2, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v2}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v5

    invoke-static {v2, v5}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    .line 28
    iget-object v5, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v5}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v6

    invoke-static {v5, v6}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    .line 29
    iget-object v5, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v5}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 32
    iget-object v5, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v5}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v6}, Lio/dcloud/common/core/ui/g;->d(Lio/dcloud/common/core/ui/g;)I

    move-result v6

    if-ge v5, v6, :cond_120

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 34
    iget-object v1, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v1}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 35
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 36
    iget-object v2, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v2}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 38
    iget v5, v0, Landroid/graphics/Rect;->left:I

    if-nez v5, :cond_f6

    if-gt v1, v2, :cond_e6

    .line 41
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->t(Lio/dcloud/common/core/ui/g;)I

    move-result v4

    .line 42
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->q(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto/16 :goto_1f2

    .line 44
    :cond_e6
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    .line 45
    iget-object v1, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v1}, Lio/dcloud/common/core/ui/g;->r(Lio/dcloud/common/core/ui/g;)I

    move-result v1

    :goto_f2
    move v4, v0

    move v0, v1

    goto/16 :goto_71

    .line 49
    :cond_f6
    iget-object v5, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v5}, Lio/dcloud/common/core/ui/g;->d(Lio/dcloud/common/core/ui/g;)I

    move-result v5

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ne v5, v0, :cond_11d

    if-gt v1, v2, :cond_110

    .line 52
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->t(Lio/dcloud/common/core/ui/g;)I

    move-result v4

    .line 53
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->q(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto/16 :goto_1f2

    .line 55
    :cond_110
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    .line 56
    iget-object v1, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v1}, Lio/dcloud/common/core/ui/g;->r(Lio/dcloud/common/core/ui/g;)I

    move-result v1

    goto :goto_f2

    :cond_11d
    const/4 v0, 0x0

    goto/16 :goto_71

    :cond_120
    if-gtz v1, :cond_1b6

    if-lez v2, :cond_1b6

    sub-int/2addr v2, v4

    if-lez v2, :cond_15c

    .line 65
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v0

    if-ge v2, v0, :cond_15c

    .line 66
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-lt v2, v0, :cond_14f

    .line 68
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->t(Lio/dcloud/common/core/ui/g;)I

    move-result v4

    .line 69
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->q(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto/16 :goto_1f2

    .line 71
    :cond_14f
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    .line 72
    iget-object v1, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v1}, Lio/dcloud/common/core/ui/g;->r(Lio/dcloud/common/core/ui/g;)I

    move-result v1

    goto :goto_f2

    .line 76
    :cond_15c
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v0

    if-ne v2, v0, :cond_18f

    .line 77
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0, v3}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Z)V

    .line 78
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v2}, Lio/dcloud/common/core/ui/g;->t(Lio/dcloud/common/core/ui/g;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Landroid/view/View;I)V

    .line 79
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v2}, Lio/dcloud/common/core/ui/g;->q(Lio/dcloud/common/core/ui/g;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Landroid/view/View;I)V

    .line 80
    invoke-static {v4}, Lio/dcloud/common/core/ui/g;->a(Z)Z

    return-void

    .line 85
    :cond_18f
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0, v4}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Z)V

    .line 86
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v2}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Landroid/view/View;I)V

    .line 87
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v2}, Lio/dcloud/common/core/ui/g;->r(Lio/dcloud/common/core/ui/g;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Landroid/view/View;I)V

    .line 88
    invoke-static {v4}, Lio/dcloud/common/core/ui/g;->a(Z)Z

    return-void

    :cond_1b6
    if-ge v1, v0, :cond_287

    if-gt v0, v2, :cond_287

    sub-int/2addr v0, v1

    if-lez v0, :cond_22d

    .line 96
    iget-object v1, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v1}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v1

    if-ge v0, v1, :cond_22d

    .line 97
    iget-object v1, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v1}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_1e4

    .line 99
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->t(Lio/dcloud/common/core/ui/g;)I

    move-result v4

    .line 100
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->q(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto :goto_1f2

    .line 102
    :cond_1e4
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    .line 103
    iget-object v1, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v1}, Lio/dcloud/common/core/ui/g;->r(Lio/dcloud/common/core/ui/g;)I

    move-result v1

    goto/16 :goto_f2

    .line 132
    :goto_1f2
    iget-object v1, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v1}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v1

    .line 133
    iget-object v2, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v2}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v5

    invoke-static {v2, v5, v1, v4, v3}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Landroid/view/View;IIZ)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object v1

    if-eqz v1, :cond_20b

    .line 135
    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->start()V

    .line 137
    :cond_20b
    iget-object v1, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v1}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v1

    .line 138
    iget-object v2, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v2}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_22c

    .line 139
    iget-object v2, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v2}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v4

    invoke-static {v2, v4, v1, v0, v3}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Landroid/view/View;IIZ)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_22c

    .line 141
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->start()V

    :cond_22c
    return-void

    .line 142
    :cond_22d
    iget-object v1, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v1}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v1

    if-ne v0, v1, :cond_260

    .line 143
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0, v3}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Z)V

    .line 144
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v2}, Lio/dcloud/common/core/ui/g;->t(Lio/dcloud/common/core/ui/g;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Landroid/view/View;I)V

    .line 145
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v2}, Lio/dcloud/common/core/ui/g;->q(Lio/dcloud/common/core/ui/g;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Landroid/view/View;I)V

    .line 146
    invoke-static {v4}, Lio/dcloud/common/core/ui/g;->a(Z)Z

    return-void

    .line 151
    :cond_260
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0, v4}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Z)V

    .line 152
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v2}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Landroid/view/View;I)V

    .line 153
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v2}, Lio/dcloud/common/core/ui/g;->r(Lio/dcloud/common/core/ui/g;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Landroid/view/View;I)V

    .line 154
    invoke-static {v4}, Lio/dcloud/common/core/ui/g;->a(Z)Z

    return-void

    .line 158
    :cond_287
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0, v4}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Z)V

    .line 159
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v2}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Landroid/view/View;I)V

    .line 160
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/common/core/ui/g$c;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v2}, Lio/dcloud/common/core/ui/g;->r(Lio/dcloud/common/core/ui/g;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Landroid/view/View;I)V

    .line 161
    invoke-static {v4}, Lio/dcloud/common/core/ui/g;->a(Z)Z

    return-void
.end method

###### Class io.dcloud.common.core.ui.g.d (io.dcloud.common.core.ui.g$d)
.class Lio/dcloud/common/core/ui/g$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/g;->a(Landroid/view/View;IIZZ)Lio/dcloud/nineoldandroids/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Landroid/view/View;

.field final synthetic d:I

.field final synthetic e:Lio/dcloud/common/core/ui/g;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/g;ZZLandroid/view/View;I)V
    .registers 6

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    iput-boolean p2, p0, Lio/dcloud/common/core/ui/g$d;->a:Z

    iput-boolean p3, p0, Lio/dcloud/common/core/ui/g$d;->b:Z

    iput-object p4, p0, Lio/dcloud/common/core/ui/g$d;->c:Landroid/view/View;

    iput p5, p0, Lio/dcloud/common/core/ui/g$d;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 13

    .line 1
    iget-object p1, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {p1}, Lio/dcloud/common/core/ui/g;->i(Lio/dcloud/common/core/ui/g;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_20

    .line 2
    iget-object p1, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {p1, v0}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Z)Z

    .line 3
    iget-object p1, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    iget-boolean v1, p0, Lio/dcloud/common/core/ui/g$d;->a:Z

    iget-boolean v2, p0, Lio/dcloud/common/core/ui/g$d;->b:Z

    if-eqz v1, :cond_19

    const-string v3, "100"

    goto :goto_1b

    :cond_19
    const-string v3, "0"

    :goto_1b
    const-string v4, "end"

    invoke-static {p1, v4, v1, v2, v3}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 5
    :cond_20
    iget-boolean p1, p0, Lio/dcloud/common/core/ui/g$d;->a:Z

    if-eqz p1, :cond_60

    .line 6
    iget-object p1, p0, Lio/dcloud/common/core/ui/g$d;->c:Landroid/view/View;

    iget-object v1, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {v1}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_e2

    iget-object p1, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {p1}, Lio/dcloud/common/core/ui/g;->j(Lio/dcloud/common/core/ui/g;)Lio/dcloud/common/core/ui/b;

    move-result-object p1

    if-eqz p1, :cond_e2

    .line 7
    iget-object p1, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {p1}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    invoke-static {p1, v1}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result p1

    .line 8
    iget-object v1, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {v1}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    if-le p1, v1, :cond_55

    iget-object v1, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {v1}, Lio/dcloud/common/core/ui/g;->d(Lio/dcloud/common/core/ui/g;)I

    move-result v1

    if-lt p1, v1, :cond_e2

    .line 9
    :cond_55
    iget-object p1, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {p1}, Lio/dcloud/common/core/ui/g;->j(Lio/dcloud/common/core/ui/g;)Lio/dcloud/common/core/ui/b;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->popFromViewStack()V

    goto/16 :goto_e2

    .line 13
    :cond_60
    iget-object p1, p0, Lio/dcloud/common/core/ui/g$d;->c:Landroid/view/View;

    iget-object v1, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {v1}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_e2

    .line 15
    iget-object p1, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {p1}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    invoke-static {p1, v1}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result p1

    .line 16
    iget-object v1, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {v1}, Lio/dcloud/common/core/ui/g;->d(Lio/dcloud/common/core/ui/g;)I

    move-result v1

    neg-int v1, v1

    if-le p1, v1, :cond_85

    iget-object v1, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {v1}, Lio/dcloud/common/core/ui/g;->d(Lio/dcloud/common/core/ui/g;)I

    move-result v1

    if-lt p1, v1, :cond_ac

    .line 17
    :cond_85
    iget-object v1, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {v1}, Lio/dcloud/common/core/ui/g;->k(Lio/dcloud/common/core/ui/g;)I

    move-result v1

    const v2, 0x7fffffff

    if-eq v2, v1, :cond_a7

    iget-object v1, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {v1}, Lio/dcloud/common/core/ui/g;->k(Lio/dcloud/common/core/ui/g;)I

    move-result v1

    if-eq v1, p1, :cond_a7

    .line 18
    iget-object p1, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {p1}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {v3}, Lio/dcloud/common/core/ui/g;->k(Lio/dcloud/common/core/ui/g;)I

    move-result v3

    invoke-static {p1, v1, v3}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Landroid/view/View;I)V

    .line 20
    :cond_a7
    iget-object p1, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {p1, v2}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;I)I

    .line 22
    :cond_ac
    iget-object p1, p0, Lio/dcloud/common/core/ui/g$d;->c:Landroid/view/View;

    instance-of p1, p1, Lio/dcloud/common/DHInterface/INativeView;

    if-nez p1, :cond_e2

    iget-object p1, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {p1}, Lio/dcloud/common/core/ui/g;->l(Lio/dcloud/common/core/ui/g;)Lio/dcloud/common/core/ui/b;

    move-result-object p1

    if-eqz p1, :cond_e2

    .line 23
    iget-object p1, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {p1}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    invoke-static {p1, v1}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result p1

    .line 24
    iget-object v1, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {v1}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v1

    neg-int v1, v1

    if-le p1, v1, :cond_d9

    iget-object v1, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {v1}, Lio/dcloud/common/core/ui/g;->d(Lio/dcloud/common/core/ui/g;)I

    move-result v1

    if-lt p1, v1, :cond_e2

    .line 25
    :cond_d9
    iget-object p1, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {p1}, Lio/dcloud/common/core/ui/g;->l(Lio/dcloud/common/core/ui/g;)Lio/dcloud/common/core/ui/b;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->popFromViewStack()V

    .line 30
    :cond_e2
    :goto_e2
    iget-object p1, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    iget-object v1, p0, Lio/dcloud/common/core/ui/g$d;->c:Landroid/view/View;

    iget v2, p0, Lio/dcloud/common/core/ui/g$d;->d:I

    invoke-static {p1, v1, v2}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Landroid/view/View;I)V

    .line 33
    iget-object p1, p0, Lio/dcloud/common/core/ui/g$d;->c:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1fd

    .line 34
    iget-boolean v3, p0, Lio/dcloud/common/core/ui/g$d;->b:Z

    if-nez v3, :cond_137

    .line 35
    iget-object v3, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {v3}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v3

    if-ne p1, v3, :cond_115

    .line 36
    iget-object p1, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {p1}, Lio/dcloud/common/core/ui/g;->j(Lio/dcloud/common/core/ui/g;)Lio/dcloud/common/core/ui/b;

    move-result-object p1

    .line 37
    iget-boolean v3, p0, Lio/dcloud/common/core/ui/g$d;->a:Z

    if-eqz v3, :cond_10e

    .line 38
    iget-object v3, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {v3}, Lio/dcloud/common/core/ui/g;->m(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;

    move-result-object v3

    goto :goto_139

    .line 40
    :cond_10e
    iget-object v3, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {v3}, Lio/dcloud/common/core/ui/g;->n(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;

    move-result-object v3

    goto :goto_139

    .line 42
    :cond_115
    iget-object p1, p0, Lio/dcloud/common/core/ui/g$d;->c:Landroid/view/View;

    iget-object v3, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {v3}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v3

    if-ne p1, v3, :cond_137

    .line 43
    iget-object p1, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {p1}, Lio/dcloud/common/core/ui/g;->l(Lio/dcloud/common/core/ui/g;)Lio/dcloud/common/core/ui/b;

    move-result-object p1

    .line 44
    iget-boolean v3, p0, Lio/dcloud/common/core/ui/g$d;->a:Z

    if-eqz v3, :cond_130

    .line 45
    iget-object v3, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {v3}, Lio/dcloud/common/core/ui/g;->o(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;

    move-result-object v3

    goto :goto_139

    .line 47
    :cond_130
    iget-object v3, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {v3}, Lio/dcloud/common/core/ui/g;->p(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;

    move-result-object v3

    goto :goto_139

    :cond_137
    move-object p1, v1

    move-object v3, p1

    :goto_139
    const-string v4, "hide"

    .line 52
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "close"

    if-nez v4, :cond_14c

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14a

    goto :goto_14c

    :cond_14a
    const/4 v4, 0x0

    goto :goto_14d

    :cond_14c
    :goto_14c
    const/4 v4, 0x1

    :goto_14d
    if-eqz v4, :cond_1fd

    .line 56
    iget-object v4, p0, Lio/dcloud/common/core/ui/g$d;->c:Landroid/view/View;

    instance-of v6, v4, Lio/dcloud/common/DHInterface/INativeView;

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x4

    if-eqz v6, :cond_1b6

    .line 57
    check-cast v4, Lio/dcloud/common/DHInterface/INativeView;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/INativeView;->getViewId()Ljava/lang/String;

    move-result-object p1

    .line 58
    iget-object v4, p0, Lio/dcloud/common/core/ui/g$d;->c:Landroid/view/View;

    check-cast v4, Lio/dcloud/common/DHInterface/INativeView;

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/INativeView;->getViewUUId()Ljava/lang/String;

    move-result-object v4

    .line 59
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16e

    const-string v3, "view_close"

    .line 62
    :cond_16e
    iget-object v5, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {v5}, Lio/dcloud/common/core/ui/g;->j(Lio/dcloud/common/core/ui/g;)Lio/dcloud/common/core/ui/b;

    move-result-object v5

    invoke-virtual {v5}, Lio/dcloud/common/core/ui/b;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object v5

    sget-object v6, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    .line 63
    invoke-static {v10}, Lio/dcloud/common/core/ui/g;->j(Lio/dcloud/common/core/ui/g;)Lio/dcloud/common/core/ui/b;

    move-result-object v10

    invoke-virtual {v10}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v10

    aput-object v10, v9, v0

    const-string v10, "nativeobj"

    aput-object v10, v9, v2

    aput-object v3, v9, v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[\'"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\',\'"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\']"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    aput-object p1, v9, v7

    .line 64
    invoke-interface {v5, v6, v2, v9}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1fd

    :cond_1b6
    if-eqz p1, :cond_1fd

    .line 68
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object v4

    sget-object v5, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    new-array v6, v9, [Ljava/lang/Object;

    .line 69
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v9

    aput-object v9, v6, v0

    const-string v9, "ui"

    aput-object v9, v6, v2

    const-string v9, "execMethod"

    aput-object v9, v6, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[\"NWindow\",\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\",[\""

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewUUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",[null,null,null]]]"

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    aput-object p1, v6, v7

    .line 71
    invoke-interface {v4, v5, v2, v6}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_1fd
    :goto_1fd
    iget-object p1, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {p1}, Lio/dcloud/common/core/ui/g;->f(Lio/dcloud/common/core/ui/g;)I

    move-result p1

    if-gt p1, v2, :cond_20d

    .line 79
    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->a(Z)Z

    .line 80
    iget-object p1, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {p1, v1}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Landroid/view/View;)Landroid/view/View;

    .line 82
    :cond_20d
    iget-object p1, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {p1}, Lio/dcloud/common/core/ui/g;->f(Lio/dcloud/common/core/ui/g;)I

    move-result p1

    if-lt p1, v2, :cond_21a

    .line 83
    iget-object p1, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {p1}, Lio/dcloud/common/core/ui/g;->h(Lio/dcloud/common/core/ui/g;)I

    :cond_21a
    return-void
.end method

.method public onAnimationRepeat(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lio/dcloud/common/core/ui/g$d;->e:Lio/dcloud/common/core/ui/g;

    invoke-static {p1}, Lio/dcloud/common/core/ui/g;->g(Lio/dcloud/common/core/ui/g;)I

    return-void
.end method

###### Class io.dcloud.common.core.ui.g.e (io.dcloud.common.core.ui.g$e)
.class Lio/dcloud/common/core/ui/g$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/g;->a(Landroid/view/View;IIZZ)Lio/dcloud/nineoldandroids/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lio/dcloud/common/core/ui/g;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/g;Landroid/view/View;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/g$e;->b:Lio/dcloud/common/core/ui/g;

    iput-object p2, p0, Lio/dcloud/common/core/ui/g$e;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lio/dcloud/nineoldandroids/animation/ValueAnimator;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$e;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/dcloud/common/core/ui/g$e;->a:Landroid/view/View;

    instance-of v2, v1, Lio/dcloud/common/DHInterface/INativeView;

    if-eqz v2, :cond_26

    .line 3
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$e;->b:Lio/dcloud/common/core/ui/g;

    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Landroid/view/View;I)V

    .line 4
    iget-object p1, p0, Lio/dcloud/common/core/ui/g$e;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 5
    iget-object p1, p0, Lio/dcloud/common/core/ui/g$e;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_61

    .line 7
    :cond_26
    instance-of v2, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_38

    .line 8
    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v1, p1}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    goto :goto_61

    .line 9
    :cond_38
    instance-of v0, v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    if-eqz v0, :cond_61

    .line 12
    :try_start_3c
    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 13
    iget-object v1, p0, Lio/dcloud/common/core/ui/g$e;->a:Landroid/view/View;

    int-to-float v0, v0

    invoke-static {v1, v0}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4c} :catch_4d

    goto :goto_5c

    .line 15
    :catch_4d
    invoke-virtual {p1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 16
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$e;->a:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    .line 18
    :goto_5c
    iget-object p1, p0, Lio/dcloud/common/core/ui/g$e;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_61
    :goto_61
    return-void
.end method

###### Class io.dcloud.common.core.ui.g.f (io.dcloud.common.core.ui.g$f)
.class Lio/dcloud/common/core/ui/g$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/g;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/g;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 10

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_13

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8
    :cond_13
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_54

    .line 17
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "right"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 19
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->d(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto :goto_51

    .line 20
    :cond_36
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "left"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 22
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v3

    invoke-static {v0, v3}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v0

    :goto_4e
    neg-int v0, v0

    goto :goto_51

    :cond_50
    const/4 v0, 0x0

    :goto_51
    const/4 v6, 0x0

    goto/16 :goto_180

    .line 26
    :cond_54
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v3, 0x2

    new-array v4, v3, [I

    new-array v5, v3, [I

    new-array v6, v3, [I

    .line 30
    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 31
    iget-object v7, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v7}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 32
    iget-object v7, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v7}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 34
    aget v7, v4, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v7, v0

    .line 35
    aget v0, v5, v2

    iget-object v0, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 36
    aget v0, v6, v2

    iget-object v5, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v5}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v8

    invoke-static {v5, v8}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v5

    add-int/2addr v0, v5

    .line 38
    aget v5, v6, v2

    aget v8, v4, v2

    if-gt v5, v8, :cond_134

    aget v5, v4, v2

    if-ge v5, v0, :cond_134

    .line 40
    aget v4, v4, v2

    sub-int/2addr v0, v4

    if-lez v0, :cond_dd

    .line 41
    iget-object v4, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v4}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v5

    invoke-static {v4, v5}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v4

    if-ge v0, v4, :cond_dd

    .line 42
    iget-object v4, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v4}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v5

    invoke-static {v4, v5}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v4

    div-int/2addr v4, v3

    if-gt v0, v4, :cond_ce

    .line 45
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v3

    invoke-static {v0, v3}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v0

    goto :goto_4e

    .line 47
    :cond_ce
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v0

    move v6, v0

    const/4 v0, 0x0

    :goto_da
    const/4 v1, 0x0

    goto/16 :goto_180

    .line 52
    :cond_dd
    iget-object v3, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v3}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v4

    invoke-static {v3, v4}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v3

    if-ne v0, v3, :cond_10e

    .line 53
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0, v2, v1}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;ZZ)V

    .line 54
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v3}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v4

    invoke-static {v3, v4}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v3

    invoke-static {v0, v1, v3}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Landroid/view/View;I)V

    .line 55
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Landroid/view/View;I)V

    .line 56
    invoke-static {v2}, Lio/dcloud/common/core/ui/g;->a(Z)Z

    return-void

    .line 61
    :cond_10e
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0, v1, v1}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;ZZ)V

    .line 62
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Landroid/view/View;I)V

    .line 63
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v3}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v4

    invoke-static {v3, v4}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v3

    neg-int v3, v3

    invoke-static {v0, v1, v3}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Landroid/view/View;I)V

    .line 64
    invoke-static {v2}, Lio/dcloud/common/core/ui/g;->a(Z)Z

    return-void

    .line 69
    :cond_134
    aget v4, v6, v2

    if-ge v4, v7, :cond_21e

    if-gt v7, v0, :cond_21e

    .line 71
    aget v0, v6, v2

    sub-int/2addr v7, v0

    if-lez v7, :cond_1ba

    .line 72
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v4

    invoke-static {v0, v4}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v0

    if-ge v7, v0, :cond_1ba

    .line 73
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v4

    invoke-static {v0, v4}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v0

    div-int/2addr v0, v3

    if-gt v7, v0, :cond_160

    .line 76
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->d(Lio/dcloud/common/core/ui/g;)I

    move-result v0

    goto/16 :goto_51

    .line 78
    :cond_160
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    .line 79
    iget-object v1, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v1}, Lio/dcloud/common/core/ui/g;->d(Lio/dcloud/common/core/ui/g;)I

    move-result v1

    iget-object v3, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v3}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v4

    invoke-static {v3, v4}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v3

    sub-int/2addr v1, v3

    move v6, v0

    move v0, v1

    goto/16 :goto_da

    .line 106
    :goto_180
    iget-object v2, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v2}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v5

    if-eqz v5, :cond_19d

    .line 108
    iget-object v3, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v3}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v4

    const/4 v8, 0x1

    move v7, v1

    invoke-static/range {v3 .. v8}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Landroid/view/View;IIZZ)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object v2

    if-eqz v2, :cond_19d

    .line 110
    invoke-virtual {v2}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->start()V

    .line 113
    :cond_19d
    iget-object v2, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v2}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Lio/dcloud/common/core/ui/g;->c(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v5

    .line 114
    iget-object v3, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v3}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v4

    const/4 v8, 0x1

    move v6, v0

    move v7, v1

    invoke-static/range {v3 .. v8}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Landroid/view/View;IIZZ)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_1b9

    .line 116
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->start()V

    :cond_1b9
    return-void

    .line 117
    :cond_1ba
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v3

    invoke-static {v0, v3}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v0

    if-ne v7, v0, :cond_1fd

    .line 118
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0, v2, v1}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;ZZ)V

    .line 119
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v3}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v4

    invoke-static {v3, v4}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v3

    neg-int v3, v3

    invoke-static {v0, v1, v3}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Landroid/view/View;I)V

    .line 120
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v3}, Lio/dcloud/common/core/ui/g;->d(Lio/dcloud/common/core/ui/g;)I

    move-result v3

    iget-object v4, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v4}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v5

    invoke-static {v4, v5}, Lio/dcloud/common/core/ui/g;->b(Lio/dcloud/common/core/ui/g;Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v3}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Landroid/view/View;I)V

    .line 121
    invoke-static {v2}, Lio/dcloud/common/core/ui/g;->a(Z)Z

    return-void

    .line 126
    :cond_1fd
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0, v1, v1}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;ZZ)V

    .line 127
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Landroid/view/View;I)V

    .line 128
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v3}, Lio/dcloud/common/core/ui/g;->d(Lio/dcloud/common/core/ui/g;)I

    move-result v3

    invoke-static {v0, v1, v3}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Landroid/view/View;I)V

    .line 129
    invoke-static {v2}, Lio/dcloud/common/core/ui/g;->a(Z)Z

    return-void

    .line 133
    :cond_21e
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0, v1, v1}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;ZZ)V

    .line 134
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->s(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Landroid/view/View;I)V

    .line 135
    iget-object v0, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v0}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lio/dcloud/common/core/ui/g$f;->a:Lio/dcloud/common/core/ui/g;

    invoke-static {v3}, Lio/dcloud/common/core/ui/g;->d(Lio/dcloud/common/core/ui/g;)I

    move-result v3

    invoke-static {v0, v1, v3}, Lio/dcloud/common/core/ui/g;->a(Lio/dcloud/common/core/ui/g;Landroid/view/View;I)V

    .line 136
    invoke-static {v2}, Lio/dcloud/common/core/ui/g;->a(Z)Z

    return-void
.end method
