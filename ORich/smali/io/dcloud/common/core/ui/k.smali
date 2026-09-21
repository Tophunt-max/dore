###### Class io.dcloud.common.core.ui.k (io.dcloud.common.core.ui.k)
.class public Lio/dcloud/common/core/ui/k;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/core/ui/k$c;,
        Lio/dcloud/common/core/ui/k$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:F

.field private c:Z

.field private d:Landroid/view/View;

.field private e:Lio/dcloud/common/core/ui/j;

.field private f:F

.field private g:Lio/dcloud/common/core/ui/k$b;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:F

.field private j:Landroid/graphics/Rect;

.field k:Lio/dcloud/common/adapter/ui/DHImageView;

.field l:Lio/dcloud/common/adapter/ui/DHImageView;

.field m:Lio/dcloud/common/core/ui/a;

.field private n:Lio/dcloud/common/core/ui/b;

.field private o:Lio/dcloud/common/core/ui/b;

.field private p:I

.field private q:I

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/dcloud/common/core/ui/a;)V
    .registers 8

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x3e99999a    # 0.3f

    .line 2
    iput v0, p0, Lio/dcloud/common/core/ui/k;->b:F

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/k;->c:Z

    .line 18
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lio/dcloud/common/core/ui/k;->j:Landroid/graphics/Rect;

    const/4 v1, 0x0

    .line 21
    iput-object v1, p0, Lio/dcloud/common/core/ui/k;->m:Lio/dcloud/common/core/ui/a;

    .line 28
    iput v0, p0, Lio/dcloud/common/core/ui/k;->p:I

    const/4 v2, 0x0

    .line 35
    iput-boolean v2, p0, Lio/dcloud/common/core/ui/k;->r:Z

    .line 39
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x43c80000    # 400.0f

    mul-float v2, v2, v3

    .line 41
    iput-object p2, p0, Lio/dcloud/common/core/ui/k;->m:Lio/dcloud/common/core/ui/a;

    .line 42
    new-instance v3, Lio/dcloud/common/core/ui/j;

    new-instance v4, Lio/dcloud/common/core/ui/k$c;

    invoke-direct {v4, p0, v1}, Lio/dcloud/common/core/ui/k$c;-><init>(Lio/dcloud/common/core/ui/k;Lio/dcloud/common/core/ui/k$a;)V

    invoke-direct {v3, p0, v4, p2}, Lio/dcloud/common/core/ui/j;-><init>(Landroid/view/ViewGroup;Lio/dcloud/common/core/ui/j$c;Lio/dcloud/common/core/ui/a;)V

    iput-object v3, p0, Lio/dcloud/common/core/ui/k;->e:Lio/dcloud/common/core/ui/j;

    .line 43
    invoke-virtual {v3, v2}, Lio/dcloud/common/core/ui/j;->b(F)V

    .line 44
    invoke-virtual {p0, v0}, Lio/dcloud/common/core/ui/k;->setEdgeTrackingEnabled(I)V

    .line 45
    new-instance p2, Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-direct {p2, p1}, Lio/dcloud/common/adapter/ui/DHImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lio/dcloud/common/core/ui/k;->k:Lio/dcloud/common/adapter/ui/DHImageView;

    .line 46
    new-instance p2, Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-direct {p2, p1}, Lio/dcloud/common/adapter/ui/DHImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lio/dcloud/common/core/ui/k;->l:Lio/dcloud/common/adapter/ui/DHImageView;

    .line 47
    iget-object p1, p0, Lio/dcloud/common/core/ui/k;->k:Lio/dcloud/common/adapter/ui/DHImageView;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object p1, p0, Lio/dcloud/common/core/ui/k;->l:Lio/dcloud/common/adapter/ui/DHImageView;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    sget p1, Lio/dcloud/PdrR;->DRAWEBL_SHADOW_LEFT:I

    invoke-virtual {p0, p1, v0}, Lio/dcloud/common/core/ui/k;->a(II)V

    .line 50
    iget-object p1, p0, Lio/dcloud/common/core/ui/k;->l:Lio/dcloud/common/adapter/ui/DHImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 51
    iget-object p1, p0, Lio/dcloud/common/core/ui/k;->k:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/common/core/ui/k;F)F
    .registers 2

    .line 5
    iput p1, p0, Lio/dcloud/common/core/ui/k;->f:F

    return p1
.end method

