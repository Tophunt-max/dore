###### Class com.dcloud.android.v4.view.ViewPropertyAnimatorCompatJB (com.dcloud.android.v4.view.ViewPropertyAnimatorCompatJB)
.class Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatJB;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setListener(Landroid/view/View;Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;)V
    .registers 4

    if-eqz p1, :cond_f

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatJB$1;

    invoke-direct {v1, p1, p0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatJB$1;-><init>(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_17

    .line 18
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :goto_17
    return-void
.end method

.method public static withEndAction(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public static withLayer(Landroid/view/View;)V
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public static withStartAction(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

###### Class com.dcloud.android.v4.view.ViewPropertyAnimatorCompatJB.AnonymousClass1 (com.dcloud.android.v4.view.ViewPropertyAnimatorCompatJB$1)
.class final Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatJB$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatJB;->setListener(Landroid/view/View;Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;Landroid/view/View;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatJB$1;->val$listener:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;

    iput-object p2, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatJB$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatJB$1;->val$listener:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;

    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatJB$1;->val$view:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;->onAnimationCancel(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatJB$1;->val$listener:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;

    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatJB$1;->val$view:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatJB$1;->val$listener:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;

    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatJB$1;->val$view:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    return-void
.end method
