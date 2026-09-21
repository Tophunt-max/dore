###### Class io.dcloud.feature.weex_switch.SwitchButton (io.dcloud.feature.weex_switch.SwitchButton)
.class public Lio/dcloud/feature/weex_switch/SwitchButton;
.super Landroid/view/View;
.source "SwitchButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;,
        Lio/dcloud/feature/weex_switch/SwitchButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_HEIGHT:I

.field private static final DEFAULT_WIDTH:I


# instance fields
.field private final ANIMATE_STATE_DRAGING:I

.field private final ANIMATE_STATE_NONE:I

.field private final ANIMATE_STATE_PENDING_DRAG:I

.field private final ANIMATE_STATE_PENDING_RESET:I

.field private final ANIMATE_STATE_PENDING_SETTLE:I

.field private final ANIMATE_STATE_SWITCH:I

.field private afterState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

.field private animateState:I

.field private animatorListener:Landroid/animation/Animator$AnimatorListener;

.field private animatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final argbEvaluator:Landroid/animation/ArgbEvaluator;

.field private background:I

.field private beforeState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

.field private borderWidth:I

.field private bottom:F

.field private buttonMaxX:F

.field private buttonMinX:F

.field private buttonPaint:Landroid/graphics/Paint;

.field private buttonRadius:F

.field private centerX:F

.field private centerY:F

.field private checkLineColor:I

.field private checkLineLength:F

.field private checkLineWidth:I

.field private checkedColor:I

.field private checkedLineOffsetX:F

.field private checkedLineOffsetY:F

.field private dragFraction:F

.field private enableEffect:Z

.field private height:F

.field private isChecked:Z

.field private isEventBroadcast:Z

.field private isInit:Z

.field private isTouchingDown:Z

.field private isUiInited:Z

.field private left:F

.field private onCheckedChangeListener:Lio/dcloud/feature/weex_switch/SwitchButton$OnCheckedChangeListener;

.field private paint:Landroid/graphics/Paint;

.field private postPendingDrag:Ljava/lang/Runnable;

.field private rect:Landroid/graphics/RectF;

.field private right:F

.field private shadowColor:I

.field private shadowEffect:Z

.field private shadowOffset:I

.field private shadowRadius:I

.field private showIndicator:Z

.field private top:F

.field private touchDownTime:J

.field private uncheckCircleColor:I

.field private uncheckCircleOffsetX:F

.field private uncheckCircleRadius:F

.field private uncheckCircleWidth:I

.field private uncheckColor:I

.field private valueAnimator:Landroid/animation/ValueAnimator;

.field private viewRadius:F

.field private viewState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

