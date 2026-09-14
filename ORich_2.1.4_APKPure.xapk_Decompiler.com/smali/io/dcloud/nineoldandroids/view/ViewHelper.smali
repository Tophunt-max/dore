###### Class io.dcloud.nineoldandroids.view.ViewHelper (io.dcloud.nineoldandroids.view.ViewHelper)
.class public final Lio/dcloud/nineoldandroids/view/ViewHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/nineoldandroids/view/ViewHelper$Honeycomb;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlpha(Landroid/view/View;)F
    .registers 2

    .line 1
    sget-boolean v0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_d

    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->getAlpha()F

    move-result p0

    goto :goto_11

    :cond_d
    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/ViewHelper$Honeycomb;->getAlpha(Landroid/view/View;)F

    move-result p0

    :goto_11
    return p0
.end method

.method public static getPivotX(Landroid/view/View;)F
    .registers 2

    .line 1
    sget-boolean v0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_d

    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->getPivotX()F

    move-result p0

    goto :goto_11

    :cond_d
    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/ViewHelper$Honeycomb;->getPivotX(Landroid/view/View;)F

    move-result p0

    :goto_11
    return p0
.end method

.method public static getPivotY(Landroid/view/View;)F
    .registers 2

    .line 1
    sget-boolean v0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_d

    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->getPivotY()F

    move-result p0

    goto :goto_11

    :cond_d
    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/ViewHelper$Honeycomb;->getPivotY(Landroid/view/View;)F

    move-result p0

    :goto_11
    return p0
.end method

.method public static getRotation(Landroid/view/View;)F
    .registers 2

    .line 1
    sget-boolean v0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_d

    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->getRotation()F

    move-result p0

    goto :goto_11

    :cond_d
    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/ViewHelper$Honeycomb;->getRotation(Landroid/view/View;)F

    move-result p0

    :goto_11
    return p0
.end method

.method public static getRotationX(Landroid/view/View;)F
    .registers 2

    .line 1
    sget-boolean v0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_d

    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->getRotationX()F

    move-result p0

    goto :goto_11

    :cond_d
    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/ViewHelper$Honeycomb;->getRotationX(Landroid/view/View;)F

    move-result p0

    :goto_11
    return p0
.end method

.method public static getRotationY(Landroid/view/View;)F
    .registers 2

    .line 1
    sget-boolean v0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_d

    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->getRotationY()F

    move-result p0

    goto :goto_11

    :cond_d
    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/ViewHelper$Honeycomb;->getRotationY(Landroid/view/View;)F

    move-result p0

    :goto_11
    return p0
.end method

.method public static getScaleX(Landroid/view/View;)F
    .registers 2

    .line 1
    sget-boolean v0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_d

    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->getScaleX()F

    move-result p0

    goto :goto_11

    :cond_d
    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/ViewHelper$Honeycomb;->getScaleX(Landroid/view/View;)F

    move-result p0

    :goto_11
    return p0
.end method

.method public static getScaleY(Landroid/view/View;)F
    .registers 2

    .line 1
    sget-boolean v0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_d

    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->getScaleY()F

    move-result p0

    goto :goto_11

    :cond_d
    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/ViewHelper$Honeycomb;->getScaleY(Landroid/view/View;)F

    move-result p0

    :goto_11
    return p0
.end method

.method public static getScrollX(Landroid/view/View;)F
    .registers 2

    .line 1
    sget-boolean v0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_e

    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->getScrollX()I

    move-result p0

    int-to-float p0, p0

    goto :goto_12

    :cond_e
    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/ViewHelper$Honeycomb;->getScrollX(Landroid/view/View;)F

    move-result p0

    :goto_12
    return p0
.end method

.method public static getScrollY(Landroid/view/View;)F
    .registers 2

    .line 1
    sget-boolean v0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_e

    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->getScrollY()I

    move-result p0

    int-to-float p0, p0

    goto :goto_12

    :cond_e
    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/ViewHelper$Honeycomb;->getScrollY(Landroid/view/View;)F

    move-result p0

    :goto_12
    return p0
.end method

.method public static getTranslationX(Landroid/view/View;)F
    .registers 2

    .line 1
    sget-boolean v0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_d

    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->getTranslationX()F

    move-result p0

    goto :goto_11

    :cond_d
    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/ViewHelper$Honeycomb;->getTranslationX(Landroid/view/View;)F

    move-result p0

    :goto_11
    return p0
.end method

.method public static getTranslationY(Landroid/view/View;)F
    .registers 2

    .line 1
    sget-boolean v0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_d

    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->getTranslationY()F

    move-result p0

    goto :goto_11

    :cond_d
    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/ViewHelper$Honeycomb;->getTranslationY(Landroid/view/View;)F

    move-result p0

    :goto_11
    return p0
