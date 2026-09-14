###### Class com.taobao.weex.ui.view.refresh.circlebar.CircleProgressBar (com.taobao.weex.ui.view.refresh.circlebar.CircleProgressBar)
.class public Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;
.super Landroid/widget/ImageView;
.source "CircleProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;
    }
.end annotation


# static fields
.field public static final DEFAULT_CIRCLE_BG_LIGHT:I = -0x50506

.field public static final DEFAULT_CIRCLE_COLOR:I = -0x100000

.field private static final DEFAULT_CIRCLE_DIAMETER:I = 0x28

.field private static final FILL_SHADOW_COLOR:I = 0x3d000000

.field private static final KEY_SHADOW_COLOR:I = 0x1e000000

.field private static final SHADOW_ELEVATION:I = 0x4

.field private static final SHADOW_RADIUS:F = 3.5f

.field private static final STROKE_WIDTH_LARGE:I = 0x3

.field private static final X_OFFSET:F = 0.0f

.field private static final Y_OFFSET:F = 1.75f


# instance fields
.field private isLayoutFinished:Z

.field private mArrowHeight:I

.field private mArrowWidth:I

.field private mBackGroundColor:I

.field private mBgCircle:Landroid/graphics/drawable/ShapeDrawable;

.field private mCircleBackgroundEnabled:Z

