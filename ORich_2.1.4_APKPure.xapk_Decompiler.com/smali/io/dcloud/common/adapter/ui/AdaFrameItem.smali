###### Class io.dcloud.common.adapter.ui.AdaFrameItem (io.dcloud.common.adapter.ui.AdaFrameItem)
.class public Lio/dcloud/common/adapter/ui/AdaFrameItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;,
        Lio/dcloud/common/adapter/ui/AdaFrameItem$DefaultView;
    }
.end annotation


# static fields
.field public static GONE:I = 0x8

.field public static INVISIBLE:I = 0x4

.field static final TAG:Ljava/lang/String; = "AdaFrameItem"

.field public static VISIBLE:I


# instance fields
.field public isSlipping:Z

.field public lastShowTime:J

.field protected mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

.field private mAnimation:Landroid/view/animation/Animation;

.field public mAnimatorListener:Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

.field private mAutoPop:Z

.field private mAutoPush:Z

.field private mContextWrapper:Landroid/content/Context;

.field protected mLongPressed:Z

.field public mNativeView:Lio/dcloud/common/DHInterface/INativeView;

.field public mNeedOrientationUpdate:Z

.field public mParentFrameItem:Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;

.field public mPosition:I

.field protected mPressed:Z

.field public mStranslate:Z

.field protected mViewImpl:Landroid/view/View;

.field protected mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

.field protected mViewOptions_animate:Lio/dcloud/common/adapter/util/ViewOptions;

.field protected mViewOptions_birth:Lio/dcloud/common/adapter/util/ViewOptions;

