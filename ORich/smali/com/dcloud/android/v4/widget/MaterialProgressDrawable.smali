###### Class com.dcloud.android.v4.widget.MaterialProgressDrawable (com.dcloud.android.v4.widget.MaterialProgressDrawable)
.class public Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;,
        Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$ProgressDrawableSize;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x534

.field private static final ARROW_HEIGHT:I = 0x5

.field private static final ARROW_HEIGHT_LARGE:I = 0x6

.field private static final ARROW_OFFSET_ANGLE:F = 5.0f

.field private static final ARROW_WIDTH:I = 0xa

.field private static final ARROW_WIDTH_LARGE:I = 0xc

.field private static final CENTER_RADIUS:F = 8.75f

.field private static final CENTER_RADIUS_LARGE:F = 12.5f

.field private static final CIRCLE_DIAMETER:I = 0x28

.field private static final CIRCLE_DIAMETER_LARGE:I = 0x38

.field private static final COLOR_START_DELAY_OFFSET:F = 0.75f

.field public static final DEFAULT:I = 0x1

.field private static final END_TRIM_START_DELAY_OFFSET:F = 0.5f

.field private static final FULL_ROTATION:F = 1080.0f

.field public static final LARGE:I = 0x0

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MAX_PROGRESS_ARC:F = 0.8f

.field private static final NUM_POINTS:F = 5.0f

.field private static final START_TRIM_DURATION_OFFSET:F = 0.5f

.field private static final STROKE_WIDTH:F = 2.5f

.field private static final STROKE_WIDTH_LARGE:F = 3.0f


