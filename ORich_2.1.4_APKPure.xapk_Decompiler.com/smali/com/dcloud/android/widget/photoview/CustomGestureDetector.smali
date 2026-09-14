###### Class com.dcloud.android.widget.photoview.CustomGestureDetector (com.dcloud.android.widget.photoview.CustomGestureDetector)
.class Lcom/dcloud/android/widget/photoview/CustomGestureDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mActivePointerIndex:I

.field private final mDetector:Landroid/view/ScaleGestureDetector;

.field private mIsDragging:Z

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mListener:Lcom/dcloud/android/widget/photoview/OnGestureListener;

.field private final mMinimumVelocity:F

.field private final mTouchSlop:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/dcloud/android/widget/photoview/OnGestureListener;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mActivePointerId:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mActivePointerIndex:I

    .line 16
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mMinimumVelocity:F

    .line 18
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mTouchSlop:F

    .line 20
    iput-object p2, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mListener:Lcom/dcloud/android/widget/photoview/OnGestureListener;

    .line 21
    new-instance p2, Lcom/dcloud/android/widget/photoview/CustomGestureDetector$1;

    invoke-direct {p2, p0}, Lcom/dcloud/android/widget/photoview/CustomGestureDetector$1;-><init>(Lcom/dcloud/android/widget/photoview/CustomGestureDetector;)V

    .line 45
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method static synthetic access$000(Lcom/dcloud/android/widget/photoview/CustomGestureDetector;)Lcom/dcloud/android/widget/photoview/OnGestureListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mListener:Lcom/dcloud/android/widget/photoview/OnGestureListener;

    return-object p0
.end method

.method private getActiveX(Landroid/view/MotionEvent;)F
    .registers 3

    .line 1
    :try_start_0
    iget v0, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mActivePointerIndex:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 3
    :catch_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    return p1
.end method

.method private getActiveY(Landroid/view/MotionEvent;)F
    .registers 3

    .line 1
    :try_start_0
    iget v0, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mActivePointerIndex:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 3
    :catch_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    return p1
.end method

