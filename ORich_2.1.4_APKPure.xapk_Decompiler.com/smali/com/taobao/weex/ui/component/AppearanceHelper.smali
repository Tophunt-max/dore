###### Class com.taobao.weex.ui.component.AppearanceHelper (com.taobao.weex.ui.component.AppearanceHelper)
.class public Lcom/taobao/weex/ui/component/AppearanceHelper;
.super Ljava/lang/Object;
.source "AppearanceHelper.java"


# static fields
.field public static final APPEAR:I = 0x0

.field public static final DISAPPEAR:I = 0x1

.field public static final RESULT_APPEAR:I = 0x1

.field public static final RESULT_DISAPPEAR:I = -0x1

.field public static final RESULT_NO_CHANGE:I


# instance fields
.field private mAppearStatus:Z

.field private final mAwareChild:Lcom/taobao/weex/ui/component/WXComponent;

.field private mCellPositionInScrollable:I

.field private mVisibleRect:Landroid/graphics/Rect;

.field private mWatchFlags:[Z


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 3

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/taobao/weex/ui/component/AppearanceHelper;-><init>(Lcom/taobao/weex/ui/component/WXComponent;I)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;I)V
    .registers 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/AppearanceHelper;->mAppearStatus:Z

    const/4 v0, 0x2

    new-array v0, v0, [Z

    .line 34
    fill-array-data v0, :array_1a

    iput-object v0, p0, Lcom/taobao/weex/ui/component/AppearanceHelper;->mWatchFlags:[Z

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/AppearanceHelper;->mVisibleRect:Landroid/graphics/Rect;

    .line 55
    iput-object p1, p0, Lcom/taobao/weex/ui/component/AppearanceHelper;->mAwareChild:Lcom/taobao/weex/ui/component/WXComponent;

    .line 56
    iput p2, p0, Lcom/taobao/weex/ui/component/AppearanceHelper;->mCellPositionInScrollable:I

    return-void

    :array_1a
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public getAwareChild()Lcom/taobao/weex/ui/component/WXComponent;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AppearanceHelper;->mAwareChild:Lcom/taobao/weex/ui/component/WXComponent;

    return-object v0
.end method

.method public getCellPositionINScollable()I
    .registers 2

    .line 64
    iget v0, p0, Lcom/taobao/weex/ui/component/AppearanceHelper;->mCellPositionInScrollable:I

    return v0
.end method

.method public isAppear()Z
    .registers 2

    .line 88
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/AppearanceHelper;->mAppearStatus:Z

    return v0
.end method

.method public isViewVisible(Landroid/view/View;)Z
    .registers 4

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_e

    return v1

    :cond_e
    if-eqz p1, :cond_19

    .line 119
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AppearanceHelper;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1
.end method

.method public isViewVisible(Z)Z
    .registers 4

    .line 101
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AppearanceHelper;->mAwareChild:Lcom/taobao/weex/ui/component/WXComponent;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p1, :cond_16

    .line 103
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_16

    .line 104
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-nez p1, :cond_16

    return v1

    :cond_16
    if-eqz v0, :cond_21

    .line 109
    iget-object p1, p0, Lcom/taobao/weex/ui/component/AppearanceHelper;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    return v1
.end method

.method public isWatch()Z
    .registers 5

    .line 79
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AppearanceHelper;->mWatchFlags:[Z

    const/4 v1, 0x0

    aget-boolean v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_c

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_d

    :cond_c
    const/4 v1, 0x1

    :cond_d
    return v1
.end method

.method public setAppearStatus(Z)I
    .registers 3

    .line 92
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/AppearanceHelper;->mAppearStatus:Z

    if-eq v0, p1, :cond_c

    .line 93
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/AppearanceHelper;->mAppearStatus:Z

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, -0x1

    :goto_b
    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public setCellPosition(I)V
    .registers 2

    .line 60
    iput p1, p0, Lcom/taobao/weex/ui/component/AppearanceHelper;->mCellPositionInScrollable:I

    return-void
.end method

.method public setWatchEvent(IZ)V
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/taobao/weex/ui/component/AppearanceHelper;->mWatchFlags:[Z

    aput-boolean p2, v0, p1

    return-void
.end method
