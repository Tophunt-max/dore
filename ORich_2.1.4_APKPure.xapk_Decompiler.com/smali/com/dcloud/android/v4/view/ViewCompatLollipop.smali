###### Class com.dcloud.android.v4.view.ViewCompatLollipop (com.dcloud.android.v4.view.ViewCompatLollipop)
.class Lcom/dcloud/android/v4/view/ViewCompatLollipop;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispatchApplyWindowInsets(Landroid/view/View;Lcom/dcloud/android/v4/view/WindowInsetsCompat;)Lcom/dcloud/android/v4/view/WindowInsetsCompat;
    .registers 3

    .line 1
    instance-of v0, p1, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;

    if-eqz v0, :cond_16

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;

    invoke-virtual {v0}, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;->unwrap()Landroid/view/WindowInsets;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    if-eq p0, v0, :cond_16

    .line 9
    new-instance p1, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;

    invoke-direct {p1, p0}, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;-><init>(Landroid/view/WindowInsets;)V

    :cond_16
    return-object p1
.end method

.method public static dispatchNestedFling(Landroid/view/View;FFZ)Z
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->dispatchNestedFling(FFZ)Z

    move-result p0

    return p0
.end method

.method public static dispatchNestedPreFling(Landroid/view/View;FF)Z
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->dispatchNestedPreFling(FF)Z

    move-result p0

    return p0
.end method

.method public static dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .registers 5

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->dispatchNestedPreScroll(II[I[I)Z

    move-result p0

    return p0
.end method

.method public static dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .registers 6

    .line 1
    invoke-virtual/range {p0 .. p5}, Landroid/view/View;->dispatchNestedScroll(IIII[I)Z

    move-result p0

    return p0
.end method

.method static getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method static getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public static getElevation(Landroid/view/View;)F
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result p0

    return p0
.end method

.method public static getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTranslationZ(Landroid/view/View;)F
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getTranslationZ()F

    move-result p0

    return p0
.end method

.method public static getZ(Landroid/view/View;)F
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getZ()F

    move-result p0

    return p0
.end method

.method public static hasNestedScrollingParent(Landroid/view/View;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->hasNestedScrollingParent()Z

    move-result p0

    return p0
.end method

.method public static isImportantForAccessibility(Landroid/view/View;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result p0

    return p0
.end method

.method public static isNestedScrollingEnabled(Landroid/view/View;)Z
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result p0

    return p0
.end method

.method public static onApplyWindowInsets(Landroid/view/View;Lcom/dcloud/android/v4/view/WindowInsetsCompat;)Lcom/dcloud/android/v4/view/WindowInsetsCompat;
    .registers 3

    .line 1
    instance-of v0, p1, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;

    if-eqz v0, :cond_16

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;

    invoke-virtual {v0}, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;->unwrap()Landroid/view/WindowInsets;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    if-eq p0, v0, :cond_16

    .line 9
    new-instance p1, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;

    invoke-direct {p1, p0}, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;-><init>(Landroid/view/WindowInsets;)V

    :cond_16
    return-object p1
.end method

.method public static requestApplyInsets(Landroid/view/View;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    return-void
.end method

.method static setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method static setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static setElevation(Landroid/view/View;F)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public static setNestedScrollingEnabled(Landroid/view/View;Z)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public static setOnApplyWindowInsetsListener(Landroid/view/View;Lcom/dcloud/android/v4/view/OnApplyWindowInsetsListener;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/dcloud/android/v4/view/ViewCompatLollipop$1;

    invoke-direct {v0, p1}, Lcom/dcloud/android/v4/view/ViewCompatLollipop$1;-><init>(Lcom/dcloud/android/v4/view/OnApplyWindowInsetsListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public static setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    return-void
.end method

.method public static setTranslationZ(Landroid/view/View;F)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationZ(F)V

    return-void
.end method

.method public static startNestedScroll(Landroid/view/View;I)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->startNestedScroll(I)Z

    move-result p0

    return p0
.end method

.method public static stopNestedScroll(Landroid/view/View;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->stopNestedScroll()V

    return-void
.end method

###### Class com.dcloud.android.v4.view.ViewCompatLollipop.AnonymousClass1 (com.dcloud.android.v4.view.ViewCompatLollipop$1)
.class final Lcom/dcloud/android/v4/view/ViewCompatLollipop$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dcloud/android/v4/view/ViewCompatLollipop;->setOnApplyWindowInsetsListener(Landroid/view/View;Lcom/dcloud/android/v4/view/OnApplyWindowInsetsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/dcloud/android/v4/view/OnApplyWindowInsetsListener;


# direct methods
.method constructor <init>(Lcom/dcloud/android/v4/view/OnApplyWindowInsetsListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/v4/view/ViewCompatLollipop$1;->val$listener:Lcom/dcloud/android/v4/view/OnApplyWindowInsetsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 4

    .line 1
    new-instance v0, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;

    invoke-direct {v0, p2}, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;-><init>(Landroid/view/WindowInsets;)V

    .line 3
    iget-object p2, p0, Lcom/dcloud/android/v4/view/ViewCompatLollipop$1;->val$listener:Lcom/dcloud/android/v4/view/OnApplyWindowInsetsListener;

    invoke-interface {p2, p1, v0}, Lcom/dcloud/android/v4/view/OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Lcom/dcloud/android/v4/view/WindowInsetsCompat;)Lcom/dcloud/android/v4/view/WindowInsetsCompat;

    move-result-object p1

    check-cast p1, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;

    .line 5
    invoke-virtual {p1}, Lcom/dcloud/android/v4/view/WindowInsetsCompatApi21;->unwrap()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
