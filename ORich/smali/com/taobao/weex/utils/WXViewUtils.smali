###### Class com.taobao.weex.utils.WXViewUtils (com.taobao.weex.utils.WXViewUtils)
.class public Lcom/taobao/weex/utils/WXViewUtils;
.super Ljava/lang/Object;
.source "WXViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/utils/WXViewUtils$Opacity;
    }
.end annotation


# static fields
.field public static final DIMENSION_UNSET:I = -0x1

.field public static final OPAQUE:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TRANSLUCENT:I = -0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TRANSPARENT:I = -0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static mScreenHeight:I = 0x0

.field private static mScreenWidth:I = 0x0

.field private static final mUseWebPx:Z = false

.field private static final sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/taobao/weex/utils/WXViewUtils;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clipCanvasDueToAndroidVersion(Landroid/graphics/Canvas;)Z
    .registers 3

    .line 542
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_f

    .line 543
    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method private static clipCanvasIfAnimationExist(Landroid/view/View;)Z
    .registers 2

    .line 553
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-ge p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private static clipCanvasIfBackgroundImageExist(Landroid/view/View;Lcom/taobao/weex/ui/view/border/BorderDrawable;)Z
    .registers 6

    .line 571
    instance-of p1, p0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_30

    .line 573
    check-cast p0, Landroid/view/ViewGroup;

    .line 574
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, p1, :cond_30

    .line 576
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 577
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-eqz v3, :cond_2d

    .line 578
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_2d

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_2d

    return v0

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_30
    const/4 p0, 0x1

    return p0
.end method

.method private static clipCanvasIfBackgroundImageExist(Lcom/taobao/weex/ui/flat/widget/Widget;Lcom/taobao/weex/ui/view/border/BorderDrawable;)Z
    .registers 3

    .line 589
    instance-of p1, p0, Lcom/taobao/weex/ui/flat/widget/WidgetGroup;

    if-eqz p1, :cond_2c

    .line 590
    check-cast p0, Lcom/taobao/weex/ui/flat/widget/WidgetGroup;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/flat/widget/WidgetGroup;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/flat/widget/Widget;

    .line 591
    invoke-interface {p1}, Lcom/taobao/weex/ui/flat/widget/Widget;->getBackgroundAndBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->hasImage()Z

    move-result p1

    if-eqz p1, :cond_e

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p1, v0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_2c
    const/4 p0, 0x1

    return p0
.end method

