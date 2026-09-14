###### Class com.dcloud.android.v4.view.ViewCompat (com.dcloud.android.v4.view.ViewCompat)
.class public Lcom/dcloud/android/v4/view/ViewCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dcloud/android/v4/view/ViewCompat$LollipopViewCompatImpl;,
        Lcom/dcloud/android/v4/view/ViewCompat$KitKatViewCompatImpl;,
        Lcom/dcloud/android/v4/view/ViewCompat$JbMr2ViewCompatImpl;,
        Lcom/dcloud/android/v4/view/ViewCompat$JbMr1ViewCompatImpl;,
        Lcom/dcloud/android/v4/view/ViewCompat$JBViewCompatImpl;,
        Lcom/dcloud/android/v4/view/ViewCompat$ICSViewCompatImpl;,
        Lcom/dcloud/android/v4/view/ViewCompat$HCViewCompatImpl;,
        Lcom/dcloud/android/v4/view/ViewCompat$GBViewCompatImpl;,
        Lcom/dcloud/android/v4/view/ViewCompat$EclairMr1ViewCompatImpl;,
        Lcom/dcloud/android/v4/view/ViewCompat$BaseViewCompatImpl;,
        Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;,
        Lcom/dcloud/android/v4/view/ViewCompat$ResolvedLayoutDirectionMode;,
        Lcom/dcloud/android/v4/view/ViewCompat$LayoutDirectionMode;,
        Lcom/dcloud/android/v4/view/ViewCompat$LayerType;,
        Lcom/dcloud/android/v4/view/ViewCompat$AccessibilityLiveRegion;,
        Lcom/dcloud/android/v4/view/ViewCompat$ImportantForAccessibility;,
        Lcom/dcloud/android/v4/view/ViewCompat$OverScroll;
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_LIVE_REGION_ASSERTIVE:I = 0x2

.field public static final ACCESSIBILITY_LIVE_REGION_NONE:I = 0x0

.field public static final ACCESSIBILITY_LIVE_REGION_POLITE:I = 0x1

.field private static final FAKE_FRAME_TIME:J = 0xaL

.field static final IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

.field public static final IMPORTANT_FOR_ACCESSIBILITY_AUTO:I = 0x0

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO:I = 0x2

.field public static final IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS:I = 0x4

.field public static final IMPORTANT_FOR_ACCESSIBILITY_YES:I = 0x1

.field public static final LAYER_TYPE_HARDWARE:I = 0x2

.field public static final LAYER_TYPE_NONE:I = 0x0

.field public static final LAYER_TYPE_SOFTWARE:I = 0x1

.field public static final LAYOUT_DIRECTION_INHERIT:I = 0x2

.field public static final LAYOUT_DIRECTION_LOCALE:I = 0x3

.field public static final LAYOUT_DIRECTION_LTR:I = 0x0

.field public static final LAYOUT_DIRECTION_RTL:I = 0x1

.field public static final MEASURED_HEIGHT_STATE_SHIFT:I = 0x10

.field public static final MEASURED_SIZE_MASK:I = 0xffffff

.field public static final MEASURED_STATE_MASK:I = -0x1000000

.field public static final MEASURED_STATE_TOO_SMALL:I = 0x1000000

.field public static final OVER_SCROLL_ALWAYS:I = 0x0

.field public static final OVER_SCROLL_IF_CONTENT_SCROLLS:I = 0x1

.field public static final OVER_SCROLL_NEVER:I = 0x2

.field public static final SCROLL_AXIS_HORIZONTAL:I = 0x1

.field public static final SCROLL_AXIS_NONE:I = 0x0

.field public static final SCROLL_AXIS_VERTICAL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewCompat"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    .line 3
    new-instance v0, Lcom/dcloud/android/v4/view/ViewCompat$LollipopViewCompatImpl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/ViewCompat$LollipopViewCompatImpl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_68

    :cond_e
    const/16 v1, 0x13

    if-lt v0, v1, :cond_1a

    .line 5
    new-instance v0, Lcom/dcloud/android/v4/view/ViewCompat$KitKatViewCompatImpl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/ViewCompat$KitKatViewCompatImpl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_68

    :cond_1a
    const/16 v1, 0x11

    if-lt v0, v1, :cond_26

    .line 7
    new-instance v0, Lcom/dcloud/android/v4/view/ViewCompat$JbMr1ViewCompatImpl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/ViewCompat$JbMr1ViewCompatImpl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_68

    :cond_26
    const/16 v1, 0x10

    if-lt v0, v1, :cond_32

    .line 9
    new-instance v0, Lcom/dcloud/android/v4/view/ViewCompat$JBViewCompatImpl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/ViewCompat$JBViewCompatImpl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_68

    :cond_32
    const/16 v1, 0xe

    if-lt v0, v1, :cond_3e

    .line 11
    new-instance v0, Lcom/dcloud/android/v4/view/ViewCompat$ICSViewCompatImpl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/ViewCompat$ICSViewCompatImpl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_68

    :cond_3e
    const/16 v1, 0xb

    if-lt v0, v1, :cond_4a

    .line 13
    new-instance v0, Lcom/dcloud/android/v4/view/ViewCompat$HCViewCompatImpl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/ViewCompat$HCViewCompatImpl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_68

    :cond_4a
    const/16 v1, 0x9

    if-lt v0, v1, :cond_56

    .line 15
    new-instance v0, Lcom/dcloud/android/v4/view/ViewCompat$GBViewCompatImpl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/ViewCompat$GBViewCompatImpl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_68

    :cond_56
    const/4 v1, 0x7

    if-lt v0, v1, :cond_61

    .line 17
    new-instance v0, Lcom/dcloud/android/v4/view/ViewCompat$EclairMr1ViewCompatImpl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/ViewCompat$EclairMr1ViewCompatImpl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_68

    .line 19
    :cond_61
    new-instance v0, Lcom/dcloud/android/v4/view/ViewCompat$BaseViewCompatImpl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/ViewCompat$BaseViewCompatImpl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    :goto_68
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animate(Landroid/view/View;)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->animate(Landroid/view/View;)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p0

    return-object p0
.end method

