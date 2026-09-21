###### Class com.dcloud.android.widget.SlideLayout (com.dcloud.android.widget.SlideLayout)
.class public Lcom/dcloud/android/widget/SlideLayout;
.super Landroid/widget/AbsoluteLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dcloud/android/widget/SlideLayout$OnStateChangeListener;
    }
.end annotation


# static fields
.field private static AFTER_SLIDE:Ljava/lang/String; = "afterSlide"

.field private static BEFORE_SLIDE:Ljava/lang/String; = "beforeSlide"

.field private static LEFT:Ljava/lang/String; = "left"

.field private static RIGHT:Ljava/lang/String; = "right"

.field private static final SCROLL_DURATION:I = 0x96

.field private static final SNAP_VELOCITY:I = 0x3e8


# instance fields
.field isLeftSlide:Z

.field isRightSlide:Z

.field isSlideOpen:Z

.field private mCanDoSlideTransverseEvent:Z

.field private mChangeListener:Lcom/dcloud/android/widget/SlideLayout$OnStateChangeListener;

.field private mFirstX:F

.field private mInterceptEventEnable:Z

.field private mIsHandledTouchEvent:Z

.field private mLastMotionX:F

.field private mScroller:Landroid/widget/Scroller;

.field private mSlideLeftPosition:I

.field private mSlideRightPosition:I

.field private mSlideTransverseLeftMaxWitch:I

.field private mSlideTransverseRightMaxWitch:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/dcloud/android/widget/SlideLayout;->mInterceptEventEnable:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/dcloud/android/widget/SlideLayout;->mIsHandledTouchEvent:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 8
    iput v1, p0, Lcom/dcloud/android/widget/SlideLayout;->mLastMotionX:F

    .line 13
    iput-boolean v0, p0, Lcom/dcloud/android/widget/SlideLayout;->mCanDoSlideTransverseEvent:Z

    .line 15
    iput v0, p0, Lcom/dcloud/android/widget/SlideLayout;->mSlideTransverseLeftMaxWitch:I

    .line 17
    iput v0, p0, Lcom/dcloud/android/widget/SlideLayout;->mSlideTransverseRightMaxWitch:I

    const/4 v1, -0x1

    .line 19
    iput v1, p0, Lcom/dcloud/android/widget/SlideLayout;->mSlideLeftPosition:I

    .line 21
    iput v1, p0, Lcom/dcloud/android/widget/SlideLayout;->mSlideRightPosition:I

    .line 24
    iput-boolean v0, p0, Lcom/dcloud/android/widget/SlideLayout;->isRightSlide:Z

    .line 26
    iput-boolean v0, p0, Lcom/dcloud/android/widget/SlideLayout;->isLeftSlide:Z

    .line 28
    iput-boolean v0, p0, Lcom/dcloud/android/widget/SlideLayout;->isSlideOpen:Z

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/dcloud/android/widget/SlideLayout;->mFirstX:F

    .line 49
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dcloud/android/widget/SlideLayout;->mScroller:Landroid/widget/Scroller;

    .line 50
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/dcloud/android/widget/SlideLayout;->mTouchSlop:I

    return-void
.end method

.method static synthetic access$000(Lcom/dcloud/android/widget/SlideLayout;)Lcom/dcloud/android/widget/SlideLayout$OnStateChangeListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/dcloud/android/widget/SlideLayout;->mChangeListener:Lcom/dcloud/android/widget/SlideLayout$OnStateChangeListener;

    return-object p0
.end method

