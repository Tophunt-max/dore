###### Class io.dcloud.feature.weex.extend.DCWXCircleViewPager (io.dcloud.feature.weex.extend.DCWXCircleViewPager)
.class public Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;
.super Lcom/taobao/weex/ui/view/WXCircleViewPager;
.source "DCWXCircleViewPager.java"


# instance fields
.field private isVertical:Z

.field private pointCounr:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 19
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->isVertical:Z

    .line 83
    iput p1, p0, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->pointCounr:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/view/WXCircleViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->isVertical:Z

    .line 83
    iput p1, p0, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->pointCounr:I

    return-void
.end method

.method private swapTouchEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 6

    .line 28
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 29
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    div-float/2addr v2, v1

    mul-float v2, v2, v0

    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    div-float/2addr v3, v0

    mul-float v3, v3, v1

    .line 34
    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    return-object p1
.end method


# virtual methods
.method public getPointCounr()I
    .registers 2

    .line 80
    iget v0, p0, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->pointCounr:I

    return v0
.end method

.method public isVertical()Z
    .registers 2

    .line 40
    iget-boolean v0, p0, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->isVertical:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 64
    :try_start_0
    iget-boolean v0, p0, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->isVertical:Z

    if-eqz v0, :cond_10

    .line 65
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->swapTouchEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 66
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->swapTouchEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    return v0

    .line 69
    :cond_10
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_14} :catch_1a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_14} :catch_15

    return p1

    :catch_15
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1e

    :catch_1a
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 76
    :goto_1e
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_11

    if-eq v0, v3, :cond_e

    if-eq v0, v2, :cond_e

    goto :goto_17

    .line 93
    :cond_e
    iput v1, p0, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->pointCounr:I

    goto :goto_17

    .line 89
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->pointCounr:I

    .line 96
    :goto_17
    iget-boolean v0, p0, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->isVertical:Z

    if-eqz v0, :cond_3d

    .line 97
    invoke-virtual {p0}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v3, :cond_31

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2d

    if-eq v4, v2, :cond_31

    goto :goto_34

    .line 100
    :cond_2d
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_34

    .line 104
    :cond_31
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 107
    :goto_34
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->swapTouchEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 109
    :cond_3d
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/view/WXCircleViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setVertical(Z)V
    .registers 3

    .line 46
    iput-boolean p1, p0, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->isVertical:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    .line 48
    new-instance p1, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager$1;

    invoke-direct {p1, p0}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager$1;-><init>(Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;)V

    invoke-virtual {p0, v0, p1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    goto :goto_12

    :cond_e
    const/4 p1, 0x0

    .line 57
    invoke-virtual {p0, v0, p1}, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    :goto_12
    return-void
.end method

###### Class io.dcloud.feature.weex.extend.DCWXCircleViewPager.AnonymousClass1 (io.dcloud.feature.weex.extend.DCWXCircleViewPager$1)
.class Lio/dcloud/feature/weex/extend/DCWXCircleViewPager$1;
.super Ljava/lang/Object;
.source "DCWXCircleViewPager.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;->setVertical(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/DCWXCircleViewPager$1;->this$0:Lio/dcloud/feature/weex/extend/DCWXCircleViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .registers 5

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    neg-float v1, p2

    mul-float v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float p2, p2, v0

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
