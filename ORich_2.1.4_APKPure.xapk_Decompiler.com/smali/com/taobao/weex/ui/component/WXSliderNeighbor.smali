###### Class com.taobao.weex.ui.component.WXSliderNeighbor (com.taobao.weex.ui.component.WXSliderNeighbor)
.class public Lcom/taobao/weex/ui/component/WXSliderNeighbor;
.super Lcom/taobao/weex/ui/component/WXSlider;
.source "WXSliderNeighbor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;,
        Lcom/taobao/weex/ui/component/WXSliderNeighbor$Creator;
    }
.end annotation


# static fields
.field public static final CURRENT_ITEM_SCALE:Ljava/lang/String; = "currentItemScale"

.field private static final DEFAULT_CURRENT_ITEM_SCALE:F = 0.9f

.field private static final DEFAULT_NEIGHBOR_ALPHA:F = 0.6f

.field private static final DEFAULT_NEIGHBOR_SCALE:F = 0.8f

.field private static final DEFAULT_NEIGHBOR_SPACE:I = 0x19

.field public static final NEIGHBOR_ALPHA:Ljava/lang/String; = "neighborAlpha"

.field public static final NEIGHBOR_SCALE:Ljava/lang/String; = "neighborScale"

.field public static final NEIGHBOR_SPACE:Ljava/lang/String; = "neighborSpace"


# instance fields
.field private mCachedTransformer:Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;

.field private mCurrentItemScale:F

.field private mNeighborAlpha:F

.field private mNeighborScale:F

.field private mNeighborSpace:F


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .registers 4

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXSlider;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    const p1, 0x3f4ccccd    # 0.8f

    .line 60
    iput p1, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mNeighborScale:F

    const p1, 0x3f19999a    # 0.6f

    .line 61
    iput p1, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mNeighborAlpha:F

    const/high16 p1, 0x41c80000    # 25.0f

    .line 62
    iput p1, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mNeighborSpace:F

    const p1, 0x3f666666    # 0.9f

    .line 63
    iput p1, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mCurrentItemScale:F

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/WXSliderNeighbor;Landroid/view/View;FF)V
    .registers 4

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->updateNeighbor(Landroid/view/View;FF)V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/WXSliderNeighbor;)F
    .registers 1

    .line 49
    iget p0, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mNeighborScale:F

    return p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/component/WXSliderNeighbor;)F
    .registers 1

    .line 49
    iget p0, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mCurrentItemScale:F

    return p0
.end method

.method static synthetic access$300(Lcom/taobao/weex/ui/component/WXSliderNeighbor;)F
    .registers 1

    .line 49
    iget p0, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mNeighborAlpha:F

    return p0
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/component/WXSliderNeighbor;Landroid/view/View;)F
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->calculateTranslation(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/taobao/weex/ui/component/WXSliderNeighbor;FF)V
    .registers 3

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->updateAdapterScaleAndAlpha(FF)V

    return-void
.end method

.method private calculateTranslation(Landroid/view/View;)F
    .registers 6

    .line 336
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 339
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 340
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mNeighborScale:F

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    .line 341
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mCurrentItemScale:F

    mul-float v0, v0, v2

    sub-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iget v2, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mNeighborSpace:F

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v2

    sub-float/2addr p1, v2

    div-float/2addr p1, v0

    add-float/2addr v1, p1

    return v1
.end method

.method private moveLeft(Landroid/view/View;FFF)V
    .registers 8

    .line 225
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p3, p4}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->updateScaleAndAlpha(Landroid/view/View;FF)V

    .line 226
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 227
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method private moveRight(Landroid/view/View;FFF)V
    .registers 5

    neg-float p2, p2

    .line 230
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->moveLeft(Landroid/view/View;FFF)V

    return-void
.end method