.field public mZIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAutoPop:Z

    .line 4
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAutoPush:Z

    .line 9
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNeedOrientationUpdate:Z

    .line 10
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mLongPressed:Z

    .line 11
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mPressed:Z

    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    .line 15
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions_animate:Lio/dcloud/common/adapter/util/ViewOptions;

    .line 17
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions_birth:Lio/dcloud/common/adapter/util/ViewOptions;

    .line 21
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewImpl:Landroid/view/View;

    .line 22
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mContextWrapper:Landroid/content/Context;

    .line 23
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimatorListener:Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    .line 24
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    .line 25
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimation:Landroid/view/animation/Animation;

    .line 26
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mStranslate:Z

    .line 27
    iput v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mZIndex:I

    .line 29
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mParentFrameItem:Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;

    const-wide/16 v2, 0x0

    .line 31
    iput-wide v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->lastShowTime:J

    .line 32
    sget-byte v2, Lio/dcloud/common/adapter/util/ViewRect;->POSITION_ABSOLUTE:B

    iput v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mPosition:I

    .line 40
    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNativeView:Lio/dcloud/common/DHInterface/INativeView;

    .line 52
    iput-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->isSlipping:Z

    .line 53
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mContextWrapper:Landroid/content/Context;

    .line 54
    new-instance p1, Lio/dcloud/common/adapter/util/ViewOptions;

    invoke-direct {p1}, Lio/dcloud/common/adapter/util/ViewOptions;-><init>()V

    invoke-virtual {p0, p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setFrameOptions(Lio/dcloud/common/adapter/util/ViewOptions;)V

    .line 55
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    iput-object p0, p1, Lio/dcloud/common/adapter/util/ViewOptions;->mTag:Ljava/lang/Object;

    return-void
.end method

.method private addStatusBar(Lio/dcloud/common/adapter/ui/AdaFrameItem;)V
    .registers 10

    .line 1
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    .line 2
    iget-boolean v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-nez v1, :cond_9

    return-void

    .line 5
    :cond_9
    instance-of v1, p1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    if-nez v1, :cond_e

    return-void

    .line 8
    :cond_e
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/adapter/util/DeviceInfo;->getStatusHeight(Landroid/content/Context;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v3, v2, :cond_ad

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v1, :cond_30

    .line 13
    move-object v1, p1

    check-cast v1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/common/util/AppStatusBarManager;->getStatusBarDefaultColor()I

    move-result v1

    goto :goto_31

    :cond_30
    const/4 v1, 0x0

    .line 15
    :goto_31
    iget-object v5, v0, Lio/dcloud/common/adapter/util/ViewRect;->mStatusbarColor:Ljava/lang/String;

    invoke-static {v5}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_46

    .line 16
    iget-object v5, v0, Lio/dcloud/common/adapter/util/ViewRect;->mStatusbarColor:Ljava/lang/String;

    invoke-static {v5}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v5

    .line 17
    invoke-static {v5}, Lio/dcloud/common/util/PdrUtil;->checkStatusbarColor(I)Z

    move-result v6

    if-eqz v6, :cond_46

    move v1, v5

    .line 21
    :cond_46
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 22
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_53

    return-void

    .line 25
    :cond_53
    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-eqz v0, :cond_58

    return-void

    .line 28
    :cond_58
    new-instance v0, Lcom/dcloud/android/widget/StatusBarView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/dcloud/android/widget/StatusBarView;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_95

    .line 30
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v6

    if-eqz v6, :cond_95

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v6

    iget-object v6, v6, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-eqz v6, :cond_95

    .line 31
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v6

    iget-object v6, v6, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    const-string v7, "type"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "transparent"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_95

    .line 33
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v4, v6, v7, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 35
    :cond_95
    invoke-virtual {v0, v2}, Lcom/dcloud/android/widget/StatusBarView;->setStatusBarHeight(I)V

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 37
    invoke-virtual {v0, v3}, Landroid/view/View;->setId(I)V

    .line 38
    check-cast p1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 39
    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_ad
    return-void
.end method


# virtual methods
.method public final clearAnimInfo()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->isSlipping:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimation:Landroid/view/animation/Animation;

    .line 5
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimatorListener:Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    .line 6
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewImpl:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    :cond_11
    return-void
.end method

.method public dispose()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->onDispose()Z

    .line 2
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->clearAnimInfo()V

    .line 3
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewImpl:Landroid/view/View;

    if-eqz v0, :cond_21

    .line 4
    sget v1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->GONE:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewImpl:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1e

    .line 10
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewImpl:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1e
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewImpl:Landroid/view/View;

    :cond_21
    return-void
.end method

.method public findLastFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;)Lio/dcloud/common/adapter/ui/AdaFrameItem;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mContextWrapper:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Lio/dcloud/common/adapter/util/AnimOptions;

    invoke-direct {v0}, Lio/dcloud/common/adapter/util/AnimOptions;-><init>()V

    iput-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    .line 4
    :cond_b
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mContextWrapper:Landroid/content/Context;

    return-object v0
.end method

.method public getParent()Lio/dcloud/common/adapter/ui/AdaFrameItem;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentFrameItem()Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mParentFrameItem:Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;

    return-object v0
.end method

.method public isAutoPop()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAutoPop:Z

    return v0
.end method

.method public isAutoPush()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAutoPush:Z

    return v0
.end method

.method public isDisposed()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewImpl:Landroid/view/View;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public makeViewOptions_animate()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions_Birth()Lio/dcloud/common/adapter/util/ViewOptions;

    .line 2
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions_animate:Lio/dcloud/common/adapter/util/ViewOptions;

    if-nez v1, :cond_17

    .line 5
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/util/ViewRect;->getParentViewRect()Lio/dcloud/common/adapter/util/ViewRect;

    move-result-object v2

    invoke-static {v1, v2}, Lio/dcloud/common/adapter/util/ViewOptions;->createViewOptionsData(Lio/dcloud/common/adapter/util/ViewOptions;Lio/dcloud/common/adapter/util/ViewRect;)Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions_animate:Lio/dcloud/common/adapter/util/ViewOptions;

    .line 8
    :cond_17
    invoke-virtual {v1}, Lio/dcloud/common/adapter/util/ViewOptions;->hasBackground()Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x0

    .line 9
    iput v2, v1, Lio/dcloud/common/adapter/util/ViewRect;->anim_top:I

    .line 10
    iput v2, v1, Lio/dcloud/common/adapter/util/ViewRect;->anim_left:I

    .line 11
    iput v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->anim_top:I

    .line 12
    iput v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->anim_left:I

    .line 14
    :cond_26
    iget-object v2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget-byte v3, v2, Lio/dcloud/common/adapter/util/AnimOptions;->mOption:B

    if-eqz v3, :cond_a6

    const/4 v4, 0x4

    if-ne v3, v4, :cond_31

    goto/16 :goto_a6

    :cond_31
    const/4 v0, 0x1

    if-eq v3, v0, :cond_37

    const/4 v0, 0x3

    if-ne v0, v3, :cond_ff

    .line 27
    :cond_37
    iget-object v0, v2, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType_close:Ljava/lang/String;

    .line 28
    sget-object v2, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimTypes:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 29
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget-object v0, v0, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_4b
    const-string v2, "slide-out-right"

    .line 31
    invoke-static {v0, v2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9f

    const-string v2, "pop-out"

    invoke-static {v0, v2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    goto :goto_9f

    :cond_5c
    const-string v2, "slide-out-left"

    .line 33
    invoke-static {v0, v2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 34
    invoke-virtual {v1}, Lio/dcloud/common/adapter/util/ViewOptions;->hasBackground()Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget v0, v0, Lio/dcloud/common/adapter/util/AnimOptions;->sScreenWidth:I

    goto :goto_71

    :cond_6f
    iget v0, v1, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    :goto_71
    neg-int v0, v0

    iput v0, v1, Lio/dcloud/common/adapter/util/ViewRect;->anim_left:I

    goto/16 :goto_ff

    :cond_76
    const-string v2, "slide-out-top"

    .line 35
    invoke-static {v0, v2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 36
    invoke-virtual {v1}, Lio/dcloud/common/adapter/util/ViewOptions;->hasBackground()Z

    move-result v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget v0, v0, Lio/dcloud/common/adapter/util/AnimOptions;->sScreenHeight:I

    goto :goto_8b

    :cond_89
    iget v0, v1, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    :goto_8b
    neg-int v0, v0

    iput v0, v1, Lio/dcloud/common/adapter/util/ViewRect;->anim_top:I

    goto/16 :goto_ff

    :cond_90
    const-string v2, "slide-out-bottom"

    .line 37
    invoke-static {v0, v2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 38
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget v0, v0, Lio/dcloud/common/adapter/util/AnimOptions;->sScreenHeight:I

    iput v0, v1, Lio/dcloud/common/adapter/util/ViewRect;->anim_top:I

    goto :goto_ff

    .line 39
    :cond_9f
    :goto_9f
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget v0, v0, Lio/dcloud/common/adapter/util/AnimOptions;->sScreenWidth:I

    iput v0, v1, Lio/dcloud/common/adapter/util/ViewRect;->anim_left:I

    goto :goto_ff

    .line 40
    :cond_a6
    :goto_a6
    iget-object v1, v2, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    .line 41
    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b0

    const-string v1, "none"

    :cond_b0
    const-string v2, "slide-in-right"

    .line 42
    invoke-static {v1, v2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f9

    const-string v2, "pop-in"

    invoke-static {v1, v2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c1

    goto :goto_f9

    :cond_c1
    const-string v2, "slide-in-left"

    .line 44
    invoke-static {v1, v2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_d6

    .line 45
    iget v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    if-ne v1, v3, :cond_d2

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget v1, v1, Lio/dcloud/common/adapter/util/AnimOptions;->sScreenWidth:I

    :cond_d2
    neg-int v1, v1

    iput v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->anim_left:I

    goto :goto_ff

    :cond_d6
    const-string v2, "slide-in-top"

    .line 46
    invoke-static {v1, v2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 47
    iget v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    if-ne v1, v3, :cond_e6

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget v1, v1, Lio/dcloud/common/adapter/util/AnimOptions;->sScreenHeight:I

    :cond_e6
    neg-int v1, v1

    iput v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->anim_top:I

    goto :goto_ff

    :cond_ea
    const-string v2, "slide-in-bottom"

    .line 48
    invoke-static {v1, v2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ff

    .line 49
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget v1, v1, Lio/dcloud/common/adapter/util/AnimOptions;->sScreenHeight:I

    iput v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->anim_top:I

    goto :goto_ff

    .line 50
    :cond_f9
    :goto_f9
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    iget v1, v1, Lio/dcloud/common/adapter/util/AnimOptions;->sScreenWidth:I

    iput v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->anim_left:I

    :cond_ff
    :goto_ff
    return-void
.end method

.method public obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    return-object v0
.end method

.method public obtainFrameOptions_Animate()Lio/dcloud/common/adapter/util/ViewOptions;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions_animate:Lio/dcloud/common/adapter/util/ViewOptions;

    return-object v0
.end method

.method public obtainFrameOptions_Birth()Lio/dcloud/common/adapter/util/ViewOptions;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions_birth:Lio/dcloud/common/adapter/util/ViewOptions;

    return-object v0
.end method

.method public obtainMainView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewImpl:Landroid/view/View;

    return-object v0
.end method

.method public onDispose()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onPopFromStack(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAutoPop:Z

    return-void
.end method

.method public onPushToStack(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAutoPush:Z

    return-void
.end method

.method protected onResize()V
    .registers 13

    .line 1
    iget-boolean v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNeedOrientationUpdate:Z

    if-eqz v0, :cond_10e

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_10e

    .line 3
    :cond_c
    invoke-direct {p0, p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->addStatusBar(Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    .line 4
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    .line 5
    instance-of v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 6
    move-object v3, p0

    check-cast v3, Lio/dcloud/common/adapter/ui/AdaFrameView;

    iget-boolean v3, v3, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-eqz v3, :cond_1f

    const/4 v3, 0x1

    goto :goto_20

    :cond_1f
    const/4 v3, 0x0

    .line 7
    :goto_20
    invoke-virtual {v0}, Lio/dcloud/common/adapter/util/ViewRect;->onScreenChanged()V

    .line 8
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v4

    .line 9
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const/4 v6, -0x1

    if-eqz v1, :cond_79

    if-eqz v3, :cond_31

    goto :goto_79

    :cond_31
    if-eqz v5, :cond_10e

    if-eqz v1, :cond_10e

    .line 76
    iget v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v6, :cond_3b

    const/4 v2, -0x1

    goto :goto_3d

    :cond_3b
    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    :goto_3d
    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 77
    iget-boolean v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbarDodifyHeight:Z

    if-eqz v2, :cond_4e

    instance-of v2, v4, Lcom/dcloud/android/widget/AbsoluteLayout;

    if-eqz v2, :cond_4e

    .line 78
    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    sget v3, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    add-int/2addr v2, v3

    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 80
    :cond_4e
    iget v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v6, :cond_53

    goto :goto_55

    :cond_53
    iget v6, v0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    :goto_55
    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 81
    invoke-virtual {v0}, Lio/dcloud/common/adapter/util/ViewOptions;->hasBackground()Z

    move-result v2

    if-nez v2, :cond_69

    .line 82
    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    int-to-float v2, v2

    invoke-static {v4, v2}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    .line 83
    iget v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    int-to-float v0, v0

    invoke-static {v4, v0}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setY(Landroid/view/View;F)V

    :cond_69
    if-eqz v1, :cond_71

    .line 86
    move-object v0, p0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->changeWebParentViewRect()V

    .line 88
    :cond_71
    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 89
    invoke-virtual {v4}, Landroid/view/View;->postInvalidate()V

    goto/16 :goto_10e

    .line 90
    :cond_79
    :goto_79
    iget v7, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    if-gtz v7, :cond_7f

    if-ne v7, v6, :cond_81

    .line 91
    :cond_7f
    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 93
    :cond_81
    iget v7, v0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    if-gtz v7, :cond_87

    if-ne v7, v6, :cond_89

    .line 94
    :cond_87
    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 97
    :cond_89
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v3, :cond_106

    if-eqz v1, :cond_106

    .line 100
    iget v3, v0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    .line 101
    iget v7, v0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    .line 102
    iget v8, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 103
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getParentFrameItem()Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;

    move-result-object v9

    if-eqz v9, :cond_e2

    .line 105
    iget v10, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mPosition:I

    sget-byte v11, Lio/dcloud/common/adapter/util/ViewRect;->DOCK_TOP:B

    if-ne v10, v11, :cond_ca

    .line 106
    invoke-virtual {v9}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v10

    iget-object v10, v10, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-eqz v10, :cond_ca

    invoke-virtual {v9}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v10

    iget-object v10, v10, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    invoke-static {v10}, Lio/dcloud/common/util/TitleNViewUtil;->isTitleTypeForDef(Lorg/json/JSONObject;)Z

    move-result v10

    if-eqz v10, :cond_ca

    .line 107
    move-object v10, p0

    check-cast v10, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v10}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v10

    invoke-interface {v10}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v10

    const-string v11, "44px"

    invoke-static {v11, v2, v2, v10}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v2

    add-int/2addr v3, v2

    .line 110
    :cond_ca
    iget-boolean v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-nez v2, :cond_e2

    invoke-virtual {v9}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    iget-boolean v2, v2, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-eqz v2, :cond_e2

    .line 111
    sget v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    add-int/2addr v3, v2

    .line 112
    invoke-virtual {v0}, Lio/dcloud/common/adapter/util/ViewRect;->isBottomAbsolute()Z

    move-result v2

    if-eqz v2, :cond_e2

    .line 113
    sget v2, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    sub-int/2addr v8, v2

    .line 117
    :cond_e2
    iget-boolean v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-eqz v2, :cond_ef

    .line 118
    invoke-virtual {v0}, Lio/dcloud/common/adapter/util/ViewRect;->isBottomAbsolute()Z

    move-result v0

    if-nez v0, :cond_ef

    .line 119
    sget v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    add-int/2addr v8, v0

    :cond_ef
    if-gtz v5, :cond_f7

    if-eq v5, v6, :cond_f7

    .line 123
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    :cond_f7
    if-gtz v8, :cond_ff

    if-eq v8, v6, :cond_ff

    .line 126
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 128
    :cond_ff
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v7, v3, v5, v8}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->setViewLayoutParams(Landroid/view/View;IIII)V

    :cond_106
    if-eqz v1, :cond_10e

    .line 131
    move-object v0, p0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->changeWebParentViewRect()V

    :cond_10e
    :goto_10e
    return-void
.end method

.method protected paint(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public resize()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->onResize()V

    return-void
.end method

.method public scrollBy(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewImpl:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->scrollBy(II)V

    return-void
.end method

.method public scrollTo(II)V
    .registers 4

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewImpl:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method public setAnimOptions(Lio/dcloud/common/adapter/util/AnimOptions;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimOptions:Lio/dcloud/common/adapter/util/AnimOptions;

    return-void
.end method

.method public setAnimatorLinstener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mAnimatorListener:Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;

    return-void
.end method

.method public setBgcolor(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewImpl:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setFrameOptions(Lio/dcloud/common/adapter/util/ViewOptions;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    return-void
.end method

.method public setFrameOptions_Animate(Lio/dcloud/common/adapter/util/ViewOptions;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions_animate:Lio/dcloud/common/adapter/util/ViewOptions;

    return-void
.end method

.method public setFrameOptions_Birth(Lio/dcloud/common/adapter/util/ViewOptions;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions_birth:Lio/dcloud/common/adapter/util/ViewOptions;

    return-void
.end method

.method public setMainView(Landroid/view/View;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewImpl:Landroid/view/View;

    return-void
.end method

.method public setParentFrameItem(Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mParentFrameItem:Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;

    return-void
.end method

.method public setPosition(I)V
    .registers 2

    .line 1
    iput p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mPosition:I

    return-void
.end method

.method public setSlipping(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->isSlipping:Z

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewImpl:Landroid/view/View;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_f

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewImpl:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    return-void
.end method

.method public startAnimator(I)V
    .registers 2

    return-void
.end method

.method public updateViewRect(Lio/dcloud/common/adapter/ui/AdaFrameItem;[I[I)V
    .registers 11

    const/4 v0, 0x4

    new-array v5, v0, [Z

    .line 1
    fill-array-data v5, :array_14

    new-array v6, v0, [Z

    fill-array-data v6, :array_1a

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->updateViewRect(Lio/dcloud/common/adapter/ui/AdaFrameItem;[I[I[Z[Z)V

    return-void

    nop

    :array_14
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_1a
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data
.end method

.method public updateViewRect(Lio/dcloud/common/adapter/ui/AdaFrameItem;[I[I[Z[Z)V
    .registers 26

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    const/4 v7, 0x0

    aget v3, p2, v7

    iput v3, v1, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    .line 3
    aget v4, p3, v7

    aget-boolean v5, p4, v7

    aget-boolean v6, p5, v7

    const-string v2, "left"

    invoke-virtual/range {v1 .. v6}, Lio/dcloud/common/adapter/util/ViewRect;->checkValueIsPercentage(Ljava/lang/String;IIZZ)V

    .line 4
    iget-object v8, v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    const/4 v1, 0x1

    aget v10, p2, v1

    iput v10, v8, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    .line 5
    aget v11, p3, v1

    aget-boolean v12, p4, v1

    aget-boolean v13, p5, v1

    const-string v9, "top"

    invoke-virtual/range {v8 .. v13}, Lio/dcloud/common/adapter/util/ViewRect;->checkValueIsPercentage(Ljava/lang/String;IIZZ)V

    .line 6
    iget-object v14, v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    const/4 v2, 0x2

    aget v3, p2, v2

    iput v3, v14, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    .line 7
    aget v17, p3, v7

    aget-boolean v18, p4, v2

    aget-boolean v19, p5, v2

    const-string v15, "width"

    move/from16 v16, v3

    invoke-virtual/range {v14 .. v19}, Lio/dcloud/common/adapter/util/ViewRect;->checkValueIsPercentage(Ljava/lang/String;IIZZ)V

    .line 8
    iget-object v4, v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    const/4 v2, 0x3

    aget v6, p2, v2

    iput v6, v4, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    .line 9
    aget v7, p3, v1

    aget-boolean v8, p4, v2

    aget-boolean v9, p5, v2

    const-string v5, "height"

    invoke-virtual/range {v4 .. v9}, Lio/dcloud/common/adapter/util/ViewRect;->checkValueIsPercentage(Ljava/lang/String;IIZZ)V

    .line 10
    iget-object v1, v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    move-object/from16 v2, p1

    iget-object v2, v2, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mViewOptions:Lio/dcloud/common/adapter/util/ViewOptions;

    invoke-virtual {v1, v2}, Lio/dcloud/common/adapter/util/ViewRect;->setParentViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V

    return-void
.end method

.method protected useDefaultMainView()V
    .registers 3

    .line 1
    new-instance v0, Lio/dcloud/common/adapter/ui/AdaFrameItem$DefaultView;

    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mContextWrapper:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem$DefaultView;-><init>(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setMainView(Landroid/view/View;)V

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.AdaFrameItem.DefaultView (io.dcloud.common.adapter.ui.AdaFrameItem$DefaultView)
.class Lio/dcloud/common/adapter/ui/AdaFrameItem$DefaultView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/ui/AdaFrameItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultView"
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/AdaFrameItem;


# direct methods
.method public constructor <init>(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem$DefaultView;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameItem;

    .line 2
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem$DefaultView;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->onResize()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem$DefaultView;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v0, p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->paint(Landroid/graphics/Canvas;)V

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.AdaFrameItem.LayoutParamsUtil (io.dcloud.common.adapter.ui.AdaFrameItem$LayoutParamsUtil)
.class public Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/common/adapter/ui/AdaFrameItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParamsUtil"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLayoutParams(IIII)Landroid/view/ViewGroup$LayoutParams;
    .registers 5

    .line 1
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v0, p2, p3, p0, p1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    return-object v0
.end method

.method private static preAndroid30SetViewLayoutParams(Landroid/view/View;II)V
    .registers 10

    if-nez p1, :cond_4

    if-eqz p2, :cond_61

    .line 1
    :cond_4
    sget v0, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_61

    .line 2
    new-instance v0, Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 4
    new-instance v1, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v1}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;-><init>()V

    const-string v2, "x"

    .line 5
    invoke-virtual {v1, v2}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v3, v2, [F

    add-int/lit8 v4, p1, -0x1

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    int-to-float v4, p1

    const/4 v6, 0x1

    aput v4, v3, v6

    .line 6
    invoke-virtual {v1, v3}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->setFloatValues([F)V

    new-array v3, v6, [Lio/dcloud/nineoldandroids/animation/Animator;

    aput-object v1, v3, v5

    .line 7
    invoke-virtual {v0, v3}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->playTogether([Lio/dcloud/nineoldandroids/animation/Animator;)V

    .line 10
    new-instance v1, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v1}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;-><init>()V

    const-string v3, "y"

    .line 11
    invoke-virtual {v1, v3}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    new-array v2, v2, [F

    add-int/lit8 v3, p2, -0x1

    int-to-float v3, v3

    aput v3, v2, v5

    int-to-float v3, p2

    aput v3, v2, v6

    .line 12
    invoke-virtual {v1, v2}, Lio/dcloud/nineoldandroids/animation/ObjectAnimator;->setFloatValues([F)V

    new-array v2, v6, [Lio/dcloud/nineoldandroids/animation/Animator;

    aput-object v1, v2, v5

    .line 13
    invoke-virtual {v0, v2}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->playTogether([Lio/dcloud/nineoldandroids/animation/Animator;)V

    const-wide/16 v1, 0x5

    .line 15
    invoke-virtual {v0, v1, v2}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lio/dcloud/nineoldandroids/animation/AnimatorSet;

    .line 16
    invoke-virtual {v0, p0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 18
    new-instance v1, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil$1;

    invoke-direct {v1, p0, p1, p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil$1;-><init>(Landroid/view/View;II)V

    invoke-virtual {v0, v1}, Lio/dcloud/nineoldandroids/animation/Animator;->addListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 46
    invoke-virtual {v0}, Lio/dcloud/nineoldandroids/animation/AnimatorSet;->start()V

    :cond_61
    return-void
.end method

.method public static setViewLayoutParams(Landroid/view/View;IIII)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 5
    :cond_19
    invoke-virtual {p0, v1}, Landroid/view/View;->setTop(I)V

    .line 6
    invoke-virtual {p0, v1}, Landroid/view/View;->setLeft(I)V

    int-to-float p1, p1

    .line 7
    invoke-static {p0, p1}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    int-to-float p1, p2

    .line 8
    invoke-static {p0, p1}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setY(Landroid/view/View;F)V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-nez p1, :cond_33

    .line 14
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, p3, p4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_37

    .line 16
    :cond_33
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 17
    iput p4, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 19
    :goto_37
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.AdaFrameItem.LayoutParamsUtil.AnonymousClass1 (io.dcloud.common.adapter.ui.AdaFrameItem$LayoutParamsUtil$1)
.class final Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->preAndroid30SetViewLayoutParams(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$left:I

.field final synthetic val$top:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;II)V
    .registers 4

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil$1;->val$view:Landroid/view/View;

    iput p2, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil$1;->val$left:I

    iput p3, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil$1;->val$top:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil$1;->val$view:Landroid/view/View;

    new-instance v0, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil$1$1;

    invoke-direct {v0, p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil$1$1;-><init>(Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil$1;)V

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAnimationEnd(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationRepeat(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Lio/dcloud/nineoldandroids/animation/Animator;)V
    .registers 2

    return-void
.end method

###### Class io.dcloud.common.adapter.ui.AdaFrameItem.LayoutParamsUtil.AnonymousClass1.RunnableC00241 (io.dcloud.common.adapter.ui.AdaFrameItem$LayoutParamsUtil$1$1)
.class Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil$1;->onAnimationCancel(Lio/dcloud/nineoldandroids/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil$1;


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil$1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil$1$1;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil$1$1;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil$1;

    iget-object v1, v0, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil$1;->val$view:Landroid/view/View;

    iget v0, v0, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil$1;->val$left:I

    int-to-float v0, v0

    invoke-static {v1, v0}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    .line 2
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil$1$1;->this$0:Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil$1;

    iget-object v1, v0, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil$1;->val$view:Landroid/view/View;

    iget v0, v0, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil$1;->val$top:I

    int-to-float v0, v0

    invoke-static {v1, v0}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setY(Landroid/view/View;F)V

    return-void
.end method