.field private width:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x42680000    # 58.0f

    .line 29
    invoke-static {v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->dp2pxInt(F)I

    move-result v0

    sput v0, Lio/dcloud/feature/weex_switch/SwitchButton;->DEFAULT_WIDTH:I

    const/high16 v0, 0x42100000    # 36.0f

    .line 30
    invoke-static {v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->dp2pxInt(F)I

    move-result v0

    sput v0, Lio/dcloud/feature/weex_switch/SwitchButton;->DEFAULT_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 51
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->ANIMATE_STATE_NONE:I

    const/4 v1, 0x1

    .line 42
    iput v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->ANIMATE_STATE_PENDING_DRAG:I

    const/4 v2, 0x2

    .line 43
    iput v2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->ANIMATE_STATE_DRAGING:I

    const/4 v2, 0x3

    .line 44
    iput v2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->ANIMATE_STATE_PENDING_RESET:I

    const/4 v2, 0x4

    .line 45
    iput v2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->ANIMATE_STATE_PENDING_SETTLE:I

    const/4 v2, 0x5

    .line 46
    iput v2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->ANIMATE_STATE_SWITCH:I

    .line 48
    iput-boolean v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isInit:Z

    .line 995
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->rect:Landroid/graphics/RectF;

    .line 999
    iput v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->animateState:I

    .line 1006
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 1028
    iput-boolean v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isTouchingDown:Z

    .line 1032
    iput-boolean v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isUiInited:Z

    .line 1036
    iput-boolean v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isEventBroadcast:Z

    .line 1045
    new-instance v0, Lio/dcloud/feature/weex_switch/SwitchButton$1;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex_switch/SwitchButton$1;-><init>(Lio/dcloud/feature/weex_switch/SwitchButton;)V

    iput-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->postPendingDrag:Ljava/lang/Runnable;

    .line 1054
    new-instance v0, Lio/dcloud/feature/weex_switch/SwitchButton$2;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex_switch/SwitchButton$2;-><init>(Lio/dcloud/feature/weex_switch/SwitchButton;)V

    iput-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->animatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1118
    new-instance v0, Lio/dcloud/feature/weex_switch/SwitchButton$3;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex_switch/SwitchButton$3;-><init>(Lio/dcloud/feature/weex_switch/SwitchButton;)V

    iput-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->ANIMATE_STATE_NONE:I

    const/4 v1, 0x1

    .line 42
    iput v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->ANIMATE_STATE_PENDING_DRAG:I

    const/4 v2, 0x2

    .line 43
    iput v2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->ANIMATE_STATE_DRAGING:I

    const/4 v2, 0x3

    .line 44
    iput v2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->ANIMATE_STATE_PENDING_RESET:I

    const/4 v2, 0x4

    .line 45
    iput v2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->ANIMATE_STATE_PENDING_SETTLE:I

    const/4 v2, 0x5

    .line 46
    iput v2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->ANIMATE_STATE_SWITCH:I

    .line 48
    iput-boolean v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isInit:Z

    .line 995
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->rect:Landroid/graphics/RectF;

    .line 999
    iput v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->animateState:I

    .line 1006
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 1028
    iput-boolean v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isTouchingDown:Z

    .line 1032
    iput-boolean v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isUiInited:Z

    .line 1036
    iput-boolean v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isEventBroadcast:Z

    .line 1045
    new-instance v0, Lio/dcloud/feature/weex_switch/SwitchButton$1;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex_switch/SwitchButton$1;-><init>(Lio/dcloud/feature/weex_switch/SwitchButton;)V

    iput-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->postPendingDrag:Ljava/lang/Runnable;

    .line 1054
    new-instance v0, Lio/dcloud/feature/weex_switch/SwitchButton$2;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex_switch/SwitchButton$2;-><init>(Lio/dcloud/feature/weex_switch/SwitchButton;)V

    iput-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->animatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1118
    new-instance v0, Lio/dcloud/feature/weex_switch/SwitchButton$3;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex_switch/SwitchButton$3;-><init>(Lio/dcloud/feature/weex_switch/SwitchButton;)V

    iput-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 57
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/weex_switch/SwitchButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 41
    iput p3, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->ANIMATE_STATE_NONE:I

    const/4 v0, 0x1

    .line 42
    iput v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->ANIMATE_STATE_PENDING_DRAG:I

    const/4 v1, 0x2

    .line 43
    iput v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->ANIMATE_STATE_DRAGING:I

    const/4 v1, 0x3

    .line 44
    iput v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->ANIMATE_STATE_PENDING_RESET:I

    const/4 v1, 0x4

    .line 45
    iput v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->ANIMATE_STATE_PENDING_SETTLE:I

    const/4 v1, 0x5

    .line 46
    iput v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->ANIMATE_STATE_SWITCH:I

    .line 48
    iput-boolean v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isInit:Z

    .line 995
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->rect:Landroid/graphics/RectF;

    .line 999
    iput p3, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->animateState:I

    .line 1006
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 1028
    iput-boolean p3, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isTouchingDown:Z

    .line 1032
    iput-boolean p3, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isUiInited:Z

    .line 1036
    iput-boolean p3, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isEventBroadcast:Z

    .line 1045
    new-instance p3, Lio/dcloud/feature/weex_switch/SwitchButton$1;

    invoke-direct {p3, p0}, Lio/dcloud/feature/weex_switch/SwitchButton$1;-><init>(Lio/dcloud/feature/weex_switch/SwitchButton;)V

    iput-object p3, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->postPendingDrag:Ljava/lang/Runnable;

    .line 1054
    new-instance p3, Lio/dcloud/feature/weex_switch/SwitchButton$2;

    invoke-direct {p3, p0}, Lio/dcloud/feature/weex_switch/SwitchButton$2;-><init>(Lio/dcloud/feature/weex_switch/SwitchButton;)V

    iput-object p3, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->animatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1118
    new-instance p3, Lio/dcloud/feature/weex_switch/SwitchButton$3;

    invoke-direct {p3, p0}, Lio/dcloud/feature/weex_switch/SwitchButton$3;-><init>(Lio/dcloud/feature/weex_switch/SwitchButton;)V

    iput-object p3, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 62
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/weex_switch/SwitchButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 41
    iput p3, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->ANIMATE_STATE_NONE:I

    const/4 p4, 0x1

    .line 42
    iput p4, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->ANIMATE_STATE_PENDING_DRAG:I

    const/4 v0, 0x2

    .line 43
    iput v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->ANIMATE_STATE_DRAGING:I

    const/4 v0, 0x3

    .line 44
    iput v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->ANIMATE_STATE_PENDING_RESET:I

    const/4 v0, 0x4

    .line 45
    iput v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->ANIMATE_STATE_PENDING_SETTLE:I

    const/4 v0, 0x5

    .line 46
    iput v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->ANIMATE_STATE_SWITCH:I

    .line 48
    iput-boolean p4, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isInit:Z

    .line 995
    new-instance p4, Landroid/graphics/RectF;

    invoke-direct {p4}, Landroid/graphics/RectF;-><init>()V

    iput-object p4, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->rect:Landroid/graphics/RectF;

    .line 999
    iput p3, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->animateState:I

    .line 1006
    new-instance p4, Landroid/animation/ArgbEvaluator;

    invoke-direct {p4}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p4, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 1028
    iput-boolean p3, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isTouchingDown:Z

    .line 1032
    iput-boolean p3, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isUiInited:Z

    .line 1036
    iput-boolean p3, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isEventBroadcast:Z

    .line 1045
    new-instance p3, Lio/dcloud/feature/weex_switch/SwitchButton$1;

    invoke-direct {p3, p0}, Lio/dcloud/feature/weex_switch/SwitchButton$1;-><init>(Lio/dcloud/feature/weex_switch/SwitchButton;)V

    iput-object p3, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->postPendingDrag:Ljava/lang/Runnable;

    .line 1054
    new-instance p3, Lio/dcloud/feature/weex_switch/SwitchButton$2;

    invoke-direct {p3, p0}, Lio/dcloud/feature/weex_switch/SwitchButton$2;-><init>(Lio/dcloud/feature/weex_switch/SwitchButton;)V

    iput-object p3, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->animatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1118
    new-instance p3, Lio/dcloud/feature/weex_switch/SwitchButton$3;

    invoke-direct {p3, p0}, Lio/dcloud/feature/weex_switch/SwitchButton$3;-><init>(Lio/dcloud/feature/weex_switch/SwitchButton;)V

    iput-object p3, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 68
    invoke-direct {p0, p1, p2}, Lio/dcloud/feature/weex_switch/SwitchButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$100(Lio/dcloud/feature/weex_switch/SwitchButton;)Z
    .registers 1

    .line 28
    invoke-direct {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->isInAnimating()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lio/dcloud/feature/weex_switch/SwitchButton;)I
    .registers 1

    .line 28
    iget p0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->uncheckColor:I

    return p0
.end method

.method static synthetic access$1100(Lio/dcloud/feature/weex_switch/SwitchButton;)I
    .registers 1

    .line 28
    iget p0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->checkedColor:I

    return p0
.end method

.method static synthetic access$1200(Lio/dcloud/feature/weex_switch/SwitchButton;)F
    .registers 1

    .line 28
    iget p0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->viewRadius:F

    return p0
.end method

.method static synthetic access$1300(Lio/dcloud/feature/weex_switch/SwitchButton;)I
    .registers 1

    .line 28
    iget p0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->checkLineColor:I

    return p0
.end method

.method static synthetic access$1400(Lio/dcloud/feature/weex_switch/SwitchButton;)V
    .registers 1

    .line 28
    invoke-direct {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->broadcastEvent()V

    return-void
.end method

.method static synthetic access$1500(Lio/dcloud/feature/weex_switch/SwitchButton;)Z
    .registers 1

    .line 28
    iget-boolean p0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isChecked:Z

    return p0
.end method

.method static synthetic access$1502(Lio/dcloud/feature/weex_switch/SwitchButton;Z)Z
    .registers 2

    .line 28
    iput-boolean p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isChecked:Z

    return p1
.end method

.method static synthetic access$200(Lio/dcloud/feature/weex_switch/SwitchButton;)V
    .registers 1

    .line 28
    invoke-direct {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->pendingDragState()V

    return-void
.end method

.method static synthetic access$300(Lio/dcloud/feature/weex_switch/SwitchButton;)I
    .registers 1

    .line 28
    iget p0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->animateState:I

    return p0
.end method

.method static synthetic access$302(Lio/dcloud/feature/weex_switch/SwitchButton;I)I
    .registers 2

    .line 28
    iput p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->animateState:I

    return p1
.end method

.method static synthetic access$400(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;
    .registers 1

    .line 28
    iget-object p0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->viewState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    return-object p0
.end method

.method static synthetic access$500(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;
    .registers 1

    .line 28
    iget-object p0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->beforeState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    return-object p0
.end method

.method static synthetic access$600(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;
    .registers 1

    .line 28
    iget-object p0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->afterState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    return-object p0
.end method

.method static synthetic access$700(Lio/dcloud/feature/weex_switch/SwitchButton;)Landroid/animation/ArgbEvaluator;
    .registers 1

    .line 28
    iget-object p0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    return-object p0
.end method

.method static synthetic access$800(Lio/dcloud/feature/weex_switch/SwitchButton;)F
    .registers 1

    .line 28
    iget p0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->buttonMinX:F

    return p0
.end method

.method static synthetic access$900(Lio/dcloud/feature/weex_switch/SwitchButton;)F
    .registers 1

    .line 28
    iget p0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->buttonMaxX:F

    return p0
.end method

.method private broadcastEvent()V
    .registers 3

    .line 592
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->onCheckedChangeListener:Lio/dcloud/feature/weex_switch/SwitchButton$OnCheckedChangeListener;

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    .line 593
    iput-boolean v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isEventBroadcast:Z

    .line 594
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->isChecked()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Lio/dcloud/feature/weex_switch/SwitchButton$OnCheckedChangeListener;->onCheckedChanged(Lio/dcloud/feature/weex_switch/SwitchButton;Z)V

    :cond_e
    const/4 v0, 0x0

    .line 596
    iput-boolean v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isEventBroadcast:Z

    return-void
.end method

.method private static dp2px(F)F
    .registers 3

    .line 829
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 830
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private static dp2pxInt(F)I
    .registers 1

    .line 834
    invoke-static {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->dp2px(F)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private drawArc(Landroid/graphics/Canvas;FFFFFFLandroid/graphics/Paint;)V
    .registers 21

    move-object v0, p0

    .line 442
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_19

    const/4 v10, 0x1

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v11, p8

    .line 443
    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    goto :goto_31

    .line 446
    :cond_19
    iget-object v1, v0, Lio/dcloud/feature/weex_switch/SwitchButton;->rect:Landroid/graphics/RectF;

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual {v1, p2, p3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 447
    iget-object v3, v0, Lio/dcloud/feature/weex_switch/SwitchButton;->rect:Landroid/graphics/RectF;

    const/4 v6, 0x1

    move-object v2, p1

    move/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_31
    return-void
.end method

.method private drawButton(Landroid/graphics/Canvas;FF)V
    .registers 6

    .line 483
    iget v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->buttonRadius:F

    iget-object v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->buttonPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 491
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 492
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 493
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->paint:Landroid/graphics/Paint;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 494
    iget v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->buttonRadius:F

    iget-object v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawRoundRect(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V
    .registers 16

    .line 466
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_12

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p6

    move-object v7, p7

    .line 467
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_1c

    .line 470
    :cond_12
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 471
    iget-object p2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2, p6, p6, p7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_1c
    return-void
.end method

.method private drawUncheckIndicator(Landroid/graphics/Canvas;)V
    .registers 10

    .line 396
    iget v2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->uncheckCircleColor:I

    iget v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->uncheckCircleWidth:I

    int-to-float v3, v0

    iget v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->right:F

    iget v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->uncheckCircleOffsetX:F

    sub-float v4, v0, v1

    iget v5, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->centerY:F

    iget v6, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->uncheckCircleRadius:F

    iget-object v7, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->paint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lio/dcloud/feature/weex_switch/SwitchButton;->drawUncheckIndicator(Landroid/graphics/Canvas;IFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const/high16 v0, 0x3f000000    # 0.5f

    .line 80
    iput v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->dragFraction:F

    const/4 v0, 0x0

    if-eqz p2, :cond_e

    .line 84
    sget-object v1, Lcom/taobao/weex/R$styleable;->SwitchButton:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_f

    :cond_e
    move-object p1, v0

    .line 87
    :goto_f
    sget p2, Lcom/taobao/weex/R$styleable;->SwitchButton_sb_shadow_effect:I

    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Lio/dcloud/feature/weex_switch/SwitchButton;->optBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result p2

    iput-boolean p2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->shadowEffect:Z

    .line 91
    sget p2, Lcom/taobao/weex/R$styleable;->SwitchButton_sb_uncheckcircle_color:I

    const/4 v2, 0x0

    invoke-static {p1, p2, v2}, Lio/dcloud/feature/weex_switch/SwitchButton;->optColor(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->uncheckCircleColor:I

    .line 95
    sget p2, Lcom/taobao/weex/R$styleable;->SwitchButton_sb_uncheckcircle_width:I

    const/high16 v3, 0x3fc00000    # 1.5f

    .line 97
    invoke-static {v3}, Lio/dcloud/feature/weex_switch/SwitchButton;->dp2pxInt(F)I

    move-result v3

    .line 95
    invoke-static {p1, p2, v3}, Lio/dcloud/feature/weex_switch/SwitchButton;->optPixelSize(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->uncheckCircleWidth:I

    const/high16 p2, 0x41200000    # 10.0f

    .line 99
    invoke-static {p2}, Lio/dcloud/feature/weex_switch/SwitchButton;->dp2px(F)F

    move-result p2

    iput p2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->uncheckCircleOffsetX:F

    .line 101
    sget p2, Lcom/taobao/weex/R$styleable;->SwitchButton_sb_uncheckcircle_radius:I

    const/high16 v3, 0x40800000    # 4.0f

    .line 103
    invoke-static {v3}, Lio/dcloud/feature/weex_switch/SwitchButton;->dp2px(F)F

    move-result v4

    .line 101
    invoke-static {p1, p2, v4}, Lio/dcloud/feature/weex_switch/SwitchButton;->optPixelSize(Landroid/content/res/TypedArray;IF)F

    move-result p2

    iput p2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->uncheckCircleRadius:F

    .line 105
    invoke-static {v3}, Lio/dcloud/feature/weex_switch/SwitchButton;->dp2px(F)F

    move-result p2

    iput p2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->checkedLineOffsetX:F

    .line 106
    invoke-static {v3}, Lio/dcloud/feature/weex_switch/SwitchButton;->dp2px(F)F

    move-result p2

    iput p2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->checkedLineOffsetY:F

    .line 108
    sget p2, Lcom/taobao/weex/R$styleable;->SwitchButton_sb_shadow_radius:I

    const/high16 v3, 0x40000000    # 2.0f

    .line 110
    invoke-static {v3}, Lio/dcloud/feature/weex_switch/SwitchButton;->dp2pxInt(F)I

    move-result v3

    .line 108
    invoke-static {p1, p2, v3}, Lio/dcloud/feature/weex_switch/SwitchButton;->optPixelSize(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->shadowRadius:I

    .line 112
    sget p2, Lcom/taobao/weex/R$styleable;->SwitchButton_sb_shadow_offset:I

    const/4 v3, 0x0

    .line 114
    invoke-static {v3}, Lio/dcloud/feature/weex_switch/SwitchButton;->dp2pxInt(F)I

    move-result v4

    .line 112
    invoke-static {p1, p2, v4}, Lio/dcloud/feature/weex_switch/SwitchButton;->optPixelSize(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->shadowOffset:I

    .line 116
    sget p2, Lcom/taobao/weex/R$styleable;->SwitchButton_sb_shadow_color:I

    const/high16 v4, 0x33000000

    invoke-static {p1, p2, v4}, Lio/dcloud/feature/weex_switch/SwitchButton;->optColor(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->shadowColor:I

    .line 120
    sget p2, Lcom/taobao/weex/R$styleable;->SwitchButton_sb_uncheck_color:I

    const v4, -0x222223

    invoke-static {p1, p2, v4}, Lio/dcloud/feature/weex_switch/SwitchButton;->optColor(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->uncheckColor:I

    .line 124
    sget p2, Lcom/taobao/weex/R$styleable;->SwitchButton_sb_checked_color:I

    const v4, -0xfb41fe

    invoke-static {p1, p2, v4}, Lio/dcloud/feature/weex_switch/SwitchButton;->optColor(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->checkedColor:I

    .line 128
    sget p2, Lcom/taobao/weex/R$styleable;->SwitchButton_sb_border_width:I

    const/high16 v4, 0x3f800000    # 1.0f

    .line 130
    invoke-static {v4}, Lio/dcloud/feature/weex_switch/SwitchButton;->dp2pxInt(F)I

    move-result v4

    .line 128
    invoke-static {p1, p2, v4}, Lio/dcloud/feature/weex_switch/SwitchButton;->optPixelSize(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->borderWidth:I

    .line 132
    sget p2, Lcom/taobao/weex/R$styleable;->SwitchButton_sb_checkline_color:I

    invoke-static {p1, p2, v2}, Lio/dcloud/feature/weex_switch/SwitchButton;->optColor(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->checkLineColor:I

    .line 136
    sget p2, Lcom/taobao/weex/R$styleable;->SwitchButton_sb_checkline_width:I

    .line 138
    invoke-static {v3}, Lio/dcloud/feature/weex_switch/SwitchButton;->dp2pxInt(F)I

    move-result v4

    .line 136
    invoke-static {p1, p2, v4}, Lio/dcloud/feature/weex_switch/SwitchButton;->optPixelSize(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->checkLineWidth:I

    .line 140
    invoke-static {v3}, Lio/dcloud/feature/weex_switch/SwitchButton;->dp2px(F)F

    move-result p2

    iput p2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->checkLineLength:F

    .line 142
    sget p2, Lcom/taobao/weex/R$styleable;->SwitchButton_sb_button_color:I

    const/4 v4, -0x1

    invoke-static {p1, p2, v4}, Lio/dcloud/feature/weex_switch/SwitchButton;->optColor(Landroid/content/res/TypedArray;II)I

    move-result p2

    .line 146
    sget v5, Lcom/taobao/weex/R$styleable;->SwitchButton_sb_effect_duration:I

    const/16 v6, 0xc8

    invoke-static {p1, v5, v6}, Lio/dcloud/feature/weex_switch/SwitchButton;->optInt(Landroid/content/res/TypedArray;II)I

    move-result v5

    .line 150
    sget v6, Lcom/taobao/weex/R$styleable;->SwitchButton_sb_checked:I

    invoke-static {p1, v6, v2}, Lio/dcloud/feature/weex_switch/SwitchButton;->optBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v6

    iput-boolean v6, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isChecked:Z

    .line 154
    sget v6, Lcom/taobao/weex/R$styleable;->SwitchButton_sb_show_indicator:I

    invoke-static {p1, v6, v1}, Lio/dcloud/feature/weex_switch/SwitchButton;->optBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v6

    iput-boolean v6, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->showIndicator:Z

    .line 158
    sget v6, Lcom/taobao/weex/R$styleable;->SwitchButton_sb_background:I

    invoke-static {p1, v6, v4}, Lio/dcloud/feature/weex_switch/SwitchButton;->optColor(Landroid/content/res/TypedArray;II)I

    move-result v4

    iput v4, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->background:I

    .line 162
    sget v4, Lcom/taobao/weex/R$styleable;->SwitchButton_sb_enable_effect:I

    invoke-static {p1, v4, v1}, Lio/dcloud/feature/weex_switch/SwitchButton;->optBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v4

    iput-boolean v4, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->enableEffect:Z

    if-eqz p1, :cond_e8

    .line 167
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 171
    :cond_e8
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->paint:Landroid/graphics/Paint;

    .line 172
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 173
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->buttonPaint:Landroid/graphics/Paint;

    .line 174
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 175
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->buttonPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    iget-boolean p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->shadowEffect:Z

    if-eqz p1, :cond_112

    .line 178
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->buttonPaint:Landroid/graphics/Paint;

    iget p2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->shadowRadius:I

    int-to-float p2, p2

    iget v4, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->shadowOffset:I

    int-to-float v4, v4

    iget v6, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->shadowColor:I

    invoke-virtual {p1, p2, v3, v4, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 185
    :cond_112
    new-instance p1, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    invoke-direct {p1}, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->viewState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    .line 186
    new-instance p1, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    invoke-direct {p1}, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->beforeState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    .line 187
    new-instance p1, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    invoke-direct {p1}, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;-><init>()V

    iput-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->afterState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 189
    fill-array-data p1, :array_15a

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    int-to-long v3, v5

    .line 190
    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 191
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 193
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->animatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 194
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->animatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 196
    invoke-super {p0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 197
    invoke-virtual {p0, v2, v2, v2, v2}, Lio/dcloud/feature/weex_switch/SwitchButton;->setPadding(IIII)V

    .line 198
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xb

    if-lt p1, p2, :cond_159

    .line 199
    invoke-virtual {p0, v1, v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_159
    return-void

    :array_15a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private isDragState()Z
    .registers 3

    .line 713
    iget v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->animateState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private isInAnimating()Z
    .registers 2

    .line 696
    iget v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->animateState:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isPendingDragState()Z
    .registers 4

    .line 704
    iget v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->animateState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x3

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_a
    return v1
.end method

.method private static optBoolean(Landroid/content/res/TypedArray;IZ)Z
    .registers 3

    if-nez p0, :cond_3

    return p2

    .line 870
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    return p0
.end method

.method private static optColor(Landroid/content/res/TypedArray;II)I
    .registers 3

    if-nez p0, :cond_3

    return p2

    .line 863
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    return p0
.end method

.method private static optInt(Landroid/content/res/TypedArray;II)I
    .registers 3

    if-nez p0, :cond_3

    return p2

    .line 841
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0
.end method

.method private static optPixelSize(Landroid/content/res/TypedArray;IF)F
    .registers 3

    if-nez p0, :cond_3

    return p2

    .line 849
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    return p0
.end method

.method private static optPixelSize(Landroid/content/res/TypedArray;II)I
    .registers 3

    if-nez p0, :cond_3

    return p2

    .line 856
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p0

    return p0
.end method

.method private pendingCancelDragState()V
    .registers 3

    .line 775
    invoke-direct {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->isDragState()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->isPendingDragState()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 776
    :cond_c
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 777
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_19
    const/4 v0, 0x3

    .line 780
    iput v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->animateState:I

    .line 781
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->beforeState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    iget-object v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->viewState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    invoke-static {v0, v1}, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->access$000(Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;)V

    .line 783
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 784
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->afterState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    invoke-direct {p0, v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->setCheckedViewState(Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;)V

    goto :goto_34

    .line 786
    :cond_2f
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->afterState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    invoke-direct {p0, v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->setUncheckViewState(Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;)V

    .line 788
    :goto_34
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_39
    return-void
.end method

.method private pendingDragState()V
    .registers 3

    .line 745
    invoke-direct {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->isInAnimating()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 746
    :cond_7
    iget-boolean v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isTouchingDown:Z

    if-nez v0, :cond_c

    return-void

    .line 748
    :cond_c
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 749
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_19
    const/4 v0, 0x1

    .line 752
    iput v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->animateState:I

    .line 754
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->beforeState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    iget-object v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->viewState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    invoke-static {v0, v1}, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->access$000(Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;)V

    .line 755
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->afterState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    iget-object v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->viewState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    invoke-static {v0, v1}, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->access$000(Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;)V

    .line 757
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 758
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->afterState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    iget v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->checkedColor:I

    iput v1, v0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkStateColor:I

    .line 759
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->afterState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    iget v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->buttonMaxX:F

    iput v1, v0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->buttonX:F

    .line 760
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->afterState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    iget v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->checkedColor:I

    iput v1, v0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkedLineColor:I

    goto :goto_55

    .line 762
    :cond_43
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->afterState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    iget v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->uncheckColor:I

    iput v1, v0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkStateColor:I

    .line 763
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->afterState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    iget v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->buttonMinX:F

    iput v1, v0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->buttonX:F

    .line 764
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->afterState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    iget v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->viewRadius:F

    iput v1, v0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->radius:F

    .line 767
    :goto_55
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private pendingSettleState()V
    .registers 3

    .line 797
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 798
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_d
    const/4 v0, 0x4

    .line 801
    iput v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->animateState:I

    .line 802
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->beforeState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    iget-object v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->viewState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    invoke-static {v0, v1}, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->access$000(Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;)V

    .line 804
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 805
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->afterState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    invoke-direct {p0, v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->setCheckedViewState(Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;)V

    goto :goto_28

    .line 807
    :cond_23
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->afterState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    invoke-direct {p0, v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->setUncheckViewState(Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;)V

    .line 809
    :goto_28
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private setCheckedViewState(Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;)V
    .registers 3

    .line 293
    iget v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->viewRadius:F

    iput v0, p1, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->radius:F

    .line 294
    iget v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->checkedColor:I

    iput v0, p1, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkStateColor:I

    .line 295
    iget v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->checkLineColor:I

    iput v0, p1, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkedLineColor:I

    .line 296
    iget v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->buttonMaxX:F

    iput v0, p1, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->buttonX:F

    return-void
.end method

.method private setUncheckViewState(Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;)V
    .registers 3

    const/4 v0, 0x0

    .line 283
    iput v0, p1, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->radius:F

    .line 284
    iget v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->uncheckColor:I

    iput v0, p1, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkStateColor:I

    const/4 v0, 0x0

    .line 285
    iput v0, p1, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkedLineColor:I

    .line 286
    iget v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->buttonMinX:F

    iput v0, p1, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->buttonX:F

    return-void
.end method

.method private toggle(ZZ)V
    .registers 5

    .line 537
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->dragFraction:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1b

    :cond_e
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_c5

    iget v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->dragFraction:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c5

    .line 538
    :cond_1b
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_26

    iget-boolean v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isInit:Z

    if-nez v0, :cond_26

    return-void

    .line 542
    :cond_26
    iget-boolean v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isEventBroadcast:Z

    if-nez v0, :cond_bd

    .line 545
    iget-boolean v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isUiInited:Z

    if-nez v0, :cond_3a

    .line 546
    iget-boolean p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isChecked:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isChecked:Z

    if-eqz p2, :cond_39

    .line 548
    invoke-direct {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->broadcastEvent()V

    :cond_39
    return-void

    .line 553
    :cond_3a
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 554
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 557
    :cond_47
    iget-boolean v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->enableEffect:Z

    if-eqz v0, :cond_9d

    if-nez p1, :cond_4e

    goto :goto_9d

    :cond_4e
    const/4 p1, 0x5

    .line 571
    iput p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->animateState:I

    .line 572
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->beforeState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    iget-object p2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->viewState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    invoke-static {p1, p2}, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->access$000(Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;)V

    .line 574
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->isChecked()Z

    move-result p1

    const-string p2, "ACTION_MOVE"

    if-eqz p1, :cond_7c

    .line 575
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isChecked true =========== "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->dragFraction:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->afterState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    invoke-direct {p0, p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->setUncheckViewState(Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;)V

    goto :goto_97

    .line 579
    :cond_7c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isChecked false =========== "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->dragFraction:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->afterState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    invoke-direct {p0, p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->setCheckedViewState(Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;)V

    .line 582
    :goto_97
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_c8

    .line 558
    :cond_9d
    :goto_9d
    iget-boolean p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isChecked:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isChecked:Z

    .line 559
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_af

    .line 560
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->viewState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    invoke-direct {p0, p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->setCheckedViewState(Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;)V

    goto :goto_b4

    .line 562
    :cond_af
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->viewState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    invoke-direct {p0, p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->setUncheckViewState(Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;)V

    .line 564
    :goto_b4
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->postInvalidate()V

    if-eqz p2, :cond_bc

    .line 566
    invoke-direct {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->broadcastEvent()V

    :cond_bc
    return-void

    .line 543
    :cond_bd
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "should NOT switch the state in method: [onCheckedChanged]!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 584
    :cond_c5
    invoke-direct {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->pendingCancelDragState()V

    :goto_c8
    return-void
.end method


# virtual methods
.method protected drawCheckedIndicator(Landroid/graphics/Canvas;)V
    .registers 12

    .line 358
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->viewState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    iget v3, v0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkedLineColor:I

    iget v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->checkLineWidth:I

    int-to-float v4, v0

    iget v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->left:F

    iget v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->viewRadius:F

    add-float v2, v0, v1

    iget v5, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->checkedLineOffsetX:F

    sub-float v5, v2, v5

    iget v2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->centerY:F

    iget v6, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->checkLineLength:F

    sub-float v7, v2, v6

    add-float/2addr v0, v1

    iget v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->checkedLineOffsetY:F

    sub-float/2addr v0, v1

    add-float v8, v2, v6

    iget-object v9, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->paint:Landroid/graphics/Paint;

    move-object v1, p0

    move-object v2, p1

    move v6, v7

    move v7, v0

    invoke-virtual/range {v1 .. v9}, Lio/dcloud/feature/weex_switch/SwitchButton;->drawCheckedIndicator(Landroid/graphics/Canvas;IFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected drawCheckedIndicator(Landroid/graphics/Canvas;IFFFFFLandroid/graphics/Paint;)V
    .registers 15

    .line 383
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 384
    invoke-virtual {p8, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 385
    invoke-virtual {p8, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object v0, p1

    move v1, p4

    move v2, p5

    move v3, p6

    move v4, p7

    move-object v5, p8

    .line 386
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected drawUncheckIndicator(Landroid/graphics/Canvas;IFFFFLandroid/graphics/Paint;)V
    .registers 9

    .line 421
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p7, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 422
    invoke-virtual {p7, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 423
    invoke-virtual {p7, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 424
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getShadowBottomSize()F
    .registers 3

    .line 224
    iget v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->shadowRadius:I

    iget v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->shadowOffset:I

    add-int/2addr v0, v1

    iget v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->borderWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    sub-float/2addr v0, v1

    return v0
.end method

.method public getShadowLeftSize()F
    .registers 3

    .line 232
    iget v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->shadowRadius:I

    iget v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->borderWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    sub-float/2addr v0, v1

    return v0
.end method

.method public isChecked()Z
    .registers 2

    .line 512
    iget-boolean v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isChecked:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15

    .line 301
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 303
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->borderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 304
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 306
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->background:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 307
    iget v4, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->left:F

    iget v5, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->top:F

    iget v6, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->right:F

    iget v7, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->bottom:F

    iget v8, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->viewRadius:F

    iget-object v9, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->paint:Landroid/graphics/Paint;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lio/dcloud/feature/weex_switch/SwitchButton;->drawRoundRect(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 323
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->viewState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    iget v0, v0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->radius:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    .line 324
    iget-object v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 325
    iget-object v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->viewState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    iget v2, v2, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkStateColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 326
    iget-object v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->borderWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v0, v3

    add-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 327
    iget v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->left:F

    add-float v6, v1, v0

    iget v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->top:F

    add-float v7, v1, v0

    iget v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->right:F

    sub-float v8, v1, v0

    iget v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->bottom:F

    sub-float v9, v1, v0

    iget v10, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->viewRadius:F

    iget-object v11, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->paint:Landroid/graphics/Paint;

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v11}, Lio/dcloud/feature/weex_switch/SwitchButton;->drawRoundRect(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 332
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 333
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 334
    iget v6, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->left:F

    iget v7, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->top:F

    iget v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->viewRadius:F

    mul-float v1, v0, v3

    add-float v8, v6, v1

    mul-float v0, v0, v3

    add-float/2addr v0, v7

    iget v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->borderWidth:I

    int-to-float v1, v1

    sub-float v9, v0, v1

    iget-object v12, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->paint:Landroid/graphics/Paint;

    const/high16 v10, 0x42b40000    # 90.0f

    const/high16 v11, 0x43340000    # 180.0f

    invoke-direct/range {v4 .. v12}, Lio/dcloud/feature/weex_switch/SwitchButton;->drawArc(Landroid/graphics/Canvas;FFFFFFLandroid/graphics/Paint;)V

    .line 338
    iget v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->left:F

    iget v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->viewRadius:F

    add-float v5, v0, v1

    iget v6, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->top:F

    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->viewState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    iget v7, v0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->buttonX:F

    iget v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->top:F

    iget v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->viewRadius:F

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->borderWidth:I

    int-to-float v1, v1

    sub-float v8, v0, v1

    iget-object v9, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->paint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 349
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->viewState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    iget v0, v0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->buttonX:F

    iget v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->centerY:F

    invoke-direct {p0, p1, v0, v1}, Lio/dcloud/feature/weex_switch/SwitchButton;->drawButton(Landroid/graphics/Canvas;FF)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    .line 205
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 206
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v0, :cond_10

    if-ne v0, v2, :cond_16

    .line 210
    :cond_10
    sget p1, Lio/dcloud/feature/weex_switch/SwitchButton;->DEFAULT_WIDTH:I

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_16
    if-eqz v1, :cond_1a

    if-ne v1, v2, :cond_20

    .line 214
    :cond_1a
    sget p2, Lio/dcloud/feature/weex_switch/SwitchButton;->DEFAULT_HEIGHT:I

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 216
    :cond_20
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 11

    .line 237
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 241
    iget p3, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->shadowRadius:I

    iget p4, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->shadowOffset:I

    add-int/2addr p3, p4

    iget p4, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->borderWidth:I

    sub-int/2addr p3, p4

    int-to-float p3, p3

    int-to-float p2, p2

    sub-float/2addr p2, p3

    .line 246
    iput p2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->height:F

    int-to-float p1, p1

    .line 247
    iput p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->width:F

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float v0, p2, p3

    .line 249
    iput v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->viewRadius:F

    int-to-float v1, p4

    sub-float v1, v0, v1

    .line 250
    iput v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->buttonRadius:F

    int-to-float v1, p4

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 256
    iput v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->left:F

    int-to-float v3, p4

    div-float/2addr v3, v2

    .line 257
    iput v3, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->top:F

    int-to-float v4, p4

    div-float/2addr v4, v2

    sub-float v4, p1, v4

    .line 258
    iput v4, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->right:F

    int-to-float v5, p4

    div-float/2addr v5, v2

    sub-float/2addr p2, v5

    .line 259
    iput p2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->bottom:F

    add-float/2addr v4, v1

    mul-float v4, v4, p3

    .line 261
    iput v4, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->centerX:F

    add-float/2addr v3, p2

    mul-float v3, v3, p3

    .line 262
    iput v3, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->centerY:F

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 264
    iput v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->buttonMinX:F

    int-to-float p2, p4

    div-float/2addr p2, v2

    sub-float/2addr p1, p2

    int-to-float p2, p4

    div-float/2addr p2, v2

    div-float/2addr p2, v2

    add-float/2addr p1, p2

    sub-float/2addr p1, v0

    .line 265
    iput p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->buttonMaxX:F

    .line 267
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_57

    .line 268
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->viewState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    invoke-direct {p0, p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->setCheckedViewState(Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;)V

    goto :goto_5c

    .line 270
    :cond_57
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->viewState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    invoke-direct {p0, p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->setUncheckViewState(Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;)V

    :goto_5c
    const/4 p1, 0x1

    .line 273
    iput-boolean p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isUiInited:Z

    .line 275
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->postInvalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    .line 602
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 603
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/high16 v2, 0x3f000000    # 0.5f

    const-string v3, "ACTION_MOVE"

    const/4 v4, 0x1

    if-eqz v0, :cond_128

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eq v0, v4, :cond_d9

    const/4 v2, 0x2

    if-eq v0, v2, :cond_38

    const/4 p1, 0x3

    if-eq v0, p1, :cond_20

    goto/16 :goto_154

    .line 675
    :cond_20
    iput-boolean v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isTouchingDown:Z

    .line 677
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->postPendingDrag:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 679
    invoke-direct {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->isPendingDragState()Z

    move-result p1

    if-nez p1, :cond_33

    .line 680
    invoke-direct {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->isDragState()Z

    move-result p1

    if-eqz p1, :cond_154

    .line 682
    :cond_33
    invoke-direct {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->pendingCancelDragState()V

    goto/16 :goto_154

    .line 618
    :cond_38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 619
    invoke-direct {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->isPendingDragState()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 621
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->dragFraction:F

    .line 622
    invoke-static {v5, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v6, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->dragFraction:F

    .line 623
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isPendingDragState =========== "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->dragFraction:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->viewState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    iget v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->buttonMinX:F

    iget v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->buttonMaxX:F

    sub-float/2addr v1, v0

    iget v2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->dragFraction:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->buttonX:F

    goto/16 :goto_154

    .line 628
    :cond_7a
    invoke-direct {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->isDragState()Z

    move-result v0

    if-eqz v0, :cond_154

    .line 630
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->dragFraction:F

    .line 631
    invoke-static {v5, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v6, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->dragFraction:F

    .line 632
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isDragState =========== "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->dragFraction:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->viewState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    iget v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->buttonMinX:F

    iget v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->buttonMaxX:F

    sub-float/2addr v1, v0

    iget v2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->dragFraction:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->buttonX:F

    .line 638
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->viewState:Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    iget v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->dragFraction:F

    iget v2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->uncheckColor:I

    .line 640
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->checkedColor:I

    .line 641
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 638
    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkStateColor:I

    .line 643
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->postInvalidate()V

    goto/16 :goto_154

    .line 649
    :cond_d9
    iput-boolean v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isTouchingDown:Z

    .line 651
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->postPendingDrag:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 653
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->touchDownTime:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x190

    cmp-long v0, v7, v9

    if-gtz v0, :cond_f1

    .line 655
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->toggle()V

    goto :goto_154

    .line 656
    :cond_f1
    invoke-direct {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->isDragState()Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 658
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 659
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 660
    invoke-static {v5, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v6, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_10e

    const/4 v1, 0x1

    .line 662
    :cond_10e
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->isChecked()Z

    move-result p1

    if-ne v1, p1, :cond_118

    .line 663
    invoke-direct {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->pendingCancelDragState()V

    goto :goto_154

    .line 665
    :cond_118
    iput-boolean v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isChecked:Z

    .line 666
    invoke-direct {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->pendingSettleState()V

    goto :goto_154

    .line 668
    :cond_11e
    invoke-direct {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->isPendingDragState()Z

    move-result p1

    if-eqz p1, :cond_154

    .line 670
    invoke-direct {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->pendingCancelDragState()V

    goto :goto_154

    .line 607
    :cond_128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_DOWN =========== "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->dragFraction:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iput v2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->dragFraction:F

    .line 609
    iput-boolean v4, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isTouchingDown:Z

    .line 610
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->touchDownTime:J

    .line 612
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->postPendingDrag:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 614
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->postPendingDrag:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Lio/dcloud/feature/weex_switch/SwitchButton;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_154
    :goto_154
    return v4
.end method

.method public setChecked(Z)V
    .registers 4

    .line 499
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isInit:Z

    if-eqz v0, :cond_1c

    .line 500
    :cond_b
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->isChecked()Z

    move-result v0

    if-ne p1, v0, :cond_17

    .line 501
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/SwitchButton;->postInvalidate()V

    .line 502
    iput-boolean v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isInit:Z

    return-void

    .line 505
    :cond_17
    iget-boolean p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->enableEffect:Z

    invoke-direct {p0, p1, v1}, Lio/dcloud/feature/weex_switch/SwitchButton;->toggle(ZZ)V

    .line 507
    :cond_1c
    iput-boolean v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->isInit:Z

    return-void
.end method

.method public setCheckedColor(I)V
    .registers 2

    .line 533
    iput p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->checkedColor:I

    return-void
.end method

.method public setEnableEffect(Z)V
    .registers 2

    .line 738
    iput-boolean p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->enableEffect:Z

    return-void
.end method

.method public setOnCheckedChangeListener(Lio/dcloud/feature/weex_switch/SwitchButton$OnCheckedChangeListener;)V
    .registers 2

    .line 820
    iput-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->onCheckedChangeListener:Lio/dcloud/feature/weex_switch/SwitchButton$OnCheckedChangeListener;

    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    return-void
.end method

.method public final setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 2

    return-void
.end method

.method public final setPadding(IIII)V
    .registers 5

    const/4 p1, 0x0

    .line 73
    invoke-super {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setShadowEffect(Z)V
    .registers 6

    .line 721
    iget-boolean v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->shadowEffect:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 722
    :cond_5
    iput-boolean p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->shadowEffect:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    .line 725
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->buttonPaint:Landroid/graphics/Paint;

    iget v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->shadowRadius:I

    int-to-float v1, v1

    iget v2, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->shadowOffset:I

    int-to-float v2, v2

    iget v3, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->shadowColor:I

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_1e

    .line 730
    :cond_18
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton;->buttonPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :goto_1e
    return-void
.end method

.method public toggle()V
    .registers 2

    const/4 v0, 0x1

    .line 517
    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->toggle(Z)V

    return-void
.end method

.method public toggle(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 525
    invoke-direct {p0, p1, v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->toggle(ZZ)V

    return-void
.end method

###### Class io.dcloud.feature.weex_switch.SwitchButton.AnonymousClass1 (io.dcloud.feature.weex_switch.SwitchButton$1)
.class Lio/dcloud/feature/weex_switch/SwitchButton$1;
.super Ljava/lang/Object;
.source "SwitchButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex_switch/SwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex_switch/SwitchButton;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex_switch/SwitchButton;)V
    .registers 2

    .line 1045
    iput-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$1;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1048
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$1;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$100(Lio/dcloud/feature/weex_switch/SwitchButton;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1049
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$1;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$200(Lio/dcloud/feature/weex_switch/SwitchButton;)V

    :cond_d
    return-void
.end method

###### Class io.dcloud.feature.weex_switch.SwitchButton.AnonymousClass2 (io.dcloud.feature.weex_switch.SwitchButton$2)
.class Lio/dcloud/feature/weex_switch/SwitchButton$2;
.super Ljava/lang/Object;
.source "SwitchButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex_switch/SwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex_switch/SwitchButton;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex_switch/SwitchButton;)V
    .registers 2

    .line 1055
    iput-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7

    .line 1058
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1059
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$300(Lio/dcloud/feature/weex_switch/SwitchButton;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_c4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_c4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1e

    goto/16 :goto_174

    .line 1088
    :cond_1e
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$400(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$500(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v1

    iget v1, v1, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->buttonX:F

    iget-object v2, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    .line 1089
    invoke-static {v2}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$600(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v2

    iget v2, v2, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->buttonX:F

    iget-object v3, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v3}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$500(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v3

    iget v3, v3, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->buttonX:F

    sub-float/2addr v2, v3

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->buttonX:F

    .line 1091
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$400(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object p1

    iget p1, p1, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->buttonX:F

    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$800(Lio/dcloud/feature/weex_switch/SwitchButton;)F

    move-result v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$900(Lio/dcloud/feature/weex_switch/SwitchButton;)F

    move-result v0

    iget-object v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$800(Lio/dcloud/feature/weex_switch/SwitchButton;)F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    .line 1093
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$400(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$700(Lio/dcloud/feature/weex_switch/SwitchButton;)Landroid/animation/ArgbEvaluator;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    .line 1095
    invoke-static {v2}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$1000(Lio/dcloud/feature/weex_switch/SwitchButton;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    .line 1096
    invoke-static {v3}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$1100(Lio/dcloud/feature/weex_switch/SwitchButton;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1093
    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkStateColor:I

    .line 1099
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$400(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$1200(Lio/dcloud/feature/weex_switch/SwitchButton;)F

    move-result v1

    mul-float v1, v1, p1

    iput v1, v0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->radius:F

    .line 1100
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$400(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$700(Lio/dcloud/feature/weex_switch/SwitchButton;)Landroid/animation/ArgbEvaluator;

    move-result-object v1

    const/4 v2, 0x0

    .line 1102
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    .line 1103
    invoke-static {v3}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$1300(Lio/dcloud/feature/weex_switch/SwitchButton;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1100
    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkedLineColor:I

    goto/16 :goto_174

    .line 1065
    :cond_c4
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$400(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v0

    iget-object v2, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v2}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$700(Lio/dcloud/feature/weex_switch/SwitchButton;)Landroid/animation/ArgbEvaluator;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    .line 1067
    invoke-static {v3}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$500(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v3

    iget v3, v3, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkedLineColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    .line 1068
    invoke-static {v4}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$600(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v4

    iget v4, v4, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkedLineColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1065
    invoke-virtual {v2, p1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkedLineColor:I

    .line 1071
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$400(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v0

    iget-object v2, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v2}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$500(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v2

    iget v2, v2, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->radius:F

    iget-object v3, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    .line 1072
    invoke-static {v3}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$600(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v3

    iget v3, v3, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->radius:F

    iget-object v4, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v4}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$500(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v4

    iget v4, v4, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->radius:F

    sub-float/2addr v3, v4

    mul-float v3, v3, p1

    add-float/2addr v2, v3

    iput v2, v0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->radius:F

    .line 1074
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$300(Lio/dcloud/feature/weex_switch/SwitchButton;)I

    move-result v0

    if-eq v0, v1, :cond_144

    .line 1075
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$400(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$500(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v1

    iget v1, v1, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->buttonX:F

    iget-object v2, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    .line 1076
    invoke-static {v2}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$600(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v2

    iget v2, v2, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->buttonX:F

    iget-object v3, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v3}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$500(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v3

    iget v3, v3, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->buttonX:F

    sub-float/2addr v2, v3

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->buttonX:F

    .line 1079
    :cond_144
    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$400(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$700(Lio/dcloud/feature/weex_switch/SwitchButton;)Landroid/animation/ArgbEvaluator;

    move-result-object v1

    iget-object v2, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    .line 1081
    invoke-static {v2}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$500(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v2

    iget v2, v2, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkStateColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    .line 1082
    invoke-static {v3}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$600(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object v3

    iget v3, v3, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkStateColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1079
    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkStateColor:I

    .line 1114
    :goto_174
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$2;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-virtual {p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->postInvalidate()V

    return-void
.end method

###### Class io.dcloud.feature.weex_switch.SwitchButton.AnonymousClass3 (io.dcloud.feature.weex_switch.SwitchButton$3)
.class Lio/dcloud/feature/weex_switch/SwitchButton$3;
.super Ljava/lang/Object;
.source "SwitchButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex_switch/SwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex_switch/SwitchButton;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex_switch/SwitchButton;)V
    .registers 2

    .line 1119
    iput-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$3;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    .line 1126
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$3;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$300(Lio/dcloud/feature/weex_switch/SwitchButton;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_49

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3e

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2e

    const/4 v2, 0x5

    if-eq p1, v2, :cond_14

    goto :goto_6a

    .line 1150
    :cond_14
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$3;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$1500(Lio/dcloud/feature/weex_switch/SwitchButton;)Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-static {p1, v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$1502(Lio/dcloud/feature/weex_switch/SwitchButton;Z)Z

    .line 1151
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$3;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {p1, v1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$302(Lio/dcloud/feature/weex_switch/SwitchButton;I)I

    .line 1152
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$3;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-virtual {p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->postInvalidate()V

    .line 1153
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$3;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$1400(Lio/dcloud/feature/weex_switch/SwitchButton;)V

    goto :goto_6a

    .line 1144
    :cond_2e
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$3;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {p1, v1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$302(Lio/dcloud/feature/weex_switch/SwitchButton;I)I

    .line 1145
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$3;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-virtual {p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->postInvalidate()V

    .line 1146
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$3;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$1400(Lio/dcloud/feature/weex_switch/SwitchButton;)V

    goto :goto_6a

    .line 1139
    :cond_3e
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$3;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {p1, v1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$302(Lio/dcloud/feature/weex_switch/SwitchButton;I)I

    .line 1140
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$3;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-virtual {p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->postInvalidate()V

    goto :goto_6a

    .line 1131
    :cond_49
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$3;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$302(Lio/dcloud/feature/weex_switch/SwitchButton;I)I

    .line 1132
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$3;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$400(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object p1

    iput v1, p1, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkedLineColor:I

    .line 1133
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$3;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$400(Lio/dcloud/feature/weex_switch/SwitchButton;)Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$3;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-static {v0}, Lio/dcloud/feature/weex_switch/SwitchButton;->access$1200(Lio/dcloud/feature/weex_switch/SwitchButton;)F

    move-result v0

    iput v0, p1, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->radius:F

    .line 1135
    iget-object p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$3;->this$0:Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-virtual {p1}, Lio/dcloud/feature/weex_switch/SwitchButton;->postInvalidate()V

    :goto_6a
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

###### Class io.dcloud.feature.weex_switch.SwitchButton.OnCheckedChangeListener (io.dcloud.feature.weex_switch.SwitchButton$OnCheckedChangeListener)
.class public interface abstract Lio/dcloud/feature/weex_switch/SwitchButton$OnCheckedChangeListener;
.super Ljava/lang/Object;
.source "SwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex_switch/SwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCheckedChangeListener"
.end annotation


# virtual methods
.method public abstract onCheckedChanged(Lio/dcloud/feature/weex_switch/SwitchButton;Z)V
.end method

###### Class io.dcloud.feature.weex_switch.SwitchButton.ViewState (io.dcloud.feature.weex_switch.SwitchButton$ViewState)
.class Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;
.super Ljava/lang/Object;
.source "SwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex_switch/SwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewState"
.end annotation


# instance fields
.field buttonX:F

.field checkStateColor:I

.field checkedLineColor:I

.field radius:F


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;)V
    .registers 2

    .line 1177
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->copy(Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;)V

    return-void
.end method

.method private copy(Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;)V
    .registers 3

    .line 1196
    iget v0, p1, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->buttonX:F

    iput v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->buttonX:F

    .line 1197
    iget v0, p1, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkStateColor:I

    iput v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkStateColor:I

    .line 1198
    iget v0, p1, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkedLineColor:I

    iput v0, p0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->checkedLineColor:I

    .line 1199
    iget p1, p1, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->radius:F

    iput p1, p0, Lio/dcloud/feature/weex_switch/SwitchButton$ViewState;->radius:F

    return-void
.end method