.method public static canScrollHorizontally(Landroid/view/View;I)Z
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static canScrollVertically(Landroid/view/View;I)Z
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->canScrollVertically(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static combineMeasuredStates(II)I
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->combineMeasuredStates(II)I

    move-result p0

    return p0
.end method

.method public static dispatchApplyWindowInsets(Landroid/view/View;Lcom/dcloud/android/v4/view/WindowInsetsCompat;)Lcom/dcloud/android/v4/view/WindowInsetsCompat;
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->dispatchApplyWindowInsets(Landroid/view/View;Lcom/dcloud/android/v4/view/WindowInsetsCompat;)Lcom/dcloud/android/v4/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static dispatchFinishTemporaryDetach(Landroid/view/View;)V
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->dispatchFinishTemporaryDetach(Landroid/view/View;)V

    return-void
.end method

.method public static dispatchNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->dispatchNestedFling(Landroid/view/View;FFZ)Z

    move-result p0

    return p0
.end method

.method public static dispatchNestedPreFling(Landroid/view/View;FF)Z
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->dispatchNestedPreFling(Landroid/view/View;FF)Z

    move-result p0

    return p0
.end method

.method public static dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .registers 11

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z

    move-result p0

    return p0
.end method

.method public static dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .registers 13

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->dispatchNestedScroll(Landroid/view/View;IIII[I)Z

    move-result p0

    return p0
.end method

.method public static dispatchStartTemporaryDetach(Landroid/view/View;)V
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->dispatchStartTemporaryDetach(Landroid/view/View;)V

    return-void
.end method

.method public static getAccessibilityLiveRegion(Landroid/view/View;)I
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getAccessibilityLiveRegion(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getAccessibilityNodeProvider(Landroid/view/View;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getAccessibilityNodeProvider(Landroid/view/View;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object p0

    return-object p0
.end method

.method public static getAlpha(Landroid/view/View;)F
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getAlpha(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public static getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static getElevation(Landroid/view/View;)F
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getElevation(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static getFitsSystemWindows(Landroid/view/View;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static getImportantForAccessibility(Landroid/view/View;)I
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getImportantForAccessibility(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getLabelFor(Landroid/view/View;)I
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getLabelFor(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getLayerType(Landroid/view/View;)I
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getLayerType(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getLayoutDirection(Landroid/view/View;)I
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getMeasuredHeightAndState(Landroid/view/View;)I
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getMeasuredHeightAndState(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getMeasuredState(Landroid/view/View;)I
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getMeasuredState(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getMeasuredWidthAndState(Landroid/view/View;)I
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getMeasuredWidthAndState(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getMinimumHeight(Landroid/view/View;)I
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getMinimumHeight(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getMinimumWidth(Landroid/view/View;)I
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getMinimumWidth(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getOverScrollMode(Landroid/view/View;)I
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getOverScrollMode(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getPaddingEnd(Landroid/view/View;)I
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getPaddingEnd(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getPaddingStart(Landroid/view/View;)I
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getPaddingStart(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object p0

    return-object p0
.end method

.method public static getPivotX(Landroid/view/View;)F
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getPivotX(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static getPivotY(Landroid/view/View;)F
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getPivotY(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static getRotation(Landroid/view/View;)F
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getRotation(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static getRotationX(Landroid/view/View;)F
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getRotationX(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static getRotationY(Landroid/view/View;)F
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getRotationY(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static getScaleX(Landroid/view/View;)F
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getScaleX(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static getScaleY(Landroid/view/View;)F
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getScaleY(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTranslationX(Landroid/view/View;)F
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getTranslationX(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static getTranslationY(Landroid/view/View;)F
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getTranslationY(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static getTranslationZ(Landroid/view/View;)F
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getTranslationZ(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static getWindowSystemUiVisibility(Landroid/view/View;)I
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getX(Landroid/view/View;)F
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getX(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static getY(Landroid/view/View;)F
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getY(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static getZ(Landroid/view/View;)F
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->getZ(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static hasAccessibilityDelegate(Landroid/view/View;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static hasNestedScrollingParent(Landroid/view/View;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->hasNestedScrollingParent(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static hasOverlappingRendering(Landroid/view/View;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static hasTransientState(Landroid/view/View;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->hasTransientState(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static isAttachedToWindow(Landroid/view/View;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static isLaidOut(Landroid/view/View;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->isLaidOut(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static isNestedScrollingEnabled(Landroid/view/View;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static isOpaque(Landroid/view/View;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->isOpaque(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static isPaddingRelative(Landroid/view/View;)Z
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->isPaddingRelative(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static jumpDrawablesToCurrentState(Landroid/view/View;)V
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->jumpDrawablesToCurrentState(Landroid/view/View;)V

    return-void
.end method

.method public static offsetLeftAndRight(Landroid/view/View;I)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    if-eqz p1, :cond_e

    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-ge p1, v0, :cond_e

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_e
    return-void
.end method

.method public static offsetTopAndBottom(Landroid/view/View;I)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    if-eqz p1, :cond_e

    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-ge p1, v0, :cond_e

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_e
    return-void
.end method

.method public static onApplyWindowInsets(Landroid/view/View;Lcom/dcloud/android/v4/view/WindowInsetsCompat;)Lcom/dcloud/android/v4/view/WindowInsetsCompat;
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->onApplyWindowInsets(Landroid/view/View;Lcom/dcloud/android/v4/view/WindowInsetsCompat;)Lcom/dcloud/android/v4/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public static onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public static onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public static performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;)V
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .registers 11

    .line 2
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->postInvalidateOnAnimation(Landroid/view/View;IIII)V

    return-void
.end method

.method public static postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 5

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static requestApplyInsets(Landroid/view/View;)V
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method public static resolveSizeAndState(III)I
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->resolveSizeAndState(III)I

    move-result p0

    return p0
.end method

.method public static setAccessibilityDelegate(Landroid/view/View;Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setAccessibilityDelegate(Landroid/view/View;Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public static setAccessibilityLiveRegion(Landroid/view/View;I)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    return-void
.end method

.method public static setActivated(Landroid/view/View;Z)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setActivated(Landroid/view/View;Z)V

    return-void
.end method

.method public static setAlpha(Landroid/view/View;F)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setAlpha(Landroid/view/View;F)V

    return-void
.end method

.method public static setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public static setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static setElevation(Landroid/view/View;F)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setElevation(Landroid/view/View;F)V

    return-void
.end method

.method public static setFitsSystemWindows(Landroid/view/View;Z)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setFitsSystemWindows(Landroid/view/View;Z)V

    return-void
.end method

.method public static setHasTransientState(Landroid/view/View;Z)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setHasTransientState(Landroid/view/View;Z)V

    return-void
.end method

.method public static setImportantForAccessibility(Landroid/view/View;I)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setImportantForAccessibility(Landroid/view/View;I)V

    return-void
.end method

.method public static setLabelFor(Landroid/view/View;I)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setLabelFor(Landroid/view/View;I)V

    return-void
.end method

.method public static setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    return-void
.end method

.method public static setLayoutDirection(Landroid/view/View;I)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setLayoutDirection(Landroid/view/View;I)V

    return-void
.end method

.method public static setNestedScrollingEnabled(Landroid/view/View;Z)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public static setOnApplyWindowInsetsListener(Landroid/view/View;Lcom/dcloud/android/v4/view/OnApplyWindowInsetsListener;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setOnApplyWindowInsetsListener(Landroid/view/View;Lcom/dcloud/android/v4/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public static setOverScrollMode(Landroid/view/View;I)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setOverScrollMode(Landroid/view/View;I)V

    return-void
.end method

.method public static setPaddingRelative(Landroid/view/View;IIII)V
    .registers 11

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setPaddingRelative(Landroid/view/View;IIII)V

    return-void
.end method

.method public static setPivotX(Landroid/view/View;F)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setPivotX(Landroid/view/View;F)V

    return-void
.end method

.method public static setPivotY(Landroid/view/View;F)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setPivotX(Landroid/view/View;F)V

    return-void
.end method

.method public static setRotation(Landroid/view/View;F)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setRotation(Landroid/view/View;F)V

    return-void
.end method

.method public static setRotationX(Landroid/view/View;F)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setRotationX(Landroid/view/View;F)V

    return-void
.end method

.method public static setRotationY(Landroid/view/View;F)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setRotationY(Landroid/view/View;F)V

    return-void
.end method

.method public static setSaveFromParentEnabled(Landroid/view/View;Z)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setSaveFromParentEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public static setScaleX(Landroid/view/View;F)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setScaleX(Landroid/view/View;F)V

    return-void
.end method

.method public static setScaleY(Landroid/view/View;F)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setScaleY(Landroid/view/View;F)V

    return-void
.end method

.method public static setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public static setTranslationX(Landroid/view/View;F)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setTranslationX(Landroid/view/View;F)V

    return-void
.end method

.method public static setTranslationY(Landroid/view/View;F)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setTranslationY(Landroid/view/View;F)V

    return-void
.end method

.method public static setTranslationZ(Landroid/view/View;F)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setTranslationZ(Landroid/view/View;F)V

    return-void
.end method

.method public static setX(Landroid/view/View;F)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setX(Landroid/view/View;F)V

    return-void
.end method

.method public static setY(Landroid/view/View;F)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->setY(Landroid/view/View;F)V

    return-void
.end method

.method public static startNestedScroll(Landroid/view/View;I)Z
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->startNestedScroll(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static stopNestedScroll(Landroid/view/View;)V
    .registers 2

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;->stopNestedScroll(Landroid/view/View;)V

    return-void
.end method

###### Class com.dcloud.android.v4.view.ViewCompat.AccessibilityLiveRegion (com.dcloud.android.v4.view.ViewCompat$AccessibilityLiveRegion)
.class interface abstract annotation Lcom/dcloud/android/v4/view/ViewCompat$AccessibilityLiveRegion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x260a
    name = "AccessibilityLiveRegion"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.dcloud.android.v4.view.ViewCompat.BaseViewCompatImpl (com.dcloud.android.v4.view.ViewCompat$BaseViewCompatImpl)
.class Lcom/dcloud/android/v4/view/ViewCompat$BaseViewCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseViewCompatImpl"
.end annotation


# instance fields
.field private mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

.field private mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

.field private mTempDetachBound:Z

.field mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/dcloud/android/v4/view/ViewCompat$BaseViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method private bindTempDetach()V
    .registers 5

    .line 1
    :try_start_0
    const-class v0, Landroid/view/View;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_2} :catch_1a

    const-string v1, "dispatchStartTemporaryDetach"

    const/4 v2, 0x0

    :try_start_5
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/dcloud/android/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    .line 3
    const-class v0, Landroid/view/View;
    :try_end_f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_f} :catch_1a

    const-string v1, "dispatchFinishTemporaryDetach"

    :try_start_11
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/dcloud/android/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_11 .. :try_end_19} :catch_1a

    goto :goto_22

    :catch_1a
    move-exception v0

    const-string v1, "ViewCompat"

    const-string v2, "Couldn\'t find method"

    .line 6
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/dcloud/android/v4/view/ViewCompat$BaseViewCompatImpl;->mTempDetachBound:Z

    return-void
.end method

.method private canScrollingViewScrollHorizontally(Lcom/dcloud/android/v4/view/ScrollingView;I)Z
    .registers 6

    .line 1
    invoke-interface {p1}, Lcom/dcloud/android/v4/view/ScrollingView;->computeHorizontalScrollOffset()I

    move-result v0

    .line 2
    invoke-interface {p1}, Lcom/dcloud/android/v4/view/ScrollingView;->computeHorizontalScrollRange()I

    move-result v1

    .line 3
    invoke-interface {p1}, Lcom/dcloud/android/v4/view/ScrollingView;->computeHorizontalScrollExtent()I

    move-result p1

    sub-int/2addr v1, p1

    const/4 p1, 0x0

    if-nez v1, :cond_11

    return p1

    :cond_11
    const/4 v2, 0x1

    if-gez p2, :cond_18

    if-lez v0, :cond_17

    const/4 p1, 0x1

    :cond_17
    return p1

    :cond_18
    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1c

    const/4 p1, 0x1

    :cond_1c
    return p1
.end method

.method private canScrollingViewScrollVertically(Lcom/dcloud/android/v4/view/ScrollingView;I)Z
    .registers 6

    .line 1
    invoke-interface {p1}, Lcom/dcloud/android/v4/view/ScrollingView;->computeVerticalScrollOffset()I

    move-result v0

    .line 2
    invoke-interface {p1}, Lcom/dcloud/android/v4/view/ScrollingView;->computeVerticalScrollRange()I

    move-result v1

    .line 3
    invoke-interface {p1}, Lcom/dcloud/android/v4/view/ScrollingView;->computeVerticalScrollExtent()I

    move-result p1

    sub-int/2addr v1, p1

    const/4 p1, 0x0

    if-nez v1, :cond_11

    return p1

    :cond_11
    const/4 v2, 0x1

    if-gez p2, :cond_18

    if-lez v0, :cond_17

    const/4 p1, 0x1

    :cond_17
    return p1

    :cond_18
    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1c

    const/4 p1, 0x1

    :cond_1c
    return p1
.end method


# virtual methods
.method public animate(Landroid/view/View;)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 3

    .line 1
    new-instance v0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;

    invoke-direct {v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public canScrollHorizontally(Landroid/view/View;I)Z
    .registers 4

    .line 1
    instance-of v0, p1, Lcom/dcloud/android/v4/view/ScrollingView;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/dcloud/android/v4/view/ScrollingView;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/v4/view/ViewCompat$BaseViewCompatImpl;->canScrollingViewScrollHorizontally(Lcom/dcloud/android/v4/view/ScrollingView;I)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public canScrollVertically(Landroid/view/View;I)Z
    .registers 4

    .line 1
    instance-of v0, p1, Lcom/dcloud/android/v4/view/ScrollingView;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/dcloud/android/v4/view/ScrollingView;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/dcloud/android/v4/view/ViewCompat$BaseViewCompatImpl;->canScrollingViewScrollVertically(Lcom/dcloud/android/v4/view/ScrollingView;I)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public combineMeasuredStates(II)I
    .registers 3

    or-int/2addr p1, p2

    return p1
.end method

.method public dispatchApplyWindowInsets(Landroid/view/View;Lcom/dcloud/android/v4/view/WindowInsetsCompat;)Lcom/dcloud/android/v4/view/WindowInsetsCompat;
    .registers 3

    return-object p2
.end method

.method public dispatchFinishTemporaryDetach(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/dcloud/android/v4/view/ViewCompat$BaseViewCompatImpl;->mTempDetachBound:Z

    if-nez v0, :cond_7

    .line 2
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/ViewCompat$BaseViewCompatImpl;->bindTempDetach()V

    .line 4
    :cond_7
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1b

    const/4 v1, 0x0

    :try_start_c
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_12

    goto :goto_1e

    :catch_12
    move-exception p1

    const-string v0, "ViewCompat"

    const-string v1, "Error calling dispatchFinishTemporaryDetach"

    .line 8
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 12
    :cond_1b
    invoke-virtual {p1}, Landroid/view/View;->onFinishTemporaryDetach()V

    :goto_1e
    return-void
.end method

.method public dispatchNestedFling(Landroid/view/View;FFZ)Z
    .registers 6

    .line 1
    instance-of v0, p1, Lcom/dcloud/android/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_b

    .line 2
    check-cast p1, Lcom/dcloud/android/v4/view/NestedScrollingChild;

    invoke-interface {p1, p2, p3, p4}, Lcom/dcloud/android/v4/view/NestedScrollingChild;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchNestedPreFling(Landroid/view/View;FF)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lcom/dcloud/android/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_b

    .line 2
    check-cast p1, Lcom/dcloud/android/v4/view/NestedScrollingChild;

    invoke-interface {p1, p2, p3}, Lcom/dcloud/android/v4/view/NestedScrollingChild;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .registers 7

    .line 1
    instance-of v0, p1, Lcom/dcloud/android/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_b

    .line 2
    check-cast p1, Lcom/dcloud/android/v4/view/NestedScrollingChild;

    invoke-interface {p1, p2, p3, p4, p5}, Lcom/dcloud/android/v4/view/NestedScrollingChild;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .registers 14

    .line 1
    instance-of v0, p1, Lcom/dcloud/android/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_11

    .line 2
    move-object v1, p1

    check-cast v1, Lcom/dcloud/android/v4/view/NestedScrollingChild;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v1 .. v6}, Lcom/dcloud/android/v4/view/NestedScrollingChild;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public dispatchStartTemporaryDetach(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/dcloud/android/v4/view/ViewCompat$BaseViewCompatImpl;->mTempDetachBound:Z

    if-nez v0, :cond_7

    .line 2
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/ViewCompat$BaseViewCompatImpl;->bindTempDetach()V

    .line 4
    :cond_7
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1b

    const/4 v1, 0x0

    :try_start_c
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_12

    goto :goto_1e

    :catch_12
    move-exception p1

    const-string v0, "ViewCompat"

    const-string v1, "Error calling dispatchStartTemporaryDetach"

    .line 8
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    .line 12
    :cond_1b
    invoke-virtual {p1}, Landroid/view/View;->onStartTemporaryDetach()V

    :goto_1e
    return-void
.end method

.method public getAccessibilityLiveRegion(Landroid/view/View;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAlpha(Landroid/view/View;)F
    .registers 2

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatBase;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatBase;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    return-object p1
.end method

.method public getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getElevation(Landroid/view/View;)F
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getFitsSystemWindows(Landroid/view/View;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method getFrameTime()J
    .registers 3

    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public getImportantForAccessibility(Landroid/view/View;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getLabelFor(Landroid/view/View;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getLayerType(Landroid/view/View;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getLayoutDirection(Landroid/view/View;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getMeasuredHeightAndState(Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    return p1
.end method

.method public getMeasuredState(Landroid/view/View;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getMeasuredWidthAndState(Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    return p1
.end method

.method public getMinimumHeight(Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatBase;->getMinimumHeight(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getMinimumWidth(Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatBase;->getMinimumWidth(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getOverScrollMode(Landroid/view/View;)I
    .registers 2

    const/4 p1, 0x2

    return p1
.end method

.method public getPaddingEnd(Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    return p1
.end method

.method public getPaddingStart(Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    return p1
.end method

.method public getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    return-object p1
.end method

.method public getPivotX(Landroid/view/View;)F
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getPivotY(Landroid/view/View;)F
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getRotation(Landroid/view/View;)F
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getRotationX(Landroid/view/View;)F
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getRotationY(Landroid/view/View;)F
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getScaleX(Landroid/view/View;)F
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getScaleY(Landroid/view/View;)F
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTranslationX(Landroid/view/View;)F
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getTranslationY(Landroid/view/View;)F
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getTranslationZ(Landroid/view/View;)F
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getWindowSystemUiVisibility(Landroid/view/View;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getX(Landroid/view/View;)F
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getY(Landroid/view/View;)F
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getZ(Landroid/view/View;)F
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$BaseViewCompatImpl;->getTranslationZ(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$BaseViewCompatImpl;->getElevation(Landroid/view/View;)F

    move-result p1

    add-float/2addr v0, p1

    return v0
.end method

.method public hasAccessibilityDelegate(Landroid/view/View;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public hasNestedScrollingParent(Landroid/view/View;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Lcom/dcloud/android/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_b

    .line 2
    check-cast p1, Lcom/dcloud/android/v4/view/NestedScrollingChild;

    invoke-interface {p1}, Lcom/dcloud/android/v4/view/NestedScrollingChild;->hasNestedScrollingParent()Z

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public hasOverlappingRendering(Landroid/view/View;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public hasTransientState(Landroid/view/View;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public isAttachedToWindow(Landroid/view/View;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatBase;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public isImportantForAccessibility(Landroid/view/View;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public isLaidOut(Landroid/view/View;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatBase;->isLaidOut(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public isNestedScrollingEnabled(Landroid/view/View;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Lcom/dcloud/android/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_b

    .line 2
    check-cast p1, Lcom/dcloud/android/v4/view/NestedScrollingChild;

    invoke-interface {p1}, Lcom/dcloud/android/v4/view/NestedScrollingChild;->isNestedScrollingEnabled()Z

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public isOpaque(Landroid/view/View;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method public isPaddingRelative(Landroid/view/View;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public jumpDrawablesToCurrentState(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Lcom/dcloud/android/v4/view/WindowInsetsCompat;)Lcom/dcloud/android/v4/view/WindowInsetsCompat;
    .registers 3

    return-object p2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 3

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .registers 6

    .line 2
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->invalidate(IIII)V

    return-void
.end method

.method public postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/ViewCompat$BaseViewCompatImpl;->getFrameTime()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/android/v4/view/ViewCompat$BaseViewCompatImpl;->getFrameTime()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public requestApplyInsets(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public resolveSizeAndState(III)I
    .registers 4

    .line 1
    invoke-static {p1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    return p1
.end method

.method public setAccessibilityDelegate(Landroid/view/View;Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;)V
    .registers 3

    return-void
.end method

.method public setAccessibilityLiveRegion(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method public setActivated(Landroid/view/View;Z)V
    .registers 3

    return-void
.end method

.method public setAlpha(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatBase;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatBase;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V
    .registers 3

    return-void
.end method

.method public setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3

    return-void
.end method

.method public setElevation(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public setFitsSystemWindows(Landroid/view/View;Z)V
    .registers 3

    return-void
.end method

.method public setHasTransientState(Landroid/view/View;Z)V
    .registers 3

    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method public setLabelFor(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method public setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .registers 3

    return-void
.end method

.method public setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .registers 4

    return-void
.end method

.method public setLayoutDirection(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method public setNestedScrollingEnabled(Landroid/view/View;Z)V
    .registers 4

    .line 1
    instance-of v0, p1, Lcom/dcloud/android/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_9

    .line 2
    check-cast p1, Lcom/dcloud/android/v4/view/NestedScrollingChild;

    invoke-interface {p1, p2}, Lcom/dcloud/android/v4/view/NestedScrollingChild;->setNestedScrollingEnabled(Z)V

    :cond_9
    return-void
.end method

.method public setOnApplyWindowInsetsListener(Landroid/view/View;Lcom/dcloud/android/v4/view/OnApplyWindowInsetsListener;)V
    .registers 3

    return-void
.end method

.method public setOverScrollMode(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method public setPaddingRelative(Landroid/view/View;IIII)V
    .registers 6

    .line 1
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setPivotX(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public setPivotY(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public setRotation(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public setRotationX(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public setRotationY(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public setSaveFromParentEnabled(Landroid/view/View;Z)V
    .registers 3

    return-void
.end method

.method public setScaleX(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public setScaleY(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public setTranslationX(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public setTranslationY(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public setTranslationZ(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public setX(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public setY(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public startNestedScroll(Landroid/view/View;I)Z
    .registers 4

    .line 1
    instance-of v0, p1, Lcom/dcloud/android/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_b

    .line 2
    check-cast p1, Lcom/dcloud/android/v4/view/NestedScrollingChild;

    invoke-interface {p1, p2}, Lcom/dcloud/android/v4/view/NestedScrollingChild;->startNestedScroll(I)Z

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public stopNestedScroll(Landroid/view/View;)V
    .registers 3

    .line 1
    instance-of v0, p1, Lcom/dcloud/android/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_9

    .line 2
    check-cast p1, Lcom/dcloud/android/v4/view/NestedScrollingChild;

    invoke-interface {p1}, Lcom/dcloud/android/v4/view/NestedScrollingChild;->stopNestedScroll()V

    :cond_9
    return-void
.end method

###### Class com.dcloud.android.v4.view.ViewCompat.EclairMr1ViewCompatImpl (com.dcloud.android.v4.view.ViewCompat$EclairMr1ViewCompatImpl)
.class Lcom/dcloud/android/v4/view/ViewCompat$EclairMr1ViewCompatImpl;
.super Lcom/dcloud/android/v4/view/ViewCompat$BaseViewCompatImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EclairMr1ViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/ViewCompat$BaseViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public isOpaque(Landroid/view/View;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatEclairMr1;->isOpaque(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatEclairMr1;->setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V

    return-void
.end method

###### Class com.dcloud.android.v4.view.ViewCompat.GBViewCompatImpl (com.dcloud.android.v4.view.ViewCompat$GBViewCompatImpl)
.class Lcom/dcloud/android/v4/view/ViewCompat$GBViewCompatImpl;
.super Lcom/dcloud/android/v4/view/ViewCompat$EclairMr1ViewCompatImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GBViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/ViewCompat$EclairMr1ViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getOverScrollMode(Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatGingerbread;->getOverScrollMode(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public setOverScrollMode(Landroid/view/View;I)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatGingerbread;->setOverScrollMode(Landroid/view/View;I)V

    return-void
.end method

###### Class com.dcloud.android.v4.view.ViewCompat.HCViewCompatImpl (com.dcloud.android.v4.view.ViewCompat$HCViewCompatImpl)
.class Lcom/dcloud/android/v4/view/ViewCompat$HCViewCompatImpl;
.super Lcom/dcloud/android/v4/view/ViewCompat$GBViewCompatImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HCViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/ViewCompat$GBViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public combineMeasuredStates(II)I
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatHC;->combineMeasuredStates(II)I

    move-result p1

    return p1
.end method

.method public getAlpha(Landroid/view/View;)F
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatHC;->getAlpha(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method getFrameTime()J
    .registers 3

    .line 1
    invoke-static {}, Lcom/dcloud/android/v4/view/ViewCompatHC;->getFrameTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLayerType(Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatHC;->getLayerType(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getMeasuredHeightAndState(Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatHC;->getMeasuredHeightAndState(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getMeasuredState(Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatHC;->getMeasuredState(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getMeasuredWidthAndState(Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatHC;->getMeasuredWidthAndState(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getPivotX(Landroid/view/View;)F
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatHC;->getPivotX(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public getPivotY(Landroid/view/View;)F
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatHC;->getPivotY(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public getRotation(Landroid/view/View;)F
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatHC;->getRotation(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public getRotationX(Landroid/view/View;)F
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatHC;->getRotationX(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public getRotationY(Landroid/view/View;)F
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatHC;->getRotationY(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public getScaleX(Landroid/view/View;)F
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatHC;->getScaleX(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public getScaleY(Landroid/view/View;)F
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatHC;->getScaleY(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public getTranslationX(Landroid/view/View;)F
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatHC;->getTranslationX(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public getTranslationY(Landroid/view/View;)F
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatHC;->getTranslationY(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public getX(Landroid/view/View;)F
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatHC;->getX(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public getY(Landroid/view/View;)F
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatHC;->getY(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public jumpDrawablesToCurrentState(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatHC;->jumpDrawablesToCurrentState(Landroid/view/View;)V

    return-void
.end method

.method public resolveSizeAndState(III)I
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Lcom/dcloud/android/v4/view/ViewCompatHC;->resolveSizeAndState(III)I

    move-result p1

    return p1
.end method

.method public setActivated(Landroid/view/View;Z)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatHC;->setActivated(Landroid/view/View;Z)V

    return-void
.end method

.method public setAlpha(Landroid/view/View;F)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatHC;->setAlpha(Landroid/view/View;F)V

    return-void
.end method

.method public setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/dcloud/android/v4/view/ViewCompat$HCViewCompatImpl;->getLayerType(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/dcloud/android/v4/view/ViewCompat$HCViewCompatImpl;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Lcom/dcloud/android/v4/view/ViewCompatHC;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    return-void
.end method

.method public setPivotX(Landroid/view/View;F)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatHC;->setPivotX(Landroid/view/View;F)V

    return-void
.end method

.method public setPivotY(Landroid/view/View;F)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatHC;->setPivotY(Landroid/view/View;F)V

    return-void
.end method

.method public setRotation(Landroid/view/View;F)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatHC;->setRotation(Landroid/view/View;F)V

    return-void
.end method

.method public setRotationX(Landroid/view/View;F)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatHC;->setRotationX(Landroid/view/View;F)V

    return-void
.end method

.method public setRotationY(Landroid/view/View;F)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatHC;->setRotationY(Landroid/view/View;F)V

    return-void
.end method

.method public setSaveFromParentEnabled(Landroid/view/View;Z)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatHC;->setSaveFromParentEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public setScaleX(Landroid/view/View;F)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatHC;->setScaleX(Landroid/view/View;F)V

    return-void
.end method

.method public setScaleY(Landroid/view/View;F)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatHC;->setScaleY(Landroid/view/View;F)V

    return-void
.end method

.method public setTranslationX(Landroid/view/View;F)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatHC;->setTranslationX(Landroid/view/View;F)V

    return-void
.end method

.method public setTranslationY(Landroid/view/View;F)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatHC;->setTranslationY(Landroid/view/View;F)V

    return-void
.end method

.method public setX(Landroid/view/View;F)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatHC;->setX(Landroid/view/View;F)V

    return-void
.end method

.method public setY(Landroid/view/View;F)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatHC;->setY(Landroid/view/View;F)V

    return-void
.end method

###### Class com.dcloud.android.v4.view.ViewCompat.ICSViewCompatImpl (com.dcloud.android.v4.view.ViewCompat$ICSViewCompatImpl)
.class Lcom/dcloud/android/v4/view/ViewCompat$ICSViewCompatImpl;
.super Lcom/dcloud/android/v4/view/ViewCompat$HCViewCompatImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICSViewCompatImpl"
.end annotation


# static fields
.field static accessibilityDelegateCheckFailed:Z = false

.field static mAccessibilityDelegateField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/ViewCompat$HCViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public animate(Landroid/view/View;)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewCompat$BaseViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/dcloud/android/v4/view/ViewCompat$BaseViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    .line 5
    :cond_b
    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewCompat$BaseViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;

    if-nez v0, :cond_1f

    .line 7
    new-instance v0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;

    invoke-direct {v0, p1}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;-><init>(Landroid/view/View;)V

    .line 8
    iget-object v1, p0, Lcom/dcloud/android/v4/view/ViewCompat$BaseViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-object v0
.end method

.method public canScrollHorizontally(Landroid/view/View;I)Z
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatICS;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public canScrollVertically(Landroid/view/View;I)Z
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatICS;->canScrollVertically(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public hasAccessibilityDelegate(Landroid/view/View;)Z
    .registers 6

    .line 1
    sget-boolean v0, Lcom/dcloud/android/v4/view/ViewCompat$ICSViewCompatImpl;->accessibilityDelegateCheckFailed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 4
    :cond_6
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat$ICSViewCompatImpl;->mAccessibilityDelegateField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    if-nez v0, :cond_1c

    .line 6
    :try_start_b
    const-class v0, Landroid/view/View;

    const-string v3, "mAccessibilityDelegate"

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/dcloud/android/v4/view/ViewCompat$ICSViewCompatImpl;->mAccessibilityDelegateField:Ljava/lang/reflect/Field;

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_19

    goto :goto_1c

    .line 10
    :catchall_19
    sput-boolean v2, Lcom/dcloud/android/v4/view/ViewCompat$ICSViewCompatImpl;->accessibilityDelegateCheckFailed:Z

    return v1

    .line 15
    :cond_1c
    :goto_1c
    :try_start_1c
    sget-object v0, Lcom/dcloud/android/v4/view/ViewCompat$ICSViewCompatImpl;->mAccessibilityDelegateField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_26

    if-eqz p1, :cond_25

    const/4 v1, 0x1

    :cond_25
    return v1

    .line 17
    :catchall_26
    sput-boolean v2, Lcom/dcloud/android/v4/view/ViewCompat$ICSViewCompatImpl;->accessibilityDelegateCheckFailed:Z

    return v1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatICS;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 3

    .line 1
    invoke-virtual {p2}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;->getInfo()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatICS;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatICS;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View;Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;)V
    .registers 3

    if-nez p2, :cond_4

    const/4 p2, 0x0

    goto :goto_8

    .line 1
    :cond_4
    invoke-virtual {p2}, Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;->getBridge()Ljava/lang/Object;

    move-result-object p2

    .line 2
    :goto_8
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatICS;->setAccessibilityDelegate(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public setFitsSystemWindows(Landroid/view/View;Z)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatICS;->setFitsSystemWindows(Landroid/view/View;Z)V

    return-void
.end method

###### Class com.dcloud.android.v4.view.ViewCompat.ImportantForAccessibility (com.dcloud.android.v4.view.ViewCompat$ImportantForAccessibility)
.class interface abstract annotation Lcom/dcloud/android/v4/view/ViewCompat$ImportantForAccessibility;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x260a
    name = "ImportantForAccessibility"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.dcloud.android.v4.view.ViewCompat.JBViewCompatImpl (com.dcloud.android.v4.view.ViewCompat$JBViewCompatImpl)
.class Lcom/dcloud/android/v4/view/ViewCompat$JBViewCompatImpl;
.super Lcom/dcloud/android/v4/view/ViewCompat$ICSViewCompatImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JBViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/ViewCompat$ICSViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessibilityNodeProvider(Landroid/view/View;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatJB;->getAccessibilityNodeProvider(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 3
    new-instance v0, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeProviderCompat;

    invoke-direct {v0, p1}, Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeProviderCompat;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_c
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFitsSystemWindows(Landroid/view/View;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatJB;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public getImportantForAccessibility(Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatJB;->getImportantForAccessibility(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getMinimumHeight(Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatJB;->getMinimumHeight(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getMinimumWidth(Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatJB;->getMinimumWidth(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatJB;->getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object p1

    return-object p1
.end method

.method public hasOverlappingRendering(Landroid/view/View;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatJB;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public hasTransientState(Landroid/view/View;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatJB;->hasTransientState(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Lcom/dcloud/android/v4/view/ViewCompatJB;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatJB;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .registers 6

    .line 2
    invoke-static {p1, p2, p3, p4, p5}, Lcom/dcloud/android/v4/view/ViewCompatJB;->postInvalidateOnAnimation(Landroid/view/View;IIII)V

    return-void
.end method

.method public postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatJB;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 5

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/dcloud/android/v4/view/ViewCompatJB;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public requestApplyInsets(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatJB;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method public setHasTransientState(Landroid/view/View;Z)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatJB;->setHasTransientState(Landroid/view/View;Z)V

    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
    .registers 4

    const/4 v0, 0x4

    if-ne p2, v0, :cond_4

    const/4 p2, 0x2

    .line 1
    :cond_4
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatJB;->setImportantForAccessibility(Landroid/view/View;I)V

    return-void
.end method

###### Class com.dcloud.android.v4.view.ViewCompat.JbMr1ViewCompatImpl (com.dcloud.android.v4.view.ViewCompat$JbMr1ViewCompatImpl)
.class Lcom/dcloud/android/v4/view/ViewCompat$JbMr1ViewCompatImpl;
.super Lcom/dcloud/android/v4/view/ViewCompat$JBViewCompatImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JbMr1ViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/ViewCompat$JBViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getLabelFor(Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatJellybeanMr1;->getLabelFor(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getLayoutDirection(Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatJellybeanMr1;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getPaddingEnd(Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatJellybeanMr1;->getPaddingEnd(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getPaddingStart(Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatJellybeanMr1;->getPaddingStart(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getWindowSystemUiVisibility(Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatJellybeanMr1;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public isPaddingRelative(Landroid/view/View;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatJellybeanMr1;->isPaddingRelative(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public setLabelFor(Landroid/view/View;I)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatJellybeanMr1;->setLabelFor(Landroid/view/View;I)V

    return-void
.end method

.method public setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatJellybeanMr1;->setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setLayoutDirection(Landroid/view/View;I)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatJellybeanMr1;->setLayoutDirection(Landroid/view/View;I)V

    return-void
.end method

.method public setPaddingRelative(Landroid/view/View;IIII)V
    .registers 6

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/dcloud/android/v4/view/ViewCompatJellybeanMr1;->setPaddingRelative(Landroid/view/View;IIII)V

    return-void
.end method

###### Class com.dcloud.android.v4.view.ViewCompat.JbMr2ViewCompatImpl (com.dcloud.android.v4.view.ViewCompat$JbMr2ViewCompatImpl)
.class Lcom/dcloud/android/v4/view/ViewCompat$JbMr2ViewCompatImpl;
.super Lcom/dcloud/android/v4/view/ViewCompat$JbMr1ViewCompatImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JbMr2ViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/ViewCompat$JbMr1ViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatJellybeanMr2;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatJellybeanMr2;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

###### Class com.dcloud.android.v4.view.ViewCompat.KitKatViewCompatImpl (com.dcloud.android.v4.view.ViewCompat$KitKatViewCompatImpl)
.class Lcom/dcloud/android/v4/view/ViewCompat$KitKatViewCompatImpl;
.super Lcom/dcloud/android/v4/view/ViewCompat$JbMr2ViewCompatImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KitKatViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/ViewCompat$JbMr2ViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessibilityLiveRegion(Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatKitKat;->getAccessibilityLiveRegion(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public isAttachedToWindow(Landroid/view/View;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatKitKat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public isLaidOut(Landroid/view/View;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatKitKat;->isLaidOut(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public setAccessibilityLiveRegion(Landroid/view/View;I)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatKitKat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatJB;->setImportantForAccessibility(Landroid/view/View;I)V

    return-void
.end method

###### Class com.dcloud.android.v4.view.ViewCompat.LayerType (com.dcloud.android.v4.view.ViewCompat$LayerType)
.class interface abstract annotation Lcom/dcloud/android/v4/view/ViewCompat$LayerType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x260a
    name = "LayerType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.dcloud.android.v4.view.ViewCompat.LayoutDirectionMode (com.dcloud.android.v4.view.ViewCompat$LayoutDirectionMode)
.class interface abstract annotation Lcom/dcloud/android/v4/view/ViewCompat$LayoutDirectionMode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x260a
    name = "LayoutDirectionMode"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.dcloud.android.v4.view.ViewCompat.LollipopViewCompatImpl (com.dcloud.android.v4.view.ViewCompat$LollipopViewCompatImpl)
.class Lcom/dcloud/android/v4/view/ViewCompat$LollipopViewCompatImpl;
.super Lcom/dcloud/android/v4/view/ViewCompat$KitKatViewCompatImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LollipopViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/ViewCompat$KitKatViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchApplyWindowInsets(Landroid/view/View;Lcom/dcloud/android/v4/view/WindowInsetsCompat;)Lcom/dcloud/android/v4/view/WindowInsetsCompat;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->dispatchApplyWindowInsets(Landroid/view/View;Lcom/dcloud/android/v4/view/WindowInsetsCompat;)Lcom/dcloud/android/v4/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method

.method public dispatchNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->dispatchNestedFling(Landroid/view/View;FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(Landroid/view/View;FF)Z
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->dispatchNestedPreFling(Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .registers 6

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .registers 7

    .line 1
    invoke-static/range {p1 .. p6}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->dispatchNestedScroll(Landroid/view/View;IIII[I)Z

    move-result p1

    return p1
.end method

.method public getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    return-object p1
.end method

.method public getElevation(Landroid/view/View;)F
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->getElevation(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTranslationZ(Landroid/view/View;)F
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->getTranslationZ(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public getZ(Landroid/view/View;)F
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->getZ(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public hasNestedScrollingParent(Landroid/view/View;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->hasNestedScrollingParent(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public isImportantForAccessibility(Landroid/view/View;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->isImportantForAccessibility(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public isNestedScrollingEnabled(Landroid/view/View;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->isNestedScrollingEnabled(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onApplyWindowInsets(Landroid/view/View;Lcom/dcloud/android/v4/view/WindowInsetsCompat;)Lcom/dcloud/android/v4/view/WindowInsetsCompat;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->onApplyWindowInsets(Landroid/view/View;Lcom/dcloud/android/v4/view/WindowInsetsCompat;)Lcom/dcloud/android/v4/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method

.method public requestApplyInsets(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method public setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setElevation(Landroid/view/View;F)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->setElevation(Landroid/view/View;F)V

    return-void
.end method

.method public setNestedScrollingEnabled(Landroid/view/View;Z)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public setOnApplyWindowInsetsListener(Landroid/view/View;Lcom/dcloud/android/v4/view/OnApplyWindowInsetsListener;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->setOnApplyWindowInsetsListener(Landroid/view/View;Lcom/dcloud/android/v4/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public setTranslationZ(Landroid/view/View;F)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->setTranslationZ(Landroid/view/View;F)V

    return-void
.end method

.method public startNestedScroll(Landroid/view/View;I)Z
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->startNestedScroll(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/dcloud/android/v4/view/ViewCompatLollipop;->stopNestedScroll(Landroid/view/View;)V

    return-void
.end method

###### Class com.dcloud.android.v4.view.ViewCompat.OverScroll (com.dcloud.android.v4.view.ViewCompat$OverScroll)
.class interface abstract annotation Lcom/dcloud/android/v4/view/ViewCompat$OverScroll;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x260a
    name = "OverScroll"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.dcloud.android.v4.view.ViewCompat.ResolvedLayoutDirectionMode (com.dcloud.android.v4.view.ViewCompat$ResolvedLayoutDirectionMode)
.class interface abstract annotation Lcom/dcloud/android/v4/view/ViewCompat$ResolvedLayoutDirectionMode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x260a
    name = "ResolvedLayoutDirectionMode"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.dcloud.android.v4.view.ViewCompat.ViewCompatImpl (com.dcloud.android.v4.view.ViewCompat$ViewCompatImpl)
.class interface abstract Lcom/dcloud/android/v4/view/ViewCompat$ViewCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ViewCompatImpl"
.end annotation


# virtual methods
.method public abstract animate(Landroid/view/View;)Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompat;
.end method

.method public abstract canScrollHorizontally(Landroid/view/View;I)Z
.end method

.method public abstract canScrollVertically(Landroid/view/View;I)Z
.end method

.method public abstract combineMeasuredStates(II)I
.end method

.method public abstract dispatchApplyWindowInsets(Landroid/view/View;Lcom/dcloud/android/v4/view/WindowInsetsCompat;)Lcom/dcloud/android/v4/view/WindowInsetsCompat;
.end method

.method public abstract dispatchFinishTemporaryDetach(Landroid/view/View;)V
.end method

.method public abstract dispatchNestedFling(Landroid/view/View;FFZ)Z
.end method

.method public abstract dispatchNestedPreFling(Landroid/view/View;FF)Z
.end method

.method public abstract dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
.end method

.method public abstract dispatchNestedScroll(Landroid/view/View;IIII[I)Z
.end method

.method public abstract dispatchStartTemporaryDetach(Landroid/view/View;)V
.end method

.method public abstract getAccessibilityLiveRegion(Landroid/view/View;)I
.end method

.method public abstract getAccessibilityNodeProvider(Landroid/view/View;)Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeProviderCompat;
.end method

.method public abstract getAlpha(Landroid/view/View;)F
.end method

.method public abstract getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
.end method

.method public abstract getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
.end method

.method public abstract getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
.end method

.method public abstract getElevation(Landroid/view/View;)F
.end method

.method public abstract getFitsSystemWindows(Landroid/view/View;)Z
.end method

.method public abstract getImportantForAccessibility(Landroid/view/View;)I
.end method

.method public abstract getLabelFor(Landroid/view/View;)I
.end method

.method public abstract getLayerType(Landroid/view/View;)I
.end method

.method public abstract getLayoutDirection(Landroid/view/View;)I
.end method

.method public abstract getMeasuredHeightAndState(Landroid/view/View;)I
.end method

.method public abstract getMeasuredState(Landroid/view/View;)I
.end method

.method public abstract getMeasuredWidthAndState(Landroid/view/View;)I
.end method

.method public abstract getMinimumHeight(Landroid/view/View;)I
.end method

.method public abstract getMinimumWidth(Landroid/view/View;)I
.end method

.method public abstract getOverScrollMode(Landroid/view/View;)I
.end method

.method public abstract getPaddingEnd(Landroid/view/View;)I
.end method

.method public abstract getPaddingStart(Landroid/view/View;)I
.end method

.method public abstract getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
.end method

.method public abstract getPivotX(Landroid/view/View;)F
.end method

.method public abstract getPivotY(Landroid/view/View;)F
.end method

.method public abstract getRotation(Landroid/view/View;)F
.end method

.method public abstract getRotationX(Landroid/view/View;)F
.end method

.method public abstract getRotationY(Landroid/view/View;)F
.end method

.method public abstract getScaleX(Landroid/view/View;)F
.end method

.method public abstract getScaleY(Landroid/view/View;)F
.end method

.method public abstract getTransitionName(Landroid/view/View;)Ljava/lang/String;
.end method

.method public abstract getTranslationX(Landroid/view/View;)F
.end method

.method public abstract getTranslationY(Landroid/view/View;)F
.end method

.method public abstract getTranslationZ(Landroid/view/View;)F
.end method

.method public abstract getWindowSystemUiVisibility(Landroid/view/View;)I
.end method

.method public abstract getX(Landroid/view/View;)F
.end method

.method public abstract getY(Landroid/view/View;)F
.end method

.method public abstract getZ(Landroid/view/View;)F
.end method

.method public abstract hasAccessibilityDelegate(Landroid/view/View;)Z
.end method

.method public abstract hasNestedScrollingParent(Landroid/view/View;)Z
.end method

.method public abstract hasOverlappingRendering(Landroid/view/View;)Z
.end method

.method public abstract hasTransientState(Landroid/view/View;)Z
.end method

.method public abstract isAttachedToWindow(Landroid/view/View;)Z
.end method

.method public abstract isImportantForAccessibility(Landroid/view/View;)Z
.end method

.method public abstract isLaidOut(Landroid/view/View;)Z
.end method

.method public abstract isNestedScrollingEnabled(Landroid/view/View;)Z
.end method

.method public abstract isOpaque(Landroid/view/View;)Z
.end method

.method public abstract isPaddingRelative(Landroid/view/View;)Z
.end method

.method public abstract jumpDrawablesToCurrentState(Landroid/view/View;)V
.end method

.method public abstract onApplyWindowInsets(Landroid/view/View;Lcom/dcloud/android/v4/view/WindowInsetsCompat;)Lcom/dcloud/android/v4/view/WindowInsetsCompat;
.end method

.method public abstract onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public abstract onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/dcloud/android/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
.end method

.method public abstract onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public abstract performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
.end method

.method public abstract postInvalidateOnAnimation(Landroid/view/View;)V
.end method

.method public abstract postInvalidateOnAnimation(Landroid/view/View;IIII)V
.end method

.method public abstract postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
.end method

.method public abstract postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
.end method

.method public abstract requestApplyInsets(Landroid/view/View;)V
.end method

.method public abstract resolveSizeAndState(III)I
.end method

.method public abstract setAccessibilityDelegate(Landroid/view/View;Lcom/dcloud/android/v4/view/AccessibilityDelegateCompat;)V
.end method

.method public abstract setAccessibilityLiveRegion(Landroid/view/View;I)V
.end method

.method public abstract setActivated(Landroid/view/View;Z)V
.end method

.method public abstract setAlpha(Landroid/view/View;F)V
.end method

.method public abstract setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
.end method

.method public abstract setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
.end method

.method public abstract setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V
.end method

.method public abstract setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
.end method

.method public abstract setElevation(Landroid/view/View;F)V
.end method

.method public abstract setFitsSystemWindows(Landroid/view/View;Z)V
.end method

.method public abstract setHasTransientState(Landroid/view/View;Z)V
.end method

.method public abstract setImportantForAccessibility(Landroid/view/View;I)V
.end method

.method public abstract setLabelFor(Landroid/view/View;I)V
.end method

.method public abstract setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
.end method

.method public abstract setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
.end method

.method public abstract setLayoutDirection(Landroid/view/View;I)V
.end method

.method public abstract setNestedScrollingEnabled(Landroid/view/View;Z)V
.end method

.method public abstract setOnApplyWindowInsetsListener(Landroid/view/View;Lcom/dcloud/android/v4/view/OnApplyWindowInsetsListener;)V
.end method

.method public abstract setOverScrollMode(Landroid/view/View;I)V
.end method

.method public abstract setPaddingRelative(Landroid/view/View;IIII)V
.end method

.method public abstract setPivotX(Landroid/view/View;F)V
.end method

.method public abstract setPivotY(Landroid/view/View;F)V
.end method

.method public abstract setRotation(Landroid/view/View;F)V
.end method

.method public abstract setRotationX(Landroid/view/View;F)V
.end method

.method public abstract setRotationY(Landroid/view/View;F)V
.end method

.method public abstract setSaveFromParentEnabled(Landroid/view/View;Z)V
.end method

.method public abstract setScaleX(Landroid/view/View;F)V
.end method

.method public abstract setScaleY(Landroid/view/View;F)V
.end method

.method public abstract setTransitionName(Landroid/view/View;Ljava/lang/String;)V
.end method

.method public abstract setTranslationX(Landroid/view/View;F)V
.end method

.method public abstract setTranslationY(Landroid/view/View;F)V
.end method

.method public abstract setTranslationZ(Landroid/view/View;F)V
.end method

.method public abstract setX(Landroid/view/View;F)V
.end method

.method public abstract setY(Landroid/view/View;F)V
.end method

.method public abstract startNestedScroll(Landroid/view/View;I)Z
.end method

.method public abstract stopNestedScroll(Landroid/view/View;)V
.end method