.method public static clipCanvasWithinBorderBox(Landroid/view/View;Landroid/graphics/Canvas;)V
    .registers 7

    .line 495
    invoke-static {p1}, Lcom/taobao/weex/utils/WXViewUtils;->clipCanvasDueToAndroidVersion(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 496
    invoke-static {p0}, Lcom/taobao/weex/utils/WXViewUtils;->clipCanvasIfAnimationExist(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 497
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-eqz v1, :cond_61

    .line 498
    check-cast v0, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    .line 499
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->isRounded()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 500
    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXViewUtils;->clipCanvasIfBackgroundImageExist(Landroid/view/View;Lcom/taobao/weex/ui/view/border/BorderDrawable;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 501
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 502
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getContentPath(Landroid/graphics/RectF;)Landroid/graphics/Path;

    move-result-object v0

    .line 503
    instance-of v2, p0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    if-eqz v2, :cond_5e

    .line 504
    check-cast p0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/WXFrameLayout;->getComponent()Lcom/taobao/weex/ui/component/WXDiv;

    move-result-object p0

    if-eqz p0, :cond_5e

    .line 506
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p0

    const-string v2, "rotateFix"

    invoke-virtual {p0, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5e

    .line 507
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "true"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5e

    .line 508
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    return-void

    .line 513
    :cond_5e
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_61
    return-void
.end method

.method public static clipCanvasWithinBorderBox(Lcom/taobao/weex/ui/flat/widget/Widget;Landroid/graphics/Canvas;)V
    .registers 6

    .line 521
    invoke-static {p1}, Lcom/taobao/weex/utils/WXViewUtils;->clipCanvasDueToAndroidVersion(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x0

    .line 522
    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->clipCanvasIfAnimationExist(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 523
    invoke-interface {p0}, Lcom/taobao/weex/ui/flat/widget/Widget;->getBackgroundAndBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 524
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->isRounded()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXViewUtils;->clipCanvasIfBackgroundImageExist(Lcom/taobao/weex/ui/flat/widget/Widget;Lcom/taobao/weex/ui/view/border/BorderDrawable;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 525
    new-instance v1, Landroid/graphics/RectF;

    .line 526
    invoke-interface {p0}, Lcom/taobao/weex/ui/flat/widget/Widget;->getBorderBox()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {p0}, Lcom/taobao/weex/ui/flat/widget/Widget;->getBorderBox()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 525
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getContentPath(Landroid/graphics/RectF;)Landroid/graphics/Path;

    move-result-object p0

    .line 527
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_46

    .line 530
    :cond_3f
    invoke-interface {p0}, Lcom/taobao/weex/ui/flat/widget/Widget;->getBorderBox()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    :cond_46
    :goto_46
    return-void
.end method

.method public static dip2px(F)I
    .registers 3

    .line 396
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_17

    :catch_f
    move-exception v0

    const-string v1, "[WXViewUtils] dip2px:"

    .line 399
    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/high16 v0, 0x40000000    # 2.0f

    :goto_17
    mul-float p0, p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_29

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_29

    const/4 p0, 0x1

    goto :goto_2a

    :cond_29
    float-to-int p0, p0

    :goto_2a
    return p0
.end method

.method public static generateViewId()I
    .registers 4

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_1b

    .line 95
    :cond_6
    sget-object v0, Lcom/taobao/weex/utils/WXViewUtils;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    const v3, 0xffffff

    if-le v2, v3, :cond_14

    const/4 v2, 0x1

    .line 100
    :cond_14
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 105
    :cond_1b
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    return v0
.end method

.method public static getBorderDrawable(Landroid/view/View;)Lcom/taobao/weex/ui/view/border/BorderDrawable;
    .registers 3

    .line 478
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 479
    instance-of v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-eqz v0, :cond_b

    .line 480
    check-cast p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    return-object p0

    .line 482
    :cond_b
    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_24

    .line 483
    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_24

    const/4 v0, 0x0

    .line 484
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 485
    instance-of v0, p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-eqz v0, :cond_24

    .line 486
    check-cast p0, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    return-object p0

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFullScreenHeight(Landroid/content/Context;)I
    .registers 4

    if-eqz p0, :cond_4d

    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 223
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2d

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    if-eqz v1, :cond_2d

    .line 224
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 225
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    .line 226
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 227
    iget p0, p0, Landroid/graphics/Point;->y:I

    sput p0, Lcom/taobao/weex/utils/WXViewUtils;->mScreenHeight:I

    goto :goto_39

    .line 230
    :cond_2d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput p0, Lcom/taobao/weex/utils/WXViewUtils;->mScreenHeight:I

    .line 232
    :goto_39
    sget-boolean p0, Lcom/taobao/weex/WXEnvironment;->SETTING_FORCE_VERTICAL_SCREEN:Z

    if-eqz p0, :cond_53

    .line 234
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput p0, Lcom/taobao/weex/utils/WXViewUtils;->mScreenWidth:I

    .line 236
    sget v0, Lcom/taobao/weex/utils/WXViewUtils;->mScreenHeight:I

    if-le v0, p0, :cond_4a

    move p0, v0

    :cond_4a
    sput p0, Lcom/taobao/weex/utils/WXViewUtils;->mScreenHeight:I

    goto :goto_53

    .line 238
    :cond_4d
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p0

    if-nez p0, :cond_56

    .line 241
    :cond_53
    :goto_53
    sget p0, Lcom/taobao/weex/utils/WXViewUtils;->mScreenHeight:I

    return p0

    .line 239
    :cond_56
    new-instance p0, Lcom/taobao/weex/common/WXRuntimeException;

    const-string v0, "Error Context is null When getScreenHeight"

    invoke-direct {p0, v0}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getOpacityFromColor(I)I
    .registers 2

    ushr-int/lit8 p0, p0, 0x18

    const/16 v0, 0xff

    if-ne p0, v0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    if-nez p0, :cond_c

    const/4 p0, -0x2

    return p0

    :cond_c
    const/4 p0, -0x3

    return p0
.end method

.method public static getRealPxByWidth(F)F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x443b8000    # 750.0f

    .line 272
    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXViewUtils;->realPxByWidth(FF)F

    move-result p0

    return p0
.end method

.method public static getRealPxByWidth(FF)F
    .registers 2

    .line 275
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXViewUtils;->realPxByWidth(FF)F

    move-result p0

    return p0
.end method

.method public static getRealPxByWidth(FI)F
    .registers 2

    int-to-float p1, p1

    .line 278
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXViewUtils;->realPxByWidth(FF)F

    move-result p0

    return p0
.end method

.method public static getRealPxByWidth2(F)F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x443b8000    # 750.0f

    .line 340
    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXViewUtils;->realPxByWidth2(FF)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public static getRealPxByWidth2(FF)I
    .registers 2

    .line 343
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXViewUtils;->realPxByWidth2(FF)I

    move-result p0

    return p0
.end method

.method public static getRealPxByWidth2(FI)I
    .registers 2

    int-to-float p1, p1

    .line 346
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXViewUtils;->realPxByWidth2(FF)I

    move-result p0

    return p0
.end method

.method public static getRealSubPxByWidth(F)F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x443b8000    # 750.0f

    .line 294
    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXViewUtils;->realSubPxByWidth(FF)F

    move-result p0

    return p0
.end method

.method public static getRealSubPxByWidth(FF)F
    .registers 2

    .line 297
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXViewUtils;->realSubPxByWidth(FF)F

    move-result p0

    return p0
.end method

.method public static getRealSubPxByWidth(FI)F
    .registers 2

    int-to-float p1, p1

    .line 300
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXViewUtils;->realSubPxByWidth(FF)F

    move-result p0

    return p0
.end method

.method public static getScreenDensity(Landroid/content/Context;)F
    .registers 3

    if-eqz p0, :cond_26

    .line 156
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 157
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_d

    return p0

    :catch_d
    move-exception p0

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getScreenDensityDpi exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_26
    const/high16 p0, 0x40400000    # 3.0f

    return p0
.end method

.method public static getScreenHeight()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 209
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .registers 2

    if-eqz p0, :cond_22

    .line 246
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 247
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/taobao/weex/utils/WXViewUtils;->mScreenHeight:I

    .line 248
    sget-boolean v0, Lcom/taobao/weex/WXEnvironment;->SETTING_FORCE_VERTICAL_SCREEN:Z

    if-eqz v0, :cond_28

    .line 250
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput p0, Lcom/taobao/weex/utils/WXViewUtils;->mScreenWidth:I

    .line 252
    sget v0, Lcom/taobao/weex/utils/WXViewUtils;->mScreenHeight:I

    if-le v0, p0, :cond_1f

    move p0, v0

    :cond_1f
    sput p0, Lcom/taobao/weex/utils/WXViewUtils;->mScreenHeight:I

    goto :goto_28

    .line 254
    :cond_22
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p0

    if-nez p0, :cond_2b

    .line 257
    :cond_28
    :goto_28
    sget p0, Lcom/taobao/weex/utils/WXViewUtils;->mScreenHeight:I

    return p0

    .line 255
    :cond_2b
    new-instance p0, Lcom/taobao/weex/common/WXRuntimeException;

    const-string v0, "Error Context is null When getScreenHeight"

    invoke-direct {p0, v0}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getScreenHeight(Ljava/lang/String;)I
    .registers 2

    .line 214
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p0

    .line 215
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->isFullScreenHeightEnabled()Z

    move-result p0

    if-eqz p0, :cond_15

    sget-object p0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-static {p0}, Lcom/taobao/weex/utils/WXViewUtils;->getFullScreenHeight(Landroid/content/Context;)I

    move-result p0

    goto :goto_1b

    :cond_15
    sget-object p0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-static {p0}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result p0

    :goto_1b
    return p0
.end method

.method public static getScreenWidth()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .registers 2

    if-eqz p0, :cond_22

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 182
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/taobao/weex/utils/WXViewUtils;->mScreenWidth:I

    .line 183
    sget-boolean v0, Lcom/taobao/weex/WXEnvironment;->SETTING_FORCE_VERTICAL_SCREEN:Z

    if-eqz v0, :cond_28

    .line 185
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput p0, Lcom/taobao/weex/utils/WXViewUtils;->mScreenHeight:I

    .line 187
    sget v0, Lcom/taobao/weex/utils/WXViewUtils;->mScreenWidth:I

    if-le p0, v0, :cond_1f

    move p0, v0

    :cond_1f
    sput p0, Lcom/taobao/weex/utils/WXViewUtils;->mScreenWidth:I

    goto :goto_28

    .line 189
    :cond_22
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p0

    if-nez p0, :cond_2b

    .line 192
    :cond_28
    :goto_28
    sget p0, Lcom/taobao/weex/utils/WXViewUtils;->mScreenWidth:I

    return p0

    .line 190
    :cond_2b
    new-instance p0, Lcom/taobao/weex/common/WXRuntimeException;

    const-string v0, "Error Context is null When getScreenHeight"

    invoke-direct {p0, v0}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .registers 4

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    .line 198
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_15

    .line 200
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_15
    const/4 p0, -0x1

    return p0
.end method

.method public static getWebPxByWidth(F)F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x443b8000    # 750.0f

    .line 367
    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXViewUtils;->webPxByWidth(FF)F

    move-result p0

    return p0
.end method

.method public static getWebPxByWidth(FF)F
    .registers 2

    .line 370
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXViewUtils;->webPxByWidth(FF)F

    move-result p0

    return p0
.end method

.method public static getWebPxByWidth(FI)F
    .registers 2

    int-to-float p1, p1

    .line 373
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXViewUtils;->webPxByWidth(FF)F

    move-result p0

    return p0
.end method

.method public static getWeexHeight(Ljava/lang/String;)I
    .registers 2

    .line 114
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 116
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getWeexHeight()I

    move-result p0

    if-gez p0, :cond_1a

    const/4 v0, -0x2

    if-ne p0, v0, :cond_14

    goto :goto_1a

    .line 121
    :cond_14
    sget-object p0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-static {p0}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result p0

    :cond_1a
    :goto_1a
    return p0

    :cond_1b
    const/4 p0, -0x3

    return p0
.end method

.method public static getWeexPxByReal(F)F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x443b8000    # 750.0f

    .line 319
    invoke-static {p0, v0}, Lcom/taobao/weex/utils/WXViewUtils;->weexPxByReal(FF)F

    move-result p0

    return p0
.end method

.method public static getWeexPxByReal(FF)F
    .registers 2

    .line 322
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXViewUtils;->weexPxByReal(FF)F

    move-result p0

    return p0
.end method

.method public static getWeexPxByReal(FI)F
    .registers 2

    int-to-float p1, p1

    .line 325
    invoke-static {p0, p1}, Lcom/taobao/weex/utils/WXViewUtils;->weexPxByReal(FF)F

    move-result p0

    return p0
.end method

.method public static getWeexWidth(Ljava/lang/String;)I
    .registers 2

    .line 130
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 132
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getWeexWidth()I

    move-result p0

    if-gez p0, :cond_1a

    const/4 v0, -0x2

    if-ne p0, v0, :cond_14

    goto :goto_1a

    .line 137
    :cond_14
    sget-object p0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-static {p0}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result p0

    :cond_1a
    :goto_1a
    return p0

    :cond_1b
    const/4 p0, -0x3

    return p0
.end method

.method public static multiplyColorAlpha(II)I
    .registers 4

    const/16 v0, 0xff

    if-ne p1, v0, :cond_5

    return p0

    :cond_5
    const v0, 0xffffff

    if-nez p1, :cond_c

    and-int/2addr p0, v0

    return p0

    :cond_c
    shr-int/lit8 v1, p1, 0x7

    add-int/2addr p1, v1

    ushr-int/lit8 v1, p0, 0x18

    mul-int v1, v1, p1

    shr-int/lit8 p1, v1, 0x8

    shl-int/lit8 p1, p1, 0x18

    and-int/2addr p0, v0

    or-int/2addr p0, p1

    return p0
.end method

.method public static onScreenArea(Landroid/view/View;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_37

    .line 406
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_37

    :cond_a
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 411
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 412
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 415
    iget p0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1d

    .line 417
    :cond_19
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    :goto_1d
    const/4 v2, 0x1

    .line 420
    aget v3, v1, v2

    if-lez v3, :cond_2d

    aget v3, v1, v2

    sget-object v4, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-static {v4}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v4

    sub-int/2addr v3, v4

    if-ltz v3, :cond_36

    :cond_2d
    aget v3, v1, v2

    add-int/2addr p0, v3

    if-lez p0, :cond_37

    aget p0, v1, v2

    if-gtz p0, :cond_37

    :cond_36
    const/4 v0, 0x1

    :cond_37
    :goto_37
    return v0
.end method

.method private static realPxByWidth(FF)F
    .registers 7

    .line 281
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    return p0

    .line 287
    :cond_7
    invoke-static {}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float p0, p0, v0

    div-float/2addr p0, p1

    float-to-double v0, p0

    const-wide v2, 0x3f747ae147ae147bL    # 0.005

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-double v4, v0, v2

    if-lez v4, :cond_20

    cmpg-float p0, p0, p1

    if-gez p0, :cond_20

    goto :goto_25

    .line 288
    :cond_20
    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide p0

    double-to-float p1, p0

    :goto_25
    return p1
.end method

.method private static realPxByWidth2(FF)I
    .registers 7

    .line 352
    invoke-static {}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float p0, p0, v0

    div-float/2addr p0, p1

    float-to-double v0, p0

    const/4 p1, 0x1

    const-wide v2, 0x3f747ae147ae147bL    # 0.005

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1a

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1a

    goto :goto_1d

    :cond_1a
    float-to-int p0, p0

    add-int/lit8 p1, p0, -0x1

    :goto_1d
    return p1
.end method

.method private static realSubPxByWidth(FF)F
    .registers 7

    .line 303
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    return p0

    .line 309
    :cond_7
    invoke-static {}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float p0, p0, v0

    div-float/2addr p0, p1

    float-to-double v0, p0

    const-wide v2, 0x3f747ae147ae147bL    # 0.005

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-double v4, v0, v2

    if-lez v4, :cond_21

    cmpg-float v0, p0, p1

    if-gez v0, :cond_21

    const/high16 p0, 0x3f800000    # 1.0f

    :cond_21
    return p0
.end method

.method public static setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/taobao/weex/ui/component/WXComponent;)V
    .registers 5

    .line 458
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_a

    .line 459
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_47

    .line 463
    :cond_a
    :try_start_a
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_47

    :catch_e
    if-nez p2, :cond_11

    return-void

    .line 467
    :cond_11
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_TEXTURE_SETBACKGROUND:Lcom/taobao/weex/common/WXErrorCode;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " setBackGround for android view"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_TEXTURE_SETBACKGROUND:Lcom/taobao/weex/common/WXErrorCode;

    .line 470
    invoke-virtual {v1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": TextureView doesn\'t support displaying a background drawable!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 467
    invoke-static {p0, p1, p2, v0, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_47
    return-void
.end method

.method public static setScreenWidth(I)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    sput p0, Lcom/taobao/weex/utils/WXViewUtils;->mScreenWidth:I

    return p0
.end method

.method public static updateApplicationScreen(Landroid/content/Context;)V
    .registers 3

    if-eqz p0, :cond_31

    .line 166
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    if-nez v0, :cond_7

    goto :goto_31

    .line 169
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 170
    sget-object v0, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 171
    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 172
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 173
    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 174
    iget v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 175
    iget v1, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 176
    iget p0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    iput p0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    :cond_31
    :goto_31
    return-void
.end method

.method private static webPxByWidth(FF)F
    .registers 7

    float-to-double v0, p0

    const-wide v2, -0x40000068db8bac71L    # -1.9999

    cmpg-double v4, v0, v2

    if-gez v4, :cond_16

    const-wide v2, -0x3ffff5c28f5c28f6L    # -2.005

    cmpl-double v4, v0, v2

    if-lez v4, :cond_16

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    :cond_16
    mul-float p0, p0, p1

    .line 382
    invoke-static {}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    float-to-double v0, p0

    const-wide v2, 0x3f747ae147ae147bL    # 0.005

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-double v4, v0, v2

    if-lez v4, :cond_30

    cmpg-float v0, p0, p1

    if-gez v0, :cond_30

    const/high16 p0, 0x3f800000    # 1.0f

    :cond_30
    return p0
.end method

.method private static weexPxByReal(FF)F
    .registers 3

    .line 328
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    return p0

    :cond_7
    mul-float p0, p0, p1

    .line 334
    invoke-static {}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method

###### Class com.taobao.weex.utils.WXViewUtils.Opacity (com.taobao.weex.utils.WXViewUtils$Opacity)
.class public interface abstract annotation Lcom/taobao/weex/utils/WXViewUtils$Opacity;
.super Ljava/lang/Object;
.source "WXViewUtils.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/WXViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Opacity"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