.field private mColors:[I

.field private mDiameter:I

.field private mHandler:Landroid/os/Handler;

.field private mInnerRadius:I

.field private mListener:Landroid/view/animation/Animation$AnimationListener;

.field private mMax:I

.field private mProgress:I

.field private mProgressColor:I

.field public mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

.field private mProgressStokeWidth:I

.field private mShadowRadius:I

.field private mShowArrow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/high16 v1, -0x1000000

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 70
    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mColors:[I

    .line 180
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->isLayoutFinished:Z

    .line 318
    new-instance v0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1;-><init>(Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0, v2}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/high16 v1, -0x1000000

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 70
    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mColors:[I

    .line 180
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->isLayoutFinished:Z

    .line 318
    new-instance v0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1;-><init>(Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mHandler:Landroid/os/Handler;

    .line 80
    invoke-direct {p0, p1, p2, v2}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/high16 v1, -0x1000000

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 70
    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mColors:[I

    .line 180
    iput-boolean v2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->isLayoutFinished:Z

    .line 318
    new-instance v0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1;-><init>(Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mHandler:Landroid/os/Handler;

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;)Z
    .registers 1

    .line 41
    iget-boolean p0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->isLayoutFinished:Z

    return p0
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;)Landroid/os/Handler;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private elevationSupported()Z
    .registers 3

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 91
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const p2, -0x50506

    .line 92
    iput p2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mBackGroundColor:I

    const/high16 p2, -0x100000

    .line 93
    iput p2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressColor:I

    const/4 p3, 0x1

    new-array v0, p3, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 94
    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mColors:[I

    const/4 p2, -0x1

    .line 95
    iput p2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mInnerRadius:I

    const/high16 v0, 0x40400000    # 3.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 96
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressStokeWidth:I

    .line 97
    iput p2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mArrowWidth:I

    .line 98
    iput p2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mArrowHeight:I

    .line 99
    iput-boolean p3, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mShowArrow:Z

    .line 100
    iput-boolean p3, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mCircleBackgroundEnabled:Z

    .line 101
    iput v1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgress:I

    const/16 p1, 0x64

    .line 102
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mMax:I

    .line 103
    new-instance p1, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    .line 104
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public circleBackgroundEnabled()Z
    .registers 2

    .line 260
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mCircleBackgroundEnabled:Z

    return v0
.end method

.method public destory()V
    .registers 2

    .line 355
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->stop()V

    const/4 v0, 0x0

    .line 356
    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    return-void
.end method

.method public getMax()I
    .registers 2

    .line 241
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mMax:I

    return v0
.end method

.method public getProgress()I
    .registers 2

    .line 249
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgress:I

    return v0
.end method

.method public getProgressStokeWidth()I
    .registers 2

    .line 125
    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressStokeWidth:I

    return v0
.end method

.method public isShowArrow()Z
    .registers 2

    .line 183
    iget-boolean v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mShowArrow:Z

    return v0
.end method

.method public onAnimationEnd()V
    .registers 3

    .line 204
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationEnd()V

    .line 205
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_e

    .line 206
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_e
    return-void
.end method

.method public onAnimationStart()V
    .registers 3

    .line 196
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationStart()V

    .line 197
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_e

    .line 198
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    :cond_e
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .line 269
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 270
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    if-eqz v0, :cond_19

    .line 271
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->stop()V

    .line 272
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->setVisible(ZZ)Z

    :cond_19
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 278
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 279
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    if-eqz v0, :cond_10

    .line 280
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->stop()V

    .line 281
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->setVisible(ZZ)Z

    :cond_10
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 9

    .line 135
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 136
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 137
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getMeasuredHeight()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mDiameter:I

    if-gtz p2, :cond_26

    float-to-int p2, p1

    mul-int/lit8 p2, p2, 0x28

    .line 139
    iput p2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mDiameter:I

    .line 141
    :cond_26
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-nez p2, :cond_9a

    iget-boolean p2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mCircleBackgroundEnabled:Z

    if-eqz p2, :cond_9a

    const/high16 p2, 0x3fe00000    # 1.75f

    mul-float p2, p2, p1

    float-to-int p2, p2

    mul-float p5, p1, p3

    float-to-int p5, p5

    const/high16 v0, 0x40600000    # 3.5f

    mul-float v0, v0, p1

    float-to-int v0, v0

    .line 144
    iput v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mShadowRadius:I

    .line 146
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->elevationSupported()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 147
    new-instance p2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance p5, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {p5}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {p2, p5}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object p2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mBgCircle:Landroid/graphics/drawable/ShapeDrawable;

    const/high16 p2, 0x40800000    # 4.0f

    mul-float p1, p1, p2

    .line 148
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    goto :goto_8a

    .line 150
    :cond_5b
    new-instance p1, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;

    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mShadowRadius:I

    iget v1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mDiameter:I

    mul-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    invoke-direct {p1, p0, v0, v1}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;-><init>(Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;II)V

    .line 151
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mBgCircle:Landroid/graphics/drawable/ShapeDrawable;

    .line 152
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-static {p0, p4, p1}, Landroidx/core/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 153
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mBgCircle:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mShadowRadius:I

    int-to-float v0, v0

    int-to-float p5, p5

    int-to-float p2, p2

    const/high16 v1, 0x1e000000

    invoke-virtual {p1, v0, p5, p2, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 155
    iget p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mShadowRadius:I

    .line 157
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->setPadding(IIII)V

    .line 159
    :goto_8a
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mBgCircle:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget p2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mBackGroundColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mBgCircle:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    :cond_9a
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    if-nez p1, :cond_9f

    return-void

    .line 165
    :cond_9f
    iget p2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mBackGroundColor:I

    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->setBackgroundColor(I)V

    .line 166
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    iget-object p2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mColors:[I

    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->setColorSchemeColors([I)V

    .line 167
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->isShowArrow()Z

    move-result p1

    if-eqz p1, :cond_bd

    .line 168
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->setArrowScale(F)V

    .line 169
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    invoke-virtual {p1, p4}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->showArrow(Z)V

    :cond_bd
    const/4 p1, 0x0

    .line 171
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->setAlpha(I)V

    .line 174
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_db

    .line 175
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    const p2, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, p3, p2}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 177
    :cond_db
    iput-boolean p4, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->isLayoutFinished:Z

    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    .line 117
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 118
    invoke-direct {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->elevationSupported()Z

    move-result p1

    if-nez p1, :cond_1e

    .line 119
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mShadowRadius:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getMeasuredHeight()I

    move-result p2

    iget v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mShadowRadius:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->setMeasuredDimension(II)V

    :cond_1e
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 2

    .line 191
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3

    .line 235
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_15

    .line 236
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_15
    return-void
.end method

.method public setBackgroundColorResource(I)V
    .registers 4

    .line 228
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_1d

    .line 229
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 230
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1d
    return-void
.end method

.method public setCircleBackgroundEnabled(Z)V
    .registers 2

    .line 264
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mCircleBackgroundEnabled:Z

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .registers 3

    .line 218
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mColors:[I

    .line 219
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    if-eqz v0, :cond_9

    .line 220
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->setColorSchemeColors([I)V

    :cond_9
    return-void
.end method

.method public setMax(I)V
    .registers 2

    .line 245
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mMax:I

    return-void
.end method

.method public setProgress(I)V
    .registers 3

    .line 253
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getMax()I

    move-result v0

    if-lez v0, :cond_8

    .line 254
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgress:I

    .line 256
    :cond_8
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->invalidate()V

    return-void
.end method

.method public setProgressBackGroundColor(I)V
    .registers 2

    .line 108
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mBackGroundColor:I

    return-void
.end method

.method public setProgressRotation(F)V
    .registers 3

    .line 350
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    if-eqz v0, :cond_7

    .line 351
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->setProgressRotation(F)V

    :cond_7
    return-void
.end method

.method public setProgressStokeWidth(I)V
    .registers 3

    .line 129
    invoke-virtual {p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 130
    iput p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressStokeWidth:I

    return-void
.end method

.method public setShowArrow(Z)V
    .registers 2

    .line 187
    iput-boolean p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mShowArrow:Z

    return-void
.end method

.method public setStartEndTrim(FF)V
    .registers 4

    .line 339
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    if-eqz v0, :cond_7

    .line 340
    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->setStartEndTrim(FF)V

    :cond_7
    return-void
.end method

.method public start()V
    .registers 3

    .line 315
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x271a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stop()V
    .registers 3

    .line 344
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    if-eqz v0, :cond_7

    .line 345
    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->stop()V

    .line 346
    :cond_7
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x271a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

###### Class com.taobao.weex.ui.view.refresh.circlebar.CircleProgressBar.AnonymousClass1 (com.taobao.weex.ui.view.refresh.circlebar.CircleProgressBar$1)
.class Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1;
.super Landroid/os/Handler;
.source "CircleProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;)V
    .registers 2

    .line 319
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1;->this$0:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 322
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 323
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x271a

    if-ne p1, v0, :cond_29

    .line 324
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1;->this$0:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->access$000(Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;)Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1;->this$0:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    iget-object p1, p1, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    if-eqz p1, :cond_1f

    .line 325
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1;->this$0:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    iget-object p1, p1, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->start()V

    goto :goto_29

    .line 327
    :cond_1f
    new-instance p1, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1$1;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1$1;-><init>(Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_29
    :goto_29
    return-void
.end method

###### Class com.taobao.weex.ui.view.refresh.circlebar.CircleProgressBar.AnonymousClass1.RunnableC00191 (com.taobao.weex.ui.view.refresh.circlebar.CircleProgressBar$1$1)
.class Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1$1;
.super Ljava/lang/Object;
.source "CircleProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1;)V
    .registers 2

    .line 327
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1$1;->this$1:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 330
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1$1;->this$1:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1;

    iget-object v0, v0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1;->this$0:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    invoke-static {v0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->access$100(Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x271a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

###### Class com.taobao.weex.ui.view.refresh.circlebar.CircleProgressBar.OvalShadow (com.taobao.weex.ui.view.refresh.circlebar.CircleProgressBar$OvalShadow)
.class Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;
.super Landroid/graphics/drawable/shapes/OvalShape;
.source "CircleProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OvalShadow"
.end annotation


# instance fields
.field private mCircleDiameter:I

.field private mRadialGradient:Landroid/graphics/RadialGradient;

.field private mShadowPaint:Landroid/graphics/Paint;

.field private mShadowRadius:I

.field final synthetic this$0:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;II)V
    .registers 11

    .line 292
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;->this$0:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    .line 293
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 294
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    .line 295
    iput p2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;->mShadowRadius:I

    .line 296
    iput p3, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;->mCircleDiameter:I

    .line 297
    new-instance p1, Landroid/graphics/RadialGradient;

    iget p2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;->mCircleDiameter:I

    div-int/lit8 p3, p2, 0x2

    int-to-float v1, p3

    const/4 p3, 0x2

    div-int/2addr p2, p3

    int-to-float v2, p2

    iget p2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;->mShadowRadius:I

    int-to-float v3, p2

    new-array v4, p3, [I

    fill-array-data v4, :array_32

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;->mRadialGradient:Landroid/graphics/RadialGradient;

    .line 301
    iget-object p2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    nop

    :array_32
    .array-data 4
        0x3d000000    # 0.03125f
        0x0
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 7

    .line 306
    iget-object v0, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;->this$0:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getWidth()I

    move-result v0

    .line 307
    iget-object v1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;->this$0:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->getHeight()I

    move-result v1

    .line 308
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;->mCircleDiameter:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;->mShadowRadius:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 310
    iget v2, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$OvalShadow;->mCircleDiameter:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method