.end method

.method public static getX(Landroid/view/View;)F
    .registers 2

    .line 1
    sget-boolean v0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_d

    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->getX()F

    move-result p0

    goto :goto_11

    :cond_d
    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/ViewHelper$Honeycomb;->getX(Landroid/view/View;)F

    move-result p0

    :goto_11
    return p0
.end method

.method public static getY(Landroid/view/View;)F
    .registers 2

    .line 1
    sget-boolean v0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_d

    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->getY()F

    move-result p0

    goto :goto_11

    :cond_d
    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/ViewHelper$Honeycomb;->getY(Landroid/view/View;)F

    move-result p0

    :goto_11
    return p0
.end method

.method public static setAlpha(Landroid/view/View;F)V
    .registers 3

    .line 1
    sget-boolean v0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_c

    .line 2
    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->setAlpha(F)V

    goto :goto_f

    .line 4
    :cond_c
    invoke-static {p0, p1}, Lio/dcloud/nineoldandroids/view/ViewHelper$Honeycomb;->setAlpha(Landroid/view/View;F)V

    :goto_f
    return-void
.end method

.method public static setPivotX(Landroid/view/View;F)V
    .registers 3

    .line 1
    sget-boolean v0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_c

    .line 2
    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->setPivotX(F)V

    goto :goto_f

    .line 4
    :cond_c
    invoke-static {p0, p1}, Lio/dcloud/nineoldandroids/view/ViewHelper$Honeycomb;->setPivotX(Landroid/view/View;F)V

    :goto_f
    return-void
.end method

.method public static setPivotY(Landroid/view/View;F)V
    .registers 3

    .line 1
    sget-boolean v0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_c

    .line 2
    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->setPivotY(F)V

    goto :goto_f

    .line 4
    :cond_c
    invoke-static {p0, p1}, Lio/dcloud/nineoldandroids/view/ViewHelper$Honeycomb;->setPivotY(Landroid/view/View;F)V

    :goto_f
    return-void
.end method

.method public static setRotation(Landroid/view/View;F)V
    .registers 3

    .line 1
    sget-boolean v0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_c

    .line 2
    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->setRotation(F)V

    goto :goto_f

    .line 4
    :cond_c
    invoke-static {p0, p1}, Lio/dcloud/nineoldandroids/view/ViewHelper$Honeycomb;->setRotation(Landroid/view/View;F)V

    :goto_f
    return-void
.end method

.method public static setRotationX(Landroid/view/View;F)V
    .registers 3

    .line 1
    sget-boolean v0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_c

    .line 2
    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->setRotationX(F)V

    goto :goto_f

    .line 4
    :cond_c
    invoke-static {p0, p1}, Lio/dcloud/nineoldandroids/view/ViewHelper$Honeycomb;->setRotationX(Landroid/view/View;F)V

    :goto_f
    return-void
.end method

.method public static setRotationY(Landroid/view/View;F)V
    .registers 3

    .line 1
    sget-boolean v0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_c

    .line 2
    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->setRotationY(F)V

    goto :goto_f

    .line 4
    :cond_c
    invoke-static {p0, p1}, Lio/dcloud/nineoldandroids/view/ViewHelper$Honeycomb;->setRotationY(Landroid/view/View;F)V

    :goto_f
    return-void
.end method

.method public static setScaleX(Landroid/view/View;F)V
    .registers 3

    .line 1
    sget-boolean v0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_c

    .line 2
    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->setScaleX(F)V

    goto :goto_f

    .line 4
    :cond_c
    invoke-static {p0, p1}, Lio/dcloud/nineoldandroids/view/ViewHelper$Honeycomb;->setScaleX(Landroid/view/View;F)V

    :goto_f
    return-void
.end method

.method public static setScaleY(Landroid/view/View;F)V
    .registers 3

    .line 1
    sget-boolean v0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_c

    .line 2
    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->setScaleY(F)V

    goto :goto_f

    .line 4
    :cond_c
    invoke-static {p0, p1}, Lio/dcloud/nineoldandroids/view/ViewHelper$Honeycomb;->setScaleY(Landroid/view/View;F)V

    :goto_f
    return-void
.end method

.method public static setScrollX(Landroid/view/View;I)V
    .registers 3

    .line 1
    sget-boolean v0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_c

    .line 2
    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->setScrollX(I)V

    goto :goto_f

    .line 4
    :cond_c
    invoke-static {p0, p1}, Lio/dcloud/nineoldandroids/view/ViewHelper$Honeycomb;->setScrollX(Landroid/view/View;I)V

    :goto_f
    return-void
.end method

