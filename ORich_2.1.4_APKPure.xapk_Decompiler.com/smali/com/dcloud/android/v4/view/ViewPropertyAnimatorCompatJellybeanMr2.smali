###### Class com.dcloud.android.v4.view.ViewPropertyAnimatorCompatJellybeanMr2 (com.dcloud.android.v4.view.ViewPropertyAnimatorCompatJellybeanMr2)
.class Lcom/dcloud/android/v4/view/ViewPropertyAnimatorCompatJellybeanMr2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInterpolator(Landroid/view/View;)Landroid/view/animation/Interpolator;
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object p0

    check-cast p0, Landroid/view/animation/Interpolator;

    return-object p0
.end method
