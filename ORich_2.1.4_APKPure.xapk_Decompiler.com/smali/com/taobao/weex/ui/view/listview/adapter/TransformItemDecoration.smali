###### Class com.taobao.weex.ui.view.listview.adapter.TransformItemDecoration (com.taobao.weex.ui.view.listview.adapter.TransformItemDecoration)
.class public Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "TransformItemDecoration.java"


# instance fields
.field mAlpha:F

.field mIsVertical:Z

.field mRotation:I

.field mScaleX:F

.field mScaleY:F

.field mXTranslate:I

.field mYTranslate:I


# direct methods
.method public constructor <init>(ZFIIIFF)V
    .registers 9

    .line 34
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mIsVertical:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 27
    iput v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mAlpha:F

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mXTranslate:I

    .line 29
    iput v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mYTranslate:I

    .line 30
    iput v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mRotation:I

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mScaleX:F

    .line 32
    iput v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mScaleY:F

    .line 35
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mIsVertical:Z

    .line 36
    iput p2, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mAlpha:F

    .line 37
    iput p3, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mXTranslate:I

    .line 38
    iput p4, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mYTranslate:I

    .line 39
    iput p5, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mRotation:I

    .line 40
    iput p6, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mScaleX:F

    .line 41
    iput p7, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mScaleY:F

    return-void
.end method

.method private updateItem(Landroid/view/View;II)V
    .registers 8

    .line 57
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mIsVertical:Z

    if-eqz v0, :cond_13

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    div-int/lit8 v1, p2, 0x2

    add-int/2addr v0, v1

    move v3, p3

    move p3, p2

    move p2, v3

    goto :goto_1e

    .line 63
    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    div-int/lit8 v1, p3, 0x2

    add-int/2addr v0, v1

    :goto_1e
    add-int/2addr p3, p2

    .line 67
    div-int/lit8 p3, p3, 0x2

    const/high16 v1, -0x40800000    # -1.0f

    int-to-float p3, p3

    const/high16 v2, 0x3f800000    # 1.0f

    div-float p3, v2, p3

    .line 68
    div-int/lit8 p2, p2, 0x2

    sub-int/2addr v0, p2

    int-to-float p2, v0

    mul-float p3, p3, p2

    invoke-static {v1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 71
    iget p3, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mAlpha:F

    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    if-lez v1, :cond_48

    .line 72
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float p3, p3, v1

    sub-float p3, v2, p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 75
    :cond_48
    iget p3, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mScaleX:F

    cmpl-float v1, p3, v0

    if-gtz v1, :cond_54

    iget v1, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mScaleY:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_6b

    .line 76
    :cond_54
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float p3, p3, v0

    sub-float p3, v2, p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    .line 77
    iget p3, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mScaleY:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float p3, p3, v0

    sub-float/2addr v2, p3

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 80
    :cond_6b
    iget p3, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mRotation:I

    if-eqz p3, :cond_75

    int-to-float p3, p3

    mul-float p3, p3, p2

    .line 81
    invoke-virtual {p1, p3}, Landroid/view/View;->setRotation(F)V

    .line 84
    :cond_75
    iget p3, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mXTranslate:I

    if-eqz p3, :cond_83

    int-to-float p3, p3

    .line 85
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float p3, p3, v0

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationX(F)V

    .line 88
    :cond_83
    iget p3, p0, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->mYTranslate:I

    if-eqz p3, :cond_91

    int-to-float p3, p3

    .line 89
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p3, p3, p2

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    :cond_91
    return-void
.end method


# virtual methods
.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 7

    .line 47
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 48
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p1

    .line 49
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result p3

    .line 50
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1c

    .line 51
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p1, p3}, Lcom/taobao/weex/ui/view/listview/adapter/TransformItemDecoration;->updateItem(Landroid/view/View;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1c
    return-void
.end method