.method static synthetic a(Lio/dcloud/common/core/ui/k;I)I
    .registers 2

    .line 4
    iput p1, p0, Lio/dcloud/common/core/ui/k;->q:I

    return p1
.end method

.method static synthetic a(Lio/dcloud/common/core/ui/k;)Landroid/view/View;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/core/ui/k;->d:Landroid/view/View;

    return-object p0
.end method

.method static synthetic a(Lio/dcloud/common/core/ui/k;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 3
    iput-object p1, p0, Lio/dcloud/common/core/ui/k;->d:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lio/dcloud/common/core/ui/k;Lio/dcloud/common/core/ui/b;)Lio/dcloud/common/core/ui/b;
    .registers 2

    .line 2
    iput-object p1, p0, Lio/dcloud/common/core/ui/k;->o:Lio/dcloud/common/core/ui/b;

    return-object p1
.end method

.method private a()V
    .registers 4

    .line 24
    iget-object v0, p0, Lio/dcloud/common/core/ui/k;->n:Lio/dcloud/common/core/ui/b;

    if-eqz v0, :cond_38

    .line 25
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->popGesture:Ljava/lang/String;

    const-string v1, "hide"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 27
    iget-object v0, p0, Lio/dcloud/common/core/ui/k;->n:Lio/dcloud/common/core/ui/b;

    const-string v1, "slide_webview_hide"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lio/dcloud/common/core/ui/k;->n:Lio/dcloud/common/core/ui/b;

    iget-object v1, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    invoke-virtual {v1, v0}, Lio/dcloud/common/core/ui/l;->c(Lio/dcloud/common/core/ui/b;)V

    goto :goto_38

    :cond_22
    const-string v1, "close"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 30
    iget-object v0, p0, Lio/dcloud/common/core/ui/k;->n:Lio/dcloud/common/core/ui/b;

    const-string v1, "slide_webview_close"

    invoke-virtual {v0, v1, v2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lio/dcloud/common/core/ui/k;->n:Lio/dcloud/common/core/ui/b;

    iget-object v1, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    invoke-virtual {v1, v0}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/b;)V

    :cond_38
    :goto_38
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/view/View;)V
    .registers 10

    .line 10
    iget-object v0, p0, Lio/dcloud/common/core/ui/k;->j:Landroid/graphics/Rect;

    .line 11
    invoke-virtual {p2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 12
    iget p2, p0, Lio/dcloud/common/core/ui/k;->a:I

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_38

    .line 13
    iget-object p2, p0, Lio/dcloud/common/core/ui/k;->h:Landroid/graphics/drawable/Drawable;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-double v1, v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x3fe3333333333333L    # 0.6

    mul-double v3, v3, v5

    sub-double/2addr v1, v3

    double-to-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v1, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 15
    iget-object p2, p0, Lio/dcloud/common/core/ui/k;->h:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lio/dcloud/common/core/ui/k;->i:F

    const/high16 v1, 0x433e0000    # 190.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 16
    iget-object p2, p0, Lio/dcloud/common/core/ui/k;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_38
    return-void
.end method

.method private a(Lio/dcloud/common/core/ui/b;)V
    .registers 6

    if-eqz p1, :cond_27

    .line 17
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p1

    .line 18
    iget v0, p0, Lio/dcloud/common/core/ui/k;->f:F

    float-to-double v0, v0

    const-wide v2, 0x3fee666666666666L    # 0.95

    sub-double/2addr v0, v2

    const-wide v2, 0x3fdaf286bca1af29L    # 0.4210526315789474

    mul-double v0, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double v0, v0, v2

    double-to-float v0, v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_24

    const/4 v0, 0x0

    .line 23
    :cond_24
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_27
    return-void
.end method

.method static synthetic b(Lio/dcloud/common/core/ui/k;I)I
    .registers 2

    .line 3
    iput p1, p0, Lio/dcloud/common/core/ui/k;->p:I

    return p1
.end method

.method static synthetic b(Lio/dcloud/common/core/ui/k;)Lio/dcloud/common/core/ui/b;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/core/ui/k;->o:Lio/dcloud/common/core/ui/b;

    return-object p0
.end method

.method private b()V
    .registers 4

    .line 4
    iget-object v0, p0, Lio/dcloud/common/core/ui/k;->o:Lio/dcloud/common/core/ui/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 5
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 7
    :cond_c
    iget-object v0, p0, Lio/dcloud/common/core/ui/k;->n:Lio/dcloud/common/core/ui/b;

    if-eqz v0, :cond_21

    .line 8
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLeft(I)V

    .line 9
    iget-object v0, p0, Lio/dcloud/common/core/ui/k;->n:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_21
    return-void
.end method

.method static synthetic b(Lio/dcloud/common/core/ui/k;Lio/dcloud/common/core/ui/b;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/k;->a(Lio/dcloud/common/core/ui/b;)V

    return-void
.end method

.method static synthetic c(Lio/dcloud/common/core/ui/k;)Lio/dcloud/common/core/ui/b;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/core/ui/k;->n:Lio/dcloud/common/core/ui/b;

    return-object p0
.end method

.method static synthetic c(Lio/dcloud/common/core/ui/k;Lio/dcloud/common/core/ui/b;)Lio/dcloud/common/core/ui/b;
    .registers 2

    .line 2
    iput-object p1, p0, Lio/dcloud/common/core/ui/k;->n:Lio/dcloud/common/core/ui/b;

    return-object p1
.end method

.method static synthetic d(Lio/dcloud/common/core/ui/k;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/common/core/ui/k;->b()V

    return-void
.end method

.method static synthetic e(Lio/dcloud/common/core/ui/k;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lio/dcloud/common/core/ui/k;->a()V

    return-void
.end method

.method static synthetic f(Lio/dcloud/common/core/ui/k;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lio/dcloud/common/core/ui/k;->r:Z

    return p0
.end method

.method static synthetic g(Lio/dcloud/common/core/ui/k;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/common/core/ui/k;->a:I

    return p0
.end method

.method static synthetic h(Lio/dcloud/common/core/ui/k;)Lio/dcloud/common/core/ui/j;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/core/ui/k;->e:Lio/dcloud/common/core/ui/j;

    return-object p0
.end method

.method static synthetic i(Lio/dcloud/common/core/ui/k;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/common/core/ui/k;->q:I

    return p0
.end method

.method static synthetic j(Lio/dcloud/common/core/ui/k;)Lio/dcloud/common/core/ui/k$b;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/core/ui/k;->g:Lio/dcloud/common/core/ui/k$b;

    return-object p0
.end method

.method static synthetic k(Lio/dcloud/common/core/ui/k;)I
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/common/core/ui/k;->p:I

    return p0
.end method

.method static synthetic l(Lio/dcloud/common/core/ui/k;)F
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/common/core/ui/k;->f:F

    return p0
.end method

.method static synthetic m(Lio/dcloud/common/core/ui/k;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1
    iget-object p0, p0, Lio/dcloud/common/core/ui/k;->h:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic n(Lio/dcloud/common/core/ui/k;)F
    .registers 1

    .line 1
    iget p0, p0, Lio/dcloud/common/core/ui/k;->b:F

    return p0
.end method


# virtual methods
.method public a(II)V
    .registers 4

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/dcloud/common/core/ui/k;->a(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;I)V
    .registers 3

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 6
    iput-object p1, p0, Lio/dcloud/common/core/ui/k;->h:Landroid/graphics/drawable/Drawable;

    .line 8
    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public a(Lio/dcloud/common/adapter/ui/AdaFrameView;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    .line 32
    iget-object p2, p0, Lio/dcloud/common/core/ui/k;->n:Lio/dcloud/common/core/ui/b;

    const/4 p3, 0x2

    aput-object p2, v0, p3

    const-string p2, "popGesture"

    .line 33
    invoke-virtual {p1, p2, v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public c()V
    .registers 4

    .line 3
    iget-object v0, p0, Lio/dcloud/common/core/ui/k;->k:Lio/dcloud/common/adapter/ui/DHImageView;

    const/4 v1, -0x1

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_15

    .line 4
    iget-object v0, p0, Lio/dcloud/common/core/ui/k;->k:Lio/dcloud/common/adapter/ui/DHImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    :cond_15
    iget-object v0, p0, Lio/dcloud/common/core/ui/k;->l:Lio/dcloud/common/adapter/ui/DHImageView;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_29

    .line 7
    iget-object v0, p0, Lio/dcloud/common/core/ui/k;->l:Lio/dcloud/common/adapter/ui/DHImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_29
    return-void
.end method

.method public computeScroll()V
    .registers 3

    .line 1
    iget v0, p0, Lio/dcloud/common/core/ui/k;->f:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iput v1, p0, Lio/dcloud/common/core/ui/k;->i:F

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/k;->e:Lio/dcloud/common/core/ui/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/dcloud/common/core/ui/j;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4
    invoke-static {p0}, Lcom/dcloud/android/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_13
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/k;->d:Landroid/view/View;

    if-ne p2, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 2
    :goto_7
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 3
    iget p4, p0, Lio/dcloud/common/core/ui/k;->i:F

    const/4 v1, 0x0

    cmpl-float p4, p4, v1

    if-lez p4, :cond_1f

    if-eqz v0, :cond_1f

    iget-object p4, p0, Lio/dcloud/common/core/ui/k;->e:Lio/dcloud/common/core/ui/j;

    .line 4
    invoke-virtual {p4}, Lio/dcloud/common/core/ui/j;->c()I

    move-result p4

    if-eqz p4, :cond_1f

    .line 5
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/core/ui/k;->a(Landroid/graphics/Canvas;Landroid/view/View;)V

    :cond_1f
    return p3
.end method

.method public getLeftImageView()Lio/dcloud/common/adapter/ui/DHImageView;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/k;->k:Lio/dcloud/common/adapter/ui/DHImageView;

    return-object v0
.end method

.method public getRightImageView()Lio/dcloud/common/adapter/ui/DHImageView;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/k;->l:Lio/dcloud/common/adapter/ui/DHImageView;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/k;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 5
    :cond_6
    :try_start_6
    iget-object v0, p0, Lio/dcloud/common/core/ui/k;->e:Lio/dcloud/common/core/ui/j;

    invoke-virtual {v0, p1}, Lio/dcloud/common/core/ui/j;->c(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_d

    return p1

    :catch_d
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/core/ui/k;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 4
    :cond_6
    iget-object v0, p0, Lio/dcloud/common/core/ui/k;->n:Lio/dcloud/common/core/ui/b;

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_19

    .line 8
    :cond_12
    :try_start_12
    iget-object v0, p0, Lio/dcloud/common/core/ui/k;->e:Lio/dcloud/common/core/ui/j;

    invoke-virtual {v0, p1}, Lio/dcloud/common/core/ui/j;->a(Landroid/view/MotionEvent;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_18

    return v2

    :catch_18
    return v1

    :cond_19
    :goto_19
    return v2
.end method

.method public requestLayout()V
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/k;->e:Lio/dcloud/common/core/ui/j;

    if-eqz v0, :cond_e

    .line 2
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/j;->c()I

    move-result v0

    if-nez v0, :cond_11

    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_11

    .line 7
    :cond_e
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_11
    :goto_11
    return-void
.end method

.method public setEdgeSize(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/k;->e:Lio/dcloud/common/core/ui/j;

    invoke-virtual {v0, p1}, Lio/dcloud/common/core/ui/j;->e(I)V

    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .registers 3

    .line 1
    iput p1, p0, Lio/dcloud/common/core/ui/k;->a:I

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/k;->e:Lio/dcloud/common/core/ui/j;

    invoke-virtual {v0, p1}, Lio/dcloud/common/core/ui/j;->f(I)V

    return-void
.end method

.method public setEnableGesture(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/common/core/ui/k;->c:Z

    return-void
.end method

.method public setScrollThresHold(F)V
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_e

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_e

    .line 1
    iput p1, p0, Lio/dcloud/common/core/ui/k;->b:F

    return-void

    .line 2
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Threshold value should be between 0 and 1.0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSwipeListener(Lio/dcloud/common/core/ui/k$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/k;->g:Lio/dcloud/common/core/ui/k$b;

    return-void
.end method

###### Class io.dcloud.common.core.ui.k.a (io.dcloud.common.core.ui.k$a)
.class synthetic Lio/dcloud/common/core/ui/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/core/ui/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class io.dcloud.common.core.ui.k.b (io.dcloud.common.core.ui.k$b)
.class public interface abstract Lio/dcloud/common/core/ui/k$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/core/ui/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(I)V
.end method

.method public abstract a(IF)V
.end method

###### Class io.dcloud.common.core.ui.k.c (io.dcloud.common.core.ui.k$c)
.class Lio/dcloud/common/core/ui/k$c;
.super Lio/dcloud/common/core/ui/j$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/core/ui/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lio/dcloud/common/core/ui/k;


# direct methods
.method private constructor <init>(Lio/dcloud/common/core/ui/k;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-direct {p0}, Lio/dcloud/common/core/ui/j$c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/dcloud/common/core/ui/k;Lio/dcloud/common/core/ui/k$a;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lio/dcloud/common/core/ui/k$c;-><init>(Lio/dcloud/common/core/ui/k;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public a(Landroid/view/View;II)I
    .registers 6

    .line 33
    iget-object p3, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p3}, Lio/dcloud/common/core/ui/k;->k(Lio/dcloud/common/core/ui/k;)I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_b

    goto :goto_17

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_17
    return v0
.end method

.method public a(Landroid/view/View;FF)V
    .registers 5

    .line 21
    iget-object p3, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p3}, Lio/dcloud/common/core/ui/k;->k(Lio/dcloud/common/core/ui/k;)I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_a

    return-void

    .line 25
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 27
    iget-object p3, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p3}, Lio/dcloud/common/core/ui/k;->i(Lio/dcloud/common/core/ui/k;)I

    move-result p3

    and-int/2addr p3, v0

    const/4 v0, 0x0

    if-eqz p3, :cond_3d

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-gtz p2, :cond_2f

    if-nez p2, :cond_3d

    .line 28
    iget-object p2, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p2}, Lio/dcloud/common/core/ui/k;->l(Lio/dcloud/common/core/ui/k;)F

    move-result p2

    iget-object p3, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p3}, Lio/dcloud/common/core/ui/k;->n(Lio/dcloud/common/core/ui/k;)F

    move-result p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_3d

    :cond_2f
    iget-object p2, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    .line 29
    invoke-static {p2}, Lio/dcloud/common/core/ui/k;->m(Lio/dcloud/common/core/ui/k;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0xa

    goto :goto_3e

    :cond_3d
    const/4 p1, 0x0

    .line 31
    :goto_3e
    iget-object p2, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p2}, Lio/dcloud/common/core/ui/k;->h(Lio/dcloud/common/core/ui/k;)Lio/dcloud/common/core/ui/j;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lio/dcloud/common/core/ui/j;->e(II)Z

    .line 32
    iget-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .registers 6

    .line 1
    invoke-super/range {p0 .. p5}, Lio/dcloud/common/core/ui/j$c;->a(Landroid/view/View;IIII)V

    .line 2
    iget-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p1}, Lio/dcloud/common/core/ui/k;->k(Lio/dcloud/common/core/ui/k;)I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_d

    return-void

    .line 5
    :cond_d
    iget-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p1}, Lio/dcloud/common/core/ui/k;->i(Lio/dcloud/common/core/ui/k;)I

    move-result p1

    and-int/2addr p1, p3

    if-eqz p1, :cond_35

    .line 6
    iget-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    int-to-float p2, p2

    .line 7
    invoke-static {p1}, Lio/dcloud/common/core/ui/k;->a(Lio/dcloud/common/core/ui/k;)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    iget-object p5, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p5}, Lio/dcloud/common/core/ui/k;->m(Lio/dcloud/common/core/ui/k;)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p5

    add-int/2addr p4, p5

    int-to-float p4, p4

    div-float/2addr p2, p4

    .line 8
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p1, p2}, Lio/dcloud/common/core/ui/k;->a(Lio/dcloud/common/core/ui/k;F)F

    .line 11
    :cond_35
    iget-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 12
    iget-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p1}, Lio/dcloud/common/core/ui/k;->l(Lio/dcloud/common/core/ui/k;)F

    move-result p1

    iget-object p2, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p2}, Lio/dcloud/common/core/ui/k;->n(Lio/dcloud/common/core/ui/k;)F

    move-result p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_50

    iget-boolean p1, p0, Lio/dcloud/common/core/ui/k$c;->a:Z

    if-nez p1, :cond_50

    .line 13
    iput-boolean p3, p0, Lio/dcloud/common/core/ui/k$c;->a:Z

    .line 15
    :cond_50
    iget-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p1}, Lio/dcloud/common/core/ui/k;->j(Lio/dcloud/common/core/ui/k;)Lio/dcloud/common/core/ui/k$b;

    move-result-object p1

    if-eqz p1, :cond_84

    iget-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p1}, Lio/dcloud/common/core/ui/k;->h(Lio/dcloud/common/core/ui/k;)Lio/dcloud/common/core/ui/j;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/j;->c()I

    move-result p1

    if-ne p1, p3, :cond_84

    iget-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    .line 16
    invoke-static {p1}, Lio/dcloud/common/core/ui/k;->l(Lio/dcloud/common/core/ui/k;)F

    move-result p1

    iget-object p2, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p2}, Lio/dcloud/common/core/ui/k;->n(Lio/dcloud/common/core/ui/k;)F

    move-result p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_84

    iget-boolean p1, p0, Lio/dcloud/common/core/ui/k$c;->a:Z

    if-eqz p1, :cond_84

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lio/dcloud/common/core/ui/k$c;->a:Z

    .line 18
    iget-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p1}, Lio/dcloud/common/core/ui/k;->j(Lio/dcloud/common/core/ui/k;)Lio/dcloud/common/core/ui/k$b;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/core/ui/k$b;->a()V

    .line 20
    :cond_84
    iget-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p1}, Lio/dcloud/common/core/ui/k;->b(Lio/dcloud/common/core/ui/k;)Lio/dcloud/common/core/ui/b;

    move-result-object p2

    invoke-static {p1, p2}, Lio/dcloud/common/core/ui/k;->b(Lio/dcloud/common/core/ui/k;Lio/dcloud/common/core/ui/b;)V

    return-void
.end method

.method public a(Lio/dcloud/common/core/ui/b;)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 34
    :cond_4
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v2, v1, :cond_c

    return v0

    .line 37
    :cond_c
    sget-boolean v1, Lio/dcloud/common/util/BaseInfo;->sDoingAnimation:Z

    if-eqz v1, :cond_11

    return v0

    .line 41
    :cond_11
    iget-object v1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {v1}, Lio/dcloud/common/core/ui/k;->f(Lio/dcloud/common/core/ui/k;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v0

    .line 44
    :cond_1a
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 45
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 46
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v3

    .line 47
    iget-object v4, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {v4, p1}, Lio/dcloud/common/core/ui/k;->c(Lio/dcloud/common/core/ui/k;Lio/dcloud/common/core/ui/b;)Lio/dcloud/common/core/ui/b;

    .line 48
    iget-object v4, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    if-eqz p1, :cond_59

    .line 50
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v5

    if-eqz v5, :cond_59

    .line 51
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v5

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v5

    if-eqz v5, :cond_59

    .line 52
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v5

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v5

    iget-boolean v5, v5, Lio/dcloud/common/util/AppStatusBarManager;->isHandledWhiteScreen:Z

    if-eqz v5, :cond_59

    add-int/lit8 v4, v4, -0x1

    .line 55
    :cond_59
    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_13f

    iget v1, v3, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_6a

    iget-object v6, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    if-lt v1, v6, :cond_13f

    :cond_6a
    iget v1, v3, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    if-eq v1, v5, :cond_72

    if-ge v1, v4, :cond_72

    goto/16 :goto_13f

    .line 59
    :cond_72
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/adapter/util/ViewOptions;->popGesture:Ljava/lang/String;

    const-string v3, "none"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    return v0

    .line 63
    :cond_81
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/adapter/util/ViewOptions;->historyBack:Ljava/lang/String;

    const-string v3, "all"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_9e

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/adapter/util/ViewOptions;->historyBack:Ljava/lang/String;

    const-string v4, "popGesture"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 64
    :cond_9e
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    if-eqz v1, :cond_b4

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 65
    iget-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p1, v3}, Lio/dcloud/common/core/ui/k;->b(Lio/dcloud/common/core/ui/k;I)I

    return v3

    .line 68
    :cond_b4
    iget-object v1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/k;->c()V

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    iget-object v4, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    iget-object v4, v4, Lio/dcloud/common/core/ui/k;->m:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v4, p1, v1}, Lio/dcloud/common/core/ui/a;->a(Lio/dcloud/common/DHInterface/IFrameView;Ljava/util/ArrayList;)V

    .line 71
    iget-object v4, p1, Lio/dcloud/common/adapter/ui/AdaFrameView;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    sget-object v5, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v6, 0x1c

    invoke-virtual {v4, v5, v6, v1}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v4, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lio/dcloud/common/core/ui/k;->a(Lio/dcloud/common/core/ui/k;Lio/dcloud/common/core/ui/b;)Lio/dcloud/common/core/ui/b;

    .line 73
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_e5

    .line 74
    iget-object v4, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/common/core/ui/b;

    invoke-static {v4, v5}, Lio/dcloud/common/core/ui/k;->a(Lio/dcloud/common/core/ui/k;Lio/dcloud/common/core/ui/b;)Lio/dcloud/common/core/ui/b;

    .line 76
    :cond_e5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_13f

    .line 77
    iget-object v1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {v1}, Lio/dcloud/common/core/ui/k;->b(Lio/dcloud/common/core/ui/k;)Lio/dcloud/common/core/ui/b;

    move-result-object v1

    if-eqz v1, :cond_116

    .line 78
    iget-object v1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {v1}, Lio/dcloud/common/core/ui/k;->b(Lio/dcloud/common/core/ui/k;)Lio/dcloud/common/core/ui/b;

    move-result-object v1

    invoke-virtual {v1, v3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setSlipping(Z)V

    .line 79
    iget-object v1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {v1}, Lio/dcloud/common/core/ui/k;->b(Lio/dcloud/common/core/ui/k;)Lio/dcloud/common/core/ui/b;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 80
    iget-object v1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {v1}, Lio/dcloud/common/core/ui/k;->b(Lio/dcloud/common/core/ui/k;)Lio/dcloud/common/core/ui/b;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 82
    :cond_116
    invoke-virtual {p1, v3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setSlipping(Z)V

    .line 83
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 84
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 85
    iget-object v0, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {v0, v2}, Lio/dcloud/common/core/ui/k;->b(Lio/dcloud/common/core/ui/k;I)I

    .line 86
    invoke-static {}, Lio/dcloud/common/adapter/ui/FrameSwitchView;->getInstance()Lio/dcloud/common/adapter/ui/FrameSwitchView;

    move-result-object v0

    if-eqz v0, :cond_135

    .line 88
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/FrameSwitchView;->endRefreshView()V

    .line 90
    :cond_135
    iget-object v0, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    const-string v1, "start"

    const-string v2, "undefined"

    invoke-virtual {v0, p1, v1, v2}, Lio/dcloud/common/core/ui/k;->a(Lio/dcloud/common/adapter/ui/AdaFrameView;Ljava/lang/String;Ljava/lang/Object;)V

    return v3

    :cond_13f
    :goto_13f
    return v0
.end method

.method public b(Landroid/view/View;)I
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public b(Landroid/view/View;I)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {v0, p1}, Lio/dcloud/common/core/ui/k;->a(Lio/dcloud/common/core/ui/k;Landroid/view/View;)Landroid/view/View;

    .line 2
    iget-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p1}, Lio/dcloud/common/core/ui/k;->h(Lio/dcloud/common/core/ui/k;)Lio/dcloud/common/core/ui/j;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {v0}, Lio/dcloud/common/core/ui/k;->g(Lio/dcloud/common/core/ui/k;)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lio/dcloud/common/core/ui/j;->d(II)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_42

    .line 4
    iget-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p1}, Lio/dcloud/common/core/ui/k;->h(Lio/dcloud/common/core/ui/k;)Lio/dcloud/common/core/ui/j;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lio/dcloud/common/core/ui/j;->d(II)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 5
    iget-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p1, v0}, Lio/dcloud/common/core/ui/k;->a(Lio/dcloud/common/core/ui/k;I)I

    .line 7
    :cond_29
    iget-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p1}, Lio/dcloud/common/core/ui/k;->j(Lio/dcloud/common/core/ui/k;)Lio/dcloud/common/core/ui/k$b;

    move-result-object p1

    if-eqz p1, :cond_40

    .line 8
    iget-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p1}, Lio/dcloud/common/core/ui/k;->j(Lio/dcloud/common/core/ui/k;)Lio/dcloud/common/core/ui/k$b;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p2}, Lio/dcloud/common/core/ui/k;->i(Lio/dcloud/common/core/ui/k;)I

    move-result p2

    invoke-interface {p1, p2}, Lio/dcloud/common/core/ui/k$b;->a(I)V

    .line 10
    :cond_40
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/k$c;->a:Z

    :cond_42
    return v0
