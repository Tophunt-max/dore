###### Class com.dcloud.android.v4.view.ViewParentCompat (com.dcloud.android.v4.view.ViewParentCompat)
.class public Lcom/dcloud/android/v4/view/ViewParentCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatLollipopImpl;,
        Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatKitKatImpl;,
        Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatICSImpl;,
        Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatStubImpl;,
        Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    .line 3
    new-instance v0, Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatLollipopImpl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatLollipopImpl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/ViewParentCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatImpl;

    goto :goto_2d

    :cond_e
    const/16 v1, 0x13

    if-lt v0, v1, :cond_1a

    .line 5
    new-instance v0, Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatKitKatImpl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatKitKatImpl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/ViewParentCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatImpl;

    goto :goto_2d

    :cond_1a
    const/16 v1, 0xe

    if-lt v0, v1, :cond_26

    .line 7
    new-instance v0, Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatICSImpl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatICSImpl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/ViewParentCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatImpl;

    goto :goto_2d

    .line 9
    :cond_26
    new-instance v0, Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatStubImpl;

    invoke-direct {v0}, Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatStubImpl;-><init>()V

    sput-object v0, Lcom/dcloud/android/v4/view/ViewParentCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatImpl;

    :goto_2d
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifySubtreeAccessibilityStateChanged(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewParentCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatImpl;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatImpl;->notifySubtreeAccessibilityStateChanged(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method public static onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .registers 11

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewParentCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatImpl;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatImpl;->onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result p0

    return p0
.end method

.method public static onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .registers 5

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewParentCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatImpl;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatImpl;->onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result p0

    return p0
.end method

.method public static onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    .registers 11

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewParentCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatImpl;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatImpl;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V

    return-void
.end method

.method public static onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    .registers 13

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewParentCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatImpl;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatImpl;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V

    return-void
.end method

.method public static onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewParentCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatImpl;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatImpl;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method public static onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
    .registers 5

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewParentCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatImpl;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatImpl;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewParentCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatImpl;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V

    return-void
.end method

.method public static requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    .line 1
    sget-object v0, Lcom/dcloud/android/v4/view/ViewParentCompat;->IMPL:Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatImpl;

    invoke-interface {v0, p0, p1, p2}, Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatImpl;->requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

###### Class com.dcloud.android.v4.view.ViewParentCompat.ViewParentCompatICSImpl (com.dcloud.android.v4.view.ViewParentCompat$ViewParentCompatICSImpl)
.class Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatICSImpl;
.super Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatStubImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/ViewParentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewParentCompatICSImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Lcom/dcloud/android/v4/view/ViewParentCompatICS;->requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

###### Class com.dcloud.android.v4.view.ViewParentCompat.ViewParentCompatImpl (com.dcloud.android.v4.view.ViewParentCompat$ViewParentCompatImpl)
.class interface abstract Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/ViewParentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ViewParentCompatImpl"
.end annotation


# virtual methods
.method public abstract notifySubtreeAccessibilityStateChanged(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
.end method

.method public abstract onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
.end method

.method public abstract onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z
.end method

.method public abstract onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V
.end method

.method public abstract onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V
.end method

.method public abstract onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
.end method

.method public abstract onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
.end method

.method public abstract onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V
.end method

.method public abstract requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
.end method

###### Class com.dcloud.android.v4.view.ViewParentCompat.ViewParentCompatKitKatImpl (com.dcloud.android.v4.view.ViewParentCompat$ViewParentCompatKitKatImpl)
.class Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatKitKatImpl;
.super Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatICSImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/ViewParentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewParentCompatKitKatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatICSImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public notifySubtreeAccessibilityStateChanged(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/dcloud/android/v4/view/ViewParentCompatKitKat;->notifySubtreeAccessibilityStateChanged(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

###### Class com.dcloud.android.v4.view.ViewParentCompat.ViewParentCompatLollipopImpl (com.dcloud.android.v4.view.ViewParentCompat$ViewParentCompatLollipopImpl)
.class Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatLollipopImpl;
.super Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatKitKatImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/ViewParentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewParentCompatLollipopImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatKitKatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .registers 6

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/dcloud/android/v4/view/ViewParentCompatLollipop;->onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .registers 5

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/dcloud/android/v4/view/ViewParentCompatLollipop;->onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    .registers 6

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/dcloud/android/v4/view/ViewParentCompatLollipop;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    .registers 7

    .line 1
    invoke-static/range {p1 .. p6}, Lcom/dcloud/android/v4/view/ViewParentCompatLollipop;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/dcloud/android/v4/view/ViewParentCompatLollipop;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
    .registers 5

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/dcloud/android/v4/view/ViewParentCompatLollipop;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-static {p1, p2}, Lcom/dcloud/android/v4/view/ViewParentCompatLollipop;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V

    return-void
.end method

###### Class com.dcloud.android.v4.view.ViewParentCompat.ViewParentCompatStubImpl (com.dcloud.android.v4.view.ViewParentCompat$ViewParentCompatStubImpl)
.class Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatStubImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dcloud/android/v4/view/ViewParentCompat$ViewParentCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/v4/view/ViewParentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewParentCompatStubImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifySubtreeAccessibilityStateChanged(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    return-void
.end method

.method public onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .registers 7

    .line 1
    instance-of v0, p1, Lcom/dcloud/android/v4/view/NestedScrollingParent;

    if-eqz v0, :cond_b

    .line 2
    check-cast p1, Lcom/dcloud/android/v4/view/NestedScrollingParent;

    invoke-interface {p1, p2, p3, p4, p5}, Lcom/dcloud/android/v4/view/NestedScrollingParent;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .registers 6

    .line 1
    instance-of v0, p1, Lcom/dcloud/android/v4/view/NestedScrollingParent;

    if-eqz v0, :cond_b

    .line 2
    check-cast p1, Lcom/dcloud/android/v4/view/NestedScrollingParent;

    invoke-interface {p1, p2, p3, p4}, Lcom/dcloud/android/v4/view/NestedScrollingParent;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    .registers 7

    .line 1
    instance-of v0, p1, Lcom/dcloud/android/v4/view/NestedScrollingParent;

    if-eqz v0, :cond_9

    .line 2
    check-cast p1, Lcom/dcloud/android/v4/view/NestedScrollingParent;

    invoke-interface {p1, p2, p3, p4, p5}, Lcom/dcloud/android/v4/view/NestedScrollingParent;->onNestedPreScroll(Landroid/view/View;II[I)V

    :cond_9
    return-void
.end method

.method public onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    .registers 14

    .line 1
    instance-of v0, p1, Lcom/dcloud/android/v4/view/NestedScrollingParent;

    if-eqz v0, :cond_f

    .line 2
    move-object v1, p1

    check-cast v1, Lcom/dcloud/android/v4/view/NestedScrollingParent;

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v1 .. v6}, Lcom/dcloud/android/v4/view/NestedScrollingParent;->onNestedScroll(Landroid/view/View;IIII)V

    :cond_f
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .registers 6

    .line 1
    instance-of v0, p1, Lcom/dcloud/android/v4/view/NestedScrollingParent;

    if-eqz v0, :cond_9

    .line 2
    check-cast p1, Lcom/dcloud/android/v4/view/NestedScrollingParent;

    invoke-interface {p1, p2, p3, p4}, Lcom/dcloud/android/v4/view/NestedScrollingParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    :cond_9
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
    .registers 6

    .line 1
    instance-of v0, p1, Lcom/dcloud/android/v4/view/NestedScrollingParent;

    if-eqz v0, :cond_b

    .line 2
    check-cast p1, Lcom/dcloud/android/v4/view/NestedScrollingParent;

    invoke-interface {p1, p2, p3, p4}, Lcom/dcloud/android/v4/view/NestedScrollingParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V
    .registers 4

    .line 1
    instance-of v0, p1, Lcom/dcloud/android/v4/view/NestedScrollingParent;

    if-eqz v0, :cond_9

    .line 2
    check-cast p1, Lcom/dcloud/android/v4/view/NestedScrollingParent;

    invoke-interface {p1, p2}, Lcom/dcloud/android/v4/view/NestedScrollingParent;->onStopNestedScroll(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    if-nez p2, :cond_4

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "accessibility"

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 3
    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x1

    return p1
.end method
