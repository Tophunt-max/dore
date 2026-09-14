###### Class com.dcloud.android.widget.photoview.PhotoViewAttacher (com.dcloud.android.widget.photoview.PhotoViewAttacher)
.class public Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/dcloud/android/widget/photoview/OnGestureListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$FlingRunnable;,
        Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$AnimatedZoomRunnable;
    }
.end annotation


# static fields
.field private static DEFAULT_MAX_SCALE:F = 3.0f

.field private static DEFAULT_MID_SCALE:F = 1.75f

.field private static DEFAULT_MIN_SCALE:F = 1.0f

.field private static DEFAULT_ZOOM_DURATION:I = 0xc8

.field private static final EDGE_BOTH:I = 0x2

.field private static final EDGE_LEFT:I = 0x0

.field private static final EDGE_NONE:I = -0x1

.field private static final EDGE_RIGHT:I = 0x1

.field private static SINGLE_TOUCH:I = 0x1


# instance fields
.field private mAllowParentInterceptOnEdge:Z

.field private final mBaseMatrix:Landroid/graphics/Matrix;

.field private mBaseRotation:F

.field private mBlockParentIntercept:Z

.field private mCurrentFlingRunnable:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$FlingRunnable;

.field private final mDisplayRect:Landroid/graphics/RectF;

.field private final mDrawMatrix:Landroid/graphics/Matrix;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImageView:Landroid/widget/ImageView;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMatrixChangeListener:Lcom/dcloud/android/widget/photoview/OnMatrixChangedListener;