# instance fields
.field private final COLORS:[I

.field private mAnimation:Landroid/view/animation/Animation;

.field private final mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field mFinishing:Z

.field private mHeight:D

.field private mParent:Landroid/view/View;

.field private mResources:Landroid/content/res/Resources;

.field private final mRing:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

.field private mRotation:F

.field private mRotationCount:F

.field private mWidth:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 2
    new-instance v0, Lcom/dcloud/android/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/high16 v3, -0x1000000

    aput v3, v1, v2

    .line 2
    iput-object v1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->COLORS:[I

    .line 20
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mAnimators:Ljava/util/ArrayList;

    .line 377
    new-instance v2, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$3;

    invoke-direct {v2, p0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$3;-><init>(Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;)V

    iput-object v2, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 378
    iput-object p2, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mParent:Landroid/view/View;

    .line 379
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    .line 381
    new-instance p1, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    invoke-direct {p1, v2}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mRing:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    .line 382
    invoke-virtual {p1, v1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->setColors([I)V

    .line 384
    invoke-virtual {p0, v0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->updateSizes(I)V

    .line 385
    invoke-direct {p0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->setupAnimators()V

    return-void
.end method

.method static synthetic access$000(Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;FLcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->applyFinishTranslation(FLcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;)V

    return-void
.end method

.method static synthetic access$100(Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;)F
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->getMinProgressArc(Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;)F

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;FLcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->updateRingColor(FLcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;)V

    return-void
.end method

.method static synthetic access$300()Landroid/view/animation/Interpolator;
    .registers 1

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;)F
    .registers 1

    .line 1
    iget p0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mRotationCount:F

    return p0
.end method

.method static synthetic access$402(Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;F)F
    .registers 2

    .line 1
    iput p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mRotationCount:F

    return p1
.end method

.method private applyFinishTranslation(FLcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->updateRingColor(FLcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;)V

    .line 2
    invoke-virtual {p2}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 4
    invoke-direct {p0, p2}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->getMinProgressArc(Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;)F

    move-result v1

    .line 5
    invoke-virtual {p2}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v2

    .line 6
    invoke-virtual {p2}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v3

    sub-float/2addr v3, v1

    invoke-virtual {p2}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v1

    sub-float/2addr v3, v1

    mul-float v3, v3, p1

    add-float/2addr v2, v3

    .line 8
    invoke-virtual {p2, v2}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 9
    invoke-virtual {p2}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v1

    invoke-virtual {p2, v1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 10
    invoke-virtual {p2}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v1

    .line 11
    invoke-virtual {p2}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v2

    sub-float/2addr v0, v2

    mul-float v0, v0, p1

    add-float/2addr v1, v0

    .line 12
    invoke-virtual {p2, v1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->setRotation(F)V

    return-void
.end method

.method private evaluateColorChange(FII)I
    .registers 10

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p2, p2, 0xff

    .line 7
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    shr-int/lit8 v3, p3, 0x18

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, p3, 0x10

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, p3, 0x8

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 p3, p3, 0xff

    sub-int/2addr v3, v0

    int-to-float v3, v3

    mul-float v3, v3, p1

    float-to-int v3, v3

    add-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x18

    sub-int/2addr v4, v1

    int-to-float v3, v4

    mul-float v3, v3, p1

    float-to-int v3, v3

    add-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sub-int/2addr v5, v2

    int-to-float v1, v5

    mul-float v1, v1, p1

    float-to-int v1, v1

    add-int/2addr v2, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    sub-int/2addr p3, p2

    int-to-float p3, p3

    mul-float p1, p1, p3

    float-to-int p1, p1

    add-int/2addr p2, p1

    or-int p1, v0, p2

    return p1
.end method

.method private getMinProgressArc(Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;)F
    .registers 8

    .line 1
    invoke-virtual {p1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->getStrokeWidth()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->getCenterRadius()D

    move-result-wide v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v2, v2, v4

    div-double/2addr v0, v2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private getRotation()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mRotation:F

    return v0
.end method

.method private setSizeParameters(DDDDFF)V
    .registers 15

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mRing:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    .line 2
    iget-object v1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 3
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v1

    mul-double p1, p1, v2

    .line 5
    iput-wide p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mWidth:D

    mul-double p3, p3, v2

    .line 6
    iput-wide p3, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mHeight:D

    double-to-float p1, p7

    mul-float p1, p1, v1

    .line 7
    invoke-virtual {v0, p1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->setStrokeWidth(F)V

    mul-double p5, p5, v2

    .line 8
    invoke-virtual {v0, p5, p6}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->setCenterRadius(D)V

    const/4 p1, 0x0

    .line 9
    invoke-virtual {v0, p1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    mul-float p9, p9, v1

    mul-float p10, p10, v1

    .line 10
    invoke-virtual {v0, p9, p10}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->setArrowDimensions(FF)V

    .line 11
    iget-wide p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mWidth:D

    double-to-int p1, p1

    iget-wide p2, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mHeight:D

    double-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->setInsets(II)V

    return-void
.end method

.method private setupAnimators()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mRing:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    .line 2
    new-instance v1, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$1;

    invoke-direct {v1, p0, v0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$1;-><init>(Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;)V

    const/4 v2, -0x1

    .line 54
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v2, 0x1

    .line 55
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 56
    sget-object v2, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 57
    new-instance v2, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$2;

    invoke-direct {v2, p0, v0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$2;-><init>(Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 85
    iput-object v1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method private updateRingColor(FLcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;)V
    .registers 5

    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_19

    sub-float/2addr p1, v0

    const/high16 v0, 0x3e800000    # 0.25f

    div-float/2addr p1, v0

    .line 1
    invoke-virtual {p2}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->getStartingColor()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->getNextColor()I

    move-result v1

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->evaluateColorChange(FII)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->setColor(I)V

    :cond_19
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 3
    iget v2, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mRotation:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 4
    iget-object v2, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mRing:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v2, p1, v0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 5
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getAlpha()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mRing:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mHeight:D

    double-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mWidth:D

    double-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mAnimators:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_21

    .line 4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    .line 5
    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v4

    if-nez v4, :cond_1e

    const/4 v0, 0x1

    return v0

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_21
    return v2
.end method

.method public setAlpha(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mRing:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->setAlpha(I)V

    return-void
.end method

.method public setArrowScale(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mRing:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->setArrowScale(F)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mRing:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->setBackgroundColor(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mRing:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mRing:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->setColors([I)V

    .line 2
    iget-object p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mRing:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    return-void
.end method

.method public setProgressRotation(F)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mRing:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->setRotation(F)V

    return-void
.end method

.method setRotation(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mRotation:F

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setStartEndTrim(FF)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mRing:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 2
    iget-object p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mRing:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {p1, p2}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    return-void
.end method

.method public showArrow(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mRing:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    return-void
.end method

.method public start()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 2
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mRing:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->storeOriginals()V

    .line 4
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mRing:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->getEndTrim()F

    move-result v0

    iget-object v1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mRing:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->getStartTrim()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mFinishing:Z

    .line 6
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x29a

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 7
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_45

    .line 9
    :cond_2c
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mRing:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 10
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mRing:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->resetOriginals()V

    .line 11
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x534

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 12
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_45
    return-void
.end method

.method public stop()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->setRotation(F)V

    .line 3
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mRing:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 4
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mRing:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 5
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mRing:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->resetOriginals()V

    return-void
.end method

.method public updateSizes(I)V
    .registers 24

    if-nez p1, :cond_14

    const-wide/high16 v1, 0x404c000000000000L    # 56.0

    const-wide/high16 v3, 0x404c000000000000L    # 56.0

    const-wide/high16 v5, 0x4029000000000000L    # 12.5

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v10, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    goto :goto_28

    :cond_14
    const-wide/high16 v12, 0x4044000000000000L    # 40.0

    const-wide/high16 v14, 0x4044000000000000L    # 40.0

    const-wide v16, 0x4021800000000000L    # 8.75

    const-wide/high16 v18, 0x4004000000000000L    # 2.5

    const/high16 v20, 0x41200000    # 10.0f

    const/high16 v21, 0x40a00000    # 5.0f

    move-object/from16 v11, p0

    .line 4
    invoke-direct/range {v11 .. v21}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    :goto_28
    return-void
.end method

###### Class com.dcloud.android.v4.widget.MaterialProgressDrawable.AnonymousClass1 (com.dcloud.android.v4.widget.MaterialProgressDrawable$1)
.class Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$1;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

.field final synthetic val$ring:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;


# direct methods
.method constructor <init>(Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$1;->this$0:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    iput-object p2, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$1;->val$ring:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 11

    .line 1
    iget-object p2, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$1;->this$0:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    iget-boolean v0, p2, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mFinishing:Z

    if-eqz v0, :cond_c

    .line 2
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$1;->val$ring:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    invoke-static {p2, p1, v0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->access$000(Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;FLcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;)V

    goto :goto_81

    .line 6
    :cond_c
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$1;->val$ring:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    invoke-static {p2, v0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->access$100(Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;)F

    move-result p2

    .line 7
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$1;->val$ring:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$1;->val$ring:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v1

    .line 9
    iget-object v2, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$1;->val$ring:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v2}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v2

    .line 11
    iget-object v3, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$1;->this$0:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    iget-object v4, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$1;->val$ring:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    invoke-static {v3, p1, v4}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->access$200(Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;FLcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;)V

    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v5, p1, v4

    if-gtz v5, :cond_48

    div-float v5, p1, v4

    sub-float v6, v3, p2

    .line 22
    invoke-static {}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->access$300()Landroid/view/animation/Interpolator;

    move-result-object v7

    .line 23
    invoke-interface {v7, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    mul-float v6, v6, v5

    add-float/2addr v1, v6

    .line 24
    iget-object v5, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$1;->val$ring:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v5, v1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    :cond_48
    cmpl-float v1, p1, v4

    if-lez v1, :cond_60

    sub-float/2addr v3, p2

    sub-float p2, p1, v4

    div-float/2addr p2, v4

    .line 37
    invoke-static {}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->access$300()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    mul-float v3, v3, p2

    add-float/2addr v0, v3

    .line 38
    iget-object p2, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$1;->val$ring:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {p2, v0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    :cond_60
    const/high16 p2, 0x3e800000    # 0.25f

    mul-float p2, p2, p1

    add-float/2addr v2, p2

    .line 42
    iget-object p2, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$1;->val$ring:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {p2, v2}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->setRotation(F)V

    const/high16 p2, 0x43580000    # 216.0f

    mul-float p1, p1, p2

    .line 44
    iget-object p2, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$1;->this$0:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    .line 45
    invoke-static {p2}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->access$400(Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;)F

    move-result p2

    const/high16 v0, 0x40a00000    # 5.0f

    div-float/2addr p2, v0

    const/high16 v0, 0x44870000    # 1080.0f

    mul-float p2, p2, v0

    add-float/2addr p1, p2

    .line 46
    iget-object p2, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$1;->this$0:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    invoke-virtual {p2, p1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->setRotation(F)V

    :goto_81
    return-void
.end method

###### Class com.dcloud.android.v4.widget.MaterialProgressDrawable.AnonymousClass2 (com.dcloud.android.v4.widget.MaterialProgressDrawable$2)
.class Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

.field final synthetic val$ring:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;


# direct methods
.method constructor <init>(Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$2;->this$0:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    iput-object p2, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$2;->val$ring:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$2;->val$ring:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->storeOriginals()V

    .line 2
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$2;->val$ring:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->goToNextColor()V

    .line 3
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$2;->val$ring:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->getEndTrim()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 4
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$2;->this$0:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    iget-boolean v1, v0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mFinishing:Z

    if-eqz v1, :cond_27

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->mFinishing:Z

    const-wide/16 v2, 0x534

    .line 8
    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 9
    iget-object p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$2;->val$ring:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {p1, v1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    goto :goto_34

    .line 11
    :cond_27
    invoke-static {v0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->access$400(Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p1, v1

    const/high16 v1, 0x40a00000    # 5.0f

    rem-float/2addr p1, v1

    invoke-static {v0, p1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->access$402(Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;F)F

    :goto_34
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$2;->this$0:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;->access$402(Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;F)F

    return-void
.end method

###### Class com.dcloud.android.v4.widget.MaterialProgressDrawable.AnonymousClass3 (com.dcloud.android.v4.widget.MaterialProgressDrawable$3)
.class Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;


# direct methods
.method constructor <init>(Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$3;->this$0:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$3;->this$0:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$3;->this$0:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$3;->this$0:Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.dcloud.android.v4.widget.MaterialProgressDrawable.ProgressDrawableSize (com.dcloud.android.v4.widget.MaterialProgressDrawable$ProgressDrawableSize)
.class public interface abstract annotation Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$ProgressDrawableSize;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ProgressDrawableSize"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.dcloud.android.v4.widget.MaterialProgressDrawable.Ring (com.dcloud.android.v4.widget.MaterialProgressDrawable$Ring)
.class Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/widget/MaterialProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Ring"
.end annotation


# instance fields
.field private mAlpha:I

.field private mArrow:Landroid/graphics/Path;

.field private mArrowHeight:I

.field private final mArrowPaint:Landroid/graphics/Paint;

.field private mArrowScale:F

.field private mArrowWidth:I

.field private mBackgroundColor:I

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private final mCirclePaint:Landroid/graphics/Paint;

.field private mColorIndex:I

.field private mColors:[I

.field private mCurrentColor:I

.field private mEndTrim:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mRingCenterRadius:D

.field private mRotation:F

.field private mShowArrow:Z

.field private mStartTrim:F

.field private mStartingEndTrim:F

.field private mStartingRotation:F

.field private mStartingStartTrim:F

.field private mStrokeInset:F

.field private mStrokeWidth:F

.field private final mTempBounds:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    .line 4
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    .line 8
    iput v2, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mStartTrim:F

    .line 9
    iput v2, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mEndTrim:F

    .line 10
    iput v2, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mRotation:F

    const/high16 v2, 0x40a00000    # 5.0f

    .line 11
    iput v2, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    const/high16 v2, 0x40200000    # 2.5f

    .line 12
    iput v2, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mStrokeInset:F

    .line 29
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    .line 34
    iput-object p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 36
    sget-object p1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 37
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private drawTriangle(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V
    .registers 12

    .line 1
    iget-boolean v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mShowArrow:Z

    if-eqz v0, :cond_90

    .line 2
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    if-nez v0, :cond_15

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    .line 4
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_18

    .line 6
    :cond_15
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 11
    :goto_18
    iget v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mStrokeInset:F

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float v0, v0, v1

    .line 12
    iget-wide v1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v1, v1, v5

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v5

    float-to-double v5, v5

    add-double/2addr v1, v5

    double-to-float v1, v1

    .line 13
    iget-wide v5, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v5, v5, v2

    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    float-to-double v2, v2

    add-double/2addr v5, v2

    double-to-float v2, v5

    .line 19
    iget-object v3, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 20
    iget-object v3, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v5, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float v5, v5, v6

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 21
    iget-object v3, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v4, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float v4, v4, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    iget v6, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mArrowHeight:I

    int-to-float v6, v6

    mul-float v6, v6, v5

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 23
    iget-object v3, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    sub-float/2addr v1, v0

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 24
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 26
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mCurrentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-float/2addr p2, p3

    const/high16 p3, 0x40a00000    # 5.0f

    sub-float/2addr p2, p3

    .line 27
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result p3

    .line 28
    invoke-virtual {p4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p4

    .line 29
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 31
    iget-object p2, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_90
    return-void
.end method

.method private getNextColorIndex()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mColorIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mColors:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    return v0
.end method

.method private invalidateSelf()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 11

    .line 1
    iget-object v1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    .line 2
    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 3
    iget v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mStrokeInset:F

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 5
    iget v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mStartTrim:F

    iget v2, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mRotation:F

    add-float/2addr v0, v2

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float v6, v0, v3

    .line 6
    iget v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mEndTrim:F

    add-float/2addr v0, v2

    mul-float v0, v0, v3

    sub-float v7, v0, v6

    .line 9
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mCurrentColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget-object v5, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v0, p1

    move v2, v6

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 12
    invoke-direct {p0, p1, v6, v7, p2}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->drawTriangle(Landroid/graphics/Canvas;FFLandroid/graphics/Rect;)V

    .line 14
    iget v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mAlpha:I

    const/16 v1, 0xff

    if-ge v0, v1, :cond_56

    .line 15
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mBackgroundColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mAlpha:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 17
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    iget-object v2, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_56
    return-void
.end method

.method public getAlpha()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mAlpha:I

    return v0
.end method

.method public getCenterRadius()D
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    return-wide v0
.end method

.method public getEndTrim()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mEndTrim:F

    return v0
.end method

.method public getInsets()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mStrokeInset:F

    return v0
.end method

.method public getNextColor()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mColors:[I

    invoke-direct {p0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->getNextColorIndex()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getRotation()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mRotation:F

    return v0
.end method

.method public getStartTrim()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mStartTrim:F

    return v0
.end method

.method public getStartingColor()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mColors:[I

    iget v1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mColorIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public getStartingEndTrim()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    return v0
.end method

.method public getStartingRotation()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mStartingRotation:F

    return v0
.end method

.method public getStartingStartTrim()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    return v0
.end method

.method public getStrokeWidth()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    return v0
.end method

.method public goToNextColor()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->getNextColorIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    return-void
.end method

.method public resetOriginals()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    .line 2
    iput v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    .line 3
    iput v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mStartingRotation:F

    .line 4
    invoke-virtual {p0, v0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->setRotation(F)V

    return-void
.end method

.method public setAlpha(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mAlpha:I

    return-void
.end method

.method public setArrowDimensions(FF)V
    .registers 3

    float-to-int p1, p1

    .line 1
    iput p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mArrowWidth:I

    float-to-int p1, p2

    .line 2
    iput p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mArrowHeight:I

    return-void
.end method

.method public setArrowScale(F)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    .line 2
    iput p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mArrowScale:F

    .line 3
    invoke-direct {p0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    :cond_b
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mBackgroundColor:I

    return-void
.end method

.method public setCenterRadius(D)V
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    return-void
.end method

.method public setColor(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mCurrentColor:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2
    invoke-direct {p0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    return-void
.end method

.method public setColorIndex(I)V
    .registers 3

    .line 1
    iput p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mColorIndex:I

    .line 2
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mColors:[I

    aget p1, v0, p1

    iput p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mCurrentColor:I

    return-void
.end method

.method public setColors([I)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mColors:[I

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    return-void
.end method

.method public setEndTrim(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mEndTrim:F

    .line 2
    invoke-direct {p0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    return-void
.end method

.method public setInsets(II)V
    .registers 8

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    .line 3
    iget-wide v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    const/high16 p2, 0x40000000    # 2.0f

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-lez v4, :cond_19

    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_15

    goto :goto_19

    :cond_15
    div-float/2addr p1, p2

    float-to-double p1, p1

    sub-double/2addr p1, v0

    goto :goto_21

    .line 4
    :cond_19
    :goto_19
    iget p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    :goto_21
    double-to-float p1, p1

    .line 8
    iput p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mStrokeInset:F

    return-void
.end method

.method public setRotation(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mRotation:F

    .line 2
    invoke-direct {p0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    return-void
.end method

.method public setShowArrow(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mShowArrow:Z

    if-eq v0, p1, :cond_9

    .line 2
    iput-boolean p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mShowArrow:Z

    .line 3
    invoke-direct {p0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    :cond_9
    return-void
.end method

.method public setStartTrim(F)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mStartTrim:F

    .line 2
    invoke-direct {p0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .registers 3

    .line 1
    iput p1, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    .line 2
    iget-object v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3
    invoke-direct {p0}, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->invalidateSelf()V

    return-void
.end method

.method public storeOriginals()V
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mStartTrim:F

    iput v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    .line 2
    iget v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mEndTrim:F

    iput v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    .line 3
    iget v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mRotation:F

    iput v0, p0, Lcom/dcloud/android/v4/widget/MaterialProgressDrawable$Ring;->mStartingRotation:F

    return-void
.end method