.method private setState(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/SlideLayout;->mChangeListener:Lcom/dcloud/android/widget/SlideLayout$OnStateChangeListener;

    if-eqz v0, :cond_e

    .line 2
    new-instance v0, Lcom/dcloud/android/widget/SlideLayout$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/dcloud/android/widget/SlideLayout$1;-><init>(Lcom/dcloud/android/widget/SlideLayout;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x96

    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/AbsoluteLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_e
    return-void
.end method

.method private smoothScrollTo(II)V
    .registers 9

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/android/widget/SlideLayout;->enableChildrenCache()V

    .line 2
    iget-object v0, p0, Lcom/dcloud/android/widget/SlideLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getScrollX()I

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    mul-int/lit8 v5, p2, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method clearChildrenCache()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_12

    .line 3
    invoke-virtual {p0, v2}, Landroid/widget/AbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4
    invoke-virtual {v3, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    return-void
.end method

.method public computeScroll()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/SlideLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3
    iget-object v0, p0, Lcom/dcloud/android/widget/SlideLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/dcloud/android/widget/SlideLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsoluteLayout;->scrollTo(II)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->postInvalidate()V

    goto :goto_1e

    .line 7
    :cond_1b
    invoke-virtual {p0}, Lcom/dcloud/android/widget/SlideLayout;->clearChildrenCache()V

    .line 9
    :goto_1e
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->computeScroll()V

    return-void
.end method

.method enableChildrenCache()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_12

    .line 3
    invoke-virtual {p0, v1}, Landroid/widget/AbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v2, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    return-void
.end method

.method public initSlideInfo(Lorg/json/JSONObject;FI)V
    .registers 8

    const-string v0, "slideoffset"

    .line 1
    invoke-static {p1, v0}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_7b

    const-string v1, "position"

    .line 3
    invoke-static {p1, v1}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 5
    sget-object v2, Lcom/dcloud/android/widget/SlideLayout;->LEFT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    sget-object v3, Lcom/dcloud/android/widget/SlideLayout;->RIGHT:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 8
    div-int/lit8 v3, p3, 0x2

    invoke-static {v2, p3, v3, p2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v2

    iput v2, p0, Lcom/dcloud/android/widget/SlideLayout;->mSlideLeftPosition:I

    .line 10
    :cond_2a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 11
    div-int/lit8 v2, p3, 0x2

    invoke-static {v1, p3, v2, p2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result v1

    iput v1, p0, Lcom/dcloud/android/widget/SlideLayout;->mSlideRightPosition:I

    :cond_38
    const-string v1, "preventTouchEvent"

    const/4 v2, 0x1

    .line 14
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/dcloud/android/widget/SlideLayout;->mInterceptEventEnable:Z

    .line 15
    sget-object p1, Lcom/dcloud/android/widget/SlideLayout;->LEFT:Ljava/lang/String;

    invoke-static {v0, p1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_5f

    .line 17
    iget v1, p0, Lcom/dcloud/android/widget/SlideLayout;->mSlideLeftPosition:I

    if-lez v1, :cond_54

    const/4 v1, 0x1

    goto :goto_55

    :cond_54
    const/4 v1, 0x0

    :goto_55
    iput-boolean v1, p0, Lcom/dcloud/android/widget/SlideLayout;->isLeftSlide:Z

    .line 18
    div-int/lit8 v1, p3, 0x2

    invoke-static {p1, p3, v1, p2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    iput p1, p0, Lcom/dcloud/android/widget/SlideLayout;->mSlideTransverseLeftMaxWitch:I

    .line 21
    :cond_5f
    sget-object p1, Lcom/dcloud/android/widget/SlideLayout;->RIGHT:Ljava/lang/String;

    invoke-static {v0, p1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 23
    iget v0, p0, Lcom/dcloud/android/widget/SlideLayout;->mSlideRightPosition:I

    if-lez v0, :cond_70

    goto :goto_71

    :cond_70
    const/4 v2, 0x0

    :goto_71
    iput-boolean v2, p0, Lcom/dcloud/android/widget/SlideLayout;->isRightSlide:Z

    .line 24
    div-int/lit8 v0, p3, 0x2

    invoke-static {p1, p3, v0, p2}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p1

    iput p1, p0, Lcom/dcloud/android/widget/SlideLayout;->mSlideTransverseRightMaxWitch:I

    :cond_7b
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcom/dcloud/android/widget/SlideLayout;->mInterceptEventEnable:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 5
    :cond_a
    iget-boolean v1, p0, Lcom/dcloud/android/widget/SlideLayout;->isLeftSlide:Z

    if-nez v1, :cond_13

    iget-boolean v1, p0, Lcom/dcloud/android/widget/SlideLayout;->isRightSlide:Z

    if-nez v1, :cond_13

    return v2

    :cond_13
    const/4 v1, 0x3

    if-eq v0, v1, :cond_55

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    goto :goto_55

    :cond_1a
    if-eqz v0, :cond_21

    .line 14
    iget-boolean v3, p0, Lcom/dcloud/android/widget/SlideLayout;->mIsHandledTouchEvent:Z

    if-eqz v3, :cond_21

    return v1

    :cond_21
    if-eqz v0, :cond_42

    const/4 v2, 0x2

    if-eq v0, v2, :cond_27

    goto :goto_52

    .line 26
    :cond_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 27
    iget v0, p0, Lcom/dcloud/android/widget/SlideLayout;->mFirstX:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    .line 28
    iget v0, p0, Lcom/dcloud/android/widget/SlideLayout;->mTouchSlop:I

    if-le p1, v0, :cond_52

    .line 29
    invoke-virtual {p0}, Lcom/dcloud/android/widget/SlideLayout;->enableChildrenCache()V

    .line 30
    iput-boolean v1, p0, Lcom/dcloud/android/widget/SlideLayout;->mIsHandledTouchEvent:Z

    .line 31
    iput-boolean v1, p0, Lcom/dcloud/android/widget/SlideLayout;->mCanDoSlideTransverseEvent:Z

    .line 32
    invoke-virtual {p0, v1}, Landroid/widget/AbsoluteLayout;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_52

    .line 33
    :cond_42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/dcloud/android/widget/SlideLayout;->mLastMotionX:F

    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/dcloud/android/widget/SlideLayout;->mFirstX:F

    .line 35
    iput-boolean v2, p0, Lcom/dcloud/android/widget/SlideLayout;->mIsHandledTouchEvent:Z

    .line 36
    iput-boolean v2, p0, Lcom/dcloud/android/widget/SlideLayout;->mCanDoSlideTransverseEvent:Z

    .line 50
    :cond_52
    :goto_52
    iget-boolean p1, p0, Lcom/dcloud/android/widget/SlideLayout;->mIsHandledTouchEvent:Z

    return p1

    .line 51
    :cond_55
    :goto_55
    iput-boolean v2, p0, Lcom/dcloud/android/widget/SlideLayout;->mIsHandledTouchEvent:Z

    .line 52
    invoke-virtual {p0}, Lcom/dcloud/android/widget/SlideLayout;->clearChildrenCache()V

    .line 53
    iget-boolean p1, p0, Lcom/dcloud/android/widget/SlideLayout;->mIsHandledTouchEvent:Z

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 1
    iget-boolean v0, p0, Lcom/dcloud/android/widget/SlideLayout;->mCanDoSlideTransverseEvent:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/dcloud/android/widget/SlideLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_e

    .line 2
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/dcloud/android/widget/SlideLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_167

    const/4 v2, 0x1

    if-eq v0, v2, :cond_c0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_20

    const/4 v3, 0x3

    if-eq v0, v3, :cond_c0

    goto/16 :goto_176

    .line 14
    :cond_20
    iget-object v0, p0, Lcom/dcloud/android/widget/SlideLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_27

    .line 15
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 17
    :cond_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 18
    iget-boolean v3, p0, Lcom/dcloud/android/widget/SlideLayout;->mCanDoSlideTransverseEvent:Z

    if-eqz v3, :cond_176

    .line 19
    iget v3, p0, Lcom/dcloud/android/widget/SlideLayout;->mLastMotionX:F

    sub-float/2addr v3, v0

    float-to-int v3, v3

    .line 20
    iput v0, p0, Lcom/dcloud/android/widget/SlideLayout;->mLastMotionX:F

    .line 21
    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getScrollX()I

    move-result v0

    .line 22
    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p0, v4}, Landroid/widget/AbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getWidth()I

    move-result v4

    sub-int/2addr v2, v4

    if-nez v0, :cond_64

    .line 24
    iget-boolean v0, p0, Lcom/dcloud/android/widget/SlideLayout;->isRightSlide:Z

    if-eqz v0, :cond_59

    if-lez v3, :cond_59

    .line 25
    invoke-virtual {p0, v3, v1}, Landroid/widget/AbsoluteLayout;->scrollBy(II)V

    goto/16 :goto_176

    .line 26
    :cond_59
    iget-boolean v0, p0, Lcom/dcloud/android/widget/SlideLayout;->isLeftSlide:Z

    if-eqz v0, :cond_176

    if-gez v3, :cond_176

    .line 27
    invoke-virtual {p0, v3, v1}, Landroid/widget/AbsoluteLayout;->scrollBy(II)V

    goto/16 :goto_176

    :cond_64
    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    if-lez v0, :cond_93

    if-gez v2, :cond_93

    .line 29
    iget-boolean v6, p0, Lcom/dcloud/android/widget/SlideLayout;->isRightSlide:Z

    if-eqz v6, :cond_93

    add-int/2addr v0, v3

    .line 31
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v6, p0, Lcom/dcloud/android/widget/SlideLayout;->mSlideRightPosition:I

    if-gt v2, v6, :cond_176

    if-gez v0, :cond_7e

    .line 33
    invoke-virtual {p0, v1, v1}, Landroid/widget/AbsoluteLayout;->scrollBy(II)V

    goto/16 :goto_176

    .line 35
    :cond_7e
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/dcloud/android/widget/SlideLayout;->mSlideTransverseRightMaxWitch:I

    if-lt v0, v2, :cond_8e

    int-to-double v2, v3

    div-double/2addr v2, v4

    double-to-int v0, v2

    .line 36
    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsoluteLayout;->scrollBy(II)V

    goto/16 :goto_176

    .line 38
    :cond_8e
    invoke-virtual {p0, v3, v1}, Landroid/widget/AbsoluteLayout;->scrollBy(II)V

    goto/16 :goto_176

    :cond_93
    if-gez v0, :cond_176

    if-lez v2, :cond_176

    .line 42
    iget-boolean v2, p0, Lcom/dcloud/android/widget/SlideLayout;->isLeftSlide:Z

    if-eqz v2, :cond_176

    add-int/2addr v0, v3

    .line 44
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v6, p0, Lcom/dcloud/android/widget/SlideLayout;->mSlideLeftPosition:I

    if-gt v2, v6, :cond_176

    if-lez v0, :cond_ab

    .line 46
    invoke-virtual {p0, v1, v1}, Landroid/widget/AbsoluteLayout;->scrollBy(II)V

    goto/16 :goto_176

    .line 48
    :cond_ab
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/dcloud/android/widget/SlideLayout;->mSlideTransverseLeftMaxWitch:I

    if-lt v0, v2, :cond_bb

    int-to-double v2, v3

    div-double/2addr v2, v4

    double-to-int v0, v2

    .line 49
    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsoluteLayout;->scrollBy(II)V

    goto/16 :goto_176

    .line 51
    :cond_bb
    invoke-virtual {p0, v3, v1}, Landroid/widget/AbsoluteLayout;->scrollBy(II)V

    goto/16 :goto_176

    .line 60
    :cond_c0
    iget-boolean v0, p0, Lcom/dcloud/android/widget/SlideLayout;->mIsHandledTouchEvent:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_15d

    .line 61
    iput-boolean v1, p0, Lcom/dcloud/android/widget/SlideLayout;->mIsHandledTouchEvent:Z

    .line 62
    iget-boolean v0, p0, Lcom/dcloud/android/widget/SlideLayout;->mCanDoSlideTransverseEvent:Z

    if-eqz v0, :cond_15d

    .line 63
    invoke-virtual {p0, v1}, Landroid/widget/AbsoluteLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 64
    iget-object v0, p0, Lcom/dcloud/android/widget/SlideLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    .line 65
    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 66
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 67
    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getScrollX()I

    move-result v5

    if-le v0, v4, :cond_117

    if-gez v5, :cond_ff

    .line 70
    iget-boolean v0, p0, Lcom/dcloud/android/widget/SlideLayout;->isLeftSlide:Z

    if-eqz v0, :cond_ff

    iget v0, p0, Lcom/dcloud/android/widget/SlideLayout;->mSlideLeftPosition:I

    iget v4, p0, Lcom/dcloud/android/widget/SlideLayout;->mSlideTransverseLeftMaxWitch:I

    if-lt v0, v4, :cond_ff

    .line 71
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int/2addr v4, v0

    neg-int v0, v4

    .line 72
    invoke-direct {p0, v0, v1}, Lcom/dcloud/android/widget/SlideLayout;->smoothScrollTo(II)V

    .line 73
    iput-boolean v2, p0, Lcom/dcloud/android/widget/SlideLayout;->isSlideOpen:Z

    .line 74
    sget-object v0, Lcom/dcloud/android/widget/SlideLayout;->LEFT:Ljava/lang/String;

    sget-object v1, Lcom/dcloud/android/widget/SlideLayout;->AFTER_SLIDE:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/dcloud/android/widget/SlideLayout;->setState(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_154

    :cond_ff
    if-lez v5, :cond_113

    .line 75
    iget-boolean v0, p0, Lcom/dcloud/android/widget/SlideLayout;->isRightSlide:Z

    if-eqz v0, :cond_113

    neg-int v0, v5

    .line 76
    invoke-direct {p0, v0, v1}, Lcom/dcloud/android/widget/SlideLayout;->smoothScrollTo(II)V

    .line 77
    iput-boolean v1, p0, Lcom/dcloud/android/widget/SlideLayout;->isSlideOpen:Z

    .line 78
    sget-object v0, Lcom/dcloud/android/widget/SlideLayout;->RIGHT:Ljava/lang/String;

    sget-object v1, Lcom/dcloud/android/widget/SlideLayout;->BEFORE_SLIDE:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/dcloud/android/widget/SlideLayout;->setState(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_154

    .line 80
    :cond_113
    invoke-virtual {p0, v5}, Lcom/dcloud/android/widget/SlideLayout;->upSlideTo(I)V

    goto :goto_154

    :cond_117
    const/16 v4, -0x3e8

    if-ge v0, v4, :cond_151

    if-gez v5, :cond_12f

    .line 83
    iget-boolean v0, p0, Lcom/dcloud/android/widget/SlideLayout;->isLeftSlide:Z

    if-eqz v0, :cond_12f

    neg-int v0, v5

    .line 84
    invoke-direct {p0, v0, v1}, Lcom/dcloud/android/widget/SlideLayout;->smoothScrollTo(II)V

    .line 85
    iput-boolean v1, p0, Lcom/dcloud/android/widget/SlideLayout;->isSlideOpen:Z

    .line 86
    sget-object v0, Lcom/dcloud/android/widget/SlideLayout;->LEFT:Ljava/lang/String;

    sget-object v1, Lcom/dcloud/android/widget/SlideLayout;->BEFORE_SLIDE:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/dcloud/android/widget/SlideLayout;->setState(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_154

    :cond_12f
    if-lez v5, :cond_14d

    .line 87
    iget-boolean v0, p0, Lcom/dcloud/android/widget/SlideLayout;->isRightSlide:Z

    if-eqz v0, :cond_14d

    iget v0, p0, Lcom/dcloud/android/widget/SlideLayout;->mSlideRightPosition:I

    iget v4, p0, Lcom/dcloud/android/widget/SlideLayout;->mSlideTransverseRightMaxWitch:I

    if-lt v0, v4, :cond_14d

    .line 88
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int/2addr v4, v0

    .line 89
    invoke-direct {p0, v4, v1}, Lcom/dcloud/android/widget/SlideLayout;->smoothScrollTo(II)V

    .line 90
    iput-boolean v2, p0, Lcom/dcloud/android/widget/SlideLayout;->isSlideOpen:Z

    .line 91
    sget-object v0, Lcom/dcloud/android/widget/SlideLayout;->RIGHT:Ljava/lang/String;

    sget-object v1, Lcom/dcloud/android/widget/SlideLayout;->AFTER_SLIDE:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/dcloud/android/widget/SlideLayout;->setState(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_154

    .line 93
    :cond_14d
    invoke-virtual {p0, v5}, Lcom/dcloud/android/widget/SlideLayout;->upSlideTo(I)V

    goto :goto_154

    .line 96
    :cond_151
    invoke-virtual {p0, v5}, Lcom/dcloud/android/widget/SlideLayout;->upSlideTo(I)V

    .line 98
    :goto_154
    iget-object v0, p0, Lcom/dcloud/android/widget/SlideLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_15d

    .line 99
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 100
    iput-object v3, p0, Lcom/dcloud/android/widget/SlideLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 104
    :cond_15d
    iget-object v0, p0, Lcom/dcloud/android/widget/SlideLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_176

    .line 105
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 106
    iput-object v3, p0, Lcom/dcloud/android/widget/SlideLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_176

    .line 107
    :cond_167
    iput-boolean v1, p0, Lcom/dcloud/android/widget/SlideLayout;->mIsHandledTouchEvent:Z

    .line 108
    iget-object v0, p0, Lcom/dcloud/android/widget/SlideLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_176

    .line 109
    iget-object v0, p0, Lcom/dcloud/android/widget/SlideLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 211
    :cond_176
    :goto_176
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public reset()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getScrollX()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    neg-int v1, v0

    const/4 v2, 0x0

    .line 5
    invoke-direct {p0, v1, v2}, Lcom/dcloud/android/widget/SlideLayout;->smoothScrollTo(II)V

    if-gez v0, :cond_16

    .line 7
    sget-object v0, Lcom/dcloud/android/widget/SlideLayout;->LEFT:Ljava/lang/String;

    sget-object v1, Lcom/dcloud/android/widget/SlideLayout;->BEFORE_SLIDE:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/dcloud/android/widget/SlideLayout;->setState(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 9
    :cond_16
    sget-object v0, Lcom/dcloud/android/widget/SlideLayout;->RIGHT:Ljava/lang/String;

    sget-object v1, Lcom/dcloud/android/widget/SlideLayout;->BEFORE_SLIDE:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/dcloud/android/widget/SlideLayout;->setState(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1d
    return-void
.end method

.method public setHeight(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 3
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->requestLayout()V

    :cond_b
    return-void
.end method

.method public setInterceptTouchEventEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/dcloud/android/widget/SlideLayout;->mIsHandledTouchEvent:Z

    return-void
.end method

.method public setOffset(Ljava/lang/String;Ljava/lang/String;F)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1, p3}, Lio/dcloud/common/util/PdrUtil;->convertToScreenInt(Ljava/lang/String;IIF)I

    move-result p2

    .line 2
    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getScrollX()I

    move-result p3

    .line 3
    sget-object v0, Lcom/dcloud/android/widget/SlideLayout;->LEFT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41

    if-nez p2, :cond_25

    if-eqz p3, :cond_6b

    neg-int p1, p3

    .line 6
    invoke-direct {p0, p1, v1}, Lcom/dcloud/android/widget/SlideLayout;->smoothScrollTo(II)V

    .line 7
    sget-object p1, Lcom/dcloud/android/widget/SlideLayout;->LEFT:Ljava/lang/String;

    sget-object p2, Lcom/dcloud/android/widget/SlideLayout;->BEFORE_SLIDE:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/widget/SlideLayout;->setState(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b

    .line 10
    :cond_25
    iget p1, p0, Lcom/dcloud/android/widget/SlideLayout;->mSlideLeftPosition:I

    if-le p2, p1, :cond_2a

    move p2, p1

    .line 13
    :cond_2a
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr p2, p1

    neg-int p1, p2

    .line 14
    invoke-direct {p0, p1, v1}, Lcom/dcloud/android/widget/SlideLayout;->smoothScrollTo(II)V

    .line 15
    new-instance p1, Lcom/dcloud/android/widget/SlideLayout$2;

    invoke-direct {p1, p0}, Lcom/dcloud/android/widget/SlideLayout$2;-><init>(Lcom/dcloud/android/widget/SlideLayout;)V

    mul-int/lit8 p2, p2, 0x2

    add-int/lit16 p2, p2, 0xc8

    int-to-long p2, p2

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6b

    :cond_41
    if-nez p2, :cond_51

    if-eqz p3, :cond_6b

    neg-int p1, p3

    .line 28
    invoke-direct {p0, p1, v1}, Lcom/dcloud/android/widget/SlideLayout;->smoothScrollTo(II)V

    .line 29
    sget-object p1, Lcom/dcloud/android/widget/SlideLayout;->RIGHT:Ljava/lang/String;

    sget-object p2, Lcom/dcloud/android/widget/SlideLayout;->BEFORE_SLIDE:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/widget/SlideLayout;->setState(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b

    .line 32
    :cond_51
    iget p1, p0, Lcom/dcloud/android/widget/SlideLayout;->mSlideRightPosition:I

    if-le p2, p1, :cond_56

    move p2, p1

    .line 35
    :cond_56
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr p2, p1

    .line 36
    invoke-direct {p0, p2, v1}, Lcom/dcloud/android/widget/SlideLayout;->smoothScrollTo(II)V

    .line 37
    new-instance p1, Lcom/dcloud/android/widget/SlideLayout$3;

    invoke-direct {p1, p0}, Lcom/dcloud/android/widget/SlideLayout$3;-><init>(Lcom/dcloud/android/widget/SlideLayout;)V

    mul-int/lit8 p2, p2, 0x2

    add-int/lit16 p2, p2, 0xc8

    int-to-long p2, p2

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6b
    :goto_6b
    return-void
.end method

.method public setOnStateChangeListener(Lcom/dcloud/android/widget/SlideLayout$OnStateChangeListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/SlideLayout;->mChangeListener:Lcom/dcloud/android/widget/SlideLayout$OnStateChangeListener;

    return-void
.end method

.method public setWidth(I)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 3
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->requestLayout()V

    :cond_b
    return-void
.end method

.method public upSlideTo(I)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p1, :cond_25

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/dcloud/android/widget/SlideLayout;->mSlideTransverseLeftMaxWitch:I

    div-int/lit8 v4, v3, 0x2

    if-lt v2, v4, :cond_25

    iget v2, p0, Lcom/dcloud/android/widget/SlideLayout;->mSlideLeftPosition:I

    if-lt v2, v3, :cond_25

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr v3, p1

    neg-int p1, v3

    .line 3
    invoke-direct {p0, p1, v1}, Lcom/dcloud/android/widget/SlideLayout;->smoothScrollTo(II)V

    .line 4
    iput-boolean v0, p0, Lcom/dcloud/android/widget/SlideLayout;->isSlideOpen:Z

    .line 5
    sget-object p1, Lcom/dcloud/android/widget/SlideLayout;->LEFT:Ljava/lang/String;

    sget-object v0, Lcom/dcloud/android/widget/SlideLayout;->AFTER_SLIDE:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/dcloud/android/widget/SlideLayout;->setState(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    :cond_25
    if-lez p1, :cond_47

    .line 6
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/dcloud/android/widget/SlideLayout;->mSlideTransverseRightMaxWitch:I

    div-int/lit8 v4, v3, 0x2

    if-lt v2, v4, :cond_47

    iget v2, p0, Lcom/dcloud/android/widget/SlideLayout;->mSlideRightPosition:I

    if-lt v2, v3, :cond_47

    .line 7
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr v3, p1

    .line 8
    invoke-direct {p0, v3, v1}, Lcom/dcloud/android/widget/SlideLayout;->smoothScrollTo(II)V

    .line 9
    iput-boolean v0, p0, Lcom/dcloud/android/widget/SlideLayout;->isSlideOpen:Z

    .line 10
    sget-object p1, Lcom/dcloud/android/widget/SlideLayout;->RIGHT:Ljava/lang/String;

    sget-object v0, Lcom/dcloud/android/widget/SlideLayout;->AFTER_SLIDE:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/dcloud/android/widget/SlideLayout;->setState(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    :cond_47
    if-lez p1, :cond_55

    neg-int p1, p1

    .line 13
    invoke-direct {p0, p1, v1}, Lcom/dcloud/android/widget/SlideLayout;->smoothScrollTo(II)V

    .line 14
    sget-object p1, Lcom/dcloud/android/widget/SlideLayout;->RIGHT:Ljava/lang/String;

    sget-object v0, Lcom/dcloud/android/widget/SlideLayout;->BEFORE_SLIDE:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/dcloud/android/widget/SlideLayout;->setState(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_60

    :cond_55
    neg-int p1, p1

    .line 16
    invoke-direct {p0, p1, v1}, Lcom/dcloud/android/widget/SlideLayout;->smoothScrollTo(II)V

    .line 17
    sget-object p1, Lcom/dcloud/android/widget/SlideLayout;->LEFT:Ljava/lang/String;

    sget-object v0, Lcom/dcloud/android/widget/SlideLayout;->BEFORE_SLIDE:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/dcloud/android/widget/SlideLayout;->setState(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :goto_60
    iput-boolean v1, p0, Lcom/dcloud/android/widget/SlideLayout;->isSlideOpen:Z

    :goto_62
    return-void
.end method

###### Class com.dcloud.android.widget.SlideLayout.AnonymousClass1 (com.dcloud.android.widget.SlideLayout$1)
.class Lcom/dcloud/android/widget/SlideLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dcloud/android/widget/SlideLayout;->setState(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dcloud/android/widget/SlideLayout;

.field final synthetic val$offset:Ljava/lang/String;

.field final synthetic val$state:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dcloud/android/widget/SlideLayout;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/SlideLayout$1;->this$0:Lcom/dcloud/android/widget/SlideLayout;

    iput-object p2, p0, Lcom/dcloud/android/widget/SlideLayout$1;->val$state:Ljava/lang/String;

    iput-object p3, p0, Lcom/dcloud/android/widget/SlideLayout$1;->val$offset:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/SlideLayout$1;->this$0:Lcom/dcloud/android/widget/SlideLayout;

    invoke-static {v0}, Lcom/dcloud/android/widget/SlideLayout;->access$000(Lcom/dcloud/android/widget/SlideLayout;)Lcom/dcloud/android/widget/SlideLayout$OnStateChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/dcloud/android/widget/SlideLayout$1;->val$state:Ljava/lang/String;

    iget-object v2, p0, Lcom/dcloud/android/widget/SlideLayout$1;->val$offset:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/dcloud/android/widget/SlideLayout$OnStateChangeListener;->onStateChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.dcloud.android.widget.SlideLayout.AnonymousClass2 (com.dcloud.android.widget.SlideLayout$2)
.class Lcom/dcloud/android/widget/SlideLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dcloud/android/widget/SlideLayout;->setOffset(Ljava/lang/String;Ljava/lang/String;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dcloud/android/widget/SlideLayout;


# direct methods
.method constructor <init>(Lcom/dcloud/android/widget/SlideLayout;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/SlideLayout$2;->this$0:Lcom/dcloud/android/widget/SlideLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/SlideLayout$2;->this$0:Lcom/dcloud/android/widget/SlideLayout;

    invoke-virtual {v0}, Landroid/widget/AbsoluteLayout;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dcloud/android/widget/SlideLayout;->upSlideTo(I)V

    return-void
.end method

###### Class com.dcloud.android.widget.SlideLayout.AnonymousClass3 (com.dcloud.android.widget.SlideLayout$3)
.class Lcom/dcloud/android/widget/SlideLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dcloud/android/widget/SlideLayout;->setOffset(Ljava/lang/String;Ljava/lang/String;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dcloud/android/widget/SlideLayout;


# direct methods
.method constructor <init>(Lcom/dcloud/android/widget/SlideLayout;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/SlideLayout$3;->this$0:Lcom/dcloud/android/widget/SlideLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/SlideLayout$3;->this$0:Lcom/dcloud/android/widget/SlideLayout;

    invoke-virtual {v0}, Landroid/widget/AbsoluteLayout;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dcloud/android/widget/SlideLayout;->upSlideTo(I)V

    return-void
.end method

###### Class com.dcloud.android.widget.SlideLayout.OnStateChangeListener (com.dcloud.android.widget.SlideLayout$OnStateChangeListener)
.class public interface abstract Lcom/dcloud/android/widget/SlideLayout$OnStateChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/widget/SlideLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnStateChangeListener"
.end annotation


# virtual methods
.method public abstract onStateChanged(Ljava/lang/String;Ljava/lang/String;)V
.end method