.field private final mMatrixValues:[F

.field private mMaxScale:F

.field private mMidScale:F

.field private mMinScale:F

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOutsidePhotoTapListener:Lcom/dcloud/android/widget/photoview/OnOutsidePhotoTapListener;

.field private mPhotoTapListener:Lcom/dcloud/android/widget/photoview/OnPhotoTapListener;

.field private mScaleChangeListener:Lcom/dcloud/android/widget/photoview/OnScaleChangedListener;

.field private mScaleDragDetector:Lcom/dcloud/android/widget/photoview/CustomGestureDetector;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mScrollEdge:I

.field private mSingleFlingListener:Lcom/dcloud/android/widget/photoview/OnSingleFlingListener;

.field private final mSuppMatrix:Landroid/graphics/Matrix;

.field private mZoomDuration:I

.field private mZoomEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 3
    sget v0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->DEFAULT_ZOOM_DURATION:I

    iput v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mZoomDuration:I

    .line 4
    sget v0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->DEFAULT_MIN_SCALE:F

    iput v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mMinScale:F

    .line 5
    sget v0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->DEFAULT_MID_SCALE:F

    iput v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mMidScale:F

    .line 6
    sget v0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->DEFAULT_MAX_SCALE:F

    iput v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mMaxScale:F

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mBlockParentIntercept:Z

    .line 18
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 19
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 20
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 21
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 22
    iput-object v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mMatrixValues:[F

    const/4 v1, 0x2

    .line 34
    iput v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mScrollEdge:I

    .line 37
    iput-boolean v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    .line 38
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 41
    iput-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    .line 42
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 43
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 45
    invoke-virtual {p1}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_5a

    return-void

    :cond_5a
    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mBaseRotation:F

    .line 52
    new-instance v0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;-><init>(Landroid/content/Context;Lcom/dcloud/android/widget/photoview/OnGestureListener;)V

    iput-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/dcloud/android/widget/photoview/CustomGestureDetector;

    .line 54
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$1;

    invoke-direct {v1, p0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$1;-><init>(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    .line 83
    new-instance p1, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;

    invoke-direct {p1, p0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;-><init>(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)V

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method static synthetic access$200(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Lcom/dcloud/android/widget/photoview/OnSingleFlingListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mSingleFlingListener:Lcom/dcloud/android/widget/photoview/OnSingleFlingListener;

    return-object p0
.end method

.method static synthetic access$300()F
    .registers 1

    .line 1
    sget v0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->DEFAULT_MIN_SCALE:F

    return v0
.end method

.method static synthetic access$400()I
    .registers 1

    .line 1
    sget v0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->SINGLE_TOUCH:I

    return v0
.end method

.method static synthetic access$500(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Landroid/view/View$OnClickListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Lcom/dcloud/android/widget/photoview/OnPhotoTapListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mPhotoTapListener:Lcom/dcloud/android/widget/photoview/OnPhotoTapListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Lcom/dcloud/android/widget/photoview/OnOutsidePhotoTapListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mOutsidePhotoTapListener:Lcom/dcloud/android/widget/photoview/OnOutsidePhotoTapListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mZoomDuration:I

    return p0
.end method

.method static synthetic access$900(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Landroid/view/animation/Interpolator;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method private cancelFling()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$FlingRunnable;

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$FlingRunnable;->cancelFling()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$FlingRunnable;

    :cond_a
    return-void
.end method

.method private checkAndDisplayMatrix()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    invoke-direct {p0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    :cond_d
    return-void
.end method

.method private checkMatrixBounds()Z
    .registers 12

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 6
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 9
    iget-object v4, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v4}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    cmpg-float v9, v2, v4

    if-gtz v9, :cond_3e

    .line 11
    sget-object v9, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$3;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v10, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    if-eq v9, v7, :cond_3b

    if-eq v9, v6, :cond_37

    sub-float/2addr v4, v2

    div-float/2addr v4, v5

    .line 19
    iget v2, v0, Landroid/graphics/RectF;->top:F

    goto :goto_4c

    :cond_37
    sub-float/2addr v4, v2

    .line 20
    iget v2, v0, Landroid/graphics/RectF;->top:F

    goto :goto_4c

    .line 21
    :cond_3b
    iget v2, v0, Landroid/graphics/RectF;->top:F

    goto :goto_44

    .line 30
    :cond_3e
    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v9, v2, v8

    if-lez v9, :cond_46

    :goto_44
    neg-float v4, v2

    goto :goto_4f

    .line 32
    :cond_46
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v9, v2, v4

    if-gez v9, :cond_4e

    :goto_4c
    sub-float/2addr v4, v2

    goto :goto_4f

    :cond_4e
    const/4 v4, 0x0

    .line 36
    :goto_4f
    iget-object v2, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v2

    int-to-float v2, v2

    const/4 v9, 0x1

    cmpg-float v10, v3, v2

    if-gtz v10, :cond_7b

    .line 38
    sget-object v1, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$3;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v8, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v8

    aget v1, v1, v8

    if-eq v1, v7, :cond_74

    if-eq v1, v6, :cond_6e

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    .line 46
    iget v0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_71

    :cond_6e
    sub-float/2addr v2, v3

    .line 47
    iget v0, v0, Landroid/graphics/RectF;->left:F

    :goto_71
    sub-float/2addr v2, v0

    move v8, v2

    goto :goto_78

    .line 48
    :cond_74
    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    move v8, v0

    .line 57
    :goto_78
    iput v7, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mScrollEdge:I

    goto :goto_93

    .line 58
    :cond_7b
    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v3, v8

    if-lez v5, :cond_85

    .line 59
    iput v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mScrollEdge:I

    neg-float v8, v3

    goto :goto_93

    .line 61
    :cond_85
    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v0, v2

    if-gez v1, :cond_90

    sub-float v8, v2, v0

    .line 63
    iput v9, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mScrollEdge:I

    goto :goto_93

    :cond_90
    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mScrollEdge:I

    .line 69
    :goto_93
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v8, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return v9
.end method

.method private getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .registers 6

    .line 3
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 5
    iget-object v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 9
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 10
    iget-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    return-object p1

    :cond_20
    const/4 p1, 0x0

    return-object p1
.end method

.method private getDrawMatrix()Landroid/graphics/Matrix;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 2
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 3
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private getImageViewHeight(Landroid/widget/ImageView;)I
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private getImageViewWidth(Landroid/widget/ImageView;)I
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private getValue(Landroid/graphics/Matrix;I)F
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2
    iget-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mMatrixValues:[F

    aget p1, p1, p2

    return p1
.end method

.method private resetMatrix()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2
    iget v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mBaseRotation:F

    invoke-virtual {p0, v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->setRotationBy(F)V

    .line 3
    invoke-direct {p0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 4
    invoke-direct {p0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    return-void
.end method

.method private setImageViewMatrix(Landroid/graphics/Matrix;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 4
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/dcloud/android/widget/photoview/OnMatrixChangedListener;

    if-eqz v0, :cond_14

    .line 5
    invoke-direct {p0, p1}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 7
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/dcloud/android/widget/photoview/OnMatrixChangedListener;

    invoke-interface {v0, p1}, Lcom/dcloud/android/widget/photoview/OnMatrixChangedListener;->onMatrixChanged(Landroid/graphics/RectF;)V

    :cond_14
    return-void
.end method

.method private updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v0

    int-to-float v0, v0

    .line 2
    iget-object v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v1

    int-to-float v1, v1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 6
    iget-object v3, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    int-to-float v2, v2

    div-float v3, v0, v2

    int-to-float p1, p1

    div-float v4, v1, p1

    .line 11
    iget-object v5, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_37

    .line 12
    iget-object v3, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_c1

    .line 15
    :cond_37
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_53

    .line 16
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 17
    iget-object v4, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 18
    iget-object v4, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float p1, p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_c1

    .line 21
    :cond_53
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_74

    .line 22
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 23
    iget-object v4, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 24
    iget-object v4, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float p1, p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_c1

    .line 28
    :cond_74
    new-instance v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 29
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 31
    iget v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mBaseRotation:F

    float-to-int v0, v0

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_8b

    .line 32
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v4, v4, p1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 35
    :cond_8b
    sget-object p1, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$3;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_ba

    const/4 v0, 0x2

    if-eq p1, v0, :cond_b2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_aa

    const/4 v0, 0x4

    if-eq p1, v0, :cond_a2

    goto :goto_c1

    .line 49
    :cond_a2
    iget-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_c1

    .line 50
    :cond_aa
    iget-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_c1

    .line 51
    :cond_b2
    iget-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_c1

    .line 52
    :cond_ba
    iget-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v5, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 72
    :goto_c1
    invoke-direct {p0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->resetMatrix()V

    return-void
.end method


# virtual methods
.method public getDisplayMatrix(Landroid/graphics/Matrix;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 2
    invoke-direct {p0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getMaximumScale()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mMaxScale:F

    return v0
.end method

.method public getMediumScale()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mMidScale:F

    return v0
.end method

.method public getMinimumScale()F
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mMinScale:F

    return v0
.end method

.method public getScale()F
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x3

    invoke-direct {p0, v1, v4}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    move-result v1

    float-to-double v4, v1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getSuppMatrix(Landroid/graphics/Matrix;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public isZoomEnabled()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    return v0
.end method

.method public onDrag(FF)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/dcloud/android/widget/photoview/CustomGestureDetector;

    invoke-virtual {v0}, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->isScaling()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 5
    :cond_9
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 6
    invoke-direct {p0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 17
    iget-object p2, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 18
    iget-boolean v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/dcloud/android/widget/photoview/CustomGestureDetector;

    invoke-virtual {v0}, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->isScaling()Z

    move-result v0

    if-nez v0, :cond_44

    iget-boolean v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mBlockParentIntercept:Z

    if-nez v0, :cond_44

    .line 19
    iget v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mScrollEdge:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3d

    if-nez v0, :cond_35

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-gez v2, :cond_3d

    :cond_35
    if-ne v0, v1, :cond_49

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_49

    :cond_3d
    if-eqz p2, :cond_49

    const/4 p1, 0x0

    .line 23
    invoke-interface {p2, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_49

    :cond_44
    if-eqz p2, :cond_49

    .line 28
    invoke-interface {p2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_49
    :goto_49
    return-void
.end method

.method public onFling(FFFF)V
    .registers 6

    .line 1
    new-instance p1, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$FlingRunnable;

    iget-object p2, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$FlingRunnable;-><init>(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$FlingRunnable;

    .line 2
    iget-object p2, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result p2

    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    .line 3
    invoke-direct {p0, v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v0

    float-to-int p3, p3

    float-to-int p4, p4

    .line 4
    invoke-virtual {p1, p2, v0, p3, p4}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$FlingRunnable;->fling(IIII)V

    .line 6
    iget-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 1
    iget-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onScale(FFF)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mMaxScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_10

    cmpg-float v0, p1, v2

    if-gez v0, :cond_2d

    :cond_10
    invoke-virtual {p0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mMinScale:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1e

    cmpl-float v0, p1, v2

    if-lez v0, :cond_2d

    .line 2
    :cond_1e
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mScaleChangeListener:Lcom/dcloud/android/widget/photoview/OnScaleChangedListener;

    if-eqz v0, :cond_25

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/dcloud/android/widget/photoview/OnScaleChangedListener;->onScaleChange(FFF)V

    .line 5
    :cond_25
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 6
    invoke-direct {p0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    :cond_2d
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13

    .line 1
    iget-boolean v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_95

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/dcloud/android/widget/photoview/Util;->hasDrawable(Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_45

    if-eq v0, v2, :cond_1b

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1b

    goto :goto_51

    .line 20
    :cond_1b
    invoke-virtual {p0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v3, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mMinScale:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_51

    .line 21
    invoke-virtual {p0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 23
    new-instance v9, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getScale()F

    move-result v5

    iget v6, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mMinScale:F

    .line 24
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;FFFF)V

    .line 25
    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    goto :goto_52

    .line 26
    :cond_45
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 30
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 35
    :cond_4e
    invoke-direct {p0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->cancelFling()V

    :cond_51
    :goto_51
    const/4 p1, 0x0

    .line 54
    :goto_52
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/dcloud/android/widget/photoview/CustomGestureDetector;

    if-eqz v0, :cond_89

    .line 55
    invoke-virtual {v0}, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->isScaling()Z

    move-result p1

    .line 56
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/dcloud/android/widget/photoview/CustomGestureDetector;

    invoke-virtual {v0}, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->isDragging()Z

    move-result v0

    .line 58
    iget-object v3, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/dcloud/android/widget/photoview/CustomGestureDetector;

    invoke-virtual {v3, p2}, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez p1, :cond_72

    .line 60
    iget-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/dcloud/android/widget/photoview/CustomGestureDetector;

    invoke-virtual {p1}, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->isScaling()Z

    move-result p1

    if-nez p1, :cond_72

    const/4 p1, 0x1

    goto :goto_73

    :cond_72
    const/4 p1, 0x0

    :goto_73
    if-nez v0, :cond_7f

    .line 61
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/dcloud/android/widget/photoview/CustomGestureDetector;

    invoke-virtual {v0}, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->isDragging()Z

    move-result v0

    if-nez v0, :cond_7f

    const/4 v0, 0x1

    goto :goto_80

    :cond_7f
    const/4 v0, 0x0

    :goto_80
    if-eqz p1, :cond_85

    if-eqz v0, :cond_85

    const/4 v1, 0x1

    .line 63
    :cond_85
    iput-boolean v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mBlockParentIntercept:Z

    move v1, v3

    goto :goto_8a

    :cond_89
    move v1, p1

    .line 67
    :goto_8a
    iget-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz p1, :cond_95

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_95

    const/4 v1, 0x1

    :cond_95
    return v1
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    return-void
.end method

.method public setBaseRotation(F)V
    .registers 3

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    .line 1
    iput p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mBaseRotation:F

    .line 2
    invoke-virtual {p0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->update()V

    .line 3
    iget p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mBaseRotation:F

    invoke-virtual {p0, p1}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->setRotationBy(F)V

    .line 4
    invoke-direct {p0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method public setDisplayMatrix(Landroid/graphics/Matrix;)Z
    .registers 3

    if-eqz p1, :cond_1d

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_c
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 6
    invoke-direct {p0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 7
    invoke-direct {p0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    const/4 p1, 0x1

    return p1

    .line 8
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Matrix cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaximumScale(F)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mMidScale:F

    invoke-static {v0, v1, p1}, Lcom/dcloud/android/widget/photoview/Util;->checkZoomLevels(FFF)V

    .line 2
    iput p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mMaxScale:F

    return-void
.end method

.method public setMediumScale(F)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mMaxScale:F

    invoke-static {v0, p1, v1}, Lcom/dcloud/android/widget/photoview/Util;->checkZoomLevels(FFF)V

    .line 2
    iput p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mMidScale:F

    return-void
.end method

.method public setMinimumScale(F)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mMidScale:F

    iget v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mMaxScale:F

    invoke-static {p1, v0, v1}, Lcom/dcloud/android/widget/photoview/Util;->checkZoomLevels(FFF)V

    .line 2
    iput p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mMinScale:F

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/dcloud/android/widget/photoview/OnMatrixChangedListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/dcloud/android/widget/photoview/OnMatrixChangedListener;

    return-void
.end method

.method public setOnOutsidePhotoTapListener(Lcom/dcloud/android/widget/photoview/OnOutsidePhotoTapListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mOutsidePhotoTapListener:Lcom/dcloud/android/widget/photoview/OnOutsidePhotoTapListener;

    return-void
.end method

.method public setOnPhotoTapListener(Lcom/dcloud/android/widget/photoview/OnPhotoTapListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mPhotoTapListener:Lcom/dcloud/android/widget/photoview/OnPhotoTapListener;

    return-void
.end method

.method public setOnScaleChangeListener(Lcom/dcloud/android/widget/photoview/OnScaleChangedListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mScaleChangeListener:Lcom/dcloud/android/widget/photoview/OnScaleChangedListener;

    return-void
.end method

.method public setOnSingleFlingListener(Lcom/dcloud/android/widget/photoview/OnSingleFlingListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mSingleFlingListener:Lcom/dcloud/android/widget/photoview/OnSingleFlingListener;

    return-void
.end method

.method public setRotationBy(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 2
    invoke-direct {p0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method public setRotationTo(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 2
    invoke-direct {p0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method public setScale(F)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->setScale(FZ)V

    return-void
.end method

.method public setScale(FFFZ)V
    .registers 12

    .line 6
    iget v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mMinScale:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_2b

    iget v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mMaxScale:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_2b

    if-eqz p4, :cond_22

    .line 11
    iget-object p4, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    new-instance v6, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getScale()F

    move-result v2

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;FFFF)V

    invoke-virtual {p4, v6}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2a

    .line 14
    :cond_22
    iget-object p4, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p4, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 15
    invoke-direct {p0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    :goto_2a
    return-void

    .line 16
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Scale must be within the range of minScale and maxScale"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setScale(FZ)V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 5
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    return-void
.end method

.method public setScaleLevels(FFF)V
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Lcom/dcloud/android/widget/photoview/Util;->checkZoomLevels(FFF)V

    .line 2
    iput p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mMinScale:F

    .line 3
    iput p2, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mMidScale:F

    .line 4
    iput p3, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mMaxScale:F

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/widget/photoview/Util;->isSupportedScaleType(Landroid/widget/ImageView$ScaleType;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_f

    .line 2
    iput-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 3
    invoke-virtual {p0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->update()V

    :cond_f
    return-void
.end method

.method public setZoomInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setZoomTransitionDuration(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mZoomDuration:I

    return-void
.end method

.method public setZoomable(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    .line 2
    invoke-virtual {p0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->update()V

    return-void
.end method

.method public update()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v0, :cond_e

    .line 3
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    goto :goto_11

    .line 6
    :cond_e
    invoke-direct {p0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->resetMatrix()V

    :goto_11
    return-void
.end method

###### Class com.dcloud.android.widget.photoview.PhotoViewAttacher.AnonymousClass1 (com.dcloud.android.widget.photoview.PhotoViewAttacher$1)
.class Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;


# direct methods
.method constructor <init>(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$1;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$1;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$200(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Lcom/dcloud/android/widget/photoview/OnSingleFlingListener;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 2
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$1;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    invoke-static {}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$300()F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_18

    return v1

    .line 6
    :cond_18
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$400()I

    move-result v2

    if-gt v0, v2, :cond_38

    .line 7
    invoke-static {p2}, Landroidx/core/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$400()I

    move-result v2

    if-le v0, v2, :cond_2d

    goto :goto_38

    .line 11
    :cond_2d
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$1;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$200(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Lcom/dcloud/android/widget/photoview/OnSingleFlingListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/dcloud/android/widget/photoview/OnSingleFlingListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1

    :cond_38
    :goto_38
    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$1;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$000(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 2
    iget-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$1;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$000(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$1;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$100(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_17
    return-void
.end method

###### Class com.dcloud.android.widget.photoview.PhotoViewAttacher.AnonymousClass2 (com.dcloud.android.widget.photoview.PhotoViewAttacher$2)
.class Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;


# direct methods
.method constructor <init>(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v0, 0x1

    .line 1
    :try_start_1
    iget-object v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getScale()F

    move-result v1

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 5
    iget-object v3, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_23

    .line 6
    iget-object v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v3

    invoke-virtual {v1, v3, v2, p1, v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    goto :goto_4a

    .line 7
    :cond_23
    iget-object v3, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_41

    iget-object v3, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_41

    .line 8
    iget-object v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v3

    invoke-virtual {v1, v3, v2, p1, v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    goto :goto_4a

    .line 10
    :cond_41
    iget-object v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getMinimumScale()F

    move-result v3

    invoke-virtual {v1, v3, v2, p1, v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->setScale(FFFZ)V
    :try_end_4a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_4a} :catch_4a

    :catch_4a
    :goto_4a
    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$500(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$500(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$100(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 4
    :cond_17
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 12
    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    .line 13
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    .line 14
    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v2

    .line 15
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr p1, v0

    .line 17
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$600(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Lcom/dcloud/android/widget/photoview/OnPhotoTapListener;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 18
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$600(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Lcom/dcloud/android/widget/photoview/OnPhotoTapListener;

    move-result-object v0

    iget-object v2, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {v2}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$100(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-interface {v0, v2, v1, p1}, Lcom/dcloud/android/widget/photoview/OnPhotoTapListener;->onPhotoTap(Landroid/widget/ImageView;FF)V

    :cond_54
    const/4 p1, 0x1

    return p1

    .line 22
    :cond_56
    iget-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$700(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Lcom/dcloud/android/widget/photoview/OnOutsidePhotoTapListener;

    move-result-object p1

    if-eqz p1, :cond_6d

    .line 23
    iget-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {p1}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$700(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Lcom/dcloud/android/widget/photoview/OnOutsidePhotoTapListener;

    move-result-object p1

    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$2;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$100(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/dcloud/android/widget/photoview/OnOutsidePhotoTapListener;->onOutsidePhotoTap(Landroid/widget/ImageView;)V

    :cond_6d
    const/4 p1, 0x0

    return p1
.end method

###### Class com.dcloud.android.widget.photoview.PhotoViewAttacher.AnonymousClass3 (com.dcloud.android.widget.photoview.PhotoViewAttacher$3)
.class synthetic Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$widget$ImageView$ScaleType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$3;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    :try_start_9
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$3;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$3;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$3;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method

###### Class com.dcloud.android.widget.photoview.PhotoViewAttacher.AnimatedZoomRunnable (com.dcloud.android.widget.photoview.PhotoViewAttacher$AnimatedZoomRunnable)
.class Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$AnimatedZoomRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatedZoomRunnable"
.end annotation


# instance fields
.field private final mFocalX:F

.field private final mFocalY:F

.field private final mStartTime:J

.field private final mZoomEnd:F

.field private final mZoomStart:F

.field final synthetic this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;


# direct methods
.method public constructor <init>(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;FFFF)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p4, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalX:F

    .line 3
    iput p5, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalY:F

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iput-wide p4, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mStartTime:J

    .line 5
    iput p2, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomStart:F

    .line 6
    iput p3, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomEnd:F

    return-void
.end method

.method private interpolate()F
    .registers 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget-object v2, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {v2}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$800(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 2
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$900(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->interpolate()F

    move-result v0

    .line 2
    iget v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomStart:F

    iget v2, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomEnd:F

    sub-float/2addr v2, v1

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    .line 3
    iget-object v2, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-virtual {v2}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getScale()F

    move-result v2

    div-float/2addr v1, v2

    .line 5
    iget-object v2, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    iget v3, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalX:F

    iget v4, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalY:F

    invoke-virtual {v2, v1, v3, v4}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->onScale(FFF)V

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2b

    .line 9
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$100(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/dcloud/android/widget/photoview/Compat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_2b
    return-void
.end method

###### Class com.dcloud.android.widget.photoview.PhotoViewAttacher.FlingRunnable (com.dcloud.android.widget.photoview.PhotoViewAttacher$FlingRunnable)
.class Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$FlingRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mCurrentX:I

.field private mCurrentY:I

.field private final mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;


# direct methods
.method public constructor <init>(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$FlingRunnable;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/widget/OverScroller;

    invoke-direct {p1, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    return-void
.end method


# virtual methods
.method public cancelFling()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    return-void
.end method

.method public fling(IIII)V
    .registers 19

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$FlingRunnable;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v1

    if-nez v1, :cond_a

    return-void

    .line 6
    :cond_a
    iget v2, v1, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v2, p1

    int-to-float v2, v2

    .line 9
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/4 v5, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_28

    .line 11
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    move v9, v2

    const/4 v8, 0x0

    goto :goto_2a

    :cond_28
    move v8, v4

    move v9, v8

    .line 16
    :goto_2a
    iget v2, v1, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move/from16 v3, p2

    int-to-float v3, v3

    .line 17
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpg-float v6, v3, v6

    if-gez v6, :cond_48

    .line 19
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move v11, v1

    const/4 v10, 0x0

    goto :goto_4a

    :cond_48
    move v10, v2

    move v11, v10

    .line 24
    :goto_4a
    iput v4, v0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentX:I

    .line 25
    iput v2, v0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentY:I

    if-ne v4, v9, :cond_52

    if-eq v2, v11, :cond_5e

    .line 29
    :cond_52
    iget-object v3, v0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v5, v2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v3 .. v13}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    :cond_5e
    return-void
.end method

.method public run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 5
    :cond_9
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 7
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    .line 10
    iget-object v2, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$FlingRunnable;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {v2}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$1000(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;

    move-result-object v2

    iget v3, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentX:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    iget v4, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentY:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 11
    iget-object v2, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$FlingRunnable;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {v2}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$1100(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$1200(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)V

    .line 13
    iput v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentX:I

    .line 14
    iput v1, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$FlingRunnable;->mCurrentY:I

    .line 17
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher$FlingRunnable;->this$0:Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;

    invoke-static {v0}, Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;->access$100(Lcom/dcloud/android/widget/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/dcloud/android/widget/photoview/Compat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_44
    return-void
.end method