.method private processTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_e3

    const/4 v4, 0x0

    if-eq v0, v2, :cond_8e

    const/4 v5, 0x2

    if-eq v0, v5, :cond_4f

    const/4 v5, 0x3

    if-eq v0, v5, :cond_42

    const/4 v4, 0x6

    if-eq v0, v4, :cond_19

    goto/16 :goto_102

    .line 74
    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Lcom/dcloud/android/widget/photoview/Util;->getPointerIndex(I)I

    move-result v0

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 76
    iget v5, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mActivePointerId:I

    if-ne v4, v5, :cond_102

    if-nez v0, :cond_2d

    const/4 v0, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    .line 80
    :goto_2e
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mActivePointerId:I

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mLastTouchX:F

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mLastTouchY:F

    goto/16 :goto_102

    .line 83
    :cond_42
    iput v1, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mActivePointerId:I

    .line 85
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_102

    .line 86
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 87
    iput-object v4, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_102

    .line 88
    :cond_4f
    invoke-direct {p0, p1}, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v0

    .line 89
    invoke-direct {p0, p1}, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v4

    .line 90
    iget v5, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mLastTouchX:F

    sub-float v5, v0, v5

    iget v6, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mLastTouchY:F

    sub-float v6, v4, v6

    .line 92
    iget-boolean v7, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mIsDragging:Z

    if-nez v7, :cond_79

    mul-float v7, v5, v5

    mul-float v8, v6, v6

    add-float/2addr v7, v8

    float-to-double v7, v7

    .line 95
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    iget v9, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mTouchSlop:F

    float-to-double v9, v9

    cmpl-double v11, v7, v9

    if-ltz v11, :cond_76

    const/4 v7, 0x1

    goto :goto_77

    :cond_76
    const/4 v7, 0x0

    :goto_77
    iput-boolean v7, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mIsDragging:Z

    .line 98
    :cond_79
    iget-boolean v7, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mIsDragging:Z

    if-eqz v7, :cond_102

    .line 99
    iget-object v7, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mListener:Lcom/dcloud/android/widget/photoview/OnGestureListener;

    invoke-interface {v7, v5, v6}, Lcom/dcloud/android/widget/photoview/OnGestureListener;->onDrag(FF)V

    .line 100
    iput v0, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mLastTouchX:F

    .line 101
    iput v4, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mLastTouchY:F

    .line 103
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_102

    .line 104
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_102

    .line 117
    :cond_8e
    iput v1, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mActivePointerId:I

    .line 118
    iget-boolean v0, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mIsDragging:Z

    if-eqz v0, :cond_d9

    .line 119
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_d9

    .line 120
    invoke-direct {p0, p1}, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mLastTouchX:F

    .line 121
    invoke-direct {p0, p1}, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mLastTouchY:F

    .line 124
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 125
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 127
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iget-object v5, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 128
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    .line 132
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget v7, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mMinimumVelocity:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_d9

    .line 133
    iget-object v6, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mListener:Lcom/dcloud/android/widget/photoview/OnGestureListener;

    iget v7, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mLastTouchX:F

    iget v8, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mLastTouchY:F

    neg-float v0, v0

    neg-float v5, v5

    invoke-interface {v6, v7, v8, v0, v5}, Lcom/dcloud/android/widget/photoview/OnGestureListener;->onFling(FFFF)V

    .line 140
    :cond_d9
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_102

    .line 141
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 142
    iput-object v4, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_102

    .line 143
    :cond_e3
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mActivePointerId:I

    .line 145
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_f4

    .line 147
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 150
    :cond_f4
    invoke-direct {p0, p1}, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mLastTouchX:F

    .line 151
    invoke-direct {p0, p1}, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mLastTouchY:F

    .line 152
    iput-boolean v3, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mIsDragging:Z

    .line 226
    :cond_102
    :goto_102
    iget v0, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mActivePointerId:I

    if-eq v0, v1, :cond_107

    move v3, v0

    .line 227
    :cond_107
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    iput p1, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mActivePointerIndex:I

    return v2
.end method


# virtual methods
.method public isDragging()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mIsDragging:Z

    return v0
.end method

.method public isScaling()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    invoke-direct {p0, p1}, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_a

    return p1

    :catch_a
    const/4 p1, 0x1

    return p1
.end method

###### Class com.dcloud.android.widget.photoview.CustomGestureDetector.AnonymousClass1 (com.dcloud.android.widget.photoview.CustomGestureDetector$1)
.class Lcom/dcloud/android/widget/photoview/CustomGestureDetector$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dcloud/android/widget/photoview/CustomGestureDetector;-><init>(Landroid/content/Context;Lcom/dcloud/android/widget/photoview/OnGestureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dcloud/android/widget/photoview/CustomGestureDetector;


# direct methods
.method constructor <init>(Lcom/dcloud/android/widget/photoview/CustomGestureDetector;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector$1;->this$0:Lcom/dcloud/android/widget/photoview/CustomGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 5

    .line 1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 3
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_24

    .line 6
    :cond_11
    iget-object v1, p0, Lcom/dcloud/android/widget/photoview/CustomGestureDetector$1;->this$0:Lcom/dcloud/android/widget/photoview/CustomGestureDetector;

    invoke-static {v1}, Lcom/dcloud/android/widget/photoview/CustomGestureDetector;->access$000(Lcom/dcloud/android/widget/photoview/CustomGestureDetector;)Lcom/dcloud/android/widget/photoview/OnGestureListener;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    .line 8
    invoke-interface {v1, v0, v2, p1}, Lcom/dcloud/android/widget/photoview/OnGestureListener;->onScale(FFF)V

    const/4 p1, 0x1

    return p1

    :cond_24
    :goto_24
    const/4 p1, 0x0

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 2

    return-void
.end method