.end method

.method public c(I)V
    .registers 8

    .line 1
    invoke-super {p0, p1}, Lio/dcloud/common/core/ui/j$c;->c(I)V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {v0}, Lio/dcloud/common/core/ui/k;->j(Lio/dcloud/common/core/ui/k;)Lio/dcloud/common/core/ui/k$b;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 3
    iget-object v0, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {v0}, Lio/dcloud/common/core/ui/k;->j(Lio/dcloud/common/core/ui/k;)Lio/dcloud/common/core/ui/k$b;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {v1}, Lio/dcloud/common/core/ui/k;->l(Lio/dcloud/common/core/ui/k;)F

    move-result v1

    invoke-interface {v0, p1, v1}, Lio/dcloud/common/core/ui/k$b;->a(IF)V

    :cond_1a
    if-nez p1, :cond_bc

    .line 7
    iget-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p1}, Lio/dcloud/common/core/ui/k;->c(Lio/dcloud/common/core/ui/k;)Lio/dcloud/common/core/ui/b;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {v1}, Lio/dcloud/common/core/ui/k;->l(Lio/dcloud/common/core/ui/k;)F

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_32

    const/4 v1, 0x1

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    :goto_33
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v5, "end"

    invoke-virtual {p1, v0, v5, v1}, Lio/dcloud/common/core/ui/k;->a(Lio/dcloud/common/adapter/ui/AdaFrameView;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/k;->requestLayout()V

    .line 9
    iget-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p1}, Lio/dcloud/common/core/ui/k;->d(Lio/dcloud/common/core/ui/k;)V

    .line 10
    iget-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p1}, Lio/dcloud/common/core/ui/k;->l(Lio/dcloud/common/core/ui/k;)F

    move-result p1

    cmpl-float p1, p1, v3

    if-ltz p1, :cond_78

    .line 11
    iget-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p1}, Lio/dcloud/common/core/ui/k;->b(Lio/dcloud/common/core/ui/k;)Lio/dcloud/common/core/ui/b;

    move-result-object p1

    if-eqz p1, :cond_61

    .line 12
    iget-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p1}, Lio/dcloud/common/core/ui/k;->b(Lio/dcloud/common/core/ui/k;)Lio/dcloud/common/core/ui/b;

    move-result-object p1

    invoke-virtual {p1, v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setSlipping(Z)V

    .line 14
    :cond_61
    iget-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p1}, Lio/dcloud/common/core/ui/k;->c(Lio/dcloud/common/core/ui/k;)Lio/dcloud/common/core/ui/b;

    move-result-object p1

    if-eqz p1, :cond_72

    .line 15
    iget-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p1}, Lio/dcloud/common/core/ui/k;->c(Lio/dcloud/common/core/ui/k;)Lio/dcloud/common/core/ui/b;

    move-result-object p1

    invoke-virtual {p1, v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setSlipping(Z)V

    .line 17
    :cond_72
    iget-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p1}, Lio/dcloud/common/core/ui/k;->e(Lio/dcloud/common/core/ui/k;)V

    goto :goto_b1

    .line 19
    :cond_78
    iget-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p1}, Lio/dcloud/common/core/ui/k;->k(Lio/dcloud/common/core/ui/k;)I

    move-result p1

    if-ne p1, v2, :cond_b1

    iget-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p1}, Lio/dcloud/common/core/ui/k;->l(Lio/dcloud/common/core/ui/k;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_b1

    .line 20
    iget-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p1}, Lio/dcloud/common/core/ui/k;->c(Lio/dcloud/common/core/ui/k;)Lio/dcloud/common/core/ui/b;

    move-result-object p1

    if-eqz p1, :cond_b1

    iget-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p1}, Lio/dcloud/common/core/ui/k;->c(Lio/dcloud/common/core/ui/k;)Lio/dcloud/common/core/ui/b;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_b1

    .line 21
    iget-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p1}, Lio/dcloud/common/core/ui/k;->c(Lio/dcloud/common/core/ui/k;)Lio/dcloud/common/core/ui/b;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p1

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IWebview;->goBackOrForward(I)V

    .line 25
    :cond_b1
    :goto_b1
    iget-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/dcloud/common/core/ui/k;->c(Lio/dcloud/common/core/ui/k;Lio/dcloud/common/core/ui/b;)Lio/dcloud/common/core/ui/b;

    .line 26
    iget-object p1, p0, Lio/dcloud/common/core/ui/k$c;->b:Lio/dcloud/common/core/ui/k;

    invoke-static {p1, v0}, Lio/dcloud/common/core/ui/k;->a(Lio/dcloud/common/core/ui/k;Lio/dcloud/common/core/ui/b;)Lio/dcloud/common/core/ui/b;

    :cond_bc
    return-void
.end method
