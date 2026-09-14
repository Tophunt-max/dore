###### Class io.dcloud.feature.weex_switch.SwitchGroup (io.dcloud.feature.weex_switch.SwitchGroup)
.class public Lio/dcloud/feature/weex_switch/SwitchGroup;
.super Landroid/widget/LinearLayout;
.source "SwitchGroup.java"


# static fields
.field private static final DEFAULT_HEIGHT:I

.field private static final DEFAULT_WIDTH:I


# instance fields
.field i:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x42680000    # 58.0f

    .line 13
    invoke-static {v0}, Lio/dcloud/feature/weex_switch/SwitchGroup;->dp2pxInt(F)I

    move-result v0

    sput v0, Lio/dcloud/feature/weex_switch/SwitchGroup;->DEFAULT_WIDTH:I

    const/high16 v0, 0x42100000    # 36.0f

    .line 14
    invoke-static {v0}, Lio/dcloud/feature/weex_switch/SwitchGroup;->dp2pxInt(F)I

    move-result v0

    sput v0, Lio/dcloud/feature/weex_switch/SwitchGroup;->DEFAULT_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lio/dcloud/feature/weex_switch/SwitchGroup;->i:I

    .line 18
    new-instance v0, Lio/dcloud/feature/weex_switch/SwitchButton;

    invoke-direct {v0, p1}, Lio/dcloud/feature/weex_switch/SwitchButton;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 20
    invoke-virtual {p0, v0, p1}, Lio/dcloud/feature/weex_switch/SwitchGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Lio/dcloud/feature/weex_switch/SwitchGroup;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Lio/dcloud/feature/weex_switch/SwitchGroup;->i:I

    return-void
.end method

.method private static dp2px(F)F
    .registers 3

    .line 97
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private static dp2pxInt(F)I
    .registers 1

    .line 93
    invoke-static {p0}, Lio/dcloud/feature/weex_switch/SwitchGroup;->dp2px(F)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public disableClipOnParents(Landroid/view/View;)V
    .registers 4

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 55
    :cond_7
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_12

    .line 56
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 59
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_2c

    iget v0, p0, Lio/dcloud/feature/weex_switch/SwitchGroup;->i:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2c

    add-int/lit8 v0, v0, 0x1

    .line 60
    iput v0, p0, Lio/dcloud/feature/weex_switch/SwitchGroup;->i:I

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex_switch/SwitchGroup;->disableClipOnParents(Landroid/view/View;)V

    :cond_2c
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 83
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    .line 34
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 36
    invoke-virtual {p0}, Lio/dcloud/feature/weex_switch/SwitchGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_9
    if-ge p3, p1, :cond_27

    .line 38
    invoke-virtual {p0, p3}, Lio/dcloud/feature/weex_switch/SwitchGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lio/dcloud/feature/weex_switch/SwitchButton;

    .line 39
    invoke-virtual {p4}, Lio/dcloud/feature/weex_switch/SwitchButton;->getMeasuredHeight()I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p4}, Lio/dcloud/feature/weex_switch/SwitchButton;->getShadowBottomSize()F

    move-result v0

    add-float/2addr p5, v0

    float-to-int p5, p5

    .line 40
    invoke-virtual {p4}, Lio/dcloud/feature/weex_switch/SwitchButton;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p5, p2

    .line 42
    invoke-virtual {p4, p2, p2, v0, p5}, Lio/dcloud/feature/weex_switch/SwitchButton;->layout(IIII)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_9

    .line 46
    :cond_27
    invoke-virtual {p0, p0}, Lio/dcloud/feature/weex_switch/SwitchGroup;->disableClipOnParents(Landroid/view/View;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    .line 67
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 68
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v0, :cond_10

    if-ne v0, v2, :cond_16

    .line 72
    :cond_10
    sget p1, Lio/dcloud/feature/weex_switch/SwitchGroup;->DEFAULT_WIDTH:I

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_16
    if-eqz v1, :cond_1a

    if-ne v1, v2, :cond_20

    .line 76
    :cond_1a
    sget p2, Lio/dcloud/feature/weex_switch/SwitchGroup;->DEFAULT_HEIGHT:I

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 78
    :cond_20
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    return-void
.end method
