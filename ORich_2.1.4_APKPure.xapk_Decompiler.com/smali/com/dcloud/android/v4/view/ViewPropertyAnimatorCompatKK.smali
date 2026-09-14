###### Class com.dcloud.android.v4.view.ViewPropertyAnimatorCompatKK (com.dcloud.android.v4.view.ViewPropertyAnimatorCompatKK)
.class Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatKK;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setUpdateListener(Landroid/view/View;Lcom/dcloud/android/v4/view/ViewPropertyAnimatorUpdateListener;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatKK$1;

    invoke-direct {v1, p1, p0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatKK$1;-><init>(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorUpdateListener;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

###### Class com.dcloud.android.v4.view.ViewPropertyAnimatorCompatKK.AnonymousClass1 (com.dcloud.android.v4.view.ViewPropertyAnimatorCompatKK$1)
.class final Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatKK$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatKK;->setUpdateListener(Landroid/view/View;Lcom/dcloud/android/v4/view/ViewPropertyAnimatorUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorUpdateListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/dcloud/android/v4/view/ViewPropertyAnimatorUpdateListener;Landroid/view/View;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatKK$1;->val$listener:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorUpdateListener;

    iput-object p2, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatKK$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatKK$1;->val$listener:Lcom/dcloud/android/v4/view/ViewPropertyAnimatorUpdateListener;

    iget-object v0, p0, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatKK$1;->val$view:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/dcloud/android/v4/view/ViewPropertyAnimatorUpdateListener;->onAnimationUpdate(Landroid/view/View;)V

    return-void
.end method