.method public static setScrollY(Landroid/view/View;I)V
    .registers 3

    .line 1
    sget-boolean v0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_c

    .line 2
    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->setScrollY(I)V

    goto :goto_f

    .line 4
    :cond_c
    invoke-static {p0, p1}, Lio/dcloud/nineoldandroids/view/ViewHelper$Honeycomb;->setScrollY(Landroid/view/View;I)V

    :goto_f
    return-void
.end method

.method public static setTranslationX(Landroid/view/View;F)V
    .registers 3

    .line 1
    sget-boolean v0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_c

    .line 2
    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->setTranslationX(F)V

    goto :goto_f

    .line 4
    :cond_c
    invoke-static {p0, p1}, Lio/dcloud/nineoldandroids/view/ViewHelper$Honeycomb;->setTranslationX(Landroid/view/View;F)V

    :goto_f
    return-void
.end method

.method public static setTranslationY(Landroid/view/View;F)V
    .registers 3

    .line 1
    sget-boolean v0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_c

    .line 2
    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->setTranslationY(F)V

    goto :goto_f

    .line 4
    :cond_c
    invoke-static {p0, p1}, Lio/dcloud/nineoldandroids/view/ViewHelper$Honeycomb;->setTranslationY(Landroid/view/View;F)V

    :goto_f
    return-void
.end method

.method public static setX(Landroid/view/View;F)V
    .registers 3

    .line 1
    sget-boolean v0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_c

    .line 2
    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->setX(F)V

    goto :goto_f

    .line 4
    :cond_c
    invoke-static {p0, p1}, Lio/dcloud/nineoldandroids/view/ViewHelper$Honeycomb;->setX(Landroid/view/View;F)V

    :goto_f
    return-void
.end method

.method public static setY(Landroid/view/View;F)V
    .registers 3

    .line 1
    sget-boolean v0, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v0, :cond_c

    .line 2
    invoke-static {p0}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/dcloud/nineoldandroids/view/animation/AnimatorProxy;->setY(F)V

    goto :goto_f

    .line 4
    :cond_c
    invoke-static {p0, p1}, Lio/dcloud/nineoldandroids/view/ViewHelper$Honeycomb;->setY(Landroid/view/View;F)V

    :goto_f
    return-void
.end method

###### Class io.dcloud.nineoldandroids.view.ViewHelper.Honeycomb (io.dcloud.nineoldandroids.view.ViewHelper$Honeycomb)
.class final Lio/dcloud/nineoldandroids/view/ViewHelper$Honeycomb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/nineoldandroids/view/ViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Honeycomb"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAlpha(Landroid/view/View;)F
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    return p0
.end method

.method static getPivotX(Landroid/view/View;)F
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPivotX()F

    move-result p0

    return p0
.end method

.method static getPivotY(Landroid/view/View;)F
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPivotY()F

    move-result p0

    return p0
.end method

.method static getRotation(Landroid/view/View;)F
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result p0

    return p0
.end method

.method static getRotationX(Landroid/view/View;)F
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRotationX()F

    move-result p0

    return p0
.end method

.method static getRotationY(Landroid/view/View;)F
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRotationY()F

    move-result p0

    return p0
.end method

.method static getScaleX(Landroid/view/View;)F
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result p0

    return p0
.end method

.method static getScaleY(Landroid/view/View;)F
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result p0

    return p0
.end method

.method static getScrollX(Landroid/view/View;)F
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method static getScrollY(Landroid/view/View;)F
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method static getTranslationX(Landroid/view/View;)F
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result p0

    return p0
.end method

.method static getTranslationY(Landroid/view/View;)F
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p0

    return p0
.end method

.method static getX(Landroid/view/View;)F
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result p0

    return p0
.end method

.method static getY(Landroid/view/View;)F
    .registers 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    return p0
.end method

.method static setAlpha(Landroid/view/View;F)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method static setPivotX(Landroid/view/View;F)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    return-void
.end method

.method static setPivotY(Landroid/view/View;F)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method static setRotation(Landroid/view/View;F)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method static setRotationX(Landroid/view/View;F)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationX(F)V

    return-void
.end method

.method static setRotationY(Landroid/view/View;F)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationY(F)V

    return-void
.end method

.method static setScaleX(Landroid/view/View;F)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method

.method static setScaleY(Landroid/view/View;F)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method static setScrollX(Landroid/view/View;I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setScrollX(I)V

    return-void
.end method

.method static setScrollY(Landroid/view/View;I)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setScrollY(I)V

    return-void
.end method

.method static setTranslationX(Landroid/view/View;F)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method static setTranslationY(Landroid/view/View;F)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method static setX(Landroid/view/View;F)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    return-void
.end method

.method static setY(Landroid/view/View;F)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    return-void
.end method
