###### Class com.facebook.drawee.gestures.GestureDetector (com.facebook.drawee.gestures.GestureDetector)
.class public Lcom/facebook/drawee/gestures/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/drawee/gestures/GestureDetector$ClickListener;
    }
.end annotation


# instance fields
.field mActionDownTime:J

.field mActionDownX:F

.field mActionDownY:F

.field mClickListener:Lcom/facebook/drawee/gestures/GestureDetector$ClickListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field mIsCapturingGesture:Z

.field mIsClickCandidate:Z

.field final mSingleTapSlopPx:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/facebook/drawee/gestures/GestureDetector;->mSingleTapSlopPx:F

    .line 49
    invoke-virtual {p0}, Lcom/facebook/drawee/gestures/GestureDetector;->init()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/facebook/drawee/gestures/GestureDetector;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/facebook/drawee/gestures/GestureDetector;

    invoke-direct {v0, p0}, Lcom/facebook/drawee/gestures/GestureDetector;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public init()V
    .registers 2

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/facebook/drawee/gestures/GestureDetector;->mClickListener:Lcom/facebook/drawee/gestures/GestureDetector$ClickListener;

    .line 60
    invoke-virtual {p0}, Lcom/facebook/drawee/gestures/GestureDetector;->reset()V

    return-void
.end method

.method public isCapturingGesture()Z
    .registers 2

    .line 80
    iget-boolean v0, p0, Lcom/facebook/drawee/gestures/GestureDetector;->mIsCapturingGesture:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_81

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3d

    const/4 v3, 0x2

    if-eq v0, v3, :cond_18

    const/4 p1, 0x3

    if-eq v0, p1, :cond_12

    goto/16 :goto_97

    .line 100
    :cond_12
    iput-boolean v2, p0, Lcom/facebook/drawee/gestures/GestureDetector;->mIsCapturingGesture:Z

    .line 101
    iput-boolean v2, p0, Lcom/facebook/drawee/gestures/GestureDetector;->mIsClickCandidate:Z

    goto/16 :goto_97

    .line 94
    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/facebook/drawee/gestures/GestureDetector;->mActionDownX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/facebook/drawee/gestures/GestureDetector;->mSingleTapSlopPx:F

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_3a

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/facebook/drawee/gestures/GestureDetector;->mActionDownY:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/facebook/drawee/gestures/GestureDetector;->mSingleTapSlopPx:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_97

    .line 96
    :cond_3a
    iput-boolean v2, p0, Lcom/facebook/drawee/gestures/GestureDetector;->mIsClickCandidate:Z

    goto :goto_97

    .line 104
    :cond_3d
    iput-boolean v2, p0, Lcom/facebook/drawee/gestures/GestureDetector;->mIsCapturingGesture:Z

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/facebook/drawee/gestures/GestureDetector;->mActionDownX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/facebook/drawee/gestures/GestureDetector;->mSingleTapSlopPx:F

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_61

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/facebook/drawee/gestures/GestureDetector;->mActionDownY:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/facebook/drawee/gestures/GestureDetector;->mSingleTapSlopPx:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_63

    .line 107
    :cond_61
    iput-boolean v2, p0, Lcom/facebook/drawee/gestures/GestureDetector;->mIsClickCandidate:Z

    .line 109
    :cond_63
    iget-boolean v0, p0, Lcom/facebook/drawee/gestures/GestureDetector;->mIsClickCandidate:Z

    if-eqz v0, :cond_7e

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/facebook/drawee/gestures/GestureDetector;->mActionDownTime:J

    sub-long/2addr v3, v5

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v5, p1

    cmp-long p1, v3, v5

    if-gtz p1, :cond_7e

    .line 111
    iget-object p1, p0, Lcom/facebook/drawee/gestures/GestureDetector;->mClickListener:Lcom/facebook/drawee/gestures/GestureDetector$ClickListener;

    if-eqz p1, :cond_7e

    .line 112
    invoke-interface {p1}, Lcom/facebook/drawee/gestures/GestureDetector$ClickListener;->onClick()Z

    .line 118
    :cond_7e
    iput-boolean v2, p0, Lcom/facebook/drawee/gestures/GestureDetector;->mIsClickCandidate:Z

    goto :goto_97

    .line 87
    :cond_81
    iput-boolean v1, p0, Lcom/facebook/drawee/gestures/GestureDetector;->mIsCapturingGesture:Z

    .line 88
    iput-boolean v1, p0, Lcom/facebook/drawee/gestures/GestureDetector;->mIsClickCandidate:Z

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/drawee/gestures/GestureDetector;->mActionDownTime:J

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/facebook/drawee/gestures/GestureDetector;->mActionDownX:F

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/facebook/drawee/gestures/GestureDetector;->mActionDownY:F

    :cond_97
    :goto_97
    return v1
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/facebook/drawee/gestures/GestureDetector;->mIsCapturingGesture:Z

    .line 70
    iput-boolean v0, p0, Lcom/facebook/drawee/gestures/GestureDetector;->mIsClickCandidate:Z

    return-void
.end method

.method public setClickListener(Lcom/facebook/drawee/gestures/GestureDetector$ClickListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickListener"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/facebook/drawee/gestures/GestureDetector;->mClickListener:Lcom/facebook/drawee/gestures/GestureDetector$ClickListener;

    return-void
.end method

###### Class com.facebook.drawee.gestures.GestureDetector.ClickListener (com.facebook.drawee.gestures.GestureDetector$ClickListener)
.class public interface abstract Lcom/facebook/drawee/gestures/GestureDetector$ClickListener;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/gestures/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClickListener"
.end annotation


# virtual methods
.method public abstract onClick()Z
.end method
