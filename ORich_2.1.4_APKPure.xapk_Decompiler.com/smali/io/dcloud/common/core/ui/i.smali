###### Class io.dcloud.common.core.ui.i (io.dcloud.common.core.ui.i)
.class public Lio/dcloud/common/core/ui/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/view/View; = null

.field public static b:Lio/dcloud/common/adapter/ui/DHImageView; = null

.field private static c:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private static a(ILio/dcloud/common/core/ui/b;Lio/dcloud/common/core/ui/b;)V
    .registers 7

    .line 58
    invoke-virtual {p2}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v0

    .line 60
    iget-object v1, p2, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    sget-boolean v2, Lio/dcloud/common/core/ui/i;->c:Z

    invoke-virtual {v1, p1, p0, v2}, Lio/dcloud/common/core/ui/a;->a(Lio/dcloud/common/core/ui/b;IZ)Lio/dcloud/common/adapter/ui/DHImageView;

    move-result-object v1

    sput-object v1, Lio/dcloud/common/core/ui/i;->b:Lio/dcloud/common/adapter/ui/DHImageView;

    if-nez v1, :cond_19

    .line 62
    invoke-static {p0, p1, p2}, Lio/dcloud/common/core/ui/i;->b(ILio/dcloud/common/core/ui/b;Lio/dcloud/common/core/ui/b;)V

    return-void

    :cond_19
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_6f

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p0

    iget-object p0, p0, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    const-string v1, "pop-in"

    .line 72
    invoke-static {p0, v1}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4f

    .line 76
    new-instance p0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object p2

    iget p2, p2, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    int-to-float p2, p2

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    invoke-direct {p0, p2, v0, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 77
    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const-wide/16 v0, 0x12c

    .line 78
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_5e

    .line 83
    :cond_4f
    new-instance p0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {p0, v3, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 84
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p2

    iget p2, p2, Lio/dcloud/common/adapter/util/AnimOptions;->duration_show:I

    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 87
    :goto_5e
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 89
    new-instance p2, Lio/dcloud/common/core/ui/i$a;

    invoke-direct {p2, p1}, Lio/dcloud/common/core/ui/i$a;-><init>(Lio/dcloud/common/core/ui/b;)V

    invoke-virtual {p0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_b9

    .line 134
    :cond_6f
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p0

    iget-object p0, p0, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType_close:Ljava/lang/String;

    .line 135
    invoke-static {p0}, Lio/dcloud/common/adapter/util/AnimOptions;->getCloseAnimType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pop-out"

    .line 136
    invoke-static {p0, v1}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9a

    .line 140
    new-instance p0, Landroid/view/animation/TranslateAnimation;

    neg-int p2, v0

    div-int/lit8 p2, p2, 0x4

    int-to-float p2, p2

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    int-to-float v0, v0

    invoke-direct {p0, p2, v0, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 141
    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const-wide/16 v0, 0x168

    .line 142
    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_a9

    .line 147
    :cond_9a
    new-instance p0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {p0, v3, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 148
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p2

    iget p2, p2, Lio/dcloud/common/adapter/util/AnimOptions;->duration_close:I

    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 151
    :goto_a9
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 153
    new-instance p2, Lio/dcloud/common/core/ui/i$b;

    invoke-direct {p2, p1}, Lio/dcloud/common/core/ui/i$b;-><init>(Lio/dcloud/common/core/ui/b;)V

    invoke-virtual {p0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 207
    :goto_b9
    sget-object p2, Lio/dcloud/common/core/ui/i;->b:Lio/dcloud/common/adapter/ui/DHImageView;

    if-nez p2, :cond_bf

    sget-object p2, Lio/dcloud/common/core/ui/i;->a:Landroid/view/View;

    :cond_bf
    invoke-virtual {p2, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 208
    iget-object p0, p1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {p0, p1}, Lio/dcloud/common/core/ui/a;->f(Lio/dcloud/common/core/ui/b;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/common/core/ui/b;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lio/dcloud/common/core/ui/i;->c(Lio/dcloud/common/core/ui/b;)V

    return-void
.end method

.method public static a(Lio/dcloud/common/core/ui/b;I)V
    .registers 11

    .line 2
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType_close:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v2, p0}, Lio/dcloud/common/core/ui/a;->findFrameViewB(Lio/dcloud/common/DHInterface/IFrameView;)Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/core/ui/b;

    if-nez v2, :cond_17

    return-void

    :cond_17
    const-string v3, "slide"

    const/4 v4, 0x0

    const-string v5, "none"

    const-string v6, "auto"

    const/4 v7, 0x1

    if-ne p1, v7, :cond_72

    .line 10
    invoke-static {v1}, Lio/dcloud/common/adapter/util/AnimOptions;->getCloseAnimType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAccelerationType:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-static {v0, v3}, Lio/dcloud/common/util/PdrUtil;->isContains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    return-void

    .line 15
    :cond_34
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAccelerationType:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "pop-out"

    if-eqz v1, :cond_4d

    invoke-static {v0, v3}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4d

    sget-boolean v1, Lio/dcloud/common/util/BaseInfo;->isDefaultAim:Z

    if-nez v1, :cond_4d

    iget-object v1, v2, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    if-nez v1, :cond_4d

    return-void

    .line 19
    :cond_4d
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAccelerationType:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-static {v0, v3}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_60

    iget-object v0, v2, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    if-nez v0, :cond_60

    return-void

    .line 22
    :cond_60
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAccelerationType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c5

    iget-object v0, v2, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    if-nez v0, :cond_c5

    .line 23
    sget v0, Lio/dcloud/common/util/BaseInfo;->sOpenedCount:I

    sub-int/2addr v0, v7

    sput v0, Lio/dcloud/common/util/BaseInfo;->sOpenedCount:I

    goto :goto_c5

    .line 26
    :cond_72
    iget-object v8, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAccelerationType:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_81

    invoke-static {v1, v3}, Lio/dcloud/common/util/PdrUtil;->isContains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_81

    return-void

    .line 30
    :cond_81
    iget-object v3, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAccelerationType:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "pop-in"

    if-eqz v3, :cond_9a

    invoke-static {v0, v6}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9a

    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->isDefaultAim:Z

    if-nez v0, :cond_9a

    iget-object v0, v2, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    if-nez v0, :cond_9a

    return-void

    .line 34
    :cond_9a
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAccelerationType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-static {v1, v6}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ad

    iget-object v0, v2, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    if-nez v0, :cond_ad

    return-void

    .line 37
    :cond_ad
    iget-object v0, p0, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAccelerationType:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c5

    iget-object v0, v2, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    if-nez v0, :cond_c5

    .line 38
    sget v0, Lio/dcloud/common/util/BaseInfo;->sOpenedCount:I

    add-int/2addr v0, v7

    sput v0, Lio/dcloud/common/util/BaseInfo;->sOpenedCount:I

    if-le v0, v7, :cond_c2

    const/4 v0, 0x1

    goto :goto_c3

    :cond_c2
    const/4 v0, 0x0

    .line 39
    :goto_c3
    sput-boolean v0, Lio/dcloud/common/core/ui/i;->c:Z

    :cond_c5
    :goto_c5
    if-eqz v2, :cond_12b

    .line 44
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/core/ui/i;->a:Landroid/view/View;

    .line 45
    iget-object v0, v2, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v0, v2, p0}, Lio/dcloud/common/core/ui/a;->a(Lio/dcloud/common/core/ui/b;Lio/dcloud/common/core/ui/b;)V

    .line 46
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, v2, Lio/dcloud/common/adapter/ui/AdaFrameView;->mSnapshot:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_dc

    const/4 v1, 0x1

    goto :goto_dd

    :cond_dc
    const/4 v1, 0x0

    :goto_dd
    invoke-virtual {v2, v7, v0, v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->chkUseCaptureAnimation(ZIZ)V

    .line 48
    iget-boolean v0, v2, Lio/dcloud/common/adapter/ui/AdaFrameView;->mAnimationCapture:Z

    const-string v1, "mabo"

    if-eqz v0, :cond_10e

    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->sAnimationCaptureB:Z

    if-eqz v0, :cond_10e

    invoke-static {v2}, Lio/dcloud/common/core/ui/i;->b(Lio/dcloud/common/core/ui/b;)Z

    move-result v0

    if-nez v0, :cond_10e

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "B\u9875\u9762\u662f\u5426\u542f\u7528\u622a\u56fe\u52a8\u753b\u65b9\u6848:true | "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v3

    iget-object v3, v3, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {p1, v2, p0}, Lio/dcloud/common/core/ui/i;->a(ILio/dcloud/common/core/ui/b;Lio/dcloud/common/core/ui/b;)V

    goto :goto_12b

    .line 52
    :cond_10e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "B\u9875\u9762\u662f\u5426\u542f\u7528\u622a\u56fe\u52a8\u753b\u65b9\u6848:false | "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v3

    iget-object v3, v3, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {p1, v2, p0}, Lio/dcloud/common/core/ui/i;->b(ILio/dcloud/common/core/ui/b;Lio/dcloud/common/core/ui/b;)V

    .line 56
    :cond_12b
    :goto_12b
    sget p0, Lio/dcloud/common/util/BaseInfo;->sOpenedCount:I

    if-nez p0, :cond_131

    .line 57
    sput-boolean v4, Lio/dcloud/common/core/ui/i;->c:Z

    :cond_131
    return-void
.end method

.method private static a(Lio/dcloud/common/core/ui/b;Lio/dcloud/common/core/ui/b;)V
    .registers 5

    if-eqz p0, :cond_5d

    .line 209
    iget-object v0, p0, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    if-eqz v0, :cond_5d

    .line 210
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->animationAlphaBackground:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 211
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->animationAlphaBackground:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v0

    .line 212
    iget-object v1, p0, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 214
    :cond_2b
    iget-object v0, p0, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/a;->e()Ljava/util/Stack;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_35
    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/b;

    if-eq v1, p0, :cond_35

    if-ne p1, v1, :cond_46

    goto :goto_35

    .line 219
    :cond_46
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_35

    const/4 v2, 0x1

    .line 220
    invoke-virtual {v1, v2}, Lio/dcloud/common/core/ui/b;->d(Z)V

    .line 221
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_35

    :cond_5d
    return-void
.end method

.method private static b(ILio/dcloud/common/core/ui/b;Lio/dcloud/common/core/ui/b;)V
    .registers 7

    .line 6
    invoke-virtual {p2}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v0

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-nez p0, :cond_69

    .line 9
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p0

    iget-object p0, p0, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType:Ljava/lang/String;

    const-string v3, "pop-in"

    .line 10
    invoke-static {p0, v3}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_51

    .line 18
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v1, :cond_2e

    .line 19
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lio/dcloud/base/R$anim;->dcloud_page_open_exit:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    .line 20
    invoke-static {p1, p2}, Lio/dcloud/common/core/ui/i;->a(Lio/dcloud/common/core/ui/b;Lio/dcloud/common/core/ui/b;)V

    goto :goto_60

    .line 22
    :cond_2e
    new-instance p0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget v1, v1, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    int-to-float v1, v1

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    invoke-direct {p0, v1, v0, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 23
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p2

    iget p2, p2, Lio/dcloud/common/adapter/util/AnimOptions;->duration_show:I

    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 24
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_60

    .line 31
    :cond_51
    new-instance p0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {p0, v2, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 33
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p2

    iget p2, p2, Lio/dcloud/common/adapter/util/AnimOptions;->duration_show:I

    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 37
    :goto_60
    new-instance p2, Lio/dcloud/common/core/ui/i$c;

    invoke-direct {p2, p1}, Lio/dcloud/common/core/ui/i$c;-><init>(Lio/dcloud/common/core/ui/b;)V

    invoke-virtual {p0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_c7

    .line 63
    :cond_69
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p0

    iget-object p0, p0, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType_close:Ljava/lang/String;

    .line 64
    invoke-static {p0}, Lio/dcloud/common/adapter/util/AnimOptions;->getCloseAnimType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "pop-out"

    .line 65
    invoke-static {p0, v3}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b0

    .line 76
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v1, :cond_8d

    .line 77
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lio/dcloud/base/R$anim;->dcloud_page_close_enter:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    .line 78
    invoke-static {p1, p2}, Lio/dcloud/common/core/ui/i;->a(Lio/dcloud/common/core/ui/b;Lio/dcloud/common/core/ui/b;)V

    goto :goto_bf

    .line 80
    :cond_8d
    new-instance p0, Landroid/view/animation/TranslateAnimation;

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget v1, v1, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    int-to-float v1, v1

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 81
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p2

    iget p2, p2, Lio/dcloud/common/adapter/util/AnimOptions;->duration_close:I

    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 82
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_bf

    .line 88
    :cond_b0
    new-instance p0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {p0, v2, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 90
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p2

    iget p2, p2, Lio/dcloud/common/adapter/util/AnimOptions;->duration_close:I

    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 94
    :goto_bf
    new-instance p2, Lio/dcloud/common/core/ui/i$d;

    invoke-direct {p2, p1}, Lio/dcloud/common/core/ui/i$d;-><init>(Lio/dcloud/common/core/ui/b;)V

    invoke-virtual {p0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 120
    :goto_c7
    sget-object p2, Lio/dcloud/common/core/ui/i;->b:Lio/dcloud/common/adapter/ui/DHImageView;

    if-nez p2, :cond_cd

    sget-object p2, Lio/dcloud/common/core/ui/i;->a:Landroid/view/View;

    :cond_cd
    invoke-virtual {p2, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 121
    iget-object p0, p1, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {p0, p1}, Lio/dcloud/common/core/ui/a;->f(Lio/dcloud/common/core/ui/b;)V

    return-void
.end method

.method public static b(Lio/dcloud/common/core/ui/b;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_1b

    .line 5
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lio/dcloud/common/DHInterface/ITypeofAble;

    if-eqz v3, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1b
    return v1
.end method

.method private static c(Lio/dcloud/common/core/ui/b;)V
    .registers 3

    if-eqz p0, :cond_36

    .line 1
    iget-object v0, p0, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    if-eqz v0, :cond_36

    .line 2
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3
    iget-object p0, p0, Lio/dcloud/common/core/ui/b;->k:Lio/dcloud/common/core/ui/a;

    invoke-virtual {p0}, Lio/dcloud/common/core/ui/a;->e()Ljava/util/Stack;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_18
    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/core/ui/b;

    .line 5
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->f()Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lio/dcloud/common/core/ui/b;->d(Z)V

    .line 7
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_18

    :cond_36
    return-void
.end method

###### Class io.dcloud.common.core.ui.i.a (io.dcloud.common.core.ui.i$a)
.class final Lio/dcloud/common/core/ui/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/i;->a(ILio/dcloud/common/core/ui/b;Lio/dcloud/common/core/ui/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/b;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/i$a;->a:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5

    const/4 p1, 0x0

    .line 1
    sput-boolean p1, Lio/dcloud/common/util/BaseInfo;->sDoingAnimation:Z

    .line 5
    sget-object v0, Lio/dcloud/common/core/ui/i;->b:Lio/dcloud/common/adapter/ui/DHImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/DHImageView;->isNativeView()Z

    move-result v0

    if-nez v0, :cond_31

    .line 6
    sget-object v0, Lio/dcloud/common/core/ui/i;->b:Lio/dcloud/common/adapter/ui/DHImageView;

    if-eqz v0, :cond_27

    .line 7
    invoke-virtual {v0, p1}, Lio/dcloud/common/adapter/ui/DHImageView;->setIntercept(Z)V

    .line 8
    sget-object p1, Lio/dcloud/common/core/ui/i;->b:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 9
    sget-object p1, Lio/dcloud/common/core/ui/i;->b:Lio/dcloud/common/adapter/ui/DHImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10
    sget-object p1, Lio/dcloud/common/core/ui/i;->b:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p1, v1}, Lio/dcloud/common/adapter/ui/DHImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 11
    sput-object v1, Lio/dcloud/common/core/ui/i;->b:Lio/dcloud/common/adapter/ui/DHImageView;

    .line 13
    :cond_27
    sget-object p1, Lio/dcloud/common/core/ui/i;->a:Landroid/view/View;

    if-eqz p1, :cond_44

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 15
    sput-object v1, Lio/dcloud/common/core/ui/i;->a:Landroid/view/View;

    goto :goto_44

    .line 17
    :cond_31
    sget-object v0, Lio/dcloud/common/core/ui/i;->b:Lio/dcloud/common/adapter/ui/DHImageView;

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/DHImageView;->isNativeView()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 18
    iget-object v0, p0, Lio/dcloud/common/core/ui/i$a;->a:Lio/dcloud/common/core/ui/b;

    sget-object v2, Lio/dcloud/common/core/ui/i;->b:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {v0, v2, p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->handleNativeViewByAction(Lio/dcloud/common/adapter/ui/DHImageView;I)V

    .line 19
    sput-object v1, Lio/dcloud/common/core/ui/i;->b:Lio/dcloud/common/adapter/ui/DHImageView;

    :cond_44
    :goto_44
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1
    sget-object p1, Lio/dcloud/common/core/ui/i;->b:Lio/dcloud/common/adapter/ui/DHImageView;

    const/4 v0, 0x1

    if-eqz p1, :cond_8

    .line 2
    invoke-virtual {p1, v0}, Lio/dcloud/common/adapter/ui/DHImageView;->setIntercept(Z)V

    .line 4
    :cond_8
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->sDoingAnimation:Z

    return-void
.end method

###### Class io.dcloud.common.core.ui.i.b (io.dcloud.common.core.ui.i$b)
.class final Lio/dcloud/common/core/ui/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/i;->a(ILio/dcloud/common/core/ui/b;Lio/dcloud/common/core/ui/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/b;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/i$b;->a:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6

    .line 1
    sget-object p1, Lio/dcloud/common/core/ui/i;->b:Lio/dcloud/common/adapter/ui/DHImageView;

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 2
    invoke-virtual {p1, v0}, Lio/dcloud/common/adapter/ui/DHImageView;->setIntercept(Z)V

    .line 3
    sget-object p1, Lio/dcloud/common/core/ui/i;->b:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p1, v0}, Lio/dcloud/common/adapter/ui/DHImageView;->setNativeAnimationRuning(Z)V

    .line 5
    :cond_d
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->sDoingAnimation:Z

    const/16 p1, 0x140

    .line 7
    sget-object v1, Lio/dcloud/common/core/ui/i;->b:Lio/dcloud/common/adapter/ui/DHImageView;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/DHImageView;->isNativeView()Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_1e

    :cond_1c
    const/16 v0, 0x140

    .line 10
    :goto_1e
    sget-object p1, Lio/dcloud/common/core/ui/i;->a:Landroid/view/View;

    if-nez p1, :cond_28

    iget-object p1, p0, Lio/dcloud/common/core/ui/i$b;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p1

    .line 11
    :cond_28
    new-instance v1, Lio/dcloud/common/core/ui/i$b$a;

    invoke-direct {v1, p0}, Lio/dcloud/common/core/ui/i$b$a;-><init>(Lio/dcloud/common/core/ui/i$b;)V

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1
    sget-object p1, Lio/dcloud/common/core/ui/i;->b:Lio/dcloud/common/adapter/ui/DHImageView;

    const/4 v0, 0x1

    if-eqz p1, :cond_d

    .line 2
    invoke-virtual {p1, v0}, Lio/dcloud/common/adapter/ui/DHImageView;->setIntercept(Z)V

    .line 3
    sget-object p1, Lio/dcloud/common/core/ui/i;->b:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {p1, v0}, Lio/dcloud/common/adapter/ui/DHImageView;->setNativeAnimationRuning(Z)V

    .line 5
    :cond_d
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->sDoingAnimation:Z

    return-void
.end method

###### Class io.dcloud.common.core.ui.i.b.a (io.dcloud.common.core.ui.i$b$a)
.class Lio/dcloud/common/core/ui/i$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/i$b;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/i$b;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/i$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/i$b$a;->a:Lio/dcloud/common/core/ui/i$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    sget-object v0, Lio/dcloud/common/core/ui/i;->b:Lio/dcloud/common/adapter/ui/DHImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 3
    sget-object v0, Lio/dcloud/common/core/ui/i;->b:Lio/dcloud/common/adapter/ui/DHImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    sget-object v0, Lio/dcloud/common/core/ui/i;->b:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/DHImageView;->isNativeView()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 5
    iget-object v0, p0, Lio/dcloud/common/core/ui/i$b$a;->a:Lio/dcloud/common/core/ui/i$b;

    iget-object v0, v0, Lio/dcloud/common/core/ui/i$b;->a:Lio/dcloud/common/core/ui/b;

    sget-object v2, Lio/dcloud/common/core/ui/i;->b:Lio/dcloud/common/adapter/ui/DHImageView;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lio/dcloud/common/adapter/ui/AdaFrameView;->handleNativeViewByAction(Lio/dcloud/common/adapter/ui/DHImageView;I)V

    .line 7
    :cond_20
    sget-object v0, Lio/dcloud/common/core/ui/i;->b:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/DHImageView;->removeNativeView()V

    .line 8
    sget-object v0, Lio/dcloud/common/core/ui/i;->b:Lio/dcloud/common/adapter/ui/DHImageView;

    invoke-virtual {v0, v1}, Lio/dcloud/common/adapter/ui/DHImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 10
    sget-object v0, Lio/dcloud/common/core/ui/i;->b:Lio/dcloud/common/adapter/ui/DHImageView;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 11
    sput-object v1, Lio/dcloud/common/core/ui/i;->b:Lio/dcloud/common/adapter/ui/DHImageView;

    .line 13
    :cond_36
    sget-object v0, Lio/dcloud/common/core/ui/i;->a:Landroid/view/View;

    if-eqz v0, :cond_3f

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 15
    sput-object v1, Lio/dcloud/common/core/ui/i;->a:Landroid/view/View;

    :cond_3f
    return-void
.end method

###### Class io.dcloud.common.core.ui.i.c (io.dcloud.common.core.ui.i$c)
.class final Lio/dcloud/common/core/ui/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/i;->b(ILio/dcloud/common/core/ui/b;Lio/dcloud/common/core/ui/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/b;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/i$c;->a:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/core/ui/i$c;->a:Lio/dcloud/common/core/ui/b;

    invoke-static {p1}, Lio/dcloud/common/core/ui/i;->a(Lio/dcloud/common/core/ui/b;)V

    .line 2
    sget-object p1, Lio/dcloud/common/core/ui/i;->a:Landroid/view/View;

    if-eqz p1, :cond_2b

    .line 3
    iget-object v0, p0, Lio/dcloud/common/core/ui/i$c;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    .line 4
    sget-object p1, Lio/dcloud/common/core/ui/i;->a:Landroid/view/View;

    iget-object v0, p0, Lio/dcloud/common/core/ui/i$c;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setY(Landroid/view/View;F)V

    .line 5
    sget-object p1, Lio/dcloud/common/core/ui/i;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    const/4 p1, 0x0

    .line 6
    sput-object p1, Lio/dcloud/common/core/ui/i;->a:Landroid/view/View;

    :cond_2b
    const/4 p1, 0x0

    .line 8
    sput-boolean p1, Lio/dcloud/common/util/BaseInfo;->sDoingAnimation:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    const/4 p1, 0x1

    .line 1
    sput-boolean p1, Lio/dcloud/common/util/BaseInfo;->sDoingAnimation:Z

    return-void
.end method

###### Class io.dcloud.common.core.ui.i.d (io.dcloud.common.core.ui.i$d)
.class final Lio/dcloud/common/core/ui/i$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/i;->b(ILio/dcloud/common/core/ui/b;Lio/dcloud/common/core/ui/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/b;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/i$d;->a:Lio/dcloud/common/core/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lio/dcloud/common/core/ui/i$d;->a:Lio/dcloud/common/core/ui/b;

    invoke-static {p1}, Lio/dcloud/common/core/ui/i;->a(Lio/dcloud/common/core/ui/b;)V

    .line 2
    sget-object p1, Lio/dcloud/common/core/ui/i;->a:Landroid/view/View;

    if-eqz p1, :cond_2b

    .line 3
    iget-object v0, p0, Lio/dcloud/common/core/ui/i$d;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    .line 4
    sget-object p1, Lio/dcloud/common/core/ui/i;->a:Landroid/view/View;

    iget-object v0, p0, Lio/dcloud/common/core/ui/i$d;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setY(Landroid/view/View;F)V

    .line 5
    sget-object p1, Lio/dcloud/common/core/ui/i;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    const/4 p1, 0x0

    .line 6
    sput-object p1, Lio/dcloud/common/core/ui/i;->a:Landroid/view/View;

    :cond_2b
    const/4 p1, 0x0

    .line 8
    sput-boolean p1, Lio/dcloud/common/util/BaseInfo;->sDoingAnimation:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    const/4 p1, 0x1

    .line 1
    sput-boolean p1, Lio/dcloud/common/util/BaseInfo;->sDoingAnimation:Z

    return-void
.end method