.method private updateAdapterScaleAndAlpha(FF)V
    .registers 10

    .line 171
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getViews()Ljava/util/List;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getCurrentItem()I

    move-result v1

    .line 174
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_74

    .line 175
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 176
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mCurrentItemScale:F

    invoke-direct {p0, v3, v5, v6}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->updateScaleAndAlpha(Landroid/view/View;FF)V

    .line 178
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x2

    if-ge v3, v5, :cond_2f

    return-void

    .line 182
    :cond_2f
    new-instance v3, Lcom/taobao/weex/ui/component/WXSliderNeighbor$2;

    invoke-direct {v3, p0, v2, p1, p2}, Lcom/taobao/weex/ui/component/WXSliderNeighbor$2;-><init>(Lcom/taobao/weex/ui/component/WXSliderNeighbor;Landroid/view/View;FF)V

    invoke-static {v3}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v5, 0x11

    invoke-virtual {v2, p1, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    if-nez v1, :cond_46

    .line 192
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_48

    :cond_46
    add-int/lit8 p1, v1, -0x1

    .line 193
    :goto_48
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne v1, p2, :cond_52

    const/4 p2, 0x0

    goto :goto_54

    :cond_52
    add-int/lit8 p2, v1, 0x1

    :goto_54
    const/4 v2, 0x0

    .line 194
    :goto_55
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v3

    if-ge v2, v3, :cond_74

    if-eq v2, p1, :cond_71

    if-eq v2, v1, :cond_71

    if-eq v2, p2, :cond_71

    .line 196
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    :cond_74
    return-void
.end method

.method private updateNeighbor(Landroid/view/View;FF)V
    .registers 10

    .line 203
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getViews()Ljava/util/List;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getCurrentItem()I

    move-result v1

    .line 206
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->calculateTranslation(Landroid/view/View;)F

    move-result p1

    const/4 v2, 0x1

    if-nez v1, :cond_19

    .line 207
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    goto :goto_1b

    :cond_19
    add-int/lit8 v3, v1, -0x1

    .line 208
    :goto_1b
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 209
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    if-ne v1, v4, :cond_2a

    const/4 v4, 0x0

    goto :goto_2c

    :cond_2a
    add-int/lit8 v4, v1, 0x1

    .line 210
    :goto_2c
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 212
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_45

    if-nez v1, :cond_3f

    .line 214
    invoke-direct {p0, v4, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->moveRight(Landroid/view/View;FFF)V

    goto :goto_4b

    :cond_3f
    if-ne v1, v2, :cond_4b

    .line 216
    invoke-direct {p0, v3, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->moveLeft(Landroid/view/View;FFF)V

    goto :goto_4b

    .line 219
    :cond_45
    invoke-direct {p0, v3, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->moveLeft(Landroid/view/View;FFF)V

    .line 220
    invoke-direct {p0, v4, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->moveRight(Landroid/view/View;FFF)V

    :cond_4b
    :goto_4b
    return-void
.end method

.method private updateScaleAndAlpha(Landroid/view/View;FF)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-ltz v1, :cond_13

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, p2

    if-eqz v1, :cond_13

    .line 162
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_13
    cmpl-float p2, p3, v0

    if-ltz p2, :cond_25

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p2

    cmpl-float p2, p2, p3

    if-eqz p2, :cond_25

    .line 165
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    .line 166
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    :cond_25
    return-void
.end method


# virtual methods
.method public addSubView(Landroid/view/View;I)V
    .registers 6

    if-eqz p1, :cond_3f

    .line 118
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    if-nez v0, :cond_7

    goto :goto_3f

    .line 122
    :cond_7
    instance-of v0, p1, Lcom/taobao/weex/ui/view/WXCircleIndicator;

    if-eqz v0, :cond_c

    return-void

    .line 126
    :cond_c
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 127
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 128
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 129
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 131
    invoke-super {p0, v0, p2}, Lcom/taobao/weex/ui/component/WXSlider;->addSubView(Landroid/view/View;I)V

    .line 133
    iget p1, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mNeighborAlpha:F

    iget v0, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mNeighborScale:F

    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->updateAdapterScaleAndAlpha(FF)V

    .line 135
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    new-instance v0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$1;

    invoke-direct {v0, p0, p2}, Lcom/taobao/weex/ui/component/WXSliderNeighbor$1;-><init>(Lcom/taobao/weex/ui/component/WXSliderNeighbor;I)V

    invoke-static {v0}, Lcom/taobao/weex/common/WXThread;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x32

    invoke-virtual {p1, p2, v0, v1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3f
    :goto_3f
    return-void
.end method

.method public bindData(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 2

    .line 79
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXSlider;->bindData(Lcom/taobao/weex/ui/component/WXComponent;)V

    return-void
.end method

.method createTransformer()Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mCachedTransformer:Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;

    if-nez v0, :cond_b

    .line 111
    new-instance v0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;-><init>(Lcom/taobao/weex/ui/component/WXSliderNeighbor;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mCachedTransformer:Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;

    .line 113
    :cond_b
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mCachedTransformer:Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;

    return-object v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .registers 2

    .line 49
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/BaseFrameLayout;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/BaseFrameLayout;
    .registers 5

    .line 84
    new-instance v0, Lcom/taobao/weex/ui/view/BaseFrameLayout;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 89
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 90
    new-instance v1, Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/taobao/weex/ui/view/WXCircleViewPager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    .line 91
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v1, p1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    new-instance p1, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-direct {p1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    .line 95
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 98
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/BaseFrameLayout;->addView(Landroid/view/View;)V

    .line 99
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 101
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setOverScrollMode(I)V

    .line 102
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->registerActivityStateListener()V

    .line 104
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->createTransformer()Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    return-object v0
.end method

.method public setCurrentItemScale(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "currentItemScale"
    .end annotation

    .line 287
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 289
    :try_start_6
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_e

    :catch_b
    :cond_b
    const p1, 0x3f666666    # 0.9f

    .line 294
    :goto_e
    iget v0, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mCurrentItemScale:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1b

    .line 295
    iput p1, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mCurrentItemScale:F

    const/high16 p1, -0x40800000    # -1.0f

    .line 296
    invoke-direct {p0, p1, p1}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->updateAdapterScaleAndAlpha(FF)V

    :cond_1b
    return-void
.end method

.method public setNeighborAlpha(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "neighborAlpha"
    .end annotation

    .line 253
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 255
    :try_start_6
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_e

    :catch_b
    :cond_b
    const p1, 0x3f19999a    # 0.6f

    .line 261
    :goto_e
    iget v0, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mNeighborAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1b

    .line 262
    iput p1, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mNeighborAlpha:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 263
    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->updateAdapterScaleAndAlpha(FF)V

    :cond_1b
    return-void
.end method

.method public setNeighborScale(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "neighborScale"
    .end annotation

    .line 236
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 238
    :try_start_6
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_e

    :catch_b
    :cond_b
    const p1, 0x3f4ccccd    # 0.8f

    .line 244
    :goto_e
    iget v0, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mNeighborScale:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1b

    .line 245
    iput p1, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mNeighborScale:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 246
    invoke-direct {p0, v0, p1}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->updateAdapterScaleAndAlpha(FF)V

    :cond_1b
    return-void
.end method

.method public setNeighborSpace(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "neighborSpace"
    .end annotation

    .line 271
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 273
    :try_start_6
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_d

    :catch_b
    :cond_b
    const/high16 p1, 0x41c80000    # 25.0f

    .line 278
    :goto_d
    iget v0, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mNeighborSpace:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_15

    .line 279
    iput p1, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mNeighborSpace:F

    :cond_15
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 6

    .line 303
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_6a

    goto :goto_38

    :sswitch_d
    const-string v0, "currentItemScale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_38

    :cond_16
    const/4 v2, 0x3

    goto :goto_38

    :sswitch_18
    const-string v0, "neighborSpace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_38

    :cond_21
    const/4 v2, 0x2

    goto :goto_38

    :sswitch_23
    const-string v0, "neighborScale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_38

    :cond_2c
    const/4 v2, 0x1

    goto :goto_38

    :sswitch_2e
    const-string v0, "neighborAlpha"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_38

    :cond_37
    const/4 v2, 0x0

    :goto_38
    const/4 v0, 0x0

    packed-switch v2, :pswitch_data_7c

    .line 329
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXSlider;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 323
    :pswitch_41
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4a

    .line 325
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->setCurrentItemScale(Ljava/lang/String;)V

    :cond_4a
    return v1

    .line 317
    :pswitch_4b
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_54

    .line 319
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->setNeighborSpace(Ljava/lang/String;)V

    :cond_54
    return v1

    .line 305
    :pswitch_55
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5e

    .line 307
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->setNeighborScale(Ljava/lang/String;)V

    :cond_5e
    return v1

    .line 311
    :pswitch_5f
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_68

    .line 313
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->setNeighborAlpha(Ljava/lang/String;)V

    :cond_68
    return v1

    nop

    :sswitch_data_6a
    .sparse-switch
        -0x691ff274 -> :sswitch_2e
        -0x68269a88 -> :sswitch_23
        -0x6820b2cc -> :sswitch_18
        -0x3c6ef382 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_55
        :pswitch_4b
        :pswitch_41
    .end packed-switch
.end method

###### Class com.taobao.weex.ui.component.WXSliderNeighbor.AnonymousClass1 (com.taobao.weex.ui.component.WXSliderNeighbor$1)
.class Lcom/taobao/weex/ui/component/WXSliderNeighbor$1;
.super Ljava/lang/Object;
.source "WXSliderNeighbor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXSliderNeighbor;->addSubView(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXSliderNeighbor;I)V
    .registers 3

    .line 135
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$1;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    iput p2, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$1;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getRealCount()I

    move-result v0

    if-lez v0, :cond_1f

    iget v0, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$1;->val$index:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1f

    .line 141
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$1;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->beginFakeDrag()Z

    .line 142
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$1;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->fakeDragBy(F)V
    :try_end_1f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_1f} :catch_30
    .catchall {:try_start_0 .. :try_end_1f} :catchall_27

    .line 148
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$1;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    :goto_21
    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->endFakeDrag()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_26} :catch_33

    goto :goto_33

    :catchall_27
    move-exception v0

    :try_start_28
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$1;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->endFakeDrag()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2f} :catch_2f

    .line 152
    :catch_2f
    throw v0

    .line 148
    :catch_30
    :try_start_30
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$1;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_32} :catch_33

    goto :goto_21

    :catch_33
    :goto_33
    return-void
.end method

###### Class com.taobao.weex.ui.component.WXSliderNeighbor.AnonymousClass2 (com.taobao.weex.ui.component.WXSliderNeighbor$2)
.class Lcom/taobao/weex/ui/component/WXSliderNeighbor$2;
.super Ljava/lang/Object;
.source "WXSliderNeighbor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXSliderNeighbor;->updateAdapterScaleAndAlpha(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

.field final synthetic val$alpha:F

.field final synthetic val$currentPage:Landroid/view/View;

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXSliderNeighbor;Landroid/view/View;FF)V
    .registers 5

    .line 182
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$2;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$2;->val$currentPage:Landroid/view/View;

    iput p3, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$2;->val$alpha:F

    iput p4, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$2;->val$scale:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 186
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$2;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$2;->val$currentPage:Landroid/view/View;

    iget v2, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$2;->val$alpha:F

    iget v3, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$2;->val$scale:F

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->access$000(Lcom/taobao/weex/ui/component/WXSliderNeighbor;Landroid/view/View;FF)V

    return-void
.end method

###### Class com.taobao.weex.ui.component.WXSliderNeighbor.Creator (com.taobao.weex.ui.component.WXSliderNeighbor$Creator)
.class public Lcom/taobao/weex/ui/component/WXSliderNeighbor$Creator;
.super Ljava/lang/Object;
.source "WXSliderNeighbor.java"

# interfaces
.implements Lcom/taobao/weex/ui/ComponentCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXSliderNeighbor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creator"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    invoke-direct {v0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-object v0
.end method

###### Class com.taobao.weex.ui.component.WXSliderNeighbor.ZoomTransformer (com.taobao.weex.ui.component.WXSliderNeighbor$ZoomTransformer)
.class Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;
.super Ljava/lang/Object;
.source "WXSliderNeighbor.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/component/WXSliderNeighbor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ZoomTransformer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXSliderNeighbor;)V
    .registers 2

    .line 346
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .registers 11

    .line 349
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    iget-object v0, v0, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getPagePosition(Landroid/view/View;)I

    move-result v0

    .line 350
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    iget-object v1, v1, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mViewPager:Lcom/taobao/weex/ui/view/WXCircleViewPager;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->getCurrentItem()I

    move-result v1

    .line 352
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    iget-object v2, v2, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->mAdapter:Lcom/taobao/weex/ui/view/WXCirclePageAdapter;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/WXCirclePageAdapter;->getRealCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2a

    add-int/lit8 v5, v2, -0x1

    if-eq v1, v5, :cond_2a

    sub-int v5, v0, v1

    .line 355
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v5, v4, :cond_2a

    const/4 v5, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v5, 0x0

    :goto_2b
    if-nez v1, :cond_34

    add-int/lit8 v6, v2, -0x1

    if-ge v0, v6, :cond_34

    if-le v0, v4, :cond_34

    const/4 v5, 0x1

    :cond_34
    add-int/lit8 v6, v2, -0x1

    if-ne v1, v6, :cond_3f

    add-int/lit8 v1, v2, -0x2

    if-ge v0, v1, :cond_3f

    if-lez v0, :cond_3f

    const/4 v5, 0x1

    :cond_3f
    if-eqz v5, :cond_42

    return-void

    .line 369
    :cond_42
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4c

    return-void

    :cond_4c
    neg-int v1, v2

    add-int/2addr v1, v4

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_55

    int-to-float v1, v2

    add-float/2addr p2, v1

    :cond_55
    int-to-float v1, v6

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_5c

    int-to-float v1, v2

    sub-float/2addr p2, v1

    :cond_5c
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_e3

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v3, p2, v1

    if-gtz v3, :cond_e3

    .line 383
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 384
    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    invoke-static {v4}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->access$100(Lcom/taobao/weex/ui/component/WXSliderNeighbor;)F

    move-result v4

    iget-object v5, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    invoke-static {v5}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->access$200(Lcom/taobao/weex/ui/component/WXSliderNeighbor;)F

    move-result v5

    iget-object v6, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    invoke-static {v6}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->access$100(Lcom/taobao/weex/ui/component/WXSliderNeighbor;)F

    move-result v6

    sub-float/2addr v5, v6

    mul-float v5, v5, v3

    add-float/2addr v4, v5

    .line 385
    iget-object v5, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    invoke-static {v5}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->access$300(Lcom/taobao/weex/ui/component/WXSliderNeighbor;)F

    move-result v5

    sub-float v5, v1, v5

    mul-float v5, v5, v3

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    invoke-static {v3}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->access$300(Lcom/taobao/weex/ui/component/WXSliderNeighbor;)F

    move-result v3

    add-float/2addr v5, v3

    .line 387
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    invoke-static {v3, p1}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->access$400(Lcom/taobao/weex/ui/component/WXSliderNeighbor;Landroid/view/View;)F

    move-result v3

    const/4 v6, 0x0

    cmpl-float v7, p2, v6

    if-lez v7, :cond_ad

    mul-float p2, p2, v3

    neg-float p2, p2

    .line 390
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 391
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_da

    :cond_ad
    if-nez v7, :cond_c5

    .line 393
    invoke-virtual {p1, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 394
    invoke-virtual {v0, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 395
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->access$300(Lcom/taobao/weex/ui/component/WXSliderNeighbor;)F

    move-result p2

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXSliderNeighbor$ZoomTransformer;->this$0:Lcom/taobao/weex/ui/component/WXSliderNeighbor;

    invoke-static {v1}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->access$100(Lcom/taobao/weex/ui/component/WXSliderNeighbor;)F

    move-result v1

    invoke-static {p1, p2, v1}, Lcom/taobao/weex/ui/component/WXSliderNeighbor;->access$500(Lcom/taobao/weex/ui/component/WXSliderNeighbor;FF)V

    goto :goto_da

    :cond_c5
    const/4 v6, 0x2

    if-ne v2, v6, :cond_d1

    .line 397
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v2, v1

    if-nez v1, :cond_d1

    return-void

    :cond_d1
    neg-float p2, p2

    mul-float p2, p2, v3

    .line 401
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 402
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 404
    :goto_da
    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleX(F)V

    .line 405
    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleY(F)V

    .line 406
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_e3
    return-void
.end method
